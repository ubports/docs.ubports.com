.. _sdk_qtquick_qt_quick_examples_-_shader_effects:

QtQuick Qt Quick Examples - Shader Effects
==========================================



This example demonstrates a couple of visual effects that you can perform with shaders in Qt Quick. It applies five different effects on a text and a couple of images. For more information, visit `Important Concepts In Qt Quick - Graphical Effects </sdk/apps/qml/QtQuick/qtquick-effects-topic/>`_ 

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

The :ref:`ShaderEffect <sdk_qtquick_shadereffect>` type typically operates on other types, using a :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`:

.. code:: qml

    ShaderEffectSource {
        id: theSource
        sourceItem: theItem
    }

In the above snippet, ``theItem`` is the ID of a complex QML object in the file.

ShaderEffects can use this :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` as a texture in their fragment shader:

.. code:: qml

    fragmentShader:
        "uniform lowp float qt_Opacity;" +
        "uniform highp float amplitude;" +
        "uniform highp float frequency;" +
        "uniform highp float time;" +
        "uniform sampler2D source;" +
        "varying highp vec2 qt_TexCoord0;" +
        "void main() {" +
        "    highp vec2 p = sin(time + frequency * qt_TexCoord0);" +
        "    gl_FragColor = texture2D(source, qt_TexCoord0 + amplitude * vec2(p.y, -p.x)) * qt_Opacity;" +
        "}"

You can use any custom property on the :ref:`ShaderEffect <sdk_qtquick_shadereffect>` in your shader. This makes animated shader code very easy:

.. code:: qml

    property variant source: theSource
    property real bend: 0
    property real minimize: 0
    property real side: genieSlider.value
    SequentialAnimation on bend {
        loops: Animation.Infinite
        NumberAnimation { to: 1; duration: 700; easing.type: Easing.InOutSine }
        PauseAnimation { duration: 1600 }
        NumberAnimation { to: 0; duration: 700; easing.type: Easing.InOutSine }
        PauseAnimation { duration: 1000 }
    }
    SequentialAnimation on minimize {
        loops: Animation.Infinite
        PauseAnimation { duration: 300 }
        NumberAnimation { to: 1; duration: 700; easing.type: Easing.InOutSine }
        PauseAnimation { duration: 1000 }
        NumberAnimation { to: 0; duration: 700; easing.type: Easing.InOutSine }
        PauseAnimation { duration: 1300 }
    }

ShaderEffects can also have a custom vertext shader. Setting the mesh property on :ref:`ShaderEffect <sdk_qtquick_shadereffect>` provides more vertices for you to manipulate, enabling more effects.

.. code:: qml

    mesh: Qt.size(10, 10)
    vertexShader: "
        uniform highp mat4 qt_Matrix;
        uniform highp float bend;
        uniform highp float minimize;
        uniform highp float side;
        uniform highp float width;
        uniform highp float height;
        attribute highp vec4 qt_Vertex;
        attribute highp vec2 qt_MultiTexCoord0;
        varying highp vec2 qt_TexCoord0;
        void main() {
            qt_TexCoord0 = qt_MultiTexCoord0;
            highp vec4 pos = qt_Vertex;
            pos.y = mix(qt_Vertex.y, height, minimize);
            highp float t = pos.y / height;
            t = (3. - 2. * t) * t * t;
            pos.x = mix(qt_Vertex.x, side * width, t * bend);
            gl_Position = qt_Matrix * pos;
        }"

Files:

-  shadereffects/shadereffects.qml
-  shadereffects/content/Slider.qml
-  shadereffects/main.cpp
-  shadereffects/shadereffects.pro
-  shadereffects/shadereffects.qmlproject
-  shadereffects/shadereffects.qrc

