

The objective of resolution independence is to make it easy for
graphical user interfaces in Ubuntu to scale to all the form factors
that Ubuntu targets: phones, tablets, laptops and desktops. The approach
taken combines simplicity for the designers and developers with visual
fidelity, quality and usability.

        Measurement Units
A new measurement unit is defined called the grid unit, abbreviated
***gu***. 1 grid unit translates to a given number of pixels depending
on the type of screen that the user interface is displayed on. For
example, on a laptop computer 1 grid unit will typically translate to 8
pixels. The number of pixels per grid unit is chosen in order to
preserve the perceived visual size of UI elements and therefore depends
on the density of the display and the distance the user is to the
screen. We also ensure that 1 grid unit is always an integer number of
pixel.

Examples:

+-------------------------------------------------------------------------+----------------+
| Device                                                                  | Conversion     |
+=========================================================================+================+
| Most laptops                                                            | 1 gu = 8 px    |
+-------------------------------------------------------------------------+----------------+
| Retina laptops                                                          | 1 gu = 16 px   |
+-------------------------------------------------------------------------+----------------+
| Phone with 4 inch screen at HD resolution (around 720x1,280 pixels)     | 1 gu = 18 px   |
+-------------------------------------------------------------------------+----------------+
| Tablet with 10 inch screen at HD resolution (around 720x1,280 pixels)   | 1 gu = 10 px   |
+-------------------------------------------------------------------------+----------------+

The grid unit defines a visual rhythm in Ubuntu and should be used for
all measurements. Sizes of elements, spacing, margins, etc. should all
use multiples of 1 gu.

It is available from QML as a method of the global object **units**,
instance of `Units </sdk/apps/qml/Ubuntu.Components/Units/>`__.

Example Usage:

.. code:: cpp

    import Ubuntu.Components 1.2
    Item {
        width: units.gu(2)
        height: units.gu(5)
    }

Exceptionally, in order to accommodate for the rare cases where
measurements of less than 1 gu are needed another unit is available: the
density independent pixel, abbreviated ***dp***. 1 dp typically
translates to 1 pixel on laptops and low density mobile phones and
tablets.

Example Usage:

.. code:: cpp

    import Ubuntu.Components 1.2
    Rectangle {
        height: units.dp(1)
    }

        Bitmaps
Vector graphics, fonts and programmatically drawn elements will usually
scale well to the different devices. On the other hand, bitmaps will
typically require a bit more care.

The size of a bitmap needs to be adequate to render well on a given
device. The toolkit allows to design multiple versions of a bitmap and
choose the appropriate one dynamically depending on the device the
application is being run on. In order to know for what target device a
given version of a bitmap was produced, we define a file naming
convention based on the number of pixel per grid unit of the device.

Example:

If the target device the bitmap is produced for has 10 pixels per grid
unit, then the file name of the bitmap should be suffixed with @10:
*my\_bitmap.png* should be renamed to *my\_bitmap@10.png*.

In order to support the highest possible resolution devices on the
market, we recommend to always design bitmaps for a device that would
have 30 pixels per grid unit (@30 suffix). The system will perform a
high quality downscaling of the bitmap when needed on lower resolution
screens.

Example:

If the destination size of the bitmap is 10 gu \* 10 gu and the
developer targets a device that has 18 pixels per grid unit (1 gu = 18
px), the bitmap should still be created as if 1 gu = 30 px which results
in a 300 px \* 300 px bitmap. When testing on the device the bitmap will
be downscaled by a factor of 30 / 18 = 1.66667.

        Fonts
It is critical for the font sizes to be consistent across Ubuntu and to
have a rhythm defining them. Instead of setting the font size in pixels
or points, it is imperative to define the font size in terms of
literals:

+---------------+
| **x-large**   |
+---------------+
| **large**     |
+---------------+
| **medium**    |
+---------------+
| **small**     |
+---------------+
| **x-small**   |
+---------------+

Example Usage:

.. code:: cpp

    import Ubuntu.Components 1.2
    Label {
        fontSize: "small"
    }

For reference when designing, these sizes correspond to the following
pixel measurements:

+-----------------+-----------+---------------------------------+-----------------------------+
| Font Size       | Desktop   | Smart Phone with 4" HD screen   | Tablet with 10" HD screen   |
+=================+===========+=================================+=============================+
| ***x-large***   | 34 px     | 76 px                           | 42 px                       |
+-----------------+-----------+---------------------------------+-----------------------------+
| ***large***     | 20 px     | 45 px                           | 25 px                       |
+-----------------+-----------+---------------------------------+-----------------------------+
| ***medium***    | 14 px     | 31 px                           | 18 px                       |
+-----------------+-----------+---------------------------------+-----------------------------+
| ***small***     | 12 px     | 27 px                           | 15 px                       |
+-----------------+-----------+---------------------------------+-----------------------------+
| ***x-small***   | 10 px     | 22 px                           | 12 px                       |
+-----------------+-----------+---------------------------------+-----------------------------+

`Ubuntu User Interface
Toolkit </sdk/apps/qml/UbuntuUserInterfaceToolkit/overview-ubuntu-sdk/>`__
