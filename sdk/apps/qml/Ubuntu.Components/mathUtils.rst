Various mathematical utility functions.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Methods
-------

-  ****`clamp </sdk/apps/qml/Ubuntu.Components/mathUtils#clamp-method>`__****\ (x,
   min, max)
-  ****`clampAndProject </sdk/apps/qml/Ubuntu.Components/mathUtils#clampAndProject-method>`__****\ (x,
   xmin, xmax, ymin, ymax)
-  ****`lerp </sdk/apps/qml/Ubuntu.Components/mathUtils#lerp-method>`__****\ (delta,
   from, to)
-  ****`projectValue </sdk/apps/qml/Ubuntu.Components/mathUtils#projectValue-method>`__****\ (x,
   xmin, xmax, ymin, ymax)

Detailed Description
--------------------

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ clamp(x, min, max)                                              |
+--------------------------------------------------------------------------+

Ensure the value x is between min and max

| 

+--------------------------------------------------------------------------+
|        \ clampAndProject(x, xmin, xmax, ymin, ymax)                      |
+--------------------------------------------------------------------------+

Linearly project a value x, but in addition to
`projectValue </sdk/apps/qml/Ubuntu.Components/mathUtils#projectValue-method>`__
it's clamped to xmin/xmax first

| 

+--------------------------------------------------------------------------+
|        \ lerp(delta, from, to)                                           |
+--------------------------------------------------------------------------+

Get the linear interpolation

| 

+--------------------------------------------------------------------------+
|        \ projectValue(x, xmin, xmax, ymin, ymax)                         |
+--------------------------------------------------------------------------+

Linearly project a value x from [xmin, xmax] into [ymin, ymax]

| 
