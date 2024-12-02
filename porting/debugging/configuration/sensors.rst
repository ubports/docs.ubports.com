Sensor Configuration
====================

Required Sensors
----------------

- Accelerometer
- Proximity
- Ambient light
- GPS (optional)

Configuration Steps
-------------------
1. Verify sensor detection:

   .. code-block:: bash

       ls /dev/input/event*
       getevent -i

2. Configure sensor HAL:

   - Check sensorfw configuration
   - Verify sensor mappings
   - Test orientation changes

Common Issues
-------------

- Incorrect event mapping
- Missing calibration
- HAL initialization failures

Testing
-------
Use sensorfw-tests package:

.. code-block:: bash

    sensor-test accelerometer
    sensor-test proximity