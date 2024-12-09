Legacy Device Porting
=====================

This section covers porting Ubuntu Touch to pre-Android 9 devices using Halium 7.1.

.. warning::
    Legacy porting is more complex and less supported than modern methods. Only use this approach if your device cannot support newer Android versions.

Requirements
------------
* Device running Android 7.x
* Available kernel source code
* Complete device tree
* Vendor blobs
* Working LineageOS 14.1 or similar ROM

.. toctree::
   :maxdepth: 2
   :name: legacy-porting

   full-system/index
   migration/index