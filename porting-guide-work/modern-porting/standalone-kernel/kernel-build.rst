Building the Kernel
===================

Initial Kernel Build
--------------------

Start with a kernel-only build to identify and resolve issues early:

.. code-block:: bash

    ./build.sh -k -b workdir

This builds just the kernel without generating boot or system images.

Kernel Configuration
--------------------

Required Options
^^^^^^^^^^^^^^^^
Add to halium.config in arch/<architecture>/configs/:

.. code-block:: none

    CONFIG_DEVTMPFS=y
    CONFIG_FHANDLE=y
    CONFIG_SYSVIPC=y
    CONFIG_IPC_NS=y
    CONFIG_NET_NS=y
    CONFIG_PID_NS=y
    CONFIG_USER_NS=y
    CONFIG_UTS_NS=y
    CONFIG_VT=y

Common Build Issues
-------------------

- Missing toolchain (automatically downloaded)
- Config option conflicts
- Missing drivers or modules
- Architecture mismatch

Full System Build
-----------------

After successful kernel build:

.. code-block:: bash

    ./build.sh -b workdir

This creates:

- boot.img
- system.img
- vendor_boot.img (if needed)