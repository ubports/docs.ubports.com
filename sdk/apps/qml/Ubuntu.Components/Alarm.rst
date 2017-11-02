.. _sdk_ubuntu_components_alarm:
Ubuntu.Components Alarm
=======================

Alarm component is a representation of an alarm event.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`date <sdk_ubuntu_components_alarm_date-prop>` : Date
-  :ref:`daysOfWeek <sdk_ubuntu_components_alarm_daysOfWeek-prop>`
   : DaysOfWeek
-  :ref:`enabled <sdk_ubuntu_components_alarm_enabled-prop>` : bool
-  :ref:`error <sdk_ubuntu_components_alarm_error-prop>` : Error
-  :ref:`message <sdk_ubuntu_components_alarm_message-prop>` :
   string
-  :ref:`sound <sdk_ubuntu_components_alarm_sound-prop>` : url
-  :ref:`status <sdk_ubuntu_components_alarm_status-prop>` : Status
-  :ref:`type <sdk_ubuntu_components_alarm_type-prop>` : AlarmType

Methods
-------

-  :ref:`cancel <sdk_ubuntu_components_alarm_cancel-method>`\ ()
-  :ref:`reset <sdk_ubuntu_components_alarm_reset-method>`\ ()
-  :ref:`save <sdk_ubuntu_components_alarm_save-method>`\ ()

Detailed Description
--------------------

The Alarm element encapsulates alarm event data. Supports one time and
repeating alarms, where repeating can be either daily or weekly on one
or several selected days.

The alarm data is validated upon
:ref:`save <sdk_ubuntu_components_alarm#save-method>` operation, which can
be used to save a new alarm or update existing alarm's properties.

During data validation the alarm properties may suffer changes. These
changes will be reported back to each changed property. See what changes
can occurr at :ref:`save <sdk_ubuntu_components_alarm#save-method>`
function documentation.

Example usage:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Rectangle {
        width: units.gu(40)
        height: units.gu(20)
        Alarm{
            id: alarm
        }
        Column {
            spacing: units.gu(1)
            Row {
                spacing: units.gu(1)
                Label {
                    id: date
                    text: "Date:"
                    anchors.verticalCenter: parent.verticalCenter
                }
                TextField {
                    text: alarm.date.toString()
                    onAccepted: alarm.date = new Date(text)
                }
            }
            Row {
                spacing: units.gu(1)
                Label {
                    id: msg
                    text: "Message:"
                    anchors.verticalCenter: parent.verticalCenter
                }
                TextField {
                    text: alarm.message
                    onAccepted: alarm.message = text
                }
            }
            Button {
                text: "Save"
                onClicked: {
                    alarm.save();
                    if (alarm.error != Alarm.NoError)
                        print("Error saving alarm, code: " + alarm.error);
                }
            }
        }
    }

An alarm can be cancelled using
:ref:`cancel <sdk_ubuntu_components_alarm#cancel-method>` function but only
if the event has previously been stored in the alarm collection.

The :ref:`reset <sdk_ubuntu_components_alarm#reset-method>` function clears
the properties of the alarm bringing them to the default values. In this
way the same alarm component can be used to save several alarms at the
same time.

**Note:** Do not call reset function on an alarm event object when that
was returned by the
:ref:`AlarmModel::get <sdk_ubuntu_components_alarmmodel#get-method>`
function, as that will reset the alarm cache data!

Property Documentation
----------------------

.. _sdk_ubuntu_components_alarm_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ date : `Date <sdk_qtqml_date>`                             |
+--------------------------------------------------------------------------+

The property holds the date the alarm will be triggered. The default
value is the current date and time the alarm object was created. Further
:ref:`reset <sdk_ubuntu_components_alarm#reset-method>` calls will bring
the value back to the time the
:ref:`reset <sdk_ubuntu_components_alarm#reset-method>` was called.

| 

.. _sdk_ubuntu_components_alarm_daysOfWeek-prop:

+--------------------------------------------------------------------------+
|        \ daysOfWeek : DaysOfWeek                                         |
+--------------------------------------------------------------------------+

The property holds the days of the week the alarm is scheduled. This
property can have only one day set for one time alarms and multiple days
for repeating alarms. The following flags can be set:

