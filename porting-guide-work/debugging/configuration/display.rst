Display Configuration
=====================

The display must be properly configured for correct scaling and orientation.

Quick Setup
-----------

Edit /etc/ubuntu-touch-session.d/android.conf:

.. code-block:: bash

    GRID_UNIT_PX=18
    QTWEBKIT_DPR=2.0
    NATIVE_ORIENTATION=portrait
    FORM_FACTOR=phone

Display Scaling
---------------

Grid Unit (GU) Reference:

========================  =====  ============
Device Type               Px/GU  QtWebKit DPR
========================  =====  ============
Phone (< 5")              18     2.0
Large Phone (> 5")        23     2.5
Tablet                    12-20  1.5-2.0
========================  =====  ============

Orientation Settings
--------------------

Available options:

- portrait
- landscape
- inverted-portrait
- inverted-landscape

Form Factors
------------
- phone
- tablet
- desktop