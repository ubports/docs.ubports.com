.. _android-integration:

Android Integration
===================

Quick Reference
---------------
Essential concepts:

* Android container runs minimal system
* Hardware access through HAL
* libhybris bridges Android/Linux
* Kernel provides Android features

Understanding Android Integration
---------------------------------

Android Components
^^^^^^^^^^^^^^^^^^
The minimal Android system provides:

1. **Hardware Support**

  * Hardware Abstraction Layer (HAL)
  * Vendor-specific drivers
  * Binary blobs
  * Power management

2. **Core Services**

  * Camera service
  * Audio HAL
  * Sensor hub
  * RIL daemon

3. **System Integration**

  * Binder IPC
  * Shared memory
  * Property system
  * Hardware permissions

Container Architecture
----------------------

LXC Container
^^^^^^^^^^^^^
The Android system runs in a container that:

* Isolates Android from Ubuntu Touch
* Manages hardware access
* Controls resource usage
* Handles service lifecycle

Example container configuration:

.. code-block:: text

   lxc.rootfs.path = /var/lib/lxc/android/rootfs
   lxc.init.cmd = /init
   lxc.mount.auto = cgroup:mixed proc:mixed sys:mixed
   lxc.apparmor.profile = unconfined
   lxc.aa_allow_incomplete = 1

Hardware Access
^^^^^^^^^^^^^^^
Hardware access flows through:

1. Android HAL interfaces
2. libhybris translation layer
3. Linux system calls
4. Device drivers

Implementation Requirements
---------------------------

Kernel Features
^^^^^^^^^^^^^^^
Required kernel configurations:

* Android binder
* Ashmem
* Cgroup support
* SELinux/AppArmor

.. code-block:: text

   CONFIG_ANDROID=y
   CONFIG_ANDROID_BINDER_IPC=y
   CONFIG_ASHMEM=y
   CONFIG_CGROUPS=y

Service Management
^^^^^^^^^^^^^^^^^^
Critical Android services:

* media.audio_flinger
* media.camera
* sensorservice
* rild

See Also
--------
* :ref:`hardware-abstraction` - HAL details
* :ref:`debugging-container` - Container debugging
* :doc:`../../vendor-specific/index` - Vendor specifics