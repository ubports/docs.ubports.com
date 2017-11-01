The ThemeEffect element represents a themed feedback effect.

+---------------------+------------+
| Import Statement:   | import .   |
+---------------------+------------+

Properties
----------

-  ****`effect </sdk/apps/qml/QtFeedback/themeeffect#effect-prop>`__****
   : ThemeEffect
-  ****`supported </sdk/apps/qml/QtFeedback/themeeffect#supported-prop>`__****
   : bool

Methods
-------

-  ****`play </sdk/apps/qml/QtFeedback/themeeffect#play-method-2>`__****\ (Effect)
-  ****`play </sdk/apps/qml/QtFeedback/themeeffect#play-method>`__****\ ()

Detailed Description
--------------------

This element is used for playing feedback effects that follow the system
theme. The actual feedback might be haptic, audio or some other method.

.. code:: qml

    //Example 1: using ThemeEffect declaring element
        import QtFeedback 5.0
        Rectangle {
            width: 180; height: 20
            radius:5
            color: "lightgrey"
            Text {
                anchors.centerIn: parent
                text: "Play Theme: Press"
            }
            ThemeEffect {
                 id: myOtherThemeEffect
                 effect: "Press"
             }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    myOtherThemeEffect.play();
                }
            }
        }
        //Example 2: using ThemeEffect without declaring element
        import QtFeedback.ThemeEffect 5.0 as Effect
        Rectangle {
            width: 180; height: 20
            radius:5
            color: "lightgrey"
            Text {
                anchors.centerIn: parent
                text: "Play Theme: Press"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Effect.effect = "Press"
                    Effect.play();
                }
            }
        }
        //Example 3: using ThemeEffect without declaring element and calling overloaded play function
        import QtFeedback.ThemeEffect 5.0 as Effect
        Rectangle {
            width: 180; height: 20
            radius:5
            color: "lightgrey"
            Text {
                anchors.centerIn: parent
                text: "Play Theme: Press"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Effect.play(Effect.Press)
                }
            }
        }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ effect :                                                        |
| `ThemeEffect </sdk/apps/qml/QtFeedback/themeeffect/>`__                  |
+--------------------------------------------------------------------------+

This property holds the specific themed effect type to play. It is one
of:

Effect.Undefined - Undefined feedback. No feedback is given.

Effect.Press - Feedback for when the screen is pressed.

Effect.Release - Feedback for touch release.

Effect.PressWeak - A weak feedback for press.

Effect.ReleaseWeak - A weak feedback for release.

Effect.PressStrong - A strong feedback for press.

Effect.ReleaseStrong - A strong feedback for release.

Effect.DragStart - Feedback for when dragging starts.

Effect.DragDropInZone - Feedback for when dragging ends and touch is
released inside a drop zone.

Effect.DragDropOutOfZone - Feedback for when dragging ends and touch is
released outside a drop zone.

Effect.DragCrossBoundary - Feedback for when crossing a boundary while
dragging.

Effect.Appear - Feedback for when an item is shown.

Effect.Disappear - Feedback for when an item item is closed.

Effect.Move - Feedback for dragging on screen.

**See also** QFeedbackEffect::Effect.

| 

+--------------------------------------------------------------------------+
|        \ supported : bool                                                |
+--------------------------------------------------------------------------+

This property is true if the system supports themed feedback effects.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ play(Effect)                                                    |
+--------------------------------------------------------------------------+

Call this to play the themed effect passed as parameter.

| 

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Call this to play the themed effect.

