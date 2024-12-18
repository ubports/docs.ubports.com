.. _debugging-hardware:

Hardware-Related Issues
=======================

This guide covers diagnosing and fixing hardware functionality issues in Ubuntu Touch ports.

Quick Diagnosis
---------------
1. Check hardware detection::

    # List detected devices
    ls /dev/input/event*
    
    # Check USB devices
    lsusb
    
    # View loaded kernel modules
    lsmod

2. Verify permissions::

    # Check udev rules
    ls /etc/udev/rules.d/
    
    # View device permissions
    ls -l /dev/input/event*

3. Monitor hardware events::

    # Watch device events
    udevadm monitor
    
    # Monitor input events
    evtest /dev/input/event1

WiFi Issues
-----------
Common Symptoms:

* WiFi device not detected
* Cannot scan networks
* Connection failures
* Poor performance

Diagnostic Steps:

1. Check driver status::

    # View wireless interfaces
    iw dev
    
    # Check driver loading
    dmesg | grep wifi
    
    # Verify firmware loading
    dmesg | grep firmware

2. Common causes:

   * Missing firmware files
   * Incorrect driver configuration
   * Power management issues
   * Regulatory domain problems

Solutions:

1. **Driver Setup**::

    # Required kernel configs
    CONFIG_CFG80211=y
    CONFIG_MAC80211=y
    CONFIG_WLAN=y

2. **Firmware Files**:

   * Check vendor firmware directory
   * Verify file permissions
   * Monitor firmware loading

3. **Debugging Steps**::

    # Enable verbose logging
    echo 1 > /sys/kernel/debug/ieee80211/phy0/netdev:wlan0/pm_disable
    
    # Monitor connection attempts
    iw event

Audio Problems
--------------
Symptoms:

* No audio output
* Distorted sound
* Wrong output device
* Microphone issues

Diagnostic Steps:

1. Check audio subsystem::

    # List audio devices
    aplay -l
    
    # Check ALSA status
    alsa-info

2. Verify UCM configuration::

    # Check UCM files
    ls /usr/share/alsa/ucm2/
    
    # Test audio routing
    pacmd list-sinks

Solutions:

1. **Driver Configuration**::

    # Essential kernel configs
    CONFIG_SND=y
    CONFIG_SND_SOC=y
    CONFIG_SND_PCM=y

2. **UCM Setup**:

   * Copy correct UCM files
   * Set proper device names
   * Configure mixer paths

3. **PulseAudio Configuration**::

    # Edit /etc/pulse/touch.pa
    load-module module-droid-card rate=48000
    load-module module-droid-hidl

Sensor Issues
-------------
Symptoms:

* Screen rotation not working
* Proximity sensor fails
* Ambient light issues
* Accelerometer problems

Diagnostic Steps:

1. Check sensor detection::

    # List input devices
    ls /dev/input/
    
    # Monitor sensor events
    getevent -l

2. Verify sensor service::

    # Check service status
    systemctl status sensorfwd
    
    # Monitor sensor data
    sensorfw-tests

Solutions:

1. **Input Configuration**::

    # Add udev rules
    ACTION=="add", KERNEL=="event*", ATTRS{name}=="accelerometer", \
        MODE="0666", GROUP="input"

2. **Sensor Service**:

   * Configure sensor plugins
   * Set correct orientations
   * Enable debugging output

3. **Common Fixes**::

    # Reset sensor service
    systemctl restart sensorfwd
    
    # Clear sensor calibration
    rm -rf ~/.local/share/sensors

Camera Problems
---------------
Symptoms:

* Camera not detected
* Preview fails
* Capture errors
* Focus issues

Diagnostic Steps:

1. Check camera detection::

    # List video devices
    ls /dev/video*
    
    # Check permissions
    ls -l /dev/video*

2. Verify camera service::

    # Check service status
    systemctl status camera-service
    
    # Monitor logs
    journalctl -u camera-service

Solutions:

1. **Driver Setup**::

    # Required kernel configs
    CONFIG_MEDIA_SUPPORT=y
    CONFIG_MEDIA_CAMERA_SUPPORT=y
    CONFIG_VIDEO_V4L2=y

2. **HAL Configuration**:

   * Set correct media profiles
   * Configure camera parameters
   * Verify format support

3. **Permission Setup**::

    # Add camera group
    usermod -a -G video phablet

Recovery Steps
--------------
When hardware troubleshooting fails:

1. **Driver Reset**::

    # Reload kernel module
    modprobe -r problematic_module
    modprobe problematic_module
    
    # Reset device power
    echo 1 > /sys/bus/usb/devices/xxx/authorized

2. **Service Recovery**::

    # Restart affected services
    systemctl restart affected-service
    
    # Clear cached data
    rm -rf /var/lib/service-cache/*

3. **System Verification**::

    # Check system logs
    journalctl -b
    
    # Monitor hardware status
    udevadm monitor --property

See Also
--------
* :ref:`hardware-abstraction` - HAL configuration
* :ref:`debugging` - General debugging guide
* :doc:`boot-issues` - Boot-related problems
* :doc:`system-issues` - System-level issues