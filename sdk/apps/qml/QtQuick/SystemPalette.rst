.. _sdk_qtquick_systempalette:
QtQuick SystemPalette
=====================

Provides access to the Qt palettes

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`alternateBase <sdk_qtquick_systempalette_alternateBase-prop>`
   : color
-  :ref:`base <sdk_qtquick_systempalette_base-prop>` : color
-  :ref:`button <sdk_qtquick_systempalette_button-prop>` : color
-  :ref:`buttonText <sdk_qtquick_systempalette_buttonText-prop>` :
   color
-  :ref:`colorGroup <sdk_qtquick_systempalette_colorGroup-prop>` :
   enumeration
-  :ref:`dark <sdk_qtquick_systempalette_dark-prop>` : color
-  :ref:`highlight <sdk_qtquick_systempalette_highlight-prop>` :
   color
-  :ref:`highlightedText <sdk_qtquick_systempalette_highlightedText-prop>`
   : color
-  :ref:`light <sdk_qtquick_systempalette_light-prop>` : color
-  :ref:`mid <sdk_qtquick_systempalette_mid-prop>` : color
-  :ref:`midlight <sdk_qtquick_systempalette_midlight-prop>` :
   color
-  :ref:`shadow <sdk_qtquick_systempalette_shadow-prop>` : color
-  :ref:`text <sdk_qtquick_systempalette_text-prop>` : color
-  :ref:`window <sdk_qtquick_systempalette_window-prop>` : color
-  :ref:`windowText <sdk_qtquick_systempalette_windowText-prop>` :
   color

Detailed Description
--------------------

The :ref:`SystemPalette <sdk_qtquick_systempalette>` type provides access
to the Qt application palettes. This provides information about the
standard colors used for application windows, buttons and other
features. These colors are grouped into three *color groups*:
``Active``, ``Inactive``, and ``Disabled``. See the QPalette
documentation for details about color groups and the properties provided
by :ref:`SystemPalette <sdk_qtquick_systempalette>`.

This can be used to color items in a way that provides a more native
look and feel.

The following example creates a palette from the ``Active`` color group
and uses this to color the window and text items appropriately:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        SystemPalette { id: myPalette; colorGroup: SystemPalette.Active }
        width: 640; height: 480
        color: myPalette.window
        Text {
            anchors.fill: parent
            text: "Hello!"; color: myPalette.windowText
        }
    }

**See also** QPalette.

Property Documentation
----------------------

.. _sdk_qtquick_systempalette_alternateBase-prop:

+--------------------------------------------------------------------------+
|        \ alternateBase : color                                           |
+--------------------------------------------------------------------------+

The alternate base color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_base-prop:

+--------------------------------------------------------------------------+
|        \ base : color                                                    |
+--------------------------------------------------------------------------+

The base color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_button-prop:

+--------------------------------------------------------------------------+
|        \ button : color                                                  |
+--------------------------------------------------------------------------+

The button color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_buttonText-prop:

+--------------------------------------------------------------------------+
|        \ buttonText : color                                              |
+--------------------------------------------------------------------------+

The button text foreground color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_colorGroup-prop:

+--------------------------------------------------------------------------+
|        \ colorGroup : enumeration                                        |
+--------------------------------------------------------------------------+

The color group of the palette. This can be one of:

-  :ref:`SystemPalette <sdk_qtquick_systempalette>`.Active (default)
-  :ref:`SystemPalette <sdk_qtquick_systempalette>`.Inactive
-  :ref:`SystemPalette <sdk_qtquick_systempalette>`.Disabled

**See also** QPalette::ColorGroup.

| 

.. _sdk_qtquick_systempalette_dark-prop:

+--------------------------------------------------------------------------+
|        \ dark : color                                                    |
+--------------------------------------------------------------------------+

The dark color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_highlight-prop:

+--------------------------------------------------------------------------+
|        \ highlight : color                                               |
+--------------------------------------------------------------------------+

The highlight color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_highlightedText-prop:

+--------------------------------------------------------------------------+
|        \ highlightedText : color                                         |
+--------------------------------------------------------------------------+

The highlighted text color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_light-prop:

+--------------------------------------------------------------------------+
|        \ light : color                                                   |
+--------------------------------------------------------------------------+

The light color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_mid-prop:

+--------------------------------------------------------------------------+
|        \ mid : color                                                     |
+--------------------------------------------------------------------------+

The mid color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_midlight-prop:

+--------------------------------------------------------------------------+
|        \ midlight : color                                                |
+--------------------------------------------------------------------------+

The midlight color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_shadow-prop:

+--------------------------------------------------------------------------+
|        \ shadow : color                                                  |
+--------------------------------------------------------------------------+

The shadow color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_text-prop:

+--------------------------------------------------------------------------+
|        \ text : color                                                    |
+--------------------------------------------------------------------------+

The text color of the current color group.

**See also** QPalette::ColorRole.

| 

.. _sdk_qtquick_systempalette_window-prop:

+--------------------------------------------------------------------------+
|        \ window : color                                                  |
+--------------------------------------------------------------------------+

The window (general background) color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ windowText : color                                              |
+--------------------------------------------------------------------------+

The window text (general foreground) color of the current color group.

**See also** QPalette::ColorRole.

| 
