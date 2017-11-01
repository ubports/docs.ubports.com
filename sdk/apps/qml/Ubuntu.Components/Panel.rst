A panel that can be swiped in and out from an edge of the window by the
user. For most applications, it is highly recommended to use the
MainView instead which includes a toolbar at its bottom that can be
swiped in or out.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`align </sdk/apps/qml/Ubuntu.Components/Panel#align-prop>`__****
   : int
-  ****`animate </sdk/apps/qml/Ubuntu.Components/Panel#animate-prop>`__****
   : bool
-  ****`animating </sdk/apps/qml/Ubuntu.Components/Panel#animating-prop>`__****
   : bool
-  ****`contents </sdk/apps/qml/Ubuntu.Components/Panel#contents-prop>`__****
   : list<Object>
-  ****`hideTimeout </sdk/apps/qml/Ubuntu.Components/Panel#hideTimeout-prop>`__****
   : int
-  ****`hintSize </sdk/apps/qml/Ubuntu.Components/Panel#hintSize-prop>`__****
   : real
-  ****`locked </sdk/apps/qml/Ubuntu.Components/Panel#locked-prop>`__****
   : bool
-  ****`opened </sdk/apps/qml/Ubuntu.Components/Panel#opened-prop>`__****
   : bool
-  ****`position </sdk/apps/qml/Ubuntu.Components/Panel#position-prop>`__****
   : real
-  ****`pressed </sdk/apps/qml/Ubuntu.Components/Panel#pressed-prop>`__****
   : bool
-  ****`triggerSize </sdk/apps/qml/Ubuntu.Components/Panel#triggerSize-prop>`__****
   : real

Methods
-------

-  ****`close </sdk/apps/qml/Ubuntu.Components/Panel#close-method>`__****\ ()
-  ****`open </sdk/apps/qml/Ubuntu.Components/Panel#open-method>`__****\ ()

Detailed Description
--------------------

Unless your application has very specific needs for a Panel, use a
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__ with the
default toolbar.

When using a Panel, do not theme it directly, but theme its contents,
because the Panel itself should not have visible elements, since it is
in the view (to detect mouse events) even when its contents should be
invisible.

Set the anchors and/or width/height of the Panel to specify the area
that the Panel covers when opened.

A black panel that can be swiped in from the lower-right of the window
can be created like this:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Item {
        width: units.gu(80)
        height: units.gu(80)
        Panel {
            id: panel
            anchors {
                right: parent.right
                bottom: parent.bottom
            }
            width: parent.width / 2
            height: units.gu(8)
            Rectangle {
                anchors.fill: parent
                color: theme.palette.normal.overlay
                Button {
                    anchors.centerIn: parent
                    text: "Click"
                }
            }
        }
    }

A panel that looks like the standard (bottom-aligned) toolbar, but with
custom contents, can be created like this:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Item {
        width: units.gu(80)
        height: units.gu(80)
        Panel {
            id: panel
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(8)
            Item {
                anchors.fill: parent
                // two properties used by the toolbar delegate:
                property bool opened: panel.opened
                property bool animating: panel.animating
                Button {
                    anchors.centerIn: parent
                    text: "Click"
                }
            }
        }
    }

Any Items can be placed inside the Panel, but MouseAreas can block mouse
events from reaching the panel and thus obstruct the swiping behavior
for hiding the panel. As a result, the user cannot start swiping on the
buttons in the examples above in order to hide the panel. To remedy
this, clicked() signals are forwarded from the panel by calling the
child's trigger() function. Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Rectangle {
        color: theme.palette.normal.background
        width: units.gu(40)
        height: units.gu(40)
        Panel {
            id: panel
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(8)
            Rectangle {
                color: theme.palette.normal.overlay
                anchors.fill: parent
                Rectangle {
                    width: units.gu(8)
                    height: units.gu(4)
                    anchors.centerIn: parent
                    color: "red"
                    function trigger() {
                        print("The red rectangle was clicked");
                    }
                }
            }
        }
        Component.onCompleted: panel.open();
    }

