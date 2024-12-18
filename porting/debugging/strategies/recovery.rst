Recovery Methods
================

Emergency Access
----------------
Debug shells::

    touch /userdata/.force-ssh  # Enable SSH
    ubuntu_chroot debug         # Debug shell
    adbd                        # ADB access

Safe mode::

    systemctl isolate rescue.target
    systemctl emergency
    init=/bin/bash

Data Recovery
-------------
Filesystem tools::

    fsck.ext4                  # Check filesystem
    e2image                    # Backup partition
    ddrescue                   # Recovery copy

Recovery options::

    halium-install -p ut       # Reinstall system
    fastboot flash             # Flash partitions
    adb sideload               # Load updates