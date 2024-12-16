Performance Optimization
========================

Tools and methods for identifying and resolving performance issues.

System Performance
------------------
1. CPU monitoring::

    top -b -n 1
    mpstat -P ALL 1
    cat /proc/cpuinfo

2. Memory usage::

    free -h
    vmstat 1
    cat /proc/meminfo

3. I/O activity::

    iostat -x 1
    iotop -b -n 1
    cat /proc/diskstats

Android Container
-----------------
1. Process stats::

    ps aux | grep android
    top -b -n 1 | grep android
    lxc-info -n android

2. Resource usage::

    cat /sys/fs/cgroup/memory/lxc/android/memory.usage_in_bytes
    cat /sys/fs/cgroup/cpu/lxc/android/cpu.stat

Graphics
--------
1. Compositor::

    LOMIRI_LOG_LEVEL=debug lomiri 2>&1 | tee lomiri.log
    mir-performance-test

2. Hardware acceleration::

    glxinfo
    vainfo
    cat /proc/gpufreq/*

Storage
-------
1. I/O performance::

    dd if=/dev/zero of=test bs=64k count=16k conv=fdatasync
    hdparm -tT /dev/mmcblk0
    fio --filename=test --direct=1 --rw=randrw

2. Filesystem check::

    df -h
    du -sh /*
    tune2fs -l /dev/mmcblk0p1