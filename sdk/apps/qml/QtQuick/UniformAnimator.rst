The UniformAnimator type animates a uniform of a ShaderEffect.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Properties
----------

-  ****`uniform </sdk/apps/qml/QtQuick/UniformAnimator#uniform-prop>`__****
   : string

Detailed Description
--------------------

`Animator </sdk/apps/qml/QtQuick/Animator/>`__ types are different from
normal Animation types. When using an Animator, the animation can be run
in the render thread and the property value will jump to the end when
the animation is complete.

The value of the QML property defining the uniform is updated after the
animation has finished.

The following snippet shows how to use a
`UniformAnimator </sdk/apps/qml/QtQuick/UniformAnimator/>`__ together
with a `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__ item.

.. code:: qml

    ShaderEffect {
        id: shader
        width: 50
        height: 50
        property variant t;
        UniformAnimator {
            target: shader
            uniform: "t"
            from: 0
            to: 1
            duration: 1000
            running: true
        }
        fragmentShader:
        "
            uniform lowp float t;
            varying highp vec2 qt_TexCoord0;
            void main() {
                lowp float c = qt_TexCoord0.y;
                gl_FragColor = vec4(0, 0, c * t, 1);
            }
        "
    }

It is also possible to use the ``on`` keyword to tie the
`UniformAnimator </sdk/apps/qml/QtQuick/UniformAnimator/>`__ directly to
a uniform of a `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__
instance.

.. code:: qml

    ShaderEffect {
        width: 50
        height: 50
        property variant t;
        UniformAnimator on t {
            from: 0
            to: 1
            duration: 1000
        }
        fragmentShader:
        "
            uniform lowp float t;
            varying highp vec2 qt_TexCoord0;
            void main() {
                lowp float c = qt_TexCoord0.y;
                gl_FragColor = vec4(c * t, 0, 0, 1);
            }
        "
    }

**See also** `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__ and
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ uniform : string                                                |
+--------------------------------------------------------------------------+

This property holds the name of the uniform to animate.

The value of the uniform must correspond to both a property on the
target `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__ and must
be a uniform of type ``float`` in the fragment or vertex shader.

| 