Alarm.DayOfWeek enum:
Type
Value
Description
Alarm.Monday
0x01
The alarm will kick on Mondays.
Alarm.Tuesday
0x02
The alarm will kick on Tuesdays.
Alarm.Wednesday
0x04
The alarm will kick on Wednesdays.
Alarm.Thursday
0x08
The alarm will kick on Thursdays.
Alarm.Friday
0x10
The alarm will kick on Fridays.
Alarm.Saturday
0x20
The alarm will kick on Saturdays.
Alarm.Sunday
0x40
The alarm will kick on Sundays.
Alarm.AutoDetect
0x80
The alarm day will be detected from the alarm date at the time the alarm
is saved.

The default value is Alarm.AutoDetect.

| 

.. _sdk_ubuntu_components_alarm_enabled-prop:

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

The property specifies whether the alarm is enabled or not. Disable
dalarms are not scheduled. The default value is true;

| 

.. _sdk_ubuntu_components_alarm_error-prop:

+--------------------------------------------------------------------------+
|        \ error : Error                                                   |
+--------------------------------------------------------------------------+

The property holds the error code occurred during the last performed
operation.

.. _sdk_ubuntu_components_alarm_Error code           Value    Description-prop:

+---------------------+---------+--------------------------------------------------------------------------------------------------------------+
| Error code          | Value   | Description                                                                                                  |
+=====================+=========+==============================================================================================================+
.. _sdk_ubuntu_components_alarm_InvalidDate          1        The date specified for the alarm was invalid.-prop:
| NoError             | 0       | Successful operation completion.                                                                             |
+---------------------+---------+--------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_EarlyDate            2        The date specified for the alarm is an earlier date than the current one.-prop:
| InvalidDate         | 1       | The date specified for the alarm was invalid.                                                                |
+---------------------+---------+--------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_NoDaysOfWeek         3        The-prop:
| EarlyDate           | 2       | The date specified for the alarm is an earlier date than the current one.                                    |
+---------------------+---------+--------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_OneTimeOnMoreDays    4        The one-time alarm was set to be kicked in several days.-prop:
| NoDaysOfWeek        | 3       | The :ref:`daysOfWeek <sdk_ubuntu_components_alarm#daysOfWeek-prop>` parameter of the alarm was not specified.   |
+---------------------+---------+--------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_InvalidEvent         5        The alarm event is invalid.-prop:
| OneTimeOnMoreDays   | 4       | The one-time alarm was set to be kicked in several days.                                                     |
+---------------------+---------+--------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_AdaptationError      100      The error occurred in alarm adaptation layer. Adaptations may define additional behind this value.-prop:
| InvalidEvent        | 5       | The alarm event is invalid.                                                                                  |
+---------------------+---------+--------------------------------------------------------------------------------------------------------------+
| AdaptationError     | 100     | The error occurred in alarm adaptation layer. Adaptations may define additional behind this value.           |
+---------------------+---------+--------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_ubuntu_components_alarm_message-prop:

+--------------------------------------------------------------------------+
|        \ message : string                                                |
+--------------------------------------------------------------------------+

The property holds the message string which will be displayed when the
alarm is triggered. The default value is the localized "Alarm" text.

| 

.. _sdk_ubuntu_components_alarm_sound-prop:

+--------------------------------------------------------------------------+
|        \ sound : `url <http://doc.qt.io/qt-5/qml-url.html>`_             |
+--------------------------------------------------------------------------+

The property holds the alarm's sound to be played when the alarm is
triggered. An empty url will mean to play the default sound.

The defaul tvalue is an empty url.

| 

.. _sdk_ubuntu_components_alarm_status-prop:

+--------------------------------------------------------------------------+
|        \ status : Status                                                 |
+--------------------------------------------------------------------------+

The property holds the status of the last performed operation. It can
take one of the following values:

.. _sdk_ubuntu_components_alarm_Status code    Value    Description-prop:

+---------------+---------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Status code   | Value   | Description                                                                                                                                   |
+===============+=========+===============================================================================================================================================+
.. _sdk_ubuntu_components_alarm_InProgress     2        Specifies that there is an operation pending on Alarm object.-prop:
| Ready         | 1       | Specifies either that the Alarm object is ready to perform any operation or that the previous operation has been successfully completed.      |
+---------------+---------+-----------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_Fail           3        Specifies that the last alarm operation has failed. The failure code is set in-prop:
| InProgress    | 2       | Specifies that there is an operation pending on Alarm object.                                                                                 |
+---------------+---------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Fail          | 3       | Specifies that the last alarm operation has failed. The failure code is set in :ref:`error <sdk_ubuntu_components_alarm#error-prop>` property.   |
+---------------+---------+-----------------------------------------------------------------------------------------------------------------------------------------------+

