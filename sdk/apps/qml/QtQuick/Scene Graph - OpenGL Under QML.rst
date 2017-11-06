.. _sdk_qtquick_scene_graph_-_opengl_under_qml:

QtQuick Scene Graph - OpenGL Under QML
======================================



The OpenGL under QML example shows how an application can make use of the QQuickWindow::beforeRendering() signal to draw custom OpenGL content under a Qt Quick scene. This signal is emitted at the start of every frame, before the scene graph starts its rendering, thus any OpenGL draw calls that are made as a response to this signal, will stack under the Qt Quick items.

As an alternative, applications that wish to render OpenGL content on top of the Qt Quick scene, can do so by connecting to the QQuickWindow::afterRendering() signal.

In this example, we will also see how it is possible to have values that are exposed to QML which affect the OpenGL rendering. We animate the threshold value using a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` in the QML file and this value is used by the OpenGL shader program that draws the squircles.

.. code:: cpp

    class Squircle : public QQuickItem
    {
        Q_OBJECT
        Q_PROPERTY(qreal t READ t WRITE setT NOTIFY tChanged)
    public:
        Squircle();
        qreal t() const { return m_t; }
        void setT(qreal t);
    signals:
        void tChanged();
    public slots:
        void sync();
        void cleanup();
    private slots:
        void handleWindowChanged(QQuickWindow *win);
    private:
        qreal m_t;
        SquircleRenderer *m_renderer;
    };

First of all, we need an object we can expose to QML. This is a subclass of QQuickItem so we can easily access QQuickItem::window().

.. code:: cpp

    class SquircleRenderer : public QObject, protected QOpenGLFunctions
    {
        Q_OBJECT
    public:
        SquircleRenderer() : m_t(0), m_program(0) { }
        ~SquircleRenderer();
        void setT(qreal t) { m_t = t; }
        void setViewportSize(const QSize &size) { m_viewportSize = size; }
    public slots:
        void paint();
    private:
        QSize m_viewportSize;
        qreal m_t;
        QOpenGLShaderProgram *m_program;
    };

Then we need an object to take care of the rendering. This instance needs to be separated from the QQuickItem because the item lives in the GUI thread and the rendering potentially happens on the render thread. Since we want to connect to QQuickWindow::beforeRendering(), we make the renderer a QObject. The renderer contains a copy of all the state it needs, independent of the GUI thread.

**Note:** Don't be tempted to merge the two objects into one. QQuickItems may be deleted on the GUI thread while the render thread is rendering.

Lets move on to the implementation.

.. code:: cpp

    Squircle::Squircle()
        : m_t(0)
        , m_renderer(0)
    {
        connect(this, SIGNAL(windowChanged(QQuickWindow*)), this, SLOT(handleWindowChanged(QQuickWindow*)));
    }

The constructor of the ``Squircle`` class simply initializes the values and connects to the window changed signal which we will use to prepare our renderer.

.. code:: cpp

    void Squircle::handleWindowChanged(QQuickWindow *win)
    {
        if (win) {
            connect(win, SIGNAL(beforeSynchronizing()), this, SLOT(sync()), Qt::DirectConnection);
            connect(win, SIGNAL(sceneGraphInvalidated()), this, SLOT(cleanup()), Qt::DirectConnection);

Once we have a window, we attach to the QQuickWindow::beforeSynchronizing() signal which we will use to create the renderer and to copy state into it safely. We also connect to the QQuickWindow::sceneGraphInvalidated() signal to handle the cleanup of the renderer.

**Note:** Since the Squircle object has affinity to the GUI thread and the signals are emitted from the rendering thread, it is crucial that the connections are made with Qt::DirectConnection. Failing to do so, will result in that the slots are invoked on the wrong thread with no OpenGL context present.

.. code:: cpp

            win->setClearBeforeRendering(false);
        }
    }

The default behavior of the scene graph is to clear the framebuffer before rendering. Since we render before the scene graph, we need to turn this clearing off. This means that we need to clear ourselves in the ``paint()`` function.

.. code:: cpp

    void Squircle::sync()
    {
        if (!m_renderer) {
            m_renderer = new SquircleRenderer();
            connect(window(), SIGNAL(beforeRendering()), m_renderer, SLOT(paint()), Qt::DirectConnection);
        }
        m_renderer->setViewportSize(window()->size() * window()->devicePixelRatio());
        m_renderer->setT(m_t);
    }

We use the ``sync()`` function to initialize the renderer and to copy the state in our item into the renderer. When the renderer is created, we also connect the QQuickWindow::beforeRendering() to the renderer's ``paint()`` slot.

**Note:** The QQuickWindow::beforeSynchronizing() signal is emitted on the rendering thread while the GUI thread is blocked, so it is safe to simply copy the value without any additional protection.

.. code:: cpp

    void Squircle::cleanup()
    {
        if (m_renderer) {
            delete m_renderer;
            m_renderer = 0;
        }
    }
    SquircleRenderer::~SquircleRenderer()
    {
        delete m_program;
    }

In the ``cleanup()`` function we delete the renderer which in turn cleans up its own resources.

.. code:: cpp

    void Squircle::setT(qreal t)
    {
        if (t == m_t)
            return;
        m_t = t;
        emit tChanged();
        if (window())
            window()->update();
    }

When the value of ``t`` changes, we call QQuickWindow::update() rather than QQuickItem::update() because the former will force the entire window to be redrawn, even when the scene graph has not changed since the last frame.

.. code:: cpp

    void SquircleRenderer::paint()
    {
        if (!m_program) {
            initializeOpenGLFunctions();
            m_program = new QOpenGLShaderProgram();
            m_program->addShaderFromSourceCode(QOpenGLShader::Vertex,
                                               "attribute highp vec4 vertices;"
                                               "varying highp vec2 coords;"
                                               "void main() {"
                                               "    gl_Position = vertices;"
                                               "    coords = vertices.xy;"
                                               "}");
            m_program->addShaderFromSourceCode(QOpenGLShader::Fragment,
                                               "uniform lowp float t;"
                                               "varying highp vec2 coords;"
                                               "void main() {"
                                               "    lowp float i = 1. - (pow(abs(coords.x), 4.) + pow(abs(coords.y), 4.));"
                                               "    i = smoothstep(t - 0.8, t + 0.8, i);"
                                               "    i = floor(i * 20.) / 20.;"
                                               "    gl_FragColor = vec4(coords * .5 + .5, i, i);"
                                               "}");
            m_program->bindAttributeLocation("vertices", 0);
            m_program->link();
        }

In the SquircleRenderer's ``paint()`` function we start by initializing the shader program. By initializing the shader program here, we make sure that the OpenGL context is bound and that we are on the correct thread.

.. code:: cpp

        m_program->bind();
        m_program->enableAttributeArray(0);
        float values[] = {
            -1, -1,
            1, -1,
            -1, 1,
            1, 1
        };
        m_program->setAttributeArray(0, GL_FLOAT, values, 2);
        m_program->setUniformValue("t", (float) m_t);
        glViewport(0, 0, m_viewportSize.width(), m_viewportSize.height());
        glDisable(GL_DEPTH_TEST);
        glClearColor(0, 0, 0, 1);
        glClear(GL_COLOR_BUFFER_BIT);
        glEnable(GL_BLEND);
        glBlendFunc(GL_SRC_ALPHA, GL_ONE);
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
        m_program->disableAttributeArray(0);
        m_program->release();
    }

We use the shader program to draw the squircle. At the end of the ``paint`` function we release the program and disable the attributes we used so that the OpenGL context is in a "clean" state for the scene graph to pick it up.

**Note:** If tracking the changes in the OpenGL context's state is not feasible, one can use the function QQuickWindow::resetOpenGLState() which will reset all state that the scene graph relies on.

.. code:: cpp

    int main(int argc, char **argv)
    {
        QGuiApplication app(argc, argv);
        qmlRegisterType<Squircle>("OpenGLUnderQML", 1, 0, "Squircle");
        QQuickView view;
        view.setResizeMode(QQuickView::SizeRootObjectToView);
        view.setSource(QUrl("qrc:///scenegraph/openglunderqml/main.qml"));
        view.show();
        return app.exec();
    }

The application's ``main()`` function instantiates a QQuickView and launches the ``main.qml`` file. The only thing worth noting is that we export the ``Squircle`` class to QML using the qmlRegisterType() macro.

.. code:: qml

    import QtQuick 2.0
    import OpenGLUnderQML 1.0
    Item {
        width: 320
        height: 480
        Squircle {
            SequentialAnimation on t {
                NumberAnimation { to: 1; duration: 2500; easing.type: Easing.InQuad }
                NumberAnimation { to: 0; duration: 2500; easing.type: Easing.OutQuad }
                loops: Animation.Infinite
                running: true
            }
        }

We import the Squircle QML type with the name we registered in the ``main()`` function. We then instantiate it and create a running :ref:`NumberAnimation <sdk_qtquick_numberanimation>` on its ``t`` property.

.. code:: qml

        Rectangle {
            color: Qt.rgba(1, 1, 1, 0.7)
            radius: 10
            border.width: 1
            border.color: "white"
            anchors.fill: label
            anchors.margins: -10
        }
        Text {
            id: label
            color: "black"
            wrapMode: Text.WordWrap
            text: "The background here is a squircle rendered with raw OpenGL using the 'beforeRender()' signal in QQuickWindow. This text label and its border is rendered using QML"
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.margins: 20
        }
    }

Then we overlay a short descriptive text, so that it is clearly visible that we are in fact rendering OpenGL under our Qt Quick scene.

Files:

-  scenegraph/openglunderqml/main.qml
-  scenegraph/openglunderqml/squircle.cpp
-  scenegraph/openglunderqml/squircle.h
-  scenegraph/openglunderqml/main.cpp
-  scenegraph/openglunderqml/openglunderqml.pro
-  scenegraph/openglunderqml/openglunderqml.qrc

