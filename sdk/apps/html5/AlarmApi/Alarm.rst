.. _sdk_alarmapi_alarm:

AlarmApi Alarm
==============


An Alarm.

**Alarm**\ ()

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

**cancel**\ ()
Cancels a given Alarm.

**daysOfWeek**\ (``callback``)
Retrieves the alarm day of the week.

The property holds the days of the week the alarm is scheduled. This property can have only one day set for one time alarms and multiple days for repeating alarms.

**Parameters:**

- ``callback`` **<Function(AlarmType)>**

**destroy**\ ()
Destroys the remote object. This proxy object is not valid anymore.

**enabled**\ (``callback``)
Retrieves the alarm's enabled state.

The property specifies whether the alarm is enabled or not. Disable dalarms are not scheduled. The default value is true

**Parameters:**

- ``callback`` **<Function(Boolean)>**

**error**\ (``callback``)
The property holds the error code occurred during the last performed operation.

**Parameters:**

- ``callback`` **<Function(Error)>**

**error**\ (``callback``)
Retrieves the alarm date.

The date property holds the date the alarm will be triggered. The default value is the current date and time the alarm object was created. Further reset calls will bring the value back to the time the reset was called.

**Parameters:**

- ``callback`` **<Function(Date)>**

**message**\ (``callback``)
Retrieves the alarm message.

The property holds the message string which will be displayed when the alarm is triggered. The default value is the localized "Alarm" text

**Parameters:**

- ``callback`` **<Function(String)>**

**reset**\ ()
Resets a given Alarm.

**save**\ ()
Saves the alarm as a system wide alarm with the parameters previously set.

**setDate**\ (``date, callback``)
Sets the alarm date.

**Parameters:**

- ``date`` **<Date>**
- ``callback`` **<Function()>**

   (optional) To be called after the date is set.

**setDaysOfWeek**\ (``daysOfWeek, callback``)
Sets the alarm day of the week.

**Parameters:**

- ``daysOfWeek`` **<AlarmDayOfWeek>**
- ``callback`` **<Function()>**

   (optional) To be called after the day of the week is set.

**setEnabled**\ (``enabled, callback``)
Sets the alarm's enabled state.

**Parameters:**

- ``enabled`` **<Boolean>**
- ``callback`` **<Function()>**

   (optional) To be called after the enabled state is set.

**setMessage**\ (``message, callback``)
Sets the alarm message.

**Parameters:**

- ``message`` **<String>**
- ``callback`` **<Function()>**

   (optional) To be called after the message is set.

**setSound**\ (``sound, callback``)
Sets the alarm sound.

**Parameters:**

- ``sound`` **<String>**
- ``callback`` **<Function()>**

   (optional) To be called after the sound is set.

**setType**\ (``type, callback``)
Sets the alarm type.

**Parameters:**

- ``type`` **<AlarmType>**
- ``callback`` **<Function()>**

   (optional) To be called after the type is set.

**sound**\ (``callback``)
Retrieves the alarm sound.

The property holds the alarm's sound to be played when the alarm is triggered. An empty url will mean to play the default sound.

The default value is an empty url.

**Parameters:**

- ``callback`` **<Function(String)>**

**status**\ (``callback``)
Retrieves the alarm status.

The property holds the status of the last performed operation

**Parameters:**

- ``callback`` **<Function(String)>**

**type**\ (``callback``)
Retrieves the alarm type.

The property holds the type of the alarm. The default value is AlarmType.OneTime

**Parameters:**

- ``callback`` **<Function(AlarmType)>**

