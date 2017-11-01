

The Qt Multimedia API provides a number of radio related classes for
control over the radio tuner of the system, and gives access to Radio
Data System (RDS) information for radio stations that broadcasts it.

.. rubric:: Radio Features
   :name: radio-features

The Radio API consists of two separate components. The radio tuner,
QRadioTuner or the Radio QML type, which handles control of the radio
hardware as well as tuning. The other is the radio data component,
either QRadioData or the RadioData QML type, which gives access to RDS
information.

.. rubric:: Radio Implementation Details
   :name: radio-implementation-details

The actual level of support depends on the underlying system support. It
should be noted that only analog radio is supported, and the properties
of the radio data component will only be populated if the system radio
tuner supports RDS.

.. rubric:: Examples
   :name: examples

There are two examples showing the usage of the Radio API. One shows how
to use the QRadioTuner class from C++. The other shows how to implement
a similar application using QML and Radio.

.. rubric:: Radio Example
   :name: radio-example

This image shows the example using the QRadioTuner API.

|image0|

The example reads the frequency from the radio tuner, and sets the "Got
Signal" text based on the signal strength. The buttons allow the user to
tune and scan up and down the frequency band, while the slider to the
side allows volume adjustments.

Only the FM frequency band is used in this example.

.. rubric:: Declarative Radio Example
   :name: declarative-radio-example

|image1|

This example has the same functionality of the regular radio example
mentioned above, but it includes a nice horizontal dial showing the
position of the current frequency inside the band.

.. rubric:: Reference documentation
   :name: reference-documentation

.. rubric:: C++ Classes
   :name: c-classes

+--------------------------------------+--------------------------------------+
| QRadioData                           | Interfaces to the RDS functionality  |
|                                      | of the system radio                  |
+--------------------------------------+--------------------------------------+
| QRadioTuner                          | Interface to the systems analog      |
|                                      | radio device                         |
+--------------------------------------+--------------------------------------+

.. rubric:: QML Types
   :name: qml-types

+--------------------------------------+--------------------------------------+
| `Radio </sdk/apps/qml/QtMultimedia/R | Access radio functionality from a    |
| adio/>`__                            | QML application                      |
+--------------------------------------+--------------------------------------+
| `RadioData </sdk/apps/qml/QtMultimed | Access RDS data from a QML           |
| ia/RadioData/>`__                    | application                          |
+--------------------------------------+--------------------------------------+

.. |image0| image:: /media/sdk/apps/qml/radiooverview/images/radio-example.png
.. |image1| image:: /media/sdk/apps/qml/radiooverview/images/declarative-radio-example.png

