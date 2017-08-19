QtMultimedia.radiooverview
==========================

.. raw:: html

   <p>

The Qt Multimedia API provides a number of radio related classes for
control over the radio tuner of the system, and gives access to Radio
Data System (RDS) information for radio stations that broadcasts it.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="radio-features">

Radio Features

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Radio API consists of two separate components. The radio tuner,
QRadioTuner or the Radio QML type, which handles control of the radio
hardware as well as tuning. The other is the radio data component,
either QRadioData or the RadioData QML type, which gives access to RDS
information.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="radio-implementation-details">

Radio Implementation Details

.. raw:: html

   </h2>

.. raw:: html

   <p>

The actual level of support depends on the underlying system support. It
should be noted that only analog radio is supported, and the properties
of the radio data component will only be populated if the system radio
tuner supports RDS.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="examples">

Examples

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are two examples showing the usage of the Radio API. One shows how
to use the QRadioTuner class from C++. The other shows how to implement
a similar application using QML and Radio.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Radio Example

.. raw:: html

   </h3>

.. raw:: html

   <p>

This image shows the example using the QRadioTuner API.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The example reads the frequency from the radio tuner, and sets the "Got
Signal" text based on the signal strength. The buttons allow the user to
tune and scan up and down the frequency band, while the slider to the
side allows volume adjustments.

.. raw:: html

   </p>

.. raw:: html

   <p>

Only the FM frequency band is used in this example.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Declarative Radio Example

.. raw:: html

   </h3>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This example has the same functionality of the regular radio example
mentioned above, but it includes a nice horizontal dial showing the
position of the current frequency inside the band.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="reference-documentation">

Reference documentation

.. raw:: html

   </h2>

.. raw:: html

   <h3>

C++ Classes

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QRadioData

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interfaces to the RDS functionality of the system radio

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QRadioTuner

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface to the systems analog radio device

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

QML Types

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Radio

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Access radio functionality from a QML application

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

RadioData

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Access RDS data from a QML application

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@radiooverview.html -->
