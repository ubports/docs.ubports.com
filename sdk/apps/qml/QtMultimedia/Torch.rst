Simple control over torch functionality

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`enabled </sdk/apps/qml/QtMultimedia/Torch#enabled-prop>`__**** :
   bool
-  ****`power </sdk/apps/qml/QtMultimedia/Torch#power-prop>`__**** : int

Detailed Description
--------------------

``Torch`` is part of the **QtMultimedia 5.0** module.

In many cases the torch hardware is shared with camera flash
functionality, and might be automatically controlled by the device. You
have control over the power level (of course, higher power levels are
brighter but reduce battery life significantly).

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Torch {
        power: 75       // 75% of full power
        enabled: true   // On
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property indicates whether the torch is enabled. If the torch
functionality is shared with the camera flash hardware, the camera will
take priority over torch settings and the torch is disabled.

| 

+--------------------------------------------------------------------------+
|        \ power : int                                                     |
+--------------------------------------------------------------------------+

This property holds the current torch power setting, as a percentage of
full power.

In some cases this setting may change automatically as a result of
temperature or battery conditions.

| 
