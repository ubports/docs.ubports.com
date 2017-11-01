The BottomEdgeHint shows the availability of extra features available
from the bottom edge of the application.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `ActionItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/ActionItem/>`__             |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`deactivateTimeout </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#deactivateTimeout-prop>`__****
   : int
-  ****`flickable </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#flickable-prop>`__****
   : Flickable
-  ****`iconName </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#iconName-prop>`__****
   : string
-  ****`iconSource </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#iconSource-prop>`__****
   : url
-  ****`status </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#status-prop>`__****
   : Status
-  ****`swipeArea </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#swipeArea-prop>`__****
   : SwipeArea
-  ****`text </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#text-prop>`__****
   : string

Signals
-------

-  void
   ****`clicked </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#clicked-signal>`__****\ ()

Detailed Description
--------------------

It displays a label and/or an icon at the bottom of the component it is
attached to.

When used with a mouse it acts like a button. The typical action
associated with clicking on it should be revealing the extra features
provided by the bottom edge.

Example:

.. code:: qml

    BottomEdgeHint {
        id: bottomEdgeHint
        text: i18n.tr("Favorites")
        onClicked: revealBottomEdge()
    }

The component is styled through **BottomEdgeHintStyle**.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ deactivateTimeout : int                                         |
+--------------------------------------------------------------------------+

The property specifies the timeout interval in milliseconds the
`status </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#status-prop>`__
is set to *Inactive* after a gesture based activation. Gesture based
activation is only possible when mouse is not attached to the device.
Defaults to 800 milliseconds.

| 

+--------------------------------------------------------------------------+
|        \ flickable : `Flickable </sdk/apps/qml/QtQuick/Flickable/>`__    |
+--------------------------------------------------------------------------+

The property holds the flickable, which when flicked hides the hint.
*Hidden* state is reached when this property is set to a Flickable which
is flicking or moving. It is recommended to set the property when the
hint is placed above a flickable content. Defaults to null.

| 

+--------------------------------------------------------------------------+
|        \ iconName : string                                               |
+--------------------------------------------------------------------------+

The icon associated with the
`BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__ in
the icon theme.

If both
`iconSource </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#iconSource-prop>`__
and iconName are defined, iconName will be ignored.

| 

+--------------------------------------------------------------------------+
|        \ iconSource : `url <http://doc.qt.io/qt-5/qml-url.html>`__       |
+--------------------------------------------------------------------------+

The icon displayed by the
`BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__.

This is the URL of any image file. If both iconSource and
`iconName </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#iconName-prop>`__
are defined,
`iconName </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#iconName-prop>`__
will be ignored.

| 

+--------------------------------------------------------------------------+
|        \ status : Status                                                 |
+--------------------------------------------------------------------------+

The property represents the status of the hint. The property is writable
so it can be set to any of the following values programatically:

+------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status     | Description                                                                                                                                                                                                    |
+============+================================================================================================================================================================================================================+
| Hidden     | The hint is not shown. Equivalent with setting *visible* to ``false``, however visuals may do animations when altering this property. It can only be set if the current status is not *Locked*.                |
+------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inactive   | The hint is shown and inactive. Styles can represent this state with different visuals. When inactive, `clicked </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#clicked-signal>`__ signal cannot be emitted.   |
+------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Active     | The hint is shown and active, meaning `clicked </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint#clicked-signal>`__ signal is emitted when clicked with mouse.                                                   |
+------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Locked     | Similar to *Active* the hint is shown and active, but no automatic transition to any other state is allowed. This is relevant for style implementations.                                                       |
+------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**Note:** *Locked* status value is set automatically when the system
detects a mouse attached. In this case any change into other state value
than *Locked* is rejected. Defaults to

-  Inactive if no mouse is attached or
-  Locked if there is a mouse detected.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] swipeArea :                                         |
| `SwipeArea </sdk/apps/qml/Ubuntu.Components/SwipeArea/>`__               |
+--------------------------------------------------------------------------+

The property specifies the
`SwipeArea </sdk/apps/qml/Ubuntu.Components/SwipeArea/>`__ attached to
the component driving its behavior.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The label displayed by the
`BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void clicked()                                                  |
+--------------------------------------------------------------------------+

This handler is called when there is a mouse click on the
`BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__ and
the `BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__
is not disabled.

| 
