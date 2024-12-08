Storage Debugging
=================

Filesystem Check
----------------
Basic checks::

    df -h
    mount
    lsblk

Partition Layout
----------------
Check layout::

    fdisk -l
    sgdisk --print
    blkid

Common Issues
-------------
I/O errors::

    dmesg | grep -i "I/O error"
    smartctl -a /dev/sda
    hdparm -i /dev/sda

Mount Issues
------------
Debug steps::

    # Check fstab
    cat /etc/fstab
    mount -a
    
    # Verify paths
    ls -l /dev/mapper/
    cryptsetup status