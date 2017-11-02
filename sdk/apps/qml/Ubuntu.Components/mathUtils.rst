.. _sdk_ubuntu_components_mathutils:
Ubuntu.Components mathUtils
===========================

Various mathematical utility functions.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Methods
-------

-  **:ref:`clamp <sdk_ubuntu_components_mathutils#clamp-method>`**\ (x,
   min, max)
-  **:ref:`clampAndProject <sdk_ubuntu_components_mathutils#clampAndProject-method>`**\ (x,
   xmin, xmax, ymin, ymax)
-  **:ref:`lerp <sdk_ubuntu_components_mathutils#lerp-method>`**\ (delta,
   from, to)
-  **:ref:`projectValue <sdk_ubuntu_components_mathutils#projectValue-method>`**\ (x,
   xmin, xmax, ymin, ymax)

Detailed Description
--------------------

Method Documentation
--------------------

.. _sdk_ubuntu_components_mathutils_clamp-method:

+--------------------------------------------------------------------------+
|        \ clamp(x, min, max)                                              |
+--------------------------------------------------------------------------+

Ensure the value x is between min and max

| 

.. _sdk_ubuntu_components_mathutils_clampAndProject-method:

+--------------------------------------------------------------------------+
|        \ clampAndProject(x, xmin, xmax, ymin, ymax)                      |
+--------------------------------------------------------------------------+

Linearly project a value x, but in addition to
:ref:`projectValue <sdk_ubuntu_components_mathutils#projectValue-method>`
it's clamped to xmin/xmax first

| 

.. _sdk_ubuntu_components_mathutils_lerp-method:

+--------------------------------------------------------------------------+
|        \ lerp(delta, from, to)                                           |
+--------------------------------------------------------------------------+

Get the linear interpolation

| 

.. _sdk_ubuntu_components_mathutils_projectValue-method:

+--------------------------------------------------------------------------+
|        \ projectValue(x, xmin, xmax, ymin, ymax)                         |
+--------------------------------------------------------------------------+

Linearly project a value x from [xmin, xmax] into [ymin, ymax]

| 
