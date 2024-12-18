Sensor Debugging 
================

Available Sensors
-----------------
Common types::

    accelerometer         # Motion
    proximity             # Distance
    als                   # Light
    compass               # Orientation

Debug Interface
---------------
Input system::

    ls /dev/input/event*  # Device nodes
    getevent -l           # Monitor events
    evtest                # Test inputs

Sensor Service
--------------
Debug steps::

    # Check service
    systemctl status sensorfwd
    journalctl -u sensorfwd
    
    # Test sensors
    sensorfw-tests
    sensor-test accelerometer

Calibration
-----------
Methods::

    # Read values
    cat /sys/devices/iio:device0/*
    
    # Test calibration
    /usr/lib/sensord-qt5/testing/testutils/sensordummyclient