System Base Transitions
=======================

This guide helps you adapt your Ubuntu Touch port when moving to a newer Ubuntu base system. While most examples reference the transition from Ubuntu 16.04 (xenial) to Ubuntu 20.04 (focal), the concepts and methods described here will help you understand and handle future system updates as well.

Understanding System Transitions
--------------------------------

What is a System Base Transition?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Think of Ubuntu Touch as a house built on a foundation. The foundation is the Ubuntu base system - the core operating system components that everything else relies on. When we update this foundation (for example, moving from Ubuntu 16.04 to 20.04), we need to make sure everything above it still works correctly.

These transitions happen because:

* Security updates are needed
* New features become available
* Old software becomes unsupported
* Performance improvements are possible

Core Changes During Transitions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
When the base system changes, several key areas typically need attention:

1. **Init System Management**
   The init system is like the conductor of an orchestra - it starts and manages all system services in the right order. Different Ubuntu versions might use different init systems or configurations.

   Example:

   .. code-block:: bash

    # Old way (Ubuntu 16.04):
    start on started lightdm
    
    # New way (Ubuntu 20.04):
    [Unit]
    After=graphical.target

2. **Hardware Support**
   Hardware support involves multiple layers:

   * Kernel drivers - Talk directly to hardware
   * HAL (Hardware Abstraction Layer) - Provides standard interfaces
   * System services - Manage hardware features

   These layers might change between versions:

   .. code-block:: bash

    # Old way (16.04):
    /etc/init/mount-android.conf
    
    # New way (20.04):
    /etc/systemd/system/mount-android.service

3. **System Services**
   Services handle specific tasks like:

   * USB connections
   * Power management
   * Network connectivity
   * Display handling

   Each might need updates for the new system.

Common Transition Patterns
^^^^^^^^^^^^^^^^^^^^^^^^^^
Most system transitions follow similar patterns. Understanding these helps you prepare for future updates:

1. **Configuration Changes**

   * Files move to new locations
   * Formats change
   * New options become available
   * Old options become deprecated

   Example from USB management:

   .. code-block:: bash

    # Old way (16.04):
    # Custom script in /usr/sbin/mount-android.sh
    
    # New way (20.04):
    # Configuration in /etc/default/usb-moded.d/
    IDVENDOR=0E8D
    IDPRODUCT_MTP=2008

Practical Example: 16.04 to 20.04
---------------------------------

Let's look at the 16.04 to 20.04 transition as a real-world example. This helps understand what actually changes during a system transition and how to handle it.

Service Changes
^^^^^^^^^^^^^^^
Services are programs that run in the background, handling tasks like USB connections, power management, and hardware control. The 16.04 to 20.04 transition brought several major service changes:

1. **USB Management**
   
   Old System (16.04):

   .. code-block:: bash

    # Custom script approach
    if [ -f /usr/sbin/setupusb ]; then 
    /usr/sbin/setupusb
    fi

   New System (20.04):

   .. code-block:: bash

    # Managed by usb-moded daemon
    # /etc/default/usb-moded.d/device-specific-config.conf
    IDVENDOR=0E8D
    IDPRODUCT_MTP=2008
    IDPRODUCT_RNDIS=2004

   Why the change?

   * More reliable USB state management
   * Standard way to handle USB modes
   * Better support for different devices
   * Easier updates and maintenance

   How to adapt:

   1. Remove old USB setup scripts
   2. Create usb-moded configuration
   3. Test each USB mode (MTP, adb, rndis)
   4. Verify USB behavior after sleep/resume

2. **Device Configuration**
   
   Old System (16.04):

   .. code-block:: bash

    # Scattered configuration files
    /etc/ubuntu-touch-session.d/android.conf
    /etc/init/mount-android.conf
    /etc/udev/rules.d/70-android.rules

   New System (20.04):

   .. code-block:: bash

    # /etc/deviceinfo/devices/[device].yaml
    codename:
    GridUnit: 18
    DeviceType: phone
    BacklightSysfsPath: /sys/class/backlight/panel0-backlight

   Why the change?

   * All device settings in one place
   * Easier to maintain and update
   * Better organization
   * Cleaner system structure

   How to adapt:

   1. List all your current device configurations
   2. Create new deviceinfo YAML file
   3. Move settings to new format
   4. Test each configured feature

Hardware Adaptation
^^^^^^^^^^^^^^^^^^^
Hardware support requires special attention during transitions because it affects basic device functionality.

