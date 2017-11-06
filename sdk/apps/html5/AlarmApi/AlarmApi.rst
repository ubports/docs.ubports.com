.. _sdk_alarmapi_alarmapi:

AlarmApi AlarmApi
=================


The AlarmApi object

**AlarmApi**\ ()

.. code:: html

      var date = new Date();
          <set a valid date in the future>

          var api = external.getUnityObject('1.0');
          api.AlarmApi.api.createAndSaveAlarmFor(
             date,
             api.AlarmApi.AlarmType.OneTime,
             api.AlarmApi.AlarmDayOfWeek.AutoDetect,
             "alarm triggered",
             function(errorid) {
                 console.log(api.AlarmApi.api.errorToMessage(errorid));
             });

-  Methods
-  Properties

**api.createAndSaveAlarmFor**\ (``date, type, daysOfWeek, message, callback``)
Creates and saves a new alarm.

**Parameters:**

- ``date`` **<Date>**

   date at which the alarm is to be triggered.

- ``type`` **<AlarmType>**

   type of the alarm.

- ``daysOfWeek`` **<AlarmDayOfWeek>**

   days of the week the alarm is scheduled.

- ``message`` **<String>**

   Message to be displayed when the alarm is triggered.

- ``callback`` **<Function(AlarmError)>**

   (optional) Function to be called when the alarm has been saved.

**api.errorToMessage**\ (``error``)
Returns a message adapted to the given error id.

**Parameters:**

- ``error`` **<AlarmError>**

   error id.

**createAlarm**\ (``callback``)
Creates a Alarm object.

**Parameters:**

- ``callback`` **<Function(Alarm)>**

   Function called with the created Alarm.

``AlarmDayOfWeek`` <**Integer**> *(static)*
Flags for the week days an Alarm should be triggered.

Values:

.. code:: html

    Monday: The alarm will kick on Mondays

                    Tuesday: The alarm will kick on Tuesdays

                    Wednesday: The alarm will kick on Wednesday

                    Thursday: The alarm will kick on Thursday

                    Friday: The alarm will kick on Friday

                    Saturday: The alarm will kick on Saturday

                    Sunday: The alarm will kick on Sunday

                    AutoDetect: The alarm day will be detected
                      from the alarm date.

.. code:: html

    var api = external.getUnityObject('1.0');
                    var dayofweek = api.AlarmApi.AlarmDayOfWeek;
                    // use dayofweek.Monday or/and dayofweek.Tuesday, etc.

``AlarmError`` <**Integer**> *(static)*
Error ids returned during AlarmApi calls.

Values:

.. code:: html

    NoError: Successful operation completion

                    InvalidDate: The date specified for the alarm was invalid

                    EarlyDate: The date specified for the alarm is an earlier
                        date than the current one

                    NbDaysOfWeek: The daysOfWeek parameter of the alarm was not specified

                    OneTimeOnMoreDays: The one-time alarm was set to be kicked in several days

                    InvalidEvent: The alarm event is invalid

                    AdaptationError: The error occurred in alarm adaptation layer.
                        Adaptations may define additional behind this value

.. code:: html

    var date = new Date();
                    <set a valid date in the future>

                    var api = external.getUnityObject('1.0');
                    api.AlarmApi.api.createAndSaveAlarmFor(
                      date,
                      api.AlarmApi.AlarmType.OneTime,
                      api.AlarmApi.AlarmDayOfWeek.AutoDetect,
                      "alarm triggered",
                      function(errorid) {
                        console.log(api.AlarmApi.api.errorToMessage(errorid));
                      });

``AlarmType`` <**Object**> *(static)*
Enumeration of the available types of Alarm.

Values:

.. code:: html

    OneTime: The alarm occurs only once

                    Repeating: The alarm is a repeating one,
                        either daily, weekly on a given day
                        or on selected days

.. code:: html

    var api = external.getUnityObject('1.0');
                    var alarmtype = api.AlarmApi.AlarmType;
                    // use alarmtype.OneTime or alarmtype.Repeating

