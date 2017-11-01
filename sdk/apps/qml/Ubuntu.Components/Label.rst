Extended Text item with Ubuntu styling.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Text </sdk/apps/qml/QtQuick/Text/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`textSize </sdk/apps/qml/Ubuntu.Components/Label#textSize-prop>`__****
   : enumeration

Detailed Description
--------------------

Label is an extended Text item with Ubuntu styling. It exposes an
additional property that provides adaptive resizing based on the
measurement unit.

Example:

.. code:: qml

    Rectangle {
        color: UbuntuColors.warmGrey
        width: units.gu(30)
        height: units.gu(30)
        Label {
            anchors.centerIn: parent
            text: "Hello world!"
            textSize: Label.Large
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ textSize : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds an abstract size that allows adaptive resizing based
on the measurement unit (see Units). The default value is
``Label.Medium``.

**Note:** Setting this disables support for the deprecated fontSize
property.

-  **Label.XxSmall** - extremely small font size
-  **Label.XSmall** - very small font size
-  **Label.Small** - small font size
-  **Label.Medium** - medium font size
-  **Label.Large** - large font size
-  **Label.XLarge** - very large font size

This QML property was introduced in Ubuntu.Components 1.3.

| 
