.. _sdk_ubuntu_components_pickers_datepicker:

Ubuntu.Components.Pickers DatePicker
====================================

DatePicker component provides date and time value picking functionality.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.Pickers 1.3                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  : date
-  `day </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#day-prop>`_  : int
-  `hours </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#hours-prop>`_  : int
-  `locale </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#locale-prop>`_  : var
-  `maximum </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#maximum-prop>`_  : date
-  `minimum </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#minimum-prop>`_  : date
-  `minutes </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#minutes-prop>`_  : int
-  `mode </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#mode-prop>`_  : string
-  `month </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#month-prop>`_  : int
-  `moving </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#moving-prop>`_  : bool
-  `seconds </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#seconds-prop>`_  : int
-  `week </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#week-prop>`_  : int
-  `year </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#year-prop>`_  : int

Detailed Description
--------------------

`DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  combines up to three Picker elements providing different date or time value selection possibilities. It can be used to select full date (year, month, day), full time (hours, minutes, seconds) as well as to select a combination of year and month, month and day, hours and minutes, minutes and seconds or individual time units (i.e. year, month or day as well as hours, minutes or seconds). The selected date as well as the initial one is provided by the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property. For convenience the component provides also the *year*, *month*, *day*, *week*, *hours*, *minutes* and *seconds* values as separate properties, however these properties are not writable, and their initialization can happen only through the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Pickers 1.0
    Column {
        Label {
            text: "Selected date: W" + datePicker.week + " - " +
                    Qt.formatDate(datePicker.date, "dddd, dd-MMMM-yyyy")
        }
        DatePicker {
            id: datePicker
        }
    }

The `mode </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#mode-prop>`_  property specifies what time units should be shown by the picker. The property holds a string, combining **Years**, **Months**, **Days**, **Hours**, **Minutes** and **Seconds** strings sepatared with '\|' character. A `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  which shows only year and month date units would look as follows:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Pickers 1.0
    Column {
        Label {
            text: "Selected month: " + Qt.formatDate(datePicker.date, "MMMM-yyyy")
        }
        DatePicker {
            id: datePicker
            mode: "Years|Months"
        }
    }

The **mode** of the `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  is set to date picking. In case time picking is needed, the model should be set to contain the time specific mode flags. The following example demonstrates how to use `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  for time picking.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Pickers 1.0
    Column {
        Label {
            text: "Selected time: " + Qt.formatTime(datePicker.date, "hh:mm:ss")
        }
        DatePicker {
            id: datePicker
            mode: "Hours|Minutes|Seconds"
        }
    }

Note that the order in which the mode flags are specified does not influence the order the pickers are arranged. That is driven by the date format of the `locale </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#locale-prop>`_  used in the picker. Also not all combinations of mode flags are supported. See `mode </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#mode-prop>`_  for the supported combinations.

The default interval the date values are chosen is a window starting at the current date ending 50 years later. This window is defined by the *minimum* and *maximum* properties. The interval can be altered considering the following rules:

-  *minimum* must be less or equal than the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_ ; if the *date* value is less than the given *minimum*, the date will be set to the minimum's value
-  *maximum* value must be greater than the *minimum*, or invalid. When the maximum is smaller than the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_ , the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property will be updated to get the maximum value. When set to invalid date (see Date.getInvalidDate()), the upper limit of the date interval becomes infinite, meaning the year picker will extend infinitely. This leads to increased memory use and should be avoided if possible. Invalid date will make hours picker presenting 24 hours.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Pickers 1.0
    Column {
        Label {
            text: "Selected date: " + Qt.formatDate(datePicker.date, "dddd, dd-MMMM-yyyy")
        }
        DatePicker {
            id: datePicker
            minimum: {
                var d = new Date();
                d.setFullYear(d.getFullYear() - 1);
                return d;
            }
            maximum: Date.prototype.getInvalidDate.call()
        }
    }

**Note**: do not use the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property when initializing minimum and maximum as it will cause binding loops.

Layout
~~~~~~

As mentioned earlier, `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_  combines up to three Picker tumblers depending on the mode requested. These tumblers are laid out in a row in the order the default date format of the `locale </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#locale-prop>`_  is.

Date picker layout rules
^^^^^^^^^^^^^^^^^^^^^^^^

