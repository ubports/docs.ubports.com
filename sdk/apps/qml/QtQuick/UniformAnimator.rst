.. _sdk_qtquick_uniformanimator:

QtQuick UniformAnimator
=======================

The UniformAnimator type animates a uniform of a ShaderEffect.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Properties
----------

-  :ref:`uniform <sdk_qtquick_uniformanimator_uniform>` : string

Detailed Description
--------------------

:ref:`Animator <sdk_qtquick_animator>` types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of the QML property defining the uniform is updated after the animation has finished.

The following snippet shows how to use a :ref:`UniformAnimator <sdk_qtquick_uniformanimator>` together with a :ref:`ShaderEffect <sdk_qtquick_shadereffect>` item.

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

It is also possible to use the ``on`` keyword to tie the :ref:`UniformAnimator <sdk_qtquick_uniformanimator>` directly to a uniform of a :ref:`ShaderEffect <sdk_qtquick_shadereffect>` instance.

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

**See also** :ref:`ShaderEffect <sdk_qtquick_shadereffect>` and :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.

Property Documentation
----------------------

.. _sdk_qtquick_uniformanimator_uniform:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| uniform : string                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the uniform to animate.

The value of the uniform must correspond to both a property on the target :ref:`ShaderEffect <sdk_qtquick_shadereffect>` and must be a uniform of type ``float`` in the fragment or vertex shader.

