.. _sdk_qtmultimedia_torch:

QtMultimedia Torch
==================

Simple control over torch functionality

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`enabled <sdk_qtmultimedia_torch_enabled>` : bool
-  :ref:`power <sdk_qtmultimedia_torch_power>` : int

Detailed Description
--------------------

``Torch`` is part of the **QtMultimedia 5.0** module.

In many cases the torch hardware is shared with camera flash functionality, and might be automatically controlled by the device. You have control over the power level (of course, higher power levels are brighter but reduce battery life significantly).

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Torch {
        power: 75       // 75% of full power
        enabled: true   // On
    }

Property Documentation
----------------------

.. _sdk_qtmultimedia_torch_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether the torch is enabled. If the torch functionality is shared with the camera flash hardware, the camera will take priority over torch settings and the torch is disabled.

.. _sdk_qtmultimedia_torch_power:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| power : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current torch power setting, as a percentage of full power.

In some cases this setting may change automatically as a result of temperature or battery conditions.

