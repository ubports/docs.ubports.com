.. _debugging-container:

Android Container Debugging
===========================

Container Status
----------------
Basic checks::

    lxc-info -n android
    lxc-ls --fancy
    systemctl status lxc@android

Log Analysis
------------
Key logs::

    journalctl -u lxc@android
    logcat
    dmesg | grep -i binder

Mount Points
------------
Check mounts::

    mount | grep android
    ls -l /android/system
    ls -l /vendor

Security Policies
^^^^^^^^^^^^^^^^^
Ubuntu Touch uses AppArmor as its primary security framework, while the Android container utilizes SELinux. This dual-policy approach means:

1. **AppArmor**
   * Manages Ubuntu Touch system security
   * Controls application confinement
   * Handles system service access

2. **SELinux**
   * Active only within Android container
   * Controls Android HAL permissions
   * Manages hardware access rights

When debugging permission issues::

    # Check AppArmor status (Ubuntu Touch)
    aa-status
    dmesg | grep DENIED
    
    # Check SELinux (Android container)
    getenforce
    audit2allow -i /var/log/audit/audit.log

This separation helps maintain compatibility with Android's security model while integrating with Ubuntu Touch's security framework.

Common Issues
-------------
Service failures::

    # Binder
    cat /proc/binder/status
    cat /proc/binder/failed_transaction_log
    
    # SELinux
    getenforce
    audit2allow -i /var/log/audit/audit.log