.. _qualcomm:

Qualcomm Devices
================

Quick Reference
---------------
Common requirements for Qualcomm devices:

* QCACLD WiFi driver configuration
* Audio codec setup (WCD)
* Modem initialization
* Graphics initialization sequence

Platform Characteristics
------------------------

Platform Types
^^^^^^^^^^^^^^
.. list-table::
   :header-rows: 1
   :widths: 20 40 40

   * - Series
     - Characteristics
     - Common Issues
   * - SM8xxx
     - Modern flagship SoCs
     - GKI compatibility, Dynamic partitions
   * - SM7xxx
     - Mid-range SoCs
     - Mixed HAL versions, Vendor blobs
   * - SM6xxx
     - Budget SoCs
     - Legacy HAL support, Driver availability

Common Challenges
-----------------

Graphics Configuration
^^^^^^^^^^^^^^^^^^^^^^
Qualcomm devices often require specific configuration for the Adreno GPU:

1. **Driver Integration**::

    # Required kernel configs
    CONFIG_DRM_MSM=y
    CONFIG_DRM_MSM_DSI=y
    CONFIG_DRM_MSM_DP=y

2. **Display Configuration**

   Edit display config in device tree::

    &mdss_dsi0 {
        compatible = "qcom,mdss-dsi-ctrl";
        qcom,dsi-host-index = <0>;
        ...
    };

Modem Setup
^^^^^^^^^^^
Steps for modem initialization:

1. Check required firmware files::

    # Common firmware locations
    /vendor/firmware/modem.mbn
    /vendor/firmware/mba.mbn

2. Configure rild service in init scripts
3. Add udev rules for modem devices

Special Cases
-------------

Devices with Secure Boot
^^^^^^^^^^^^^^^^^^^^^^^^
For devices with secure boot:

1. Verify AVB configuration
2. Check vbmeta requirements
3. Configure device-specific keys

A/B Devices
^^^^^^^^^^^
Additional configuration for A/B partition schemes:

1. Update boot configuration
2. Configure system-as-root
3. Handle vendor_boot partition

Best Practices
--------------

1. **Audio Configuration**
   
   * Use QCOM audio HAL
   * Configure UCM files
   * Handle mixer paths

2. **Power Management**

   * Configure CPUFreq governors
   * Handle thermal zones
   * Set up battery charging

3. **Debugging Tools**

   * Use Qualcomm debug tools
   * Configure serial console
   * Enable relevant logging

See Also
--------
* :ref:`display` - Display configuration details
* :ref:`debugging` - General debugging guidance
* `Qualcomm Developer Network <https://developer.qualcomm.com/>`_