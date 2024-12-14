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

Common Issues
-------------
Service failures::

    # Binder
    cat /proc/binder/status
    cat /proc/binder/failed_transaction_log
    
    # SELinux
    getenforce
    audit2allow -i /var/log/audit/audit.log