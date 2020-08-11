Units
=====

Resolution Independence Approach
--------------------------------

The objective of resolution independence is to make it easy for graphical user interfaces in Ubuntu Touch to scale to all the form factors that Ubuntu Touch targets: phones, tablets, laptops and desktops. The approach taken combines simplicity for the designers and developers with visual fidelity, quality and usability.

Measurement Units
-----------------

Grid Unit
~~~~~~~~~

A measurement unit called the *grid unit* is defined, abbreviated *gu.* 1 grid unit translates to a given number of pixels depending on the type of screen that the user interface is displayed on. For example, on a laptop computer 1 grid unit will typically translate to 8 pixels. The number of pixels per grid unit is chosen in order to preserve the perceived visual size of UI elements and therefore depends on the density of the display and the distance the user is to the screen. We also ensure that 1 grid unit is always an integer number of pixel.

+-------------------------------------------------------+------------+
| Device                                                | Conversion |
+=======================================================+============+
| Most laptops                                          | 1 gu =     |
|                                                       | 8 px       |
+-------------------------------------------------------+------------+
| High DPI laptops                                      | 1 gu =     |
|                                                       | 16 px      |
+-------------------------------------------------------+------------+
| Phone with 4 inch screen at HD resolution (around     | 1 gu =     |
| 720x1,280 pixels)                                     | 18 px      |
+-------------------------------------------------------+------------+
| Tablet with 10 inch screen at HD resolution (around   | 1 gu =     |
| 720x1,280 pixels)                                     | 10 px      |
+-------------------------------------------------------+------------+

Density Unit
~~~~~~~~~~~~

Exceptionally, in order to accommodate for the rare cases where measurements of less than 1 gu are needed another unit is available: the *density independent pixel,* abbreviated dp. 1 dp typically translates to 1 pixel on laptops and low density mobile phones and tablets.

Use
~~~

::

   Item {
     width:  units.gu(2)
     height: units.dp(1)
   }

Device Sizes
------------

+---------------------+-------+--------+
| Device Grid Units   | width | height |
+=====================+=======+========+
| E5 (portrait)       | 42    | 72     |
+---------------------+-------+--------+
| M10 HD (landscape)  | 160   | 97     |
+---------------------+-------+--------+
| M10 FHD (landscape) | 148   | 89     |
+---------------------+-------+--------+
| N5 (portrait)       | 47    | 80     |
+---------------------+-------+--------+
