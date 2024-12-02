AppArmor Debugging
==================

Profile Status
--------------
Check status::

    aa-status
    apparmor_parser -p
    dmesg | grep apparmor

Policy Debug
------------
Debug steps::

    # Check denials
    dmesg | grep DENIED
    aa-notify -s 1d
    
    # Test profiles
    aa-complain /etc/apparmor.d/PROFILE
    aa-audit /etc/apparmor.d/PROFILE

Common Issues
-------------
Profile problems::

    # Reload profile
    apparmor_parser -r /etc/apparmor.d/PROFILE
    
    # Generate policy
    aa-logprof
    aa-genprof