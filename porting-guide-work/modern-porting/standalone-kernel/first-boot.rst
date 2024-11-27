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

2. **Common Issues**

   * Missing kernel configs
   * Incorrect Android container setup
   * Device tree mismatches
   * Missing firmware/drivers

3. **Recovery Access**

   * Boot to recovery if available
   * Pull logs and kernel messages
   * Check partition status

Next Steps
----------

After establishing access:

* :ref:`display` - Display setup
* :ref:`apparmor` - Security configuration
* REF HERE - Advanced debugging

.. note::
    A seemingly unresponsive device may have booted successfully. Always check for SSH/telnet access before assuming boot failure.