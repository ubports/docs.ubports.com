AlarmApi.Alarm
==============

.. raw:: html

   <p>

An Alarm.

.. raw:: html

   </p>

Alarm( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> var date = new Date();
   &lt;set a valid date in the future&gt;
   var api = external.getUnityObject('1.0');
   api.AlarmApi.api.createAndSaveAlarmFor(
   date,
   api.AlarmApi.AlarmType.OneTime,
   api.AlarmApi.AlarmDayOfWeek.AutoDetect,
   &quot;alarm triggered&quot;,
   function(errorid) {
   console.log(api.AlarmApi.api.errorToMessage(errorid));
   });</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

cancel( )

.. raw:: html

   <p>

Cancels a given Alarm.

.. raw:: html

   </p>

daysOfWeek( callback )

.. raw:: html

   <p>

Retrieves the alarm day of the week.

.. raw:: html

   </p>

.. raw:: html

   <p>

The property holds the days of the week the alarm is scheduled. This
property can have only one day set for one time alarms and multiple days
for repeating alarms.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(AlarmType)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

destroy( )

.. raw:: html

   <p>

Destroys the remote object. This proxy object is not valid anymore.

.. raw:: html

   </p>

enabled( callback )

.. raw:: html

   <p>

Retrieves the alarm's enabled state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The property specifies whether the alarm is enabled or not. Disable
dalarms are not scheduled. The default value is true

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(Boolean)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

error( callback )

.. raw:: html

   <p>

The property holds the error code occurred during the last performed
operation.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(Error)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

error( callback )

.. raw:: html

   <p>

Retrieves the alarm date.

.. raw:: html

   </p>

.. raw:: html

   <p>

The date property holds the date the alarm will be triggered. The
default value is the current date and time the alarm object was created.
Further reset calls will bring the value back to the time the reset was
called.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(Date)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

message( callback )

.. raw:: html

   <p>

Retrieves the alarm message.

.. raw:: html

   </p>

.. raw:: html

   <p>

The property holds the message string which will be displayed when the
alarm is triggered. The default value is the localized "Alarm" text

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

reset( )

.. raw:: html

   <p>

Resets a given Alarm.

.. raw:: html

   </p>

save( )

.. raw:: html

   <p>

Saves the alarm as a system wide alarm with the parameters previously
set.

.. raw:: html

   </p>

setDate( date, callback )

.. raw:: html

   <p>

Sets the alarm date.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

date <Date>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

(optional) To be called after the date is set.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setDaysOfWeek( daysOfWeek, callback )

.. raw:: html

   <p>

Sets the alarm day of the week.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

daysOfWeek <AlarmDayOfWeek>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

(optional) To be called after the day of the week is set.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setEnabled( enabled, callback )

.. raw:: html

   <p>

Sets the alarm's enabled state.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

enabled <Boolean>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

(optional) To be called after the enabled state is set.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setMessage( message, callback )

.. raw:: html

   <p>

Sets the alarm message.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

message <String>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

(optional) To be called after the message is set.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setSound( sound, callback )

.. raw:: html

   <p>

Sets the alarm sound.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

sound <String>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

(optional) To be called after the sound is set.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setType( type, callback )

.. raw:: html

   <p>

Sets the alarm type.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

type <AlarmType>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

(optional) To be called after the type is set.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

sound( callback )

.. raw:: html

   <p>

Retrieves the alarm sound.

.. raw:: html

   </p>

.. raw:: html

   <p>

The property holds the alarm's sound to be played when the alarm is
triggered. An empty url will mean to play the default sound.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is an empty url.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

status( callback )

.. raw:: html

   <p>

Retrieves the alarm status.

.. raw:: html

   </p>

.. raw:: html

   <p>

The property holds the status of the last performed operation

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

type( callback )

.. raw:: html

   <p>

Retrieves the alarm type.

.. raw:: html

   </p>

.. raw:: html

   <p>

The property holds the type of the alarm. The default value is
AlarmType.OneTime

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(AlarmType)>

.. raw:: html

   </li>

.. raw:: html

   </ul>