Like this, the red rectangle accepts click events, but the user can
still swipe down on top of the rectangle in order to hide the panel.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ align : int                                                     |
+--------------------------------------------------------------------------+

The property defines the alignment of the panel. The implementation
supports the following values:

-  Qt.AlignBottom to swipe in the panel from the bottom (default)
-  Qt.AlignTop to swipe in the panel from the top
-  Qt.AlignLeft to swipe in the panel from the left
-  Qt.AlignRight to swipe in the panel from the right
-  Qt.AlignLeading left when layout mirrorring is disabled, right
   otherwise
-  Qt.AlignTrailing right when layout mirroring is disabled, left
   otherwise

The default value is **Qt.AlignBottom**, and it is not recommended to
change the default value because the left, right and top edge are
already used for system functions, while the bottom edge is reserved for
app-specific functionality such as a default toolbar. The use of
Qt.AlignLeading and Qt.AlignTrailing is preferred over Qt.AlignLeft and
Qt.AlignRight in order to more easily support right-to-left user
interfaces that use
`LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__.

| 

+--------------------------------------------------------------------------+
|        \ animate : bool                                                  |
+--------------------------------------------------------------------------+

Animate transitions between the different panel states.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] animating : bool                                    |
+--------------------------------------------------------------------------+

The toolbar is currently not in a stable hidden or visible state.

| 

+--------------------------------------------------------------------------+
|        \ [default] contents : list<Object>                               |
+--------------------------------------------------------------------------+

Default property, holds the content which will be swiped in and out.

| 

+--------------------------------------------------------------------------+
|        \ hideTimeout : int                                               |
+--------------------------------------------------------------------------+

The time in milliseconds before the panel automatically hides after
inactivity when it is not locked. Interacting with the panel resets the
timer. Note that adding contents to the panel that accepts mouse events
will prevent the panel from detecting interaction and the timer will not
be reset. Setting a negative value will disable automatic hiding.
Default value: -1 (automatic hiding is disabled).

| 

+--------------------------------------------------------------------------+
|        \ hintSize : real                                                 |
+--------------------------------------------------------------------------+

How much of the panel to show when the user touches the panel's edge.
This gives the user a hint that there is a panel hiding at that edge and
invites him/her to swipe to show the panel completely. Default value:
units.gu(2).

| 

+--------------------------------------------------------------------------+
|        \ locked : bool                                                   |
+--------------------------------------------------------------------------+

Disable edge swipe to open/close the panel. False by default.

| 

+--------------------------------------------------------------------------+
|        \ opened : bool                                                   |
+--------------------------------------------------------------------------+

When opened, the panel is visible, otherwise it is hidden. Use edge
swipes to open/close the panel. The opened property is not updated until
the swipe gesture is completed.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] position : real                                     |
+--------------------------------------------------------------------------+

The current position of the edge of the panel. The value is 0 when the
panel is opened, and has its maximum value when the panel is closed. The
maximum value is the width of the Panel for a left or right-aligned
panel, and the height of the panel for top or bottom-aligned panels.
When the user drags the Panel from the edge to open it, the position
will change from the maximum size (closed) to 0 (fully expanded).

| 

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

The user presses on the opened toolbar, or when the toolbar is closed
but not locked, the user presses in the toolbar trigger area.

| 

+--------------------------------------------------------------------------+
|        \ triggerSize : real                                              |
+--------------------------------------------------------------------------+

The size (height for top or bottom-aligned panels, width for left or
right-aligned panels) of the mouse area used to detect edge swipes to
open the panel, when the panel is not opened. Default value:
units.gu(2).

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ close()                                                         |
+--------------------------------------------------------------------------+

Close the panel

| 

+--------------------------------------------------------------------------+
|        \ open()                                                          |
+--------------------------------------------------------------------------+

Open the panel

| 
