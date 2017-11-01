Alarm component is a representation of an alarm event.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`date </sdk/apps/qml/Ubuntu.Components/Alarm#date-prop>`__**** :
   Date
-  ****`daysOfWeek </sdk/apps/qml/Ubuntu.Components/Alarm#daysOfWeek-prop>`__****
   : DaysOfWeek
-  ****`enabled </sdk/apps/qml/Ubuntu.Components/Alarm#enabled-prop>`__****
   : bool
-  ****`error </sdk/apps/qml/Ubuntu.Components/Alarm#error-prop>`__****
   : Error
-  ****`message </sdk/apps/qml/Ubuntu.Components/Alarm#message-prop>`__****
   : string
-  ****`sound </sdk/apps/qml/Ubuntu.Components/Alarm#sound-prop>`__****
   : url
-  ****`status </sdk/apps/qml/Ubuntu.Components/Alarm#status-prop>`__****
   : Status
-  ****`type </sdk/apps/qml/Ubuntu.Components/Alarm#type-prop>`__**** :
   AlarmType

Methods
-------

-  ****`cancel </sdk/apps/qml/Ubuntu.Components/Alarm#cancel-method>`__****\ ()
-  ****`reset </sdk/apps/qml/Ubuntu.Components/Alarm#reset-method>`__****\ ()
-  ****`save </sdk/apps/qml/Ubuntu.Components/Alarm#save-method>`__****\ ()

Detailed Description
--------------------

The Alarm element encapsulates alarm event data. Supports one time and
repeating alarms, where repeating can be either daily or weekly on one
or several selected days.

The alarm data is validated upon
`save </sdk/apps/qml/Ubuntu.Components/Alarm#save-method>`__ operation,
which can be used to save a new alarm or update existing alarm's
properties.

During data validation the alarm properties may suffer changes. These
changes will be reported back to each changed property. See what changes
can occurr at
`save </sdk/apps/qml/Ubuntu.Components/Alarm#save-method>`__ function
documentation.

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
`cancel </sdk/apps/qml/Ubuntu.Components/Alarm#cancel-method>`__
function but only if the event has previously been stored in the alarm
collection.

The `reset </sdk/apps/qml/Ubuntu.Components/Alarm#reset-method>`__
function clears the properties of the alarm bringing them to the default
values. In this way the same alarm component can be used to save several
alarms at the same time.

**Note:** Do not call reset function on an alarm event object when that
was returned by the
`AlarmModel::get </sdk/apps/qml/Ubuntu.Components/AlarmModel#get-method>`__
function, as that will reset the alarm cache data!

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ date : `Date </sdk/apps/qml/QtQml/Date/>`__                     |
+--------------------------------------------------------------------------+

The property holds the date the alarm will be triggered. The default
value is the current date and time the alarm object was created. Further
`reset </sdk/apps/qml/Ubuntu.Components/Alarm#reset-method>`__ calls
will bring the value back to the time the
`reset </sdk/apps/qml/Ubuntu.Components/Alarm#reset-method>`__ was
called.

| 

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

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

The property specifies whether the alarm is enabled or not. Disable
dalarms are not scheduled. The default value is true;

| 

+--------------------------------------------------------------------------+
|        \ error : Error                                                   |
+--------------------------------------------------------------------------+

The property holds the error code occurred during the last performed
operation.

+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+
| Error code          | Value   | Description                                                                                                            |
+=====================+=========+========================================================================================================================+
| NoError             | 0       | Successful operation completion.                                                                                       |
+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+
| InvalidDate         | 1       | The date specified for the alarm was invalid.                                                                          |
+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+
| EarlyDate           | 2       | The date specified for the alarm is an earlier date than the current one.                                              |
+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+
| NoDaysOfWeek        | 3       | The `daysOfWeek </sdk/apps/qml/Ubuntu.Components/Alarm#daysOfWeek-prop>`__ parameter of the alarm was not specified.   |
+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+
| OneTimeOnMoreDays   | 4       | The one-time alarm was set to be kicked in several days.                                                               |
+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+
| InvalidEvent        | 5       | The alarm event is invalid.                                                                                            |
+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+
| AdaptationError     | 100     | The error occurred in alarm adaptation layer. Adaptations may define additional behind this value.                     |
+---------------------+---------+------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ message : string                                                |
+--------------------------------------------------------------------------+

The property holds the message string which will be displayed when the
alarm is triggered. The default value is the localized "Alarm" text.

