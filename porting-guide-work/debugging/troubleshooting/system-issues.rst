System-Level Issues
===================

This guide covers problems with Ubuntu Touch system components, services, and overall functionality.

Quick Diagnosis
---------------
1. Check system status::

    # View system logs
    journalctl -b
    
    # Check running services
    systemctl status
    
    # Monitor resource usage
    top -b -n 1

2. Verify container state::

    # Check LXC status
    lxc-info -n android
    
    # View container logs
    journalctl -u lxc@android

3. Test system access::

    # Check system mounts
    mount | grep system
    
    # Verify important services
    systemctl status ofono repowerd unity8

Container Problems
------------------

Android Container Fails
^^^^^^^^^^^^^^^^^^^^^^^
Symptoms:

* System boots but no hardware support
* Services fail to start
* Hardware initialization errors

Diagnostic Steps::

    # Check container status
    systemctl status lxc@android
    
    # View detailed logs
    journalctl -u lxc@android -n 100
    
    # Check mount points
    ls -l /android/system
    ls -l /vendor

Solutions:

1. **Mount Issues**::

    # Verify fstab entries
    cat /etc/fstab
    
    # Check mount points
    mountpoint /android/system
    mountpoint /vendor

2. **Permission Problems**::

    # Fix basic permissions
    chmod 755 /android/system
    chmod 755 /vendor
    
    # Verify SELinux status
    getenforce

3. **Service Dependencies**::

    # Restart container
    systemctl restart lxc@android
    
    # Check dependent services
    systemctl list-dependencies lxc@android

System Services
---------------

Service Failures
^^^^^^^^^^^^^^^^
Common problematic services:

* repowerd (power management)
* ofono (telephony)
* unity8 (display server)
* pulseaudio (audio)

Diagnostic Steps::

    # Check specific service
    systemctl status servicename
    
    # View service logs
    journalctl -u servicename
    
    # List failed services
    systemctl --failed

Solutions:

1. **Service Recovery**::

    # Restart service
    systemctl restart servicename
    
    # Clear service state
    rm -rf /var/lib/servicename/*
    
    # Reset service configuration
    dpkg-reconfigure servicename

2. **Dependency Issues**::

    # Check dependencies
    systemctl list-dependencies servicename
    
    # Verify required files
    ldd /usr/bin/servicename

3. **Permission Problems**::

    # Fix service user
    chown -R service:service /var/lib/servicename
    
    # Check policy kit rules
    ls /usr/share/polkit-1/actions/

Performance Issues
------------------

System Slowdown
^^^^^^^^^^^^^^^
Symptoms:

* Slow response time
* App launch delays
* UI lag
* High resource usage

Diagnostic Steps::

    # Monitor CPU usage
    top -b -n 1
    
    # Check memory
    free -h
    
    # View I/O activity
    iotop -b -n 1

Solutions:

1. **Resource Management**::

    # Clear cache
    sync; echo 3 > /proc/sys/vm/drop_caches
    
    # Check swap usage
    swapon -s

2. **Process Control**::

    # Find resource-heavy processes
    ps aux --sort=-%cpu
    ps aux --sort=-%mem
    
    # Adjust process priority
    renice -n 19 -p PID

3. **Storage Issues**::

    # Check disk space
    df -h
    
    # Find large files
    find / -type f -size +100M

App Crashes
-----------
Symptoms:

* Apps fail to launch
* Random crashes
* White screen on launch
* App freezes

Diagnostic Steps::

    # Check app logs
    journalctl | grep appname
    
    # View AppArmor denials
    dmesg | grep audit
    
    # Monitor app process
    ps aux | grep appname

Solutions:

1. **AppArmor Issues**::

    # Check profile status
    aa-status
    
    # Review denials
    aa-notify -s 1d

2. **Resource Limitations**::

    # Clear app cache
    rm -rf ~/.cache/appname
    
    # Reset app data
    rm -rf ~/.local/share/appname

3. **System Integration**::

    # Verify app confinement
    click list
    
    # Check frameworks
    click framework

Recovery Procedures
-------------------

When system issues persist:

1. **Safe Mode Boot**::

    # Disable non-essential services
    systemctl isolate rescue.target
    
    # Start minimal system
    systemctl isolate multi-user.target

2. **System Reset**::

    # Clear system logs
    journalctl --vacuum-time=1d
    
    # Reset failed services
    systemctl reset-failed

3. **Emergency Recovery**::

    # Access emergency mode
    systemctl emergency
    
    # Check system integrity
    fsck -f /

Best Practices
--------------

1. **Regular Maintenance**

   * Monitor system logs
   * Check service status
   * Review resource usage
   * Clear old logs/cache

2. **Backup Critical Data**

   * Save configuration files
   * Back up user data
   * Document custom changes

3. **Update Management**

   * Track system updates
   * Test after changes
   * Maintain rollback ability

See Also
--------
* :ref:`hardware-abstraction` - HAL configuration
* :doc:`boot-issues` - Boot-related problems
* :doc:`hardware-issues` - Hardware-specific issues