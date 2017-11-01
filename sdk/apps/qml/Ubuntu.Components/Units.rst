Units of measurement for sizes, spacing, margin, etc.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`gridUnit </sdk/apps/qml/Ubuntu.Components/Units#gridUnit-prop>`__****
   : real

Methods
-------

-  real
   ****`dp </sdk/apps/qml/Ubuntu.Components/Units#dp-method>`__****\ (real
   *value*)
-  real
   ****`gu </sdk/apps/qml/Ubuntu.Components/Units#gu-method>`__****\ (real
   *value*)

Detailed Description
--------------------

Units provides facilities for measuring UI elements in a variety of
units other than just pixels.

A global instance of Units is exposed as the **units** context property.
Example usage:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Item {
        width: units.gu(2)
        height: units.gu(5)
    }

**See also** `Resolution
Independence </sdk/apps/qml/UbuntuUserInterfaceToolkit/resolution-independence/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ gridUnit : real                                                 |
+--------------------------------------------------------------------------+

The number of pixels 1 grid unit corresponds to.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ real dp(real *value*)                                           |
+--------------------------------------------------------------------------+

Returns the number of pixels *value* density independent pixels
correspond to.

| 

+--------------------------------------------------------------------------+
|        \ real gu(real *value*)                                           |
+--------------------------------------------------------------------------+

Returns the number of pixels *value* grid units correspond to.

| 