The notification signal has a parameter specifying the *operation* the
status refers to. The operation can take the following values:

.. _sdk_ubuntu_components_alarm_Operation code    Description-prop:

+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| Operation code   | Description                                                                                                                          |
+==================+======================================================================================================================================+
.. _sdk_ubuntu_components_alarm_Saving            The status reported refers to an operation requested through-prop:
| NoOperation      | There is no operation pending. This may be set when an error occured in the alarm adapters and the operation cannot be determined.   |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_Canceling         The status reported refers to an operation requested through-prop:
| Saving           | The status reported refers to an operation requested through :ref:`save() <sdk_ubuntu_components_alarm#save-method>`.                   |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_ubuntu_components_alarm_Reseting          The status reported refers to an operation requested through-prop:
| Canceling        | The status reported refers to an operation requested through :ref:`cancel() <sdk_ubuntu_components_alarm#cancel-method>`.               |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| Reseting         | The status reported refers to an operation requested through :ref:`reset() <sdk_ubuntu_components_alarm#reset-method>`.                 |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+

For example an implementation which resets the alarm data whenever the
save or cancel operations succeed would look as follows:

.. code:: qml

    Alarm {
        onStatusChanged: {
            if (status !== Alarm.Ready)
                return;
            if ((operation > Alarm.NoOperation) && (operation < Alarm.Reseting)) {
                reset();
            }
        }
    }

| 

.. _sdk_ubuntu_components_alarm_type-prop:

+--------------------------------------------------------------------------+
|        \ type : AlarmType                                                |
+--------------------------------------------------------------------------+

The property holds the type of the alarm, which can have one of the
following values:

Alarm.AlarmType enum:
Type
Description
Alarm.OneTime
The alarm occurs only once.
Alarm.Repeating
The alarm is a repeating one, either daily, weekly on a given day or on
selected days.

The default value is Alarm.OneTime.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_alarm_cancel-method:

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

The function removes the alarm from the collection. The function will
fail for alarms which are not yet registered to the collection.

The operation is asynchronous, and its status is reported through the
:ref:`status <sdk_ubuntu_components_alarm#status-prop>` property. Further
operations should wait till the previous operation is completed. The
operation result is stored in the
:ref:`error <sdk_ubuntu_components_alarm#error-prop>` property.

| 

.. _sdk_ubuntu_components_alarm_reset-method:

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

The function resets the alarm properties to its defaults. After this
call the object can be used to create a new alarm event.

**Note**: do not call this function on alarm objects retrieved from
:ref:`AlarmModel <sdk_ubuntu_components_alarmmodel>`, as calling it will
result in the model being out of sync from the alarm database.

| 

.. _sdk_ubuntu_components_alarm_save-method:

+--------------------------------------------------------------------------+
|        \ save()                                                          |
+--------------------------------------------------------------------------+

Updates or adds an alarm to the alarm collection. The operation aligns
properties according to the following rules:

-  - the :ref:`daysOfWeek <sdk_ubuntu_components_alarm#daysOfWeek-prop>`
   will be set to the alarm day if the
   :ref:`daysOfWeek <sdk_ubuntu_components_alarm#daysOfWeek-prop>` was set
   to Alarm.AutoDetect.
-  - if the :ref:`daysOfWeek <sdk_ubuntu_components_alarm#daysOfWeek-prop>`
   is set to a day other than the one specified in the
   :ref:`date <sdk_ubuntu_components_alarm#date-prop>` field, the
   :ref:`date <sdk_ubuntu_components_alarm#date-prop>` will be moved ahead
   to match the day from the
   :ref:`daysOfWeek <sdk_ubuntu_components_alarm#daysOfWeek-prop>`.

The function will fail if

-  - the :ref:`date <sdk_ubuntu_components_alarm#date-prop>` property is
   invalid
-  - for one time alarm, the
   :ref:`date <sdk_ubuntu_components_alarm#date-prop>` property falue is
   earlier than the current time
-  - the :ref:`daysOfWeek <sdk_ubuntu_components_alarm#daysOfWeek-prop>`
   property is set to multiple days for one time alarm

The operation is asynchronous, and its status is reported through the
:ref:`status <sdk_ubuntu_components_alarm#status-prop>` property. Further
operations should wait till the previous operation is completed. The
operation result is stored in the
:ref:`error <sdk_ubuntu_components_alarm#error-prop>` property.

| 
