Sensor Configuration
====================

Quick Reference
---------------
Essential configurations::

    # Required kernel configs
    CONFIG_INPUT_EVDEV=y           # Event interface
    CONFIG_INPUT_MISC=y            # Misc input drivers
    CONFIG_IIO=y                   # Industrial I/O support
    
    # Common sensor types
    /dev/input/event*              # Event-based sensors
    /sys/bus/iio/devices/*         # IIO-based sensors
    /dev/sensors/*                 # Android sensor HAL

Service configuration::

    systemctl status sensorfwd     # Sensor daemon status
    ls /etc/sensor/*.conf          # Sensor configs

Understanding Sensor Architecture
---------------------------------

Sensor Stack Components
^^^^^^^^^^^^^^^^^^^^^^^
The sensor system consists of multiple layers:

1. **Hardware Layer**
   
   * Physical sensors
   * Kernel drivers
   * Hardware interfaces (I2C/SPI)

2. **Abstraction Layer**
   
   * Android sensor HAL
   * Input subsystem
   * IIO subsystem

3. **User Space**
   
   * Sensor service (sensorfwd)
   * Android sensor service
   * Applications

Types of Sensors
^^^^^^^^^^^^^^^^
Common sensor categories:

1. **Motion Sensors**
   * Accelerometer
   * Gyroscope
   * Magnetometer

2. **Environmental Sensors**
   * Light sensor
   * Proximity sensor
   * Temperature sensor

3. **Position Sensors**
   * GPS
   * Compass
   * Step counter

Configuration Steps
-------------------

1. Kernel Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Enable required kernel support::

    # Basic input support
    CONFIG_INPUT=y
    CONFIG_INPUT_EVDEV=y
    
    # IIO framework
    CONFIG_IIO=y
    CONFIG_IIO_BUFFER=y
    CONFIG_IIO_TRIGGERED_BUFFER=y
    
    # Common sensor drivers
    CONFIG_INPUT_LSM6DSM=y        # IMU example
    CONFIG_INPUT_ALS_IS31FL319X=y # Light sensor example

2. Sensor Service Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Configure sensor framework::

    # /etc/sensorfw/primaryuse.conf
    [plugins]
    accelerometeradaptor = evdevaccelerometer
    alsadaptor = evdevals
    proximityadaptor = evdevproximity
    magnetometeradaptor = evdevmagnetometer

    [features]
    orientationenabled = true
    alwaysonEnabled = false

3. HAL Integration
^^^^^^^^^^^^^^^^^^
Configure sensor HAL mapping::

    # /vendor/etc/sensors/sensor_def_qcomdev.conf
    # Example Qualcomm sensor configuration
    :version 0x00010001
    
    # Accelerometer configuration
    10001 0x00010001 # SNS_REG_ITEM_SSI_DEVINFO_ACCEL_ID
        1 0x00010001 # SNS_REG_ITEM_SSI_DEVINFO_ACCEL_NUM
        2 0x00010001 # SNS_REG_ITEM_SSI_DEVINFO_ACCEL_TYPE
        3 0x00010001 # SNS_REG_ITEM_SSI_DEVINFO_ACCEL_NAME

4. Permission Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Set up udev rules for sensor access::

    # /etc/udev/rules.d/60-sensors.rules
    # Give input group access to sensor devices
    SUBSYSTEM=="input", KERNEL=="event*", MODE="0660", GROUP="input"
    
    # IIO devices
    SUBSYSTEM=="iio", MODE="0660", GROUP="input"
    
    # Generic sensor access
    KERNEL=="sensors", MODE="0660", GROUP="input"

Implementation Steps
--------------------

1. **Identify Available Sensors**
   
   * Check kernel driver support
   * Verify hardware presence
   * Review vendor documentation

2. **Configure Basic Support**
   
   * Enable kernel drivers
   * Set up sensor service
   * Configure permissions

3. **Setup Sensor Service**
   
   * Configure sensor adaptors
   * Set up calibration
   * Enable sensor features

4. **Verify Integration**
   
   * Check sensor detection
   * Verify permissions
   * Test basic functionality

For debugging and troubleshooting guidance, see :doc:`../hardware-debug/sensors`.

Common Configurations
---------------------

Qualcomm Devices
^^^^^^^^^^^^^^^^
Common settings for Qualcomm platforms::

    # Sensor drivers
    CONFIG_SENSORS_SSC=y
    CONFIG_SENSORS_QTI=y
    
    # Sensor HAL mapping
    [sensors]
    accel.sns_reg_config = "qualcomm/accel_reg_config"
    gyro.sns_reg_config = "qualcomm/gyro_reg_config"

MediaTek Devices
^^^^^^^^^^^^^^^^
Typical MediaTek configuration::

    # Sensor support
    CONFIG_MTK_SENSOR_SUPPORT=y
    CONFIG_MTK_SENSORS_1_0=y
    
    # Sensor configuration
    [sensors]
    accelerometer = "MTK_ACCEL"
    alsps = "MTK_ALSPS"   