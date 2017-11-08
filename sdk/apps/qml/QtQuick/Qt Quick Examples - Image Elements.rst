.. _sdk_qtquick_qt_quick_examples_-_image_elements:

QtQuick Qt Quick Examples - Image Elements
==========================================



*Image Elements* is a collection of small QML examples relating to image types. For more information, visit Use Case - Visual Elements In QML.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

*BorderImage* shows off the various scaling modes of the `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  type by setting its horizontalTileMode and verticalTileMode properties.

*Image* shows off the various fill modes of the `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  type.

*Shadows* shows how to create a drop shadow effect for a rectangular item using a `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ :

.. code:: qml

        BorderImage {
            anchors.fill: rectangle
            anchors { leftMargin: -6; topMargin: -6; rightMargin: -8; bottomMargin: -8 }
            border { left: 10; top: 10; right: 10; bottom: 10 }
            source: "shadow.png"
        }

*AnimatedSprite* shows how to display a simple animation using an `AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites/#animatedsprite>`_  object:

.. code:: qml

        AnimatedSprite {
            id: sprite
            width: 170
            height: 170
            anchors.centerIn: parent
            source: "content/speaker.png"
            frameCount: 60
            frameSync: true
            frameWidth: 170
            frameHeight: 170
            loops: 3
        }

The sprite animation will loop three times.

*SpriteSequence* demonstrates using a sprite sequence to draw an animated and interactive bear. The `SpriteSequence </sdk/apps/qml/QtQuick/imageelements/#spritesequence>`_  object defines five different sprites. The bear is initially in a *still* state:

.. code:: qml

            Sprite{
                name: "still"
                source: "content/BearSheet.png"
                frameCount: 1
                frameWidth: 256
                frameHeight: 256
                frameDuration: 100
                to: {"still":1, "blink":0.1, "floating":0}
            }

When the scene is clicked, an animation sets the sprite sequence to the *falling* states and animates the bear's y property.

.. code:: qml

        SequentialAnimation {
            id: anim
            ScriptAction { script: image.goalSprite = "falling"; }
            NumberAnimation { target: image; property: "y"; to: 480; duration: 12000; }
            ScriptAction { script: {image.goalSprite = ""; image.jumpTo("still");} }
            PropertyAction { target: image; property: "y"; value: 0 }
        }

At the end of the animation the bear is set back to its initial state.

Files:

-  imageelements/animatedsprite.qml
-  imageelements/borderimage.qml
-  imageelements/image.qml
-  imageelements/imageelements.qml
-  imageelements/shadows.qml
-  imageelements/spritesequence.qml
-  imageelements/content/BorderImageSelector.qml
-  imageelements/content/ImageCell.qml
-  imageelements/content/MyBorderImage.qml
-  imageelements/content/ShadowRectangle.qml
-  imageelements/main.cpp
-  imageelements/imageelements.pro
-  imageelements/imageelements.qmlproject
-  imageelements/imageelements.qrc

