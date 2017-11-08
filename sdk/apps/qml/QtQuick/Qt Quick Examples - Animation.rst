.. _sdk_qtquick_qt_quick_examples_-_animation:

QtQuick Qt Quick Examples - Animation
=====================================



*Animation* is a collection of small QML examples relating to animation. Each example is a small QML file emphasizing a particular type or feature.

For more information about animations, visit `Important Concepts in Qt Quick - States, Transitions and Animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-topic/>`_ .

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

*ColorAnimation* uses color animations to fade a sky from day to night.

.. code:: qml

    gradient: Gradient {
        GradientStop {
            position: 0.0
            SequentialAnimation on color {
                loops: Animation.Infinite
                ColorAnimation { from: "#14148c"; to: "#0E1533"; duration: 5000 }
                ColorAnimation { from: "#0E1533"; to: "#14148c"; duration: 5000 }
            }
        }
        GradientStop {
            position: 1.0
            SequentialAnimation on color {
                loops: Animation.Infinite
                ColorAnimation { from: "#14aaff"; to: "#437284"; duration: 5000 }
                ColorAnimation { from: "#437284"; to: "#14aaff"; duration: 5000 }
            }
        }
    }

*PropertyAnimation* uses number animations to bounce a circle up and down.

.. code:: qml

    // Animate the y property. Setting loops to Animation.Infinite makes the
    // animation repeat indefinitely, otherwise it would only run once.
    SequentialAnimation on y {
        loops: Animation.Infinite
        // Move from minHeight to maxHeight in 300ms, using the OutExpo easing function
        NumberAnimation {
            from: smiley.minHeight; to: smiley.maxHeight
            easing.type: Easing.OutExpo; duration: 300
        }
        // Then move back to minHeight in 1 second, using the OutBounce easing function
        NumberAnimation {
            from: smiley.maxHeight; to: smiley.minHeight
            easing.type: Easing.OutBounce; duration: 1000
        }
        // Then pause for 500ms
        PauseAnimation { duration: 500 }
    }

*Animators* uses animators to bounce an icon up and down.

.. code:: qml

    SequentialAnimation {
        SequentialAnimation {
            ParallelAnimation {
                YAnimator {
                    target: smiley;
                    from: smiley.minHeight;
                    to: smiley.maxHeight
                    easing.type: Easing.OutExpo;
                    duration: 300
                }
                ScaleAnimator {
                    target: shadow
                    from: 1
                    to: 0.5
                    easing.type: Easing.OutExpo;
                    duration: 300
                }
            }
            ParallelAnimation {
                YAnimator {
                    target: smiley;
                    from: smiley.maxHeight;
                    to: smiley.minHeight
                    easing.type: Easing.OutBounce;
                    duration: 1000
                }
                ScaleAnimator {
                    target: shadow
                    from: 0.5
                    to: 1
                    easing.type: Easing.OutBounce;
                    duration: 1000
                }
            }
        }
        PauseAnimation { duration: 500 }
        running: true
        loops: Animation.Infinite
    }

*Behaviors* uses behaviors to move a rectangle to where you click.

.. code:: qml

    // Set an 'elastic' behavior on the focusRect's y property.
    Behavior on y {
        NumberAnimation { easing.type: Easing.OutElastic; easing.amplitude: 3.0; easing.period: 2.0; duration: 300 }
    }

*Wiggly Text* demonstrates using more complex behaviors to animate and wiggle some text around as you drag it. It does this by assigning a complex binding to each letter:

.. code:: qml

                x: follow ? follow.x + follow.width : container.width / 6
                y: follow ? follow.y : container.height / 2

Then, it uses behaviors to animate the movement of each letter:

.. code:: qml

                Behavior on x { enabled: container.animated; SpringAnimation { spring: 3; damping: 0.3; mass: 1.0 } }
                Behavior on y { enabled: container.animated; SpringAnimation { spring: 3; damping: 0.3; mass: 1.0 } }

*Tv Tennis* uses complex behaviors to make the paddles follow a ball to simulate an infinite tennis game. Again, a binding which depends on other values is applied to the position and a behavior provided the animation.

.. code:: qml

    y: ball.direction == 'left' ? ball.y - 45 : page.height/2 -45;
    Behavior on y { SpringAnimation{ velocity: 300 } }

*Easing Curves* shows off all the easing curves available in Qt Quick animations.

*States* demonstrates how the properties of an item can vary between `states </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

It defines several states:

.. code:: qml

    // In state 'middleRight', move the image to middleRightRect
    State {
        name: "middleRight"
        PropertyChanges { target: userIcon; x: middleRightRect.x; y: middleRightRect.y }
    },
    // In state 'bottomLeft', move the image to bottomLeftRect
    State {
        name: "bottomLeft"
        PropertyChanges { target: userIcon; x: bottomLeftRect.x; y: bottomLeftRect.y  }
    }

*Transitions* takes the States example and animates the property changes by setting transitions:

.. code:: qml

    // Transitions define how the properties change when the item moves between each state
    transitions: [
        // When transitioning to 'middleRight' move x,y over a duration of 1 second,
        // with OutBounce easing function.
        Transition {
            from: "*"; to: "middleRight"
            NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce; duration: 1000 }
        },
        // When transitioning to 'bottomLeft' move x,y over a duration of 2 seconds,
        // with InOutQuad easing function.
        Transition {
            from: "*"; to: "bottomLeft"
            NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 2000 }
        },
        // For any other state changes move x,y linearly over duration of 200ms.
        Transition {
            NumberAnimation { properties: "x,y"; duration: 200 }
        }

*PathAnimation* animates an image along a bezier curve using a `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ .

.. code:: qml

    PathAnimation {
        id: pathAnim
        duration: 2000
        easing.type: Easing.InQuad
        target: box
        orientation: PathAnimation.RightFirst
        anchorPoint: Qt.point(box.width/2, box.height/2)
        path: Path {
            startX: 50; startY: 50
            PathCubic {
                x: window.width - 50
                y: window.height - 50
                control1X: x; control1Y: 50
                control2X: 50; control2Y: y
            }
            onChanged: canvas.requestPaint()
        }
    }

*PathInterpolator* animates an image along the same bezier curve, using a `PathInterpolator </sdk/apps/qml/QtQuick/animation/#pathinterpolator>`_  instead.

.. code:: qml

    PathInterpolator {
        id: motionPath
        path: Path {
            startX: 50; startY: 50
            PathCubic {
                x: window.width - 50
                y: window.height - 50
                control1X: x; control1Y: 50
                control2X: 50; control2Y: y
            }
            onChanged: canvas.requestPaint()
        }
        SequentialAnimation on progress {
            running: true
            loops: -1
            PauseAnimation { duration: 1000 }
            NumberAnimation {
                id: progressAnim
                running: false
                from: 0; to: 1
                duration: 2000
                easing.type: Easing.InQuad
            }
        }
    }

Files:

-  animation/animation.qml
-  animation/basics/animators.qml
-  animation/basics/color-animation.qml
-  animation/basics/property-animation.qml
-  animation/behaviors/SideRect.qml
-  animation/behaviors/behavior-example.qml
-  animation/behaviors/tvtennis.qml
-  animation/behaviors/wigglytext.qml
-  animation/easing/easing.qml
-  animation/pathanimation/pathanimation.qml
-  animation/pathinterpolator/pathinterpolator.qml
-  animation/states/states.qml
-  animation/states/transitions.qml
-  animation/main.cpp
-  animation/animation.pro
-  animation/animation.qmlproject
-  animation/animation.qrc

