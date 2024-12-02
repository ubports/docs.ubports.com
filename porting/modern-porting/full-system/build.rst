Building System Images
======================

Initialize Build Environment
----------------------------
::

    source build/envsetup.sh
    breakfast [device]
    
Kernel Configuration
--------------------

1. **Locate Config**::

    grep "TARGET_KERNEL_CONFIG" device/[vendor]/[device]/BoardConfig.mk

2. **Verify Settings**

   * CONFIG_ANDROID_BINDER_IPC
   * CONFIG_NAMESPACES
   * CONFIG_FHANDLE
   * CONFIG_STAGING
   * CONFIG_ASHMEM

3. **Apply Halium Patches**::

    ./halium/halium-boot/check-kernel-config path/to/defconfig -w

Build Process
-------------

1. **Build Boot Image**::

    mka mkbootimg
    mka halium-boot

2. **Build System Image**::

    mka systemimage

3. **Build Recovery** (if needed)::

    mka recoveryimage

Output Files
------------
Check out/target/product/[device]/ for:

* halium-boot.img
* system.img
* recovery.img (if built)

Common Issues
-------------
* Missing kernel configs
* Vendor blob incompatibility
* Build system errors
* Resource limitations

Next Steps
----------
* :doc:`installation` - Installing images
* :doc:`../../debugging/index` - Debugging and configuration