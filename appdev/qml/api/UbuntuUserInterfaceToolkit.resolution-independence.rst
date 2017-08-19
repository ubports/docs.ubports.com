UbuntuUserInterfaceToolkit.resolution-independence
==================================================

.. raw:: html

   <p>

The objective of resolution independence is to make it easy for
graphical user interfaces in Ubuntu to scale to all the form factors
that Ubuntu targets: phones, tablets, laptops and desktops. The approach
taken combines simplicity for the designers and developers with visual
fidelity, quality and usability.

.. raw:: html

   </p>

Measurement Units

.. raw:: html

   <p>

A new measurement unit is defined called the grid unit, abbreviated gu.
1 grid unit translates to a given number of pixels depending on the type
of screen that the user interface is displayed on. For example, on a
laptop computer 1 grid unit will typically translate to 8 pixels. The
number of pixels per grid unit is chosen in order to preserve the
perceived visual size of UI elements and therefore depends on the
density of the display and the distance the user is to the screen. We
also ensure that 1 grid unit is always an integer number of pixel.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Device

.. raw:: html

   </th>

.. raw:: html

   <th>

Conversion

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Most laptops

.. raw:: html

   </td>

.. raw:: html

   <td>

1 gu = 8 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Retina laptops

.. raw:: html

   </td>

.. raw:: html

   <td>

1 gu = 16 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Phone with 4 inch screen at HD resolution (around 720x1,280 pixels)

.. raw:: html

   </td>

.. raw:: html

   <td>

1 gu = 18 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Tablet with 10 inch screen at HD resolution (around 720x1,280 pixels)

.. raw:: html

   </td>

.. raw:: html

   <td>

1 gu = 10 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The grid unit defines a visual rhythm in Ubuntu and should be used for
all measurements. Sizes of elements, spacing, margins, etc. should all
use multiples of 1 gu.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is available from QML as a method of the global object units,
instance of Units.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example Usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.2</span>
   Item {
   width: units<span class="operator">.</span>gu(<span class="number">2</span>)
   height: units<span class="operator">.</span>gu(<span class="number">5</span>)
   }</pre>

.. raw:: html

   <p>

Exceptionally, in order to accommodate for the rare cases where
measurements of less than 1 gu are needed another unit is available: the
density independent pixel, abbreviated dp. 1 dp typically translates to
1 pixel on laptops and low density mobile phones and tablets.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example Usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.2</span>
   Rectangle {
   height: units<span class="operator">.</span>dp(<span class="number">1</span>)
   }</pre>

Bitmaps

.. raw:: html

   <p>

Vector graphics, fonts and programmatically drawn elements will usually
scale well to the different devices. On the other hand, bitmaps will
typically require a bit more care.

.. raw:: html

   </p>

.. raw:: html

   <p>

The size of a bitmap needs to be adequate to render well on a given
device. The toolkit allows to design multiple versions of a bitmap and
choose the appropriate one dynamically depending on the device the
application is being run on. In order to know for what target device a
given version of a bitmap was produced, we define a file naming
convention based on the number of pixel per grid unit of the device.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <p>

If the target device the bitmap is produced for has 10 pixels per grid
unit, then the file name of the bitmap should be suffixed with @10:
my\_bitmap.png should be renamed to my\_bitmap@10.png.

.. raw:: html

   </p>

.. raw:: html

   <p>

In order to support the highest possible resolution devices on the
market, we recommend to always design bitmaps for a device that would
have 30 pixels per grid unit (@30 suffix). The system will perform a
high quality downscaling of the bitmap when needed on lower resolution
screens.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <p>

If the destination size of the bitmap is 10 gu \* 10 gu and the
developer targets a device that has 18 pixels per grid unit (1 gu = 18
px), the bitmap should still be created as if 1 gu = 30 px which results
in a 300 px \* 300 px bitmap. When testing on the device the bitmap will
be downscaled by a factor of 30 / 18 = 1.66667.

.. raw:: html

   </p>

Fonts

.. raw:: html

   <p>

It is critical for the font sizes to be consistent across Ubuntu and to
have a rhythm defining them. Instead of setting the font size in pixels
or points, it is imperative to define the font size in terms of
literals:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

x-large

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

large

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

medium

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

small

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

x-small

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Example Usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.2</span>
   Label {
   fontSize: <span class="string">&quot;small&quot;</span>
   }</pre>

.. raw:: html

   <p>

For reference when designing, these sizes correspond to the following
pixel measurements:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Font Size

.. raw:: html

   </th>

.. raw:: html

   <th>

Desktop

.. raw:: html

   </th>

.. raw:: html

   <th>

Smart Phone with 4" HD screen

.. raw:: html

   </th>

.. raw:: html

   <th>

Tablet with 10" HD screen

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

x-large

.. raw:: html

   </td>

.. raw:: html

   <td>

34 px

.. raw:: html

   </td>

.. raw:: html

   <td>

76 px

.. raw:: html

   </td>

.. raw:: html

   <td>

42 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

large

.. raw:: html

   </td>

.. raw:: html

   <td>

20 px

.. raw:: html

   </td>

.. raw:: html

   <td>

45 px

.. raw:: html

   </td>

.. raw:: html

   <td>

25 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

medium

.. raw:: html

   </td>

.. raw:: html

   <td>

14 px

.. raw:: html

   </td>

.. raw:: html

   <td>

31 px

.. raw:: html

   </td>

.. raw:: html

   <td>

18 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

small

.. raw:: html

   </td>

.. raw:: html

   <td>

12 px

.. raw:: html

   </td>

.. raw:: html

   <td>

27 px

.. raw:: html

   </td>

.. raw:: html

   <td>

15 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

x-small

.. raw:: html

   </td>

.. raw:: html

   <td>

10 px

.. raw:: html

   </td>

.. raw:: html

   <td>

22 px

.. raw:: html

   </td>

.. raw:: html

   <td>

12 px

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@resolution-independence.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Ubuntu User Interface Toolkit

.. raw:: html

   </li>

.. raw:: html

   </p>
