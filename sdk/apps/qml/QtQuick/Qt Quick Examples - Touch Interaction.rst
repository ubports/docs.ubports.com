.. _sdk_qtquick_qt_quick_examples_-_touch_interaction:

QtQuick Qt Quick Examples - Touch Interaction
=============================================



*Touch Interaction* is a collection of small QML examples relating to touch interaction methods. For more information, visit `Important Concepts In Qt Quick - User Input </sdk/apps/qml/QtQuick/qtquick-input-topic/>`_ .

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

*Multipoint Flames* demonstrates distinguishing different fingers in a :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>`, by assigning a different colored flame to each touch point.

The MultipointTouchArea sets up multiple touch points:

.. code:: qml

        MultiPointTouchArea {
            anchors.fill: parent
            minimumTouchPoints: 1
            maximumTouchPoints: 5
            touchPoints: [
                TouchPoint { id: touch1 },
                TouchPoint { id: touch2 },
                TouchPoint { id: touch11 },
                TouchPoint { id: touch21 },
                TouchPoint { id: touch31 }
            ]
        }

The flames are then simply bound to the coordinates of the touch point, and whether it is currently pressed, as follows:

.. code:: qml

        ParticleFlame {
            color: "red"
            emitterX: touch1.x
            emitterY: touch1.y
            emitting: touch1.pressed
        }

*Bear-Whack* demonstrates using :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` to add multiple finger support to a simple game. The interaction with the game is done through a `SpriteGoal </sdk/apps/qml/QtQuick/Particles.SpriteGoal/>`_  that follows the :ref:`TouchPoint <sdk_qtquick_touchpoint>`. The TouchPoints added to the :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` are a component with the relevant logic embedded into it:

.. code:: qml

    TouchPoint {
        id: container
        property ParticleSystem system
        onPressedChanged: {
            if (pressed) {
                timer.restart();
                child.enabled = true;
                system.explode(x,y);
            }
        }
        property QtObject obj: Timer {
            id: timer
            interval: 100
            running: false
            repeat: false
            onTriggered: child.enabled = false
        }
        property Item child: SpriteGoal {
            enabled: false
            x: container.area.x - 16
            y: container.area.y - 16
            width: container.area.width + 32
            height: container.area.height + 32 //+32 so it doesn't have to hit the exact center
            system: container.system
            parent: container.system
            goalState: "falling"
        }
    }

*Flick Resize* uses a :ref:`PinchArea <sdk_qtquick_pincharea>` to implement a *pinch-to-resize* behavior. This is easily achieved by listening to the :ref:`PinchArea <sdk_qtquick_pincharea>` signals and responding to user input.

.. code:: qml

    onPinchStarted: {
        initialWidth = flick.contentWidth
        initialHeight = flick.contentHeight
    }
    onPinchUpdated: {
        // adjust content pos due to drag
        flick.contentX += pinch.previousCenter.x - pinch.center.x
        flick.contentY += pinch.previousCenter.y - pinch.center.y
        // resize content
        flick.resizeContent(initialWidth * pinch.scale, initialHeight * pinch.scale, pinch.center)
    }
    onPinchFinished: {
        // Move its content within bounds.
        flick.returnToBounds()
    }

*Flickable* is a simple example demonstrating the `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_  type.

.. code:: qml

    Rectangle {
    width: 320
    height: 480
    Flickable {
        anchors.fill: parent
        contentWidth: 1200
        contentHeight: 1200
        Rectangle {
            width: 1000
            height: 1000

*Corkboards* shows another use for `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_ , with QML types within the flickable object that respond to mouse and keyboard interaction. This behavior does not require special code as the Qt Quick types already cooperate with the Flickable type for accepting touch events.

Files:

-  touchinteraction/touchinteraction.qml
-  touchinteraction/flickable/basic-flickable.qml
-  touchinteraction/flickable/corkboards.qml
-  touchinteraction/flickable/content/Panel.qml
-  touchinteraction/multipointtouch/bearwhack.qml
-  touchinteraction/multipointtouch/multiflame.qml
-  touchinteraction/multipointtouch/content/AugmentedTouchPoint.qml
-  touchinteraction/multipointtouch/content/BearWhackParticleSystem.qml
-  touchinteraction/multipointtouch/content/ParticleFlame.qml
-  touchinteraction/pincharea/flickresize.qml
-  touchinteraction/main.cpp
-  touchinteraction/touchinteraction.pro
-  touchinteraction/touchinteraction.qmlproject
-  touchinteraction/touchinteraction.qrc

