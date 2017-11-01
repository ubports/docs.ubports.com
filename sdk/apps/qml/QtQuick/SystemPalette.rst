Provides access to the Qt palettes

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`alternateBase </sdk/apps/qml/QtQuick/SystemPalette#alternateBase-prop>`__****
   : color
-  ****`base </sdk/apps/qml/QtQuick/SystemPalette#base-prop>`__**** :
   color
-  ****`button </sdk/apps/qml/QtQuick/SystemPalette#button-prop>`__****
   : color
-  ****`buttonText </sdk/apps/qml/QtQuick/SystemPalette#buttonText-prop>`__****
   : color
-  ****`colorGroup </sdk/apps/qml/QtQuick/SystemPalette#colorGroup-prop>`__****
   : enumeration
-  ****`dark </sdk/apps/qml/QtQuick/SystemPalette#dark-prop>`__**** :
   color
-  ****`highlight </sdk/apps/qml/QtQuick/SystemPalette#highlight-prop>`__****
   : color
-  ****`highlightedText </sdk/apps/qml/QtQuick/SystemPalette#highlightedText-prop>`__****
   : color
-  ****`light </sdk/apps/qml/QtQuick/SystemPalette#light-prop>`__**** :
   color
-  ****`mid </sdk/apps/qml/QtQuick/SystemPalette#mid-prop>`__**** :
   color
-  ****`midlight </sdk/apps/qml/QtQuick/SystemPalette#midlight-prop>`__****
   : color
-  ****`shadow </sdk/apps/qml/QtQuick/SystemPalette#shadow-prop>`__****
   : color
-  ****`text </sdk/apps/qml/QtQuick/SystemPalette#text-prop>`__**** :
   color
-  ****`window </sdk/apps/qml/QtQuick/SystemPalette#window-prop>`__****
   : color
-  ****`windowText </sdk/apps/qml/QtQuick/SystemPalette#windowText-prop>`__****
   : color

Detailed Description
--------------------

The `SystemPalette </sdk/apps/qml/QtQuick/SystemPalette/>`__ type
provides access to the Qt application palettes. This provides
information about the standard colors used for application windows,
buttons and other features. These colors are grouped into three *color
groups*: ``Active``, ``Inactive``, and ``Disabled``. See the QPalette
documentation for details about color groups and the properties provided
by `SystemPalette </sdk/apps/qml/QtQuick/SystemPalette/>`__.

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

+--------------------------------------------------------------------------+
|        \ alternateBase : color                                           |
+--------------------------------------------------------------------------+

The alternate base color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ base : color                                                    |
+--------------------------------------------------------------------------+

The base color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ button : color                                                  |
+--------------------------------------------------------------------------+

The button color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ buttonText : color                                              |
+--------------------------------------------------------------------------+

The button text foreground color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ colorGroup : enumeration                                        |
+--------------------------------------------------------------------------+

The color group of the palette. This can be one of:

-  `SystemPalette </sdk/apps/qml/QtQuick/SystemPalette/>`__.Active
   (default)
-  `SystemPalette </sdk/apps/qml/QtQuick/SystemPalette/>`__.Inactive
-  `SystemPalette </sdk/apps/qml/QtQuick/SystemPalette/>`__.Disabled

**See also** QPalette::ColorGroup.

| 

+--------------------------------------------------------------------------+
|        \ dark : color                                                    |
+--------------------------------------------------------------------------+

The dark color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ highlight : color                                               |
+--------------------------------------------------------------------------+

The highlight color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ highlightedText : color                                         |
+--------------------------------------------------------------------------+

The highlighted text color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ light : color                                                   |
+--------------------------------------------------------------------------+

The light color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ mid : color                                                     |
+--------------------------------------------------------------------------+

The mid color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ midlight : color                                                |
+--------------------------------------------------------------------------+

The midlight color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ shadow : color                                                  |
+--------------------------------------------------------------------------+

The shadow color of the current color group.

**See also** QPalette::ColorRole.

| 

+--------------------------------------------------------------------------+
|        \ text : color                                                    |
+--------------------------------------------------------------------------+

The text color of the current color group.

**See also** QPalette::ColorRole.

| 

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
