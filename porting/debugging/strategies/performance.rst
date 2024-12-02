Performance Analysis
====================

Monitoring Tools
----------------
System metrics::

    top -b -n1                 # Process stats
    iostat -x                  # I/O stats
    free -h                    # Memory usage
    mpstat -P ALL              # CPU usage

Profile tools::

    perf record               # Performance data
    strace -c                 # System calls
    valgrind --tool=callgrind # Call profiling

Benchmarking
------------
Storage::

    dd if=/dev/zero          # Write speed
    hdparm -tT               # Read speed
    fio                      # I/O patterns

Graphics::

    glmark2                 # OpenGL test
    vkmark                  # Vulkan test
    lomiri-benchmark        # UI performance