| 

+--------------------------------------------------------------------------+
|        \ sound : `url <http://doc.qt.io/qt-5/qml-url.html>`__            |
+--------------------------------------------------------------------------+

The property holds the alarm's sound to be played when the alarm is
triggered. An empty url will mean to play the default sound.

The defaul tvalue is an empty url.

| 

+--------------------------------------------------------------------------+
|        \ status : Status                                                 |
+--------------------------------------------------------------------------+

The property holds the status of the last performed operation. It can
take one of the following values:

+---------------+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status code   | Value   | Description                                                                                                                                             |
+===============+=========+=========================================================================================================================================================+
| Ready         | 1       | Specifies either that the Alarm object is ready to perform any operation or that the previous operation has been successfully completed.                |
+---------------+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
| InProgress    | 2       | Specifies that there is an operation pending on Alarm object.                                                                                           |
+---------------+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
| Fail          | 3       | Specifies that the last alarm operation has failed. The failure code is set in `error </sdk/apps/qml/Ubuntu.Components/Alarm#error-prop>`__ property.   |
+---------------+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

The notification signal has a parameter specifying the *operation* the
status refers to. The operation can take the following values:

+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| Operation code   | Description                                                                                                                          |
+==================+======================================================================================================================================+
| NoOperation      | There is no operation pending. This may be set when an error occured in the alarm adapters and the operation cannot be determined.   |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| Saving           | The status reported refers to an operation requested through `save() </sdk/apps/qml/Ubuntu.Components/Alarm#save-method>`__.         |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| Canceling        | The status reported refers to an operation requested through `cancel() </sdk/apps/qml/Ubuntu.Components/Alarm#cancel-method>`__.     |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| Reseting         | The status reported refers to an operation requested through `reset() </sdk/apps/qml/Ubuntu.Components/Alarm#reset-method>`__.       |
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

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

The function removes the alarm from the collection. The function will
fail for alarms which are not yet registered to the collection.

The operation is asynchronous, and its status is reported through the
`status </sdk/apps/qml/Ubuntu.Components/Alarm#status-prop>`__ property.
Further operations should wait till the previous operation is completed.
The operation result is stored in the
`error </sdk/apps/qml/Ubuntu.Components/Alarm#error-prop>`__ property.

| 

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

The function resets the alarm properties to its defaults. After this
call the object can be used to create a new alarm event.

**Note**: do not call this function on alarm objects retrieved from
`AlarmModel </sdk/apps/qml/Ubuntu.Components/AlarmModel/>`__, as calling
it will result in the model being out of sync from the alarm database.

| 

+--------------------------------------------------------------------------+
|        \ save()                                                          |
+--------------------------------------------------------------------------+

Updates or adds an alarm to the alarm collection. The operation aligns
properties according to the following rules:

-  - the
   `daysOfWeek </sdk/apps/qml/Ubuntu.Components/Alarm#daysOfWeek-prop>`__
   will be set to the alarm day if the
   `daysOfWeek </sdk/apps/qml/Ubuntu.Components/Alarm#daysOfWeek-prop>`__
   was set to Alarm.AutoDetect.
-  - if the
   `daysOfWeek </sdk/apps/qml/Ubuntu.Components/Alarm#daysOfWeek-prop>`__
   is set to a day other than the one specified in the
   `date </sdk/apps/qml/Ubuntu.Components/Alarm#date-prop>`__ field, the
   `date </sdk/apps/qml/Ubuntu.Components/Alarm#date-prop>`__ will be
   moved ahead to match the day from the
   `daysOfWeek </sdk/apps/qml/Ubuntu.Components/Alarm#daysOfWeek-prop>`__.

The function will fail if

-  - the `date </sdk/apps/qml/Ubuntu.Components/Alarm#date-prop>`__
   property is invalid
-  - for one time alarm, the
   `date </sdk/apps/qml/Ubuntu.Components/Alarm#date-prop>`__ property
   falue is earlier than the current time
-  - the
   `daysOfWeek </sdk/apps/qml/Ubuntu.Components/Alarm#daysOfWeek-prop>`__
   property is set to multiple days for one time alarm

The operation is asynchronous, and its status is reported through the
`status </sdk/apps/qml/Ubuntu.Components/Alarm#status-prop>`__ property.
Further operations should wait till the previous operation is completed.
The operation result is stored in the
`error </sdk/apps/qml/Ubuntu.Components/Alarm#error-prop>`__ property.

| 
