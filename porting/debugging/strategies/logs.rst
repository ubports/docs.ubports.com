Log Analysis Guide
==================

Key Log Locations
-----------------
System logs::

    /var/log/syslog             # General system logs
    /proc/last_kmsg             # Last kernel messages
    /var/log/lightdm/*          # Display server
    /var/crash/*                # System crash dumps
    /android/system/var/log/*   # Android container

Collection Methods
------------------
Boot logs::

    dmesg -w                   # Kernel messages
    journalctl -fb             # System journal
    logcat                     # Android logs

Service logs::

    journalctl -u <service>     # Specific service
    systemctl status <service>  # Service status
    lxc-info -n android         # Container info

Analysis Tools
--------------
Text processing::

    grep -r "error" /var/log/  # Search logs
    tail -f /var/log/syslog    # Monitor logs
    awk '/pattern/ {print}'    # Filter logs

Visualization::

    journalctl --output=json    # JSON format
    journalctl --output=short   # Condensed view
    logcat -v threadtime        # Thread view