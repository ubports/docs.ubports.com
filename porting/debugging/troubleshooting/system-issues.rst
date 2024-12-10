System-Level Issues
===================

This part of the guide covers problems with Ubuntu Touch system components, services, and overall functionality. System issues often manifest after successful boot but prevent normal operation.

Quick Diagnosis
---------------
1. Check system status::

    # View system logs
    journalctl -b
    
    # Check running services
    systemctl status
    
    # Monitor resource usage
    top -b -n 1

Understanding these commands:

* journalctl -b: Shows messages from current boot
* systemctl status: Reports service health
* top: Reveals resource usage and running processes

2. Verify container state::

    # Check LXC status
    lxc-info -n android
    
    # View container logs
    journalctl -u lxc@android

Why check the container?
* Android container provides hardware support
* Container failure means no hardware access
* Logs reveal initialization problems

3. Test system access::

    # Check system mounts
    mount | grep system
    
    # Verify important services
    systemctl status ofono repowerd unity8

These checks reveal:

* System partition mounting
* Core service status
* Hardware initialization

Container Problems
------------------

Android Container Fails
^^^^^^^^^^^^^^^^^^^^^^^
Symptoms:

* System boots but no hardware support
* Services fail to start
* Hardware initialization errors

Understanding the container:

* Runs minimal Android for hardware support
* Contains vendor-specific code
* Manages hardware abstraction layer

Diagnostic Steps::

    # Check container status
    systemctl status lxc@android
    
    # View detailed logs
    journalctl -u lxc@android -n 100
    
    # Check mount points
    ls -l /android/system
    ls -l /vendor

Understanding outputs:

* Failed status suggests initialization problems
* Log messages reveal specific failures
* Mount points show filesystem issues

Solutions:

1. **Mount Issues**::

    # Verify fstab entries
    cat /etc/fstab
    
    # Check mount points
    mountpoint /android/system
    mountpoint /vendor

Common mount problems:

* Missing mount points
* Wrong filesystem type
* Permission issues
* SELinux contexts

2. **Permission Problems**::

    # Fix basic permissions
    chmod 755 /android/system
    chmod 755 /vendor
    
    # Verify SELinux status
    getenforce

Understanding permissions:

* Directories need execute (x) permission
* SELinux can block access
* Wrong ownership prevents operation

3. **Service Dependencies**::

    # Restart container
    systemctl restart lxc@android
    
    # Check dependent services
    systemctl list-dependencies lxc@android

Service dependency chain:

* Container needs working filesystem
* Hardware services depend on container
* System services need hardware access

System Services
---------------

Service Failures
^^^^^^^^^^^^^^^^
Common problematic services:

* repowerd (power management)
* ofono (telephony)
* unity8 (display server)
* pulseaudio (audio)

Understanding service roles:

* repowerd manages power states
* ofono handles phone functionality
* unity8 provides user interface
* pulseaudio controls audio system

Diagnostic Steps::

    # Check specific service
    systemctl status servicename
    
    # View service logs
    journalctl -u servicename
    
    # List failed services
    systemctl --failed

Log interpretation:

* Failed state indicates startup problems
* Log messages show error details
* Dependencies reveal related issues

Solutions:

1. **Service Recovery**::

    # Restart service
    systemctl restart servicename
    
    # Clear service state
    rm -rf /var/lib/servicename/*
    
    # Reset service configuration
    dpkg-reconfigure servicename

Recovery process:

* Restart attempts clean start
* Clearing state removes corruption
* Reconfiguration resets settings

2. **Dependency Issues**::

    # Check dependencies
    systemctl list-dependencies servicename
    
    # Verify required files
    ldd /usr/bin/servicename

Understanding dependencies:

* Services need specific libraries
* Missing dependencies block start
* Version mismatches cause failures

3. **Permission Problems**::

    # Fix service user
    chown -R service:service /var/lib/servicename
    
    # Check policy kit rules
    ls /usr/share/polkit-1/actions/

Policy considerations:

* Services run as specific users
* PolicyKit manages permissions
* Wrong ownership blocks access

Performance Issues
------------------

System Slowdown
^^^^^^^^^^^^^^^
Symptoms:

* Slow response time
* App launch delays
* UI lag
* High resource usage

Understanding performance:

* Multiple potential causes
* Resource constraints
* System bottlenecks

Diagnostic Steps::

    # Monitor CPU usage
    top -b -n 1
    
    # Check memory
    free -h
    
    # View I/O activity
    iotop -b -n 1

Interpreting results:

* High CPU indicates processing bottleneck
* Low memory causes swapping
* I/O bottlenecks slow system

Solutions:

1. **Resource Management**::

    # Clear cache
    sync; echo 3 > /proc/sys/vm/drop_caches
    
    # Check swap usage
    swapon -s

Cache management:

* Clearing cache frees memory
* Swap usage indicates memory pressure
* Regular cleaning helps performance

2. **Process Control**::

    # Find resource-heavy processes
    ps aux --sort=-%cpu
    ps aux --sort=-%mem
    
    # Adjust process priority
    renice -n 19 -p PID

Process management:

* High CPU processes may need limiting
* Memory-heavy processes affect performance
* Priority adjustment helps balance

3. **Storage Issues**::

    # Check disk space
    df -h
    
    # Find large files
    find / -type f -size +100M

Storage considerations:

* Full storage slows system
* Large files impact performance
* Regular cleanup helps

App Crashes
-----------
Symptoms:

* Apps fail to launch
* Random crashes
* White screen on launch
* App freezes

Understanding app issues:

* Multiple potential causes
* Security constraints
* Resource limitations

Diagnostic Steps::

    # Check app logs
    journalctl | grep appname
    
    # View AppArmor denials
    dmesg | grep audit
    
    # Monitor app process
    ps aux | grep appname

Log interpretation:

* Crashes show in system logs
* AppArmor may block access
* Process state reveals issues

Solutions:

1. **AppArmor Issues**::

    # Check profile status
    aa-status
    
    # Review denials
    aa-notify -s 1d

AppArmor considerations:

* Profiles restrict app access
* Denials prevent functionality
* Profiles may need updating

2. **Resource Limitations**::

    # Clear app cache
    rm -rf ~/.cache/appname
    
    # Reset app data
    rm -rf ~/.local/share/appname

Resource management:

* Cache buildup affects performance
* Corrupted data causes crashes
* Fresh start often helps

3. **System Integration**::

    # Verify app confinement
    click list
    
    # Check frameworks
    click framework

Integration aspects:

* Apps need correct frameworks
* Confinement affects functionality
* System updates impact apps

Recovery Procedures
-------------------

When system issues persist:

1. **Safe Mode Boot**::

    # Disable non-essential services
    systemctl isolate rescue.target
    
    # Start minimal system
    systemctl isolate multi-user.target

Safe mode provides:

* Minimal system functionality
* Debugging opportunity
* Issue isolation

2. **System Reset**::

    # Clear system logs
    journalctl --vacuum-time=1d
    
    # Reset failed services
    systemctl reset-failed

Reset benefits:

* Removes old logs
* Clears error states
* Enables fresh start

3. **Emergency Recovery**::

    # Access emergency mode
    systemctl emergency
    
    # Check system integrity
    fsck -f /

Emergency mode offers:

* Basic system access
* Filesystem checks
* Recovery options

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