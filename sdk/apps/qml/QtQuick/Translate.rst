.. _sdk_qtquick_translate:

QtQuick Translate
=================

Provides a way to move an Item without changing its x or y properties

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`x <sdk_qtquick_translate_x>` : real
-  :ref:`y <sdk_qtquick_translate_y>` : real

Detailed Description
--------------------

The Translate type provides independent control over position in addition to the Item's x and y properties.

The following example moves the Y axis of the :ref:`Rectangle <sdk_qtquick_rectangle>` items while still allowing the `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  to lay the items out as if they had not been transformed:

.. code:: qml

    import QtQuick 2.0
    Row {
        Rectangle {
            width: 100; height: 100
            color: "blue"
            transform: Translate { y: 20 }
        }
        Rectangle {
            width: 100; height: 100
            color: "red"
            transform: Translate { y: -20 }
        }
    }

Property Documentation
----------------------

.. _sdk_qtquick_translate_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The translation along the X axis.

The default value is 0.0.

.. _sdk_qtquick_translate_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The translation along the Y axis.

The default value is 0.0.

