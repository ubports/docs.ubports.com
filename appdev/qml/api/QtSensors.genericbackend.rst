QtSensors.genericbackend
========================

.. raw:: html

   <p>

The generic sensor backend provides emulation of some of the sensors
that are not supported on the platform. For example, on a platform
without a rotation sensor but with an accelerometer, the accelerometer
is used to calculate the rotation, thus providing an emulated rotation
sensor.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following generic sensors are supported:

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

Emulated Sensor

.. raw:: html

   </th>

.. raw:: html

   <th>

Source Sensor

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

Ambient Light Sensor

.. raw:: html

   </td>

.. raw:: html

   <td>

Light Sensor

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Orientation Sensor

.. raw:: html

   </td>

.. raw:: html

   <td>

Accelerometer

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Rotation Sensor

.. raw:: html

   </td>

.. raw:: html

   <td>

Accelerometer

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Tilt Sensor

.. raw:: html

   </td>

.. raw:: html

   <td>

Accelerometer

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If a platform doesn't support the source sensor, then the sensor cannot
be emulated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@genericbackend.html -->
