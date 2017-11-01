The base class for all dialogs, sheets and popovers. Do not use
directly.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Popups 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `OrientationHelper </sdk/apps/qml/Ub |
|                                      | untu.Components/OrientationHelper/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `Dialog </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Popups.Dialog/>`__,             |
|                                      | `Popover </sdk/apps/qml/Ubuntu.Compo |
|                                      | nents/Popups.Popover/>`__,           |
|                                      | and                                  |
|                                      | `SheetBase </sdk/apps/qml/Ubuntu.Com |
|                                      | ponents/Popups.SheetBase/>`__.       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`dismissArea </sdk/apps/qml/Ubuntu.Components/Popups.PopupBase#dismissArea-prop>`__****
   : Item
-  ****`grabDismissAreaEvents </sdk/apps/qml/Ubuntu.Components/Popups.PopupBase#grabDismissAreaEvents-prop>`__****
   : bool

Methods
-------

-  ****`hide </sdk/apps/qml/Ubuntu.Components/Popups.PopupBase#hide-method>`__****\ ()
-  ****`show </sdk/apps/qml/Ubuntu.Components/Popups.PopupBase#show-method>`__****\ ()

Detailed Description
--------------------

Examples: See subclasses.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ dismissArea : `Item </sdk/apps/qml/QtQuick/Item/>`__            |
+--------------------------------------------------------------------------+

The property holds the area used to dismiss the popups, the area from
where mouse and touch events will be grabbed. By default this area is
the Popup itself.

| 

+--------------------------------------------------------------------------+
|        \ grabDismissAreaEvents : bool                                    |
+--------------------------------------------------------------------------+

The property specifies whether to forward or not the mouse and touch
events happening outside of the popover. By default all events are
grabbed.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ hide()                                                          |
+--------------------------------------------------------------------------+

Hide the popup. Only use this function if you handle memory management.
Otherwise use PopupUtils.close() to do it automatically.

| 

+--------------------------------------------------------------------------+
|        \ show()                                                          |
+--------------------------------------------------------------------------+

Make the popup visible. Reparent to the background area object first if
needed. Only use this function if you handle memory management.
Otherwise use PopupUtils.open() to do it automatically.

| 
