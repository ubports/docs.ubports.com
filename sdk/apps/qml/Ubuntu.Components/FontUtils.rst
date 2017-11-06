.. _sdk_ubuntu_components_fontutils:

Ubuntu.Components FontUtils
===========================

FontUtils is a context property, which provides utility functions for font manipulations.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Methods
-------

-  real :ref:`modularScale <sdk_ubuntu_components_fontutils_modularScale>`\ (string *size*)
-  real :ref:`sizeToPixels <sdk_ubuntu_components_fontutils_sizeToPixels>`\ (string *size*)

Detailed Description
--------------------

:ref:`FontUtils <sdk_ubuntu_components_fontutils>` cannot be instantiated and it is already available as a context property, i.e. ':ref:`FontUtils <sdk_ubuntu_components_fontutils>`' is an instance that can be used from anywhere in the code.

Example of a Label implementation which uses the default base scale for the font size:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Text {
        property string fontSize: "medium"
        font.pixelSize: FontUtils.sizeToPixels(fontSize)
    }

Another example of a custom text input component exposing a fontSize property and a base font unit size to scale its font:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    TextInput {
        property string fontSize: "small"
        property int baseFontUnits: units.dp(20)
        font.pixelSize: FontUtils.modularScale(fontSize) * units.dp(baseFontUnits)
    }

Method Documentation
--------------------

.. _sdk_ubuntu_components_fontutils_modularScale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| real modularScale(string *size*)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function returns the number interpretation of a given font scale. The scale can have one of the following values:

-  **xx-small**
-  **x-small**
-  **small**
-  **medium**
-  **large**
-  **x-large**

.. _sdk_ubuntu_components_fontutils_sizeToPixels:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| real sizeToPixels(string *size*)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function calculates the pixel size of a given scale. The size scale can be one of the strings specified at :ref:`modularScale <sdk_ubuntu_components_fontutils_modularScale>` function. On failure returns 0.