The date picker consist of three pickers: year, month, and date. The exact contents of the month and date pickers depends on the available width:

-  full name for month, number and full day for date (“August” “28 Wednesday”)
-  otherwise full name for month, number and abbreviated day for date (“August” “28 Wed”);
-  otherwise full name for month, number for date (“August” “28”);
-  otherwise abbreviated name for month, number for date (“Aug” “28”).
-  otherwise number for month, number for date (“08” “28”).

*If the currently selected date becomes impossible due to year change (from a leap to a non-leap year when the date is set to February 29) or month change (e.g. from a month that has 31 days to one that has fewer when the date is set to 31), the date reduces automatically to the last day of the month (i.e February 28 or 30th day of the month).*

Time picker layout rules
^^^^^^^^^^^^^^^^^^^^^^^^

Time units are shown in fixed width picker tumblers, numbers padded with leading zeroes. There is no other special rule on the formatting of the time unit numbers.

How minimum/maximum affects the tumblers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If minimum and maximum are within the same year, the year picker will be insensitive. If minimum and maximum are within the same month, the month picker will also be insensitive.

Property Documentation
----------------------

.. _sdk_ubuntu_components_pickers_datepicker_date:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| date : `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The date chosen by the `DatePicker </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/>`_ . The default value is the date at the component creation time. The property automatically updates year, month and day properties.

.. _sdk_ubuntu_components_pickers_datepicker_day:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] day : int                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For convenience, the **day** value of the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

.. _sdk_ubuntu_components_pickers_datepicker_hours:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] hours : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For convenience, the **hours** value of the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

.. _sdk_ubuntu_components_pickers_datepicker_locale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| locale : `var <http://doc.qt.io/qt-5/qml-var.html>`_                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property defines the locale used in the picker. The default value is the system locale.

.. code:: qml

    DatePicker {
         locale: Qt.locale("hu_HU")
    }

.. _sdk_ubuntu_components_pickers_datepicker_maximum:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximum : `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The maximum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.

See `minimum </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#minimum-prop>`_  for more details.

.. _sdk_ubuntu_components_pickers_datepicker_minimum:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimum : `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The minimum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.

The year and month picker values are filled based on these values. The year picker will be infinite (extending infinitely) if the maximum is an invalid date. If the distance between maximum and minimum is less than a year, the year picker will be shown disabled.

The month picker will be circular if the distance between maximum and minimum is at least one year, or if the maximum date is invalid.

The default values are the current date for the minimum, and 50 year distance value for maximum.

.. _sdk_ubuntu_components_pickers_datepicker_minutes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] minutes : int                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For convenience, the **minutes** value of the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

.. _sdk_ubuntu_components_pickers_datepicker_mode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mode : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies what kind of date value selectors should be shown by the picker. This is a string of 'flags' separated by '\|' separator, where flags are:

Date picker modes
Value
Description
Years
Specifies to show the year picker
Months
Specifies to show the month picker
Days
Specifies to show the day picker
Time picker modes
Value
Description
Hours
Specifies to show the hours picker
Minutes
Specifies to show the minutes picker
Seconds
Specifies to show the seconds picker

With some exceptions, any combination of these flags is allowed within the same group. Date and time picker modes cannot be combined.

The supported combinations are: *Years\|Months\|Days*, *Years\|Months*, *Months\|Days*, *Hours\|Minutes\|Seconds*, *Hours\|Minutes* and *Minutes\|Seconds*, as well as each mode flag individually.

The default value is "*Years\|Months\|Days*".

.. _sdk_ubuntu_components_pickers_datepicker_month:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] month : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For convenience, the **month** value of the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

.. _sdk_ubuntu_components_pickers_datepicker_moving:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] moving : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds whether the component's pickers are moving.

**See also** `Picker::moving </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#moving-prop>`_ .

.. _sdk_ubuntu_components_pickers_datepicker_seconds:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] seconds : int                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For convenience, the **seconds** value of the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

.. _sdk_ubuntu_components_pickers_datepicker_week:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] week : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For convenience, the **week** value of the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

.. _sdk_ubuntu_components_pickers_datepicker_year:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] year : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For convenience, the **year** value of the `date </sdk/apps/qml/Ubuntu.Components/Pickers.DatePicker/#date-prop>`_  property.