1. **Overlay System**
   
   The overlay system lets you modify system files without changing the base system.

   Old System (16.04):

   .. code-block:: bash

    # Direct file replacement
    /system/etc/file.conf replaced directly

   New System (20.04):

   .. code-block:: bash

    # Overlay store
    /opt/halium-overlay/etc/file.conf
    deviceinfo_use_overlaystore="true"

   Why the change?

   * Safer system updates
   * Cleaner organization
   * Better maintainability
   * Easier troubleshooting

   How to adapt:

   1. Move overlay files to new location
   2. Enable overlay store in deviceinfo
   3. Test file overlays
   4. Verify after system updates

2. **Media Stack**
   
   Media handling affects camera, video, and audio functionality.

   Old System (16.04):

   .. code-block:: bash

    <!-- GStreamer 0.10 configuration -->
    <type>video/x-raw-yuv</type>

    New System (20.04)::
    <!-- GStreamer 1.0 configuration -->
    <type>video/x-raw</type>

   Why the change?

   * Modern media formats
   * Better performance
   * New features
   * Hardware acceleration

   How to adapt:

   1. Update media profiles
   2. Check codec support
   3. Test camera functionality
   4. Verify video playback

Practical Transition Steps
--------------------------

Before You Start
^^^^^^^^^^^^^^^^
Good preparation makes transitions much easier:

1. **Document Current State**
   Create a detailed record of your current port:

   .. code-block:: bash

    # List custom files
    find /etc -type f -mtime -30
    
    # Save configurations
    cp -r /etc/ubuntu-touch-session.d/ backup/
    cp -r /etc/init/ backup/
    
    # Note hardware status
    lsmod > modules.txt
    dmesg > dmesg.txt

2. **Test Environment**
   Set up a safe testing environment:

   * Use a spare device if possible
   * Back up all custom files
   * Document current working state
   * Prepare recovery options

Step-by-Step Process
^^^^^^^^^^^^^^^^^^^^
Follow these steps to transition your port:

1. **Update Core Services**
   Start with basic system functionality:

   .. code-block:: bash

    # Check current services
    systemctl list-unit-files
    
    # Convert init scripts
    # Old (16.04):
    start on started lightdm
    exec /usr/bin/myservice
    
    # New (20.04):
    [Unit]
    After=graphical.target
    
    [Service]
    ExecStart=/usr/bin/myservice

2. **Update Hardware Support**

   Ensure hardware features work:

   .. code-block:: bash

       # Check hardware status
       udevadm monitor

       # Test basic features
       echo 100 > /sys/class/backlight/*/brightness

       # Verify sensors
       systemctl status sensorfwd

3. **Configure System Integration**
   Connect all components::
   # Update device settings
   vim /etc/deviceinfo/devices/mydevice.yaml
   
   # Test integration
   systemctl status android-mount
   systemctl status lxc@android

Common Problems and Solutions
-----------------------------

1. **Service Failures**
   
   Problem: Services don't start properly:

   .. code-block:: bash

    systemctl status myservice
    ● myservice.service - My Important Service
    Loaded: loaded
    Active: failed

   Solutions:

   * Check service dependencies
   * Verify file permissions
   * Look for missing files
   * Review service logs

2. **Hardware Issues**
   
   Problem: Hardware feature stops working:

   .. code-block:: bash

    dmesg | grep -i error
    [    3.245] Hardware XYZ: initialization failed

   Solutions:

   * Check kernel configuration
   * Verify device permissions
   * Update udev rules
   * Test with previous version

Testing Your Changes
--------------------

1. **Systematic Testing**
   
   Create a checklist:
   
   - [ ] Basic boot
   - [ ] Display/touch
   - [ ] Network (WiFi/Mobile)
   - [ ] Sound
   - [ ] Camera
   - [ ] Sensors
   - [ ] USB modes

2. **Performance Testing**
   
   Monitor system health:

   .. code-block:: bash

    # Check boot time
    systemd-analyze
    
    # Monitor resources
    top -b -n 1
    
    # Test storage
    iostat -x 1

Future-Proofing Your Port
-------------------------

Make future transitions easier:

1. **Clean Organization**

   * Keep all custom files in one place
   * Document all changes
   * Use standard methods where possible
   * Follow system conventions

2. **Good Documentation**

   * Write clear notes
   * Explain why changes were made
   * Keep a changelog
   * Share knowledge with others

Getting Help
------------

Don't hesitate to ask for help:

* UBports Forum: forums.ubports.com
* Telegram: @ubports_porting
* Documentation: docs.ubports.com
* Issue tracker: gitlab.com/ubports

Next Steps
----------
* :doc:`../../debugging/index` - Detailed debugging guide
* :doc:`../../finalize/index` - Finalizing your port
* :doc:`../../vendor-specific/index` - Vendor-specific details