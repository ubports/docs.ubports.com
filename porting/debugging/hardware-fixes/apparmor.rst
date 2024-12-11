.. _apparmor:

AppArmor Implementation
=======================

Quick Reference
---------------
Essential kernel configurations::

    CONFIG_SECURITY_APPARMOR=y
    CONFIG_SECURITY_APPARMOR_HASH=y
    CONFIG_DEFAULT_SECURITY_APPARMOR=y
    CONFIG_AUDIT=y                    # For policy logging
    CONFIG_SECURITY=y                 # General security support
    CONFIG_LSM="apparmor"            # Set AppArmor as default LSM

Understanding AppArmor
----------------------
AppArmor is a Mandatory Access Control (MAC) system that confines programs to a limited set of resources. In Ubuntu Touch, it:

* Restricts what apps can access
* Protects system resources
* Enforces security policies
* Controls inter-app communication

Think of AppArmor as a security guard that checks every program's ID card before allowing access to resources.

Implementation Steps
--------------------

1. Kernel Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Modern Kernels (4.2+)
"""""""""""""""""""""
For kernels version 4.2 and newer, you'll need to cherry-pick specific AppArmor commits.

First, identify your kernel version::

    make kernelversion

Choose the appropriate commit set:

* 3.18: https://github.com/MotoZ-2016/android_kernel_motorola_msm8996/commits/halium-9.0/security/apparmor
* 4.4: https://github.com/moto-SDM660/android_kernel_motorola_sdm660/commits/halium-9.0/security/apparmor
* 4.9+: https://github.com/erfanoabdi/android_kernel_motorola_sdm632/commits/halium-9.0/security/apparmor

Example cherry-pick process::

    cd kernel/[vendor]/[device]
    git remote add apparmor https://github.com/[repo]/[kernel]
    git fetch apparmor
    git cherry-pick [commit-id]

Legacy Kernels (Pre-4.2)
""""""""""""""""""""""""
For older kernels, apply the backported patch:

1. Download appropriate patch::

    wget https://github.com/ubports/AppArmor-backports-ut/raw/master/3.4/apparmor-3.4.patch

2. Apply the patch::

    cd kernel/[vendor]/[device]
    patch -p1 < /path/to/apparmor-3.4.patch

3. Resolve any conflicts::

    # Check for reject files
    find . -name "*.rej"
    
    # Manually apply rejected hunks
    patch -p1 --dry-run < /path/to/apparmor-3.4.patch

2. Configure AppArmor
^^^^^^^^^^^^^^^^^^^^^
Edit your kernel defconfig to enable AppArmor::

    # Enable core AppArmor support
    CONFIG_SECURITY_APPARMOR=y
    CONFIG_SECURITY_APPARMOR_HASH=y
    CONFIG_DEFAULT_SECURITY_APPARMOR=y
    
    # Required supporting options
    CONFIG_AUDIT=y
    CONFIG_SECURITY=y
    CONFIG_LSM="apparmor"
    
    # Recommended features
    CONFIG_SECURITY_APPARMOR_ENFORCE_DEFAULT=y
    CONFIG_SECURITY_APPARMOR_LOOPBACK=y
    CONFIG_SECURITY_APPARMOR_UNCONFINED_INIT=y

3. Build and Test
^^^^^^^^^^^^^^^^^
1. Rebuild your kernel::

    mka halium-boot

2. Flash and boot::

    fastboot flash boot halium-boot.img

3. Verify AppArmor status::

    # Check if AppArmor is enabled
    cat /sys/module/apparmor/parameters/enabled
    
    # View loaded profiles
    aa-status
    
    # Check kernel messages
    dmesg | grep -i apparmor

Verification Steps
------------------

1. Basic Functionality
^^^^^^^^^^^^^^^^^^^^^^
Check AppArmor initialization::

    # AppArmor should be listed as a security module
    cat /sys/kernel/security/lsm
    
    # Should show "Y"
    cat /sys/module/apparmor/parameters/enabled
    
    # Should show numerous AppArmor messages
    dmesg | grep -i apparmor

2. Profile Loading
^^^^^^^^^^^^^^^^^^
Verify profile loading::

    # Check loaded profiles
    aa-status
    
    # Should include entries like:
    #  - /usr/bin/lomiri
    #  - /usr/bin/mediaplayer-app
    #  - click packages

3. Policy Enforcement
^^^^^^^^^^^^^^^^^^^^^
Test confinement::

    # Try to access restricted file
    sudo -u phablet touch /etc/passwd
    
    # Should see denial in logs
    dmesg | grep DENIED
    
    # Check app confinement
    ps aux | grep -i "(enforce)"

Common Issues
-------------

1. Profile Loading Failures
^^^^^^^^^^^^^^^^^^^^^^^^^^^
If profiles fail to load::

    # Check syntax
    apparmor_parser -QK /etc/apparmor.d/*
    
    # View detailed errors
    aa-status --verbose
    
    # Check journal for loading errors
    journalctl -b | grep apparmor

2. Missing Features
^^^^^^^^^^^^^^^^^^^
If kernel features are missing::

    # Verify config
    zcat /proc/config.gz | grep APPARMOR
    
    # Check required features
    aa-features-abi
    
    # View available features
    cat /sys/kernel/security/apparmor/features/*

3. Policy Violations
^^^^^^^^^^^^^^^^^^^^
For unexpected denials::

    # Monitor denials
    aa-notify -s 1d
    
    # Generate policy
    aa-logprof
    
    # View detailed logs
    ausearch -m AVC

For debugging and troubleshooting guidance, see :doc:`../system-debug/apparmor`.