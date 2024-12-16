Display Subsystem Debugging
===========================

Display Stack
-------------
Components::

    Android HAL/hwcomposer -> libhybris -> Mir -> Lomiri
    
Debug interfaces::

    /dev/dri/*                 # DRM devices
    /sys/class/drm/*          # Display info
    /dev/fb*                  # Framebuffer

Common Issues
-------------
1. No Display Output::

    # Check framebuffer
    cat /sys/class/graphics/fb0/name
    hexdump -C /dev/fb0
    
    # Verify DRM
    modetest -D /dev/dri/card0
    
    # Monitor errors
    dmesg | grep -i drm
    journalctl -u lightdm

2. Display Corruption::

    # Test modes
    cat /sys/class/graphics/fb0/modes
    xrandr --verbose
    
    # Check composition
    DISPLAY=:0 glxinfo
    mir-performance-test

3. Resolution/Scaling::

    # Current mode
    cat /sys/class/graphics/fb0/mode
    
    # Scaling factors
    grep GRID_UNIT /etc/ubuntu-touch-session.d/*
    grep DPR /etc/ubuntu-touch-session.d/*

Hardware Tests
--------------
Basic tests::

    # Display info
    cat /sys/class/backlight/*/brightness
    cat /sys/class/graphics/fb0/bits_per_pixel
    
    # Hardware composer
    dumpsys SurfaceFlinger
    cat /d/dri/*/state

Advanced debugging::

    # DRM debug
    echo 0xf > /sys/module/drm/parameters/debug
    
    # Force modes
    echo "U:1920x1080p-60" > /sys/class/graphics/fb0/mode
    
    # Test patterns
    fbtest