System Stability
================

Workflow for diagnosing and fixing system crashes and stability issues.

Crash Analysis
--------------
1. System logs::

    journalctl -p err -b
    coredumpctl list
    cat /proc/sys/kernel/core_pattern

2. App crashes::

    ~/.cache/upstart/application-*.log
    grep -r "Segmentation fault" ~/.cache/upstart/
    sudo ausearch -i -sv no -m avc

3. Service failures::

    systemctl --failed
    journalctl -u failed-unit
    coredumpctl info

Memory Issues
-------------
1. OOM events::

    dmesg | grep -i "out of memory"
    cat /proc/sys/vm/oom_kill_allocating_task
    journalctl -k | grep -i oom

2. Memory leaks::

    valgrind --leak-check=full
    ps_mem.py
    smem -t -k -p

3. Memory pressure::

    cat /proc/pressure/memory
    vmstat -s
    cat /proc/zoneinfo

Race Conditions
---------------
1. Service ordering::

    systemctl list-dependencies
    journalctl --since "5 min ago"
    systemd-analyze critical-chain

2. Resource conflicts::

    fuser -v /path/to/resource
    lsof | grep deleted
    strace -f -p PID

3. Lock issues::

    lslocks
    flock -n /tmp/lockfile
    inotifywait -m /path