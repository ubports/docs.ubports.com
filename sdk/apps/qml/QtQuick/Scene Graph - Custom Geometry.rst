.. _sdk_qtquick_scene_graph_-_custom_geometry:

QtQuick Scene Graph - Custom Geometry
=====================================


The custom geometry example shows how to create a QQuickItem which uses the scene graph API to build a custom geometry for the scene graph. It does this by creating a BezierCurve item which is made part of the CustomGeometry module and makes use of this in a QML file.

.. code:: cpp

    #include <QtQuick/QQuickItem>
    class BezierCurve : public QQuickItem
    {
        Q_OBJECT
        Q_PROPERTY(QPointF p1 READ p1 WRITE setP1 NOTIFY p1Changed)
        Q_PROPERTY(QPointF p2 READ p2 WRITE setP2 NOTIFY p2Changed)
        Q_PROPERTY(QPointF p3 READ p3 WRITE setP3 NOTIFY p3Changed)
        Q_PROPERTY(QPointF p4 READ p4 WRITE setP4 NOTIFY p4Changed)
        Q_PROPERTY(int segmentCount READ segmentCount WRITE setSegmentCount NOTIFY segmentCountChanged)
    public:
        BezierCurve(QQuickItem *parent = 0);
        ~BezierCurve();
        QSGNode *updatePaintNode(QSGNode *, UpdatePaintNodeData *);
        QPointF p1() const { return m_p1; }
        QPointF p2() const { return m_p2; }
        QPointF p3() const { return m_p3; }
        QPointF p4() const { return m_p4; }
        int segmentCount() const { return m_segmentCount; }
        void setP1(const QPointF &p);
        void setP2(const QPointF &p);
        void setP3(const QPointF &p);
        void setP4(const QPointF &p);
        void setSegmentCount(int count);
    signals:
        void p1Changed(const QPointF &p);
        void p2Changed(const QPointF &p);
        void p3Changed(const QPointF &p);
        void p4Changed(const QPointF &p);
        void segmentCountChanged(int count);
    private:
        QPointF m_p1;
        QPointF m_p2;
        QPointF m_p3;
        QPointF m_p4;
        int m_segmentCount;
    };

The item declaration subclasses the QQuickItem class and adds five properties. One for each of the four control points in the bezier curve and a parameter to control the number of segments the curve is subdivided into. For each of the properties we have corresponding getter and setter functions. Since these properties can be bound to in QML, it is also preferable to have notifier signals for each of them so changes will be picked up the QML engine and used accordingly.

.. code:: cpp

        QSGNode *updatePaintNode(QSGNode *, UpdatePaintNodeData *);

The synchronization point between the QML scene and the rendering scene graph is the virtual function QQuickItem::updatePaintNode() which all items with custom scene graph logic must implement.

**Note:** The scene graph will on many hardware configurations be rendering on a separate thread. It is therefore crucial that interaction with the scene graph happens in a controlled manner, first and foremost through the QQuickItem::updatePaintNode() function.

.. code:: cpp

    BezierCurve::BezierCurve(QQuickItem *parent)
        : QQuickItem(parent)
        , m_p1(0, 0)
        , m_p2(1, 0)
        , m_p3(0, 1)
        , m_p4(1, 1)
        , m_segmentCount(32)
    {
        setFlag(ItemHasContents, true);
    }

The BezierCurve constructor sets up default values for the control points and the number of segments. The bezier curve is specified in normalized coordinates relative to the item's bounding rectangle.

The constructor also sets the flag QQuickItem::ItemHasContents. This flags tells the canvas that this item provides visual content and will call QQuickItem::updatePaintNode() when it is time for the QML scene to be synchronized with the rendering scene graph.

.. code:: cpp

    BezierCurve::~BezierCurve()
    {
    }

The BezierCurve class has no data members that need to be cleaned up so the destructor does nothing. It is worth mentioning that the rendering scene graph is managed by the scene graph it self, potentially in a different thread, so one should never retain QSGNode references in the QQuickItem class nor try to clean them up explicitly.

.. code:: cpp

    void BezierCurve::setP1(const QPointF &p)
    {
        if (p == m_p1)
            return;
        m_p1 = p;
        emit p1Changed(p);
        update();
    }

The setter function for the p1 property checks if the value is unchanged and exits early if this is the case. Then it updates the internal value and emits the changed signal. It then proceeds to call the QQuickItem::update() function which will notify the rendering scene graph, that the state of this object has changed and needs to be synchronized with the rendering scene graph. A call to update() will result in a call to QQuickItem::updatePaintNode() at a later time.

The other property setters are equivalent, and are omitted from this example.

