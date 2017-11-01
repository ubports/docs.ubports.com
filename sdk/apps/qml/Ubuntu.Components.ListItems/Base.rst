Parent class of various list item classes that can have an icon and a
progression symbol.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Empty </sdk/apps/qml/Ubuntu.Compone |
|                                      | nts/ListItems.Empty/>`__             |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `MultiValue </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/ListItems.MultiValue/>`__,  |
|                                      | `SingleValue </sdk/apps/qml/Ubuntu.C |
|                                      | omponents/ListItems.SingleValue/>`__ |
|                                      | ,                                    |
|                                      | and                                  |
|                                      | `Subtitled </sdk/apps/qml/Ubuntu.Com |
|                                      | ponents/ListItems.Subtitled/>`__.    |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`fallbackIconName </sdk/apps/qml/Ubuntu.Components/ListItems.Base#fallbackIconName-prop>`__****
   : string
-  ****`fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.Base#fallbackIconSource-prop>`__****
   : url
-  ****`iconFrame </sdk/apps/qml/Ubuntu.Components/ListItems.Base#iconFrame-prop>`__****
   : bool
-  ****`progression </sdk/apps/qml/Ubuntu.Components/ListItems.Base#progression-prop>`__****
   : bool

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component
instead.**

Examples: See subclasses

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ fallbackIconName : string                                       |
+--------------------------------------------------------------------------+

The icon shown in the list item if iconName failed to load (optional).

If both
`fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.Base#fallbackIconSource-prop>`__
and fallbackIconName are defined, fallbackIconName will be ignored.

**Note:** The complete list of icons available in Ubuntu is not
published yet. For now please refer to the folders where the icon themes
are installed:

-  Ubuntu Touch: /usr/share/icons/suru
-  Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

| 

+--------------------------------------------------------------------------+
|        \ fallbackIconSource :                                            |
| `url <http://doc.qt.io/qt-5/qml-url.html>`__                             |
+--------------------------------------------------------------------------+

The location of the icon to show in the list item if iconSource failed
to load (optional).

| 

+--------------------------------------------------------------------------+
|        \ iconFrame : bool                                                |
+--------------------------------------------------------------------------+

Show or hide the frame around the icon

| 

+--------------------------------------------------------------------------+
|        \ progression : bool                                              |
+--------------------------------------------------------------------------+

Show or hide the progression symbol.

| 
