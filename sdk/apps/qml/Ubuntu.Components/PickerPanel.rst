.. _sdk_ubuntu_components_pickerpanel:

Ubuntu.Components PickerPanel
=============================

Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Methods
-------

-  :ref:`openDatePicker <sdk_ubuntu_components_pickerpanel_openDatePicker>`\ (*caller*, *property*, *mode*)

Detailed Description
--------------------

:ref:`PickerPanel <sdk_ubuntu_components_pickerpanel>` is a singleton component designed to open a `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  in the input panel area or in a Popover, depending on the form factor, following the design guides on date pickers.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainWindow {
        width: units.gu(40)
        height: units.gu(71)
        Page {
            title: "PickerPanel"
            Button {
                id: dateButton
                property date date: new Date()
                text: Qt.formatDateTime(date, "yyyy/MMMM")
                onClicked: PickerPanel.openDatePicker(dateButton, "date", "Years|Months")
            }
        }
    }

The opened panel is closed automatically when the user taps/presses outside of the panel or Popover area.

Method Documentation
--------------------

.. _sdk_ubuntu_components_pickerpanel_openDatePicker:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| openDatePicker( *caller*, *property*, *mode*)                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function opens a `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  component in the input method area or in a popover, depending on the availability of an input method provider in the system and whether the size of the main screen width/height defines a phone form factor. The picked date will be read from and reported to the *property* of the *caller* as date type. This implies that the caller must have defined the given property of type date.

On failure, the function returns null. On success, the returned object has the following properties:

.. code:: cpp

    Object {
        property DatePicker picker
        property string pickerMode
        property date date
        property Item caller
        property string callerProperty
        signal closed()
    }

Property
Description
**picker**
instance of the `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  component shown in the panel/popup
**pickerMode**
represents the `DatePicker::mode </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#mode-prop>`_  to be used. This is an optional parameter and if not defined, the default mode will be used.
**date**
represents the date selected
**caller**
the instance of the component opening the panel
**callerProperty**
the property of the caller holding the date value which will be updated by the picker.
Signal
Description
closed()
the signal is emitted when the panel or popover gets closed. The signal is handy when actions are performed upon panel close.

