.. _sdk_ubuntu_components_styles_actionbarstyle:
Ubuntu.Components.Styles ActionBarStyle
=======================================

Style API for action bar.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Styles 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  `backgroundColor </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/_backgroundColor-prop>`_ 
   : color
-  `buttons </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/_buttons-prop>`_ 
   : ActionItemProperties
-  `defaultDelegate </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/_defaultDelegate-prop>`_ 
   : Component
-  `defaultNumberOfSlots </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/_defaultNumberOfSlots-prop>`_ 
   : int
-  `overflowIconName </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/_overflowIconName-prop>`_ 
   : string
-  `overflowIconSource </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/_overflowIconSource-prop>`_ 
   : url
-  `overflowText </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/_overflowText-prop>`_ 
   : string

Detailed Description
--------------------

The component defines the style API for the
:ref:`ActionBar <sdk_ubuntu_components_actionbar>` component.

Property Documentation
----------------------

.. _sdk_ubuntu_components_styles_actionbarstyle_backgroundColor-prop:

+--------------------------------------------------------------------------+
|        \ backgroundColor : color                                         |
+--------------------------------------------------------------------------+

The color of the background of the action bar.

| 

.. _sdk_ubuntu_components_styles_actionbarstyle_[read-only] buttons-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] buttons :                                           |
| `ActionItemProperties </sdk/apps/qml/Ubuntu.Components/Styles.ActionItem |
| Properties/>`_                                                           |
+--------------------------------------------------------------------------+

Configuration of the colors of the action buttons in the action bar.

| 

.. _sdk_ubuntu_components_styles_actionbarstyle_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ defaultDelegate : `Component <sdk_qtqml_component>`        |
+--------------------------------------------------------------------------+

The default action delegate if the styled item does not provide a
different delegate.

| 

.. _sdk_ubuntu_components_styles_actionbarstyle_defaultNumberOfSlots-prop:

+--------------------------------------------------------------------------+
|        \ defaultNumberOfSlots : int                                      |
+--------------------------------------------------------------------------+

The default number of slots for the action bar.

| 

.. _sdk_ubuntu_components_styles_actionbarstyle_overflowIconName-prop:

+--------------------------------------------------------------------------+
|        \ overflowIconName : string                                       |
+--------------------------------------------------------------------------+

The icon name for action of the overflow button.

| 

.. _sdk_ubuntu_components_styles_actionbarstyle_overflowIconSource-prop:

+--------------------------------------------------------------------------+
|        \ overflowIconSource :                                            |
| `url <http://doc.qt.io/qt-5/qml-url.html>`_                              |
+--------------------------------------------------------------------------+

The icon source for the action of the overflow button. Setting the icon
source will override the icon name.

| 

.. _sdk_ubuntu_components_styles_actionbarstyle_overflowText-prop:

+--------------------------------------------------------------------------+
|        \ overflowText : string                                           |
+--------------------------------------------------------------------------+

The text for the action of the overflow button, which may be used in the
action delegate.

| 
