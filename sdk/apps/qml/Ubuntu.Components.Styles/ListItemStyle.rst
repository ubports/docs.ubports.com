Style API for ListItem component.

+---------------------+---------------------------------------+
| Import Statement:   | import Ubuntu.Components.Styles 1.3   |
+---------------------+---------------------------------------+
| Since:              | Ubuntu.Components.Styles 1.2          |
+---------------------+---------------------------------------+

Properties
----------

-  ****`animatePanels </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#animatePanels-prop>`__****
   : bool
-  ****`dragPanel </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#dragPanel-prop>`__****
   : Item
-  ****`dropAnimation </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#dropAnimation-prop>`__****
   : PropertyAnimation
-  ****`flickable </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#flickable-prop>`__****
   : Flickable
-  ****`listItemIndex </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#listItemIndex-prop>`__****
   : in
-  ****`snapAnimation </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#snapAnimation-prop>`__****
   : Animation

Methods
-------

-  ****`rebound </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#rebound-method>`__****\ ()
-  ****`swipeEvent </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle#swipeEvent-method>`__****\ (SwipeEvent
   *event*)

Detailed Description
--------------------

Style API for the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component which
provides actions, select and drag handler delegates, and snap animation
via its properties.
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ treats the
style differently compared to the other components, as it loads the
style only when needed and not upon component creation.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ animatePanels : bool                                            |
+--------------------------------------------------------------------------+

The property drives the different panel animations in the style. Panels
should not be animated when created upon scrolling a view.

| 

+--------------------------------------------------------------------------+
|        \ dragPanel : `Item </sdk/apps/qml/QtQuick/Item/>`__              |
+--------------------------------------------------------------------------+

The property holds the item visualizing the drag handler.
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__'s dragging
mechanism uses this property to detect the area the dragging can be
initiated from. If not set, the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ will assume the
dragging can be initiated from the entire area of the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__.

| 

+--------------------------------------------------------------------------+
|        \ dropAnimation :                                                 |
| `PropertyAnimation </sdk/apps/qml/QtQuick/PropertyAnimation/>`__         |
+--------------------------------------------------------------------------+

The property holds the animation executed on
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ dropping.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] flickable :                                         |
| `Flickable </sdk/apps/qml/QtQuick/Flickable/>`__                         |
+--------------------------------------------------------------------------+

The property holds the Flickable (or
`ListView </sdk/apps/qml/QtQuick/ListView/>`__) holding the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ styled.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] listItemIndex : in                                  |
+--------------------------------------------------------------------------+

The property proxies the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__'s index context
property to the style, which is either the index of the list item in a
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ or the child index. Use
this property rather than the ``index`` context property as that may not
be defined in situations where the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ is not a
delegate of a `ListView </sdk/apps/qml/QtQuick/ListView/>`__ or
Repeater.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

| 

+--------------------------------------------------------------------------+
|        \ snapAnimation :                                                 |
| `Animation </sdk/apps/qml/QtQuick/Animation/>`__                         |
+--------------------------------------------------------------------------+

Holds the behavior used in animating when snapped in or out.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ rebound()                                                       |
+--------------------------------------------------------------------------+

Function called by the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ when a
rebounding action is requested from the style. This usually happens when
the list item's content is swiped and there is a press event happening
outside of the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__'s boundary or
when the view embedding the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ starts
scrolling.

| 

+--------------------------------------------------------------------------+
|        \ swipeEvent(SwipeEvent *event*)                                  |
+--------------------------------------------------------------------------+

The function is called by the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ when a swipe
action is performed, i.e. when the swipe is started, the position is
updated or the swipe ends. The **event** object provides information
about the swipe status, positions and the updated
`ListItem.contentItem </sdk/apps/qml/Ubuntu.Components/ListItem#contentItem-prop>`__
position. The style implementation can override the contentItem position
by setting the ``event.content.x`` or ``event.content.y`` properties to
the desired value.

The ``event`` object properties are:

-  ``status`` - enumeration of ``Started, Updated, Finished`` values
   representing the swipe event status
-  ``to`` - (x, y) coordinates of the current mouse/touch point -
   read-only
-  ``from`` - (x, y) coordinates of the previous mouse/touch point -
   read-only
-  ``content`` - (x, y) updated coordinates of the
   `ListItem.contentItem </sdk/apps/qml/Ubuntu.Components/ListItem#contentItem-prop>`__,
   read-write

| 
