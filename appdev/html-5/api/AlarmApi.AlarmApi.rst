AlarmApi.AlarmApi
=================

.. raw:: html

   <p>

The AlarmApi object

.. raw:: html

   </p>

AlarmApi( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>  var date = new Date();
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

   <li>

Properties

.. raw:: html

   </li>

.. raw:: html

   </ul>

api.createAndSaveAlarmFor( date, type, daysOfWeek, message, callback )

.. raw:: html

   <p>

Creates and saves a new alarm.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

date <Date>

.. raw:: html

   <p>

date at which the alarm is to be triggered.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

type <AlarmType>

.. raw:: html

   <p>

type of the alarm.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

daysOfWeek <AlarmDayOfWeek>

.. raw:: html

   <p>

days of the week the alarm is scheduled.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

message <String>

.. raw:: html

   <p>

Message to be displayed when the alarm is triggered.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function(AlarmError)>

.. raw:: html

   <p>

(optional) Function to be called when the alarm has been saved.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

api.errorToMessage( error )

.. raw:: html

   <p>

Returns a message adapted to the given error id.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

error <AlarmError>

.. raw:: html

   <p>

error id.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

createAlarm( callback )

.. raw:: html

   <p>

Creates a Alarm object.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(Alarm)>

.. raw:: html

   <p>

Function called with the created Alarm.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

AlarmDayOfWeek <Integer> (static)

.. raw:: html

   <p>

Flags for the week days an Alarm should be triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <pre class="code prettyprint"><code>Monday: The alarm will kick on Mondays
   Tuesday: The alarm will kick on Tuesdays
   Wednesday: The alarm will kick on Wednesday
   Thursday: The alarm will kick on Thursday
   Friday: The alarm will kick on Friday
   Saturday: The alarm will kick on Saturday
   Sunday: The alarm will kick on Sunday
   AutoDetect: The alarm day will be detected
   from the alarm date.</code></pre>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>var api = external.getUnityObject('1.0');
   var dayofweek = api.AlarmApi.AlarmDayOfWeek;
   // use dayofweek.Monday or/and dayofweek.Tuesday, etc.</code></pre>

AlarmError <Integer> (static)

.. raw:: html

   <p>

Error ids returned during AlarmApi calls.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <pre class="code prettyprint"><code>NoError: Successful operation completion
   InvalidDate: The date specified for the alarm was invalid
   EarlyDate: The date specified for the alarm is an earlier
   date than the current one
   NbDaysOfWeek: The daysOfWeek parameter of the alarm was not specified
   OneTimeOnMoreDays: The one-time alarm was set to be kicked in several days
   InvalidEvent: The alarm event is invalid
   AdaptationError: The error occurred in alarm adaptation layer.
   Adaptations may define additional behind this value</code></pre>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>var date = new Date();
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

AlarmType <Object> (static)

.. raw:: html

   <p>

Enumeration of the available types of Alarm.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <pre class="code prettyprint"><code>OneTime: The alarm occurs only once
   Repeating: The alarm is a repeating one,
   either daily, weekly on a given day
   or on selected days</code></pre>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>var api = external.getUnityObject('1.0');
   var alarmtype = api.AlarmApi.AlarmType;
   // use alarmtype.OneTime or alarmtype.Repeating</code></pre>