.. code:: cpp

    QSGNode *BezierCurve::updatePaintNode(QSGNode *oldNode, UpdatePaintNodeData *)
    {
        QSGGeometryNode *node = 0;
        QSGGeometry *geometry = 0;
        if (!oldNode) {
            node = new QSGGeometryNode;

The updatePaintNode() function is the primary integration point for synchronizing the state of the QML scene with the rendering scene graph. The function gets passed a QSGNode which is the instance that was returned on the last call to the function. It will be null the first time the function gets called and we create our QSGGeometryNode which we will fill with geometry and a material.

.. code:: cpp

            geometry = new QSGGeometry(QSGGeometry::defaultAttributes_Point2D(), m_segmentCount);
            geometry->setLineWidth(2);
            geometry->setDrawingMode(GL_LINE_STRIP);
            node->setGeometry(geometry);
            node->setFlag(QSGNode::OwnsGeometry);

We then create the geometry and add it to the node. The first argument to the QSGGeometry constructor is a definition of the vertex type, called an "attribute set". Since the graphics often used in QML centers around a few common standard attribute sets, these are provided by default. Here we use the Point2D attribute set which has two floats, one for x coordinates and one for y coordinates. The second argument is the vertex count.

Custom attribute sets can also created, but that is not covered in this example.

Since we do not have any special needs for memory managing the geometry, we specify that the QSGGeometryNode should own the geometry.

To minimize allocations, reduce memory fragmentation and improve performance, it would also be possible to make the geometry a member of a QSGGeometryNode subclass, in which case, we would not have set the QSGGeometryNode::OwnsGeometry flag.

.. code:: cpp

            QSGFlatColorMaterial *material = new QSGFlatColorMaterial;
            material->setColor(QColor(255, 0, 0));
            node->setMaterial(material);
            node->setFlag(QSGNode::OwnsMaterial);

The scene graph API provides a few commonly used material implementations. In this example we use the QSGFlatColorMaterial which will fill the shape defined by the geometry with a solid color. Again we pass the ownership of the material to the node, so it can be cleaned up by the scene graph.

.. code:: cpp

        } else {
            node = static_cast<QSGGeometryNode *>(oldNode);
            geometry = node->geometry();
            geometry->allocate(m_segmentCount);
        }

In the case where the QML item has changed and we only want to modify the existing node's geometry, we cast the ``oldNode`` to a QSGGeometryNode instance and extract it's geometry. In case the segment count has changed, we call QSGGeometry::allocate() to make sure it has the right number of vertices.

.. code:: cpp

        QRectF bounds = boundingRect();
        QSGGeometry::Point2D *vertices = geometry->vertexDataAsPoint2D();
        for (int i = 0; i < m_segmentCount; ++i) {
            qreal t = i / qreal(m_segmentCount - 1);
            qreal invt = 1 - t;
            QPointF pos = invt * invt * invt * m_p1
                        + 3 * invt * invt * t * m_p2
                        + 3 * invt * t * t * m_p3
                        + t * t * t * m_p4;
            float x = bounds.x() + pos.x() * bounds.width();
            float y = bounds.y() + pos.y() * bounds.height();
            vertices[i].set(x, y);
        }
        node->markDirty(QSGNode::DirtyGeometry);

To fill the geometry, we first extract the vertex array from it. Since we are using one of the default attribute sets, we can use the convenience function QSGGeometry::vertexDataAsPoint2D(). Then we go through each segment and calculate its position and write that value to the vertex.

.. code:: cpp

        return node;
    }

In the end of the function, we return the node so the scene graph can render it.

.. code:: cpp

    int main(int argc, char **argv)
    {
        QGuiApplication app(argc, argv);
        qmlRegisterType<BezierCurve>("CustomGeometry", 1, 0, "BezierCurve");
        QQuickView view;
        QSurfaceFormat format = view.format();
        format.setSamples(16);
        view.setFormat(format);
        view.setSource(QUrl("qrc:///scenegraph/customgeometry/main.qml"));
        view.show();
        app.exec();
    }

The application is a straightforward QML application, with a QGuiApplication and a QQuickView that we pass a .qml file. To make use of the BezierCurve item, we need to register it in the QML engine, using the qmlRegisterType() function. We give it the name BezierCurve and make it part of the ``CustomGeometry 1.0`` module.

As the bezier curve is drawn using GL\_LINE\_STRIP, we specify that the view should be multisampled to get antialiasing. This is not required, but it will make the item look a bit nicer on hardware that supports it. Multisampling is not enabled by default because it often results in higher memory usage.

.. code:: qml

    import QtQuick 2.0
    import CustomGeometry 1.0

Our .qml file imports the ``QtQuick 2.0`` module to get the standard types and also our own ``CustomGeometry 1.0`` module which contains our newly created BezierCurve objects.

.. code:: qml

    Item {
        width: 300
        height: 200
        BezierCurve {
            id: line
            anchors.fill: parent
            anchors.margins: 20

Then we create the our root item and an instance of the BezierCurve which we anchor to fill the root.

.. code:: qml

            property real t
            SequentialAnimation on t {
                NumberAnimation { to: 1; duration: 2000; easing.type: Easing.InOutQuad }
                NumberAnimation { to: 0; duration: 2000; easing.type: Easing.InOutQuad }
                loops: Animation.Infinite
            }
            p2: Qt.point(t, 1 - t)
            p3: Qt.point(1 - t, t)
        }

To make the example a bit more interesting we add an animation to change the two control points in the curve. The end points stay unchanged.

.. code:: qml

        Text {
            anchors.bottom: line.bottom
            x: 20
            width: parent.width - 40
            wrapMode: Text.WordWrap
            text: "This curve is a custom scene graph item, implemented using GL_LINE_STRIP"
        }
    }

Finally we overlay a short text outlining what the example shows.

Files:

-  scenegraph/customgeometry/beziercurve.cpp
-  scenegraph/customgeometry/beziercurve.h
-  scenegraph/customgeometry/main.qml
-  scenegraph/customgeometry/main.cpp
-  scenegraph/customgeometry/customgeometry.pro
-  scenegraph/customgeometry/customgeometry.qrc

