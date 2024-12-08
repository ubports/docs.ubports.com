.. _display:

Display Configuration
=====================

The display must be properly configured for correct scaling and touch input. This guide covers both quick configuration and detailed understanding.

Quick Configuration
-------------------
For experienced developers, start with these essential settings::

    # Edit /etc/ubuntu-touch-session.d/android.conf
    GRID_UNIT_PX=18              # Basic scaling unit
    QTWEBKIT_DPR=2.0            # Display scaling for web content
    NATIVE_ORIENTATION=portrait  # Primary device orientation
    FORM_FACTOR=phone           # Device type

Apply these settings using the :ref:`overlay method <overlay-method>` for persistence across updates.

Understanding Display Configuration
-----------------------------------

Grid Unit (GU) System
^^^^^^^^^^^^^^^^^^^^^
The Grid Unit (GRID_UNIT_PX) determines interface scaling across all applications.

Common values based on device type and screen density:

.. list-table::
   :header-rows: 1
   :widths: 30 15 15 40

   * - Device Type
     - PPI Range
     - Grid Unit
     - Example Devices
   * - Phone (<5")
     - 200-300
     - 18
     - Galaxy Nexus
   * - Large Phone (>5")
     - 400-500
     - 23
     - OnePlus 6
   * - Tablet
     - 150-250
     - 12-20
     - Nexus 7 (12)
   * - High-DPI Tablet
     - 250+
     - 20-24
     - Nexus 10 (20)

How to determine your Grid Unit:

1. Calculate device PPI from resolution and screen size
2. Consider typical viewing distance
3. Test with sample value from table above
4. Adjust based on visual comfort

Display Scaling
^^^^^^^^^^^^^^^
QTWEBKIT_DPR controls web content scaling:

.. list-table::
   :header-rows: 1
   :widths: 25 15 60

   * - Device Type
     - DPR Value
     - When to Use
   * - Standard Density
     - 1.0
     - Desktop-like displays (<150 PPI)
   * - High Density
     - 1.5-2.0
     - Most phones and tablets
   * - Very High Density
     - 2.5
     - Modern flagship phones (>400 PPI)

Orientation Settings
--------------------
Four possible orientations:

* portrait
* landscape
* inverted-portrait
* inverted-landscape

NATIVE_ORIENTATION determines:

* Initial display orientation
* Natural device holding position
* Sensor rotation reference

Form Factor Configuration
-------------------------
FORM_FACTOR options:

* phone - Standard phone interface
* tablet - Tablet-optimized layout
* desktop - Desktop-style interface

This setting affects:

* Default applications
* Interface layout
* Input method behavior
* Window management

Implementation Steps
--------------------

1. Create Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Create overlay configuration file::

    mkdir -p overlay/system/etc/ubuntu-touch-session.d/
    touch overlay/system/etc/ubuntu-touch-session.d/android.conf

2. Add Settings
^^^^^^^^^^^^^^^
Edit android.conf with your configuration::

    GRID_UNIT_PX=<value>
    QTWEBKIT_DPR=<value>
    NATIVE_ORIENTATION=<orientation>
    FORM_FACTOR=<factor>

3. Apply Configuration
^^^^^^^^^^^^^^^^^^^^^^
Implement using :ref:`overlay-method` for either:

* Development testing
* Production implementation

Testing and Verification
------------------------

1. Quick Visual Test
^^^^^^^^^^^^^^^^^^^^
Check these elements:

* Text readability
* Button sizes
* Overall scaling
* Web content display

2. Orientation Testing
^^^^^^^^^^^^^^^^^^^^^^
Verify:

* Rotation behavior
* Sensor response
* Initial orientation

3. Interface Verification
^^^^^^^^^^^^^^^^^^^^^^^^^
Confirm:

* Correct form factor layout
* Touch target sizes
* Keyboard scaling
* Application display

Troubleshooting
---------------

Common Issues:

* **Too Small/Large**: Adjust GRID_UNIT_PX
* **Blurry Web Content**: Modify QTWEBKIT_DPR
* **Wrong Rotation**: Check NATIVE_ORIENTATION
* **Incorrect Layout**: Verify FORM_FACTOR

Advanced Configuration
----------------------
For complex display setups:

* Multiple display support
* Custom scaling factors
* Display-specific overrides

See the :ref:`hardware-abstraction` guide for detailed display subsystem configuration.

Next Steps
----------

**Display working correctly?**
    → :doc:`../configuration/audio`

**Having issues?**
    → :doc:`../troubleshooting/hardware-issues`

See Also
--------
* :ref:`overlay-method` - Configuration persistence
* :ref:`hardware-abstraction` - Display subsystem details
* :doc:`../troubleshooting/hardware-issues` - Display troubleshooting