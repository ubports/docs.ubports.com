.. _first-boot:

Installation and First Boot Process
===================================

Installation
------------

Flash Images
^^^^^^^^^^^^

Standard devices:

.. code-block:: bash

    fastboot flash boot boot.img
    fastboot flash system system.img

Dynamic partition devices:

.. code-block:: bash

    fastboot reboot fastboot
    fastboot flash boot boot.img
    fastboot flash system system.img

.. note::
    GKI devices may require flashing additional partitions:
    
    * init_boot.img (if deviceinfo_bootimg_has_init_boot="true")
    * vendor_boot.img (for devices using separate vendor boot)
    * dtbo.img (if device uses overlays)

Initial Boot Behavior
---------------------

Common Scenarios
^^^^^^^^^^^^^^^^

1. **Successful Boot**

   * Device appears unresponsive but has booted
   * No display output
   * Network interface available
   * SSH/telnet possible

2. **Boot Loop**

   * Device repeatedly restarts
   * May show vendor logo
   * No network interface
   * Debug through fastboot/recovery

3. **Stuck at Logo**

   * Frozen at bootloader/vendor logo
   * May indicate kernel panic
   * Check kernel logs via recovery

4. **Black Screen**

   * Display not initialized
   * System may be running
   * Try SSH/telnet connection

Verifying Boot Status
---------------------

1. **Check Network Interface**

   * Connect device via USB
   * On host::
   
       dmesg -w
       # Look for "GNU/Linux device" or "rndis" interface

.. note::
    After flashing, wait at least 2-3 minutes before checking network interfaces. 
    Initial boot may take longer than subsequent boots.

2. **SSH Access** 

   * If network interface appears::

       # Setup host network
       ip link set <interface> address 02:11:22:33:44:55
       ip address add 10.15.19.100/24 dev <interface>
       ip link set <interface> up

       # Connect to device
       ssh phablet@10.15.19.82
       # Password is same as set during installation

3. **Telnet Access**

   * If SSH fails but device boots::

       telnet 192.168.2.15

Boot Debugging
--------------

1. **Initial Checks**::

    # Check system status
    systemctl status
    
    # View kernel logs
    dmesg
    
    # Check Android container
    lxc-info -n android
    
    # View system logs
    journalctl -b

    # For GKI devices, also check
    dmesg | grep -i vendor     # Vendor boot issues
    dmesg | grep -i init_boot  # Init boot issues
    dmesg | grep -i modload    # Module loading

2. **Common Issues**

   * Missing kernel configs
   * Incorrect Android container setup
   * Device tree mismatches
   * Missing firmware/drivers

3. **Recovery Access**

   * Boot to recovery if available
   * Pull logs and kernel messages
   * Check partition status

    # Common log locations
    /proc/last_kmsg          # Last kernel log
    /cache/recovery/log      # Recovery log
    /data/android-logs/*     # Android container logs

Configuring udev Rules
----------------------

After verifying basic boot and establishing connection, udev rules must be configured for hardware access.

1. **Make Root Writable**::

    sudo mount -o remount,rw /

2. **Generate Rules**

   Different devices store ueventd rules in various locations. Try these commands in order until one succeeds::

    # For most devices
    sudo cat /var/lib/lxc/android/rootfs/ueventd*.rc | grep ^/dev | \
    sed -e 's/^\/dev\///' | \
    awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | \
    sed -e 's/\r//' > /usr/lib/lxc-android-config/70-$DEVICE.rules

    # If above fails, try vendor location
    sudo cat /var/lib/lxc/android/rootfs/vendor/ueventd*.rc | grep ^/dev | \
    sed -e 's/^\/dev\///' | \
    awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | \
    sed -e 's/\r//' > /usr/lib/lxc-android-config/70-$DEVICE.rules

    # For some devices, try both locations
    sudo cat /var/lib/lxc/android/rootfs/ueventd*.rc /vendor/ueventd*.rc | grep ^/dev | \
    sed -e 's/^\/dev\///' | \
    awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | \
    sed -e 's/\r//' > /usr/lib/lxc-android-config/70-$DEVICE.rules

3. **Verify Rules**::

    cat /usr/lib/lxc-android-config/70-$DEVICE.rules
    # Should contain multiple lines of udev rules

    # Example of expected udev rules
    ACTION=="add", KERNEL=="graphics*", OWNER="system", GROUP="graphics", MODE="0660"
    ACTION=="add", KERNEL=="input*", OWNER="system", GROUP="input", MODE="0660"

4. **Reboot**::

    sudo reboot

After reboot, you should see the Ubuntu Touch spinner. If not, proceed to display configuration.

Next Steps
----------

* :ref:`display` - Display setup
* :ref:`apparmor` - Security configuration

.. note::
    A seemingly unresponsive device may have booted successfully. Always check for SSH/telnet access before assuming boot failure.