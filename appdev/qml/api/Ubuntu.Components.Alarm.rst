Ubuntu.Components.Alarm
=======================

.. raw:: html

   <p>

Alarm component is a representation of an alarm event. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Alarm -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

date : Date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

daysOfWeek : DaysOfWeek

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : Error

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

message : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sound : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : Status

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

type : AlarmType

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cancel()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reset()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

save()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Alarm-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Alarm element encapsulates alarm event data. Supports one time and
repeating alarms, where repeating can be either daily or weekly on one
or several selected days.

.. raw:: html

   </p>

.. raw:: html

   <p>

The alarm data is validated upon save operation, which can be used to
save a new alarm or update existing alarm's properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

During data validation the alarm properties may suffer changes. These
changes will be reported back to each changed property. See what changes
can occurr at save function documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="type"><a href="index.html">Alarm</a></span>{
   <span class="name">id</span>: <span class="name">alarm</span>
   }
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">id</span>: <span class="name">date</span>
   <span class="name">text</span>: <span class="string">&quot;Date:&quot;</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   }
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">text</span>: <span class="name">alarm</span>.<span class="name">date</span>.<span class="name">toString</span>()
   <span class="name">onAccepted</span>: <span class="name">alarm</span>.<span class="name">date</span> <span class="operator">=</span> new <span class="name">Date</span>(<span class="name">text</span>)
   }
   }
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">id</span>: <span class="name">msg</span>
   <span class="name">text</span>: <span class="string">&quot;Message:&quot;</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   }
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">text</span>: <span class="name">alarm</span>.<span class="name">message</span>
   <span class="name">onAccepted</span>: <span class="name">alarm</span>.<span class="name">message</span> <span class="operator">=</span> <span class="name">text</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Save&quot;</span>
   <span class="name">onClicked</span>: {
   <span class="name">alarm</span>.<span class="name">save</span>();
   <span class="keyword">if</span> (<span class="name">alarm</span>.<span class="name">error</span> <span class="operator">!=</span> <span class="name">Alarm</span>.<span class="name">NoError</span>)
   <span class="name">print</span>(<span class="string">&quot;Error saving alarm, code: &quot;</span> <span class="operator">+</span> <span class="name">alarm</span>.<span class="name">error</span>);
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

An alarm can be cancelled using cancel function but only if the event
has previously been stored in the alarm collection.

.. raw:: html

   </p>

.. raw:: html

   <p>

The reset function clears the properties of the alarm bringing them to
the default values. In this way the same alarm component can be used to
save several alarms at the same time.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Do not call reset function on an alarm event object when that was
returned by the AlarmModel::get function, as that will reset the alarm
cache data!

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Alarm -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$date -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="date-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

date : Date

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the date the alarm will be triggered. The default
value is the current date and time the alarm object was created. Further
reset calls will bring the value back to the time the reset was called.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@date -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="daysOfWeek-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

daysOfWeek : DaysOfWeek

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the days of the week the alarm is scheduled. This
property can have only one day set for one time alarms and multiple days
for repeating alarms. The following flags can be set:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="3" rowspan=" 1">

Alarm.DayOfWeek enum:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Type

.. raw:: html

   </th>

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Monday

.. raw:: html

   </td>

.. raw:: html

   <td>

0x01

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm will kick on Mondays.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Tuesday

.. raw:: html

   </td>

.. raw:: html

   <td>

0x02

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm will kick on Tuesdays.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Wednesday

.. raw:: html

   </td>

.. raw:: html

   <td>

0x04

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm will kick on Wednesdays.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Thursday

.. raw:: html

   </td>

.. raw:: html

   <td>

0x08

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm will kick on Thursdays.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Friday

.. raw:: html

   </td>

.. raw:: html

   <td>

0x10

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm will kick on Fridays.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Saturday

.. raw:: html

   </td>

.. raw:: html

   <td>

0x20

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm will kick on Saturdays.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Sunday

.. raw:: html

   </td>

.. raw:: html

   <td>

0x40

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm will kick on Sundays.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.AutoDetect

.. raw:: html

   </td>

.. raw:: html

   <td>

0x80

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm day will be detected from the alarm date at the time the alarm
is saved.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The default value is Alarm.AutoDetect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@daysOfWeek -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property specifies whether the alarm is enabled or not. Disable
dalarms are not scheduled. The default value is true;

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : Error

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the error code occurred during the last performed
operation.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Error code

.. raw:: html

   </th>

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NoError

.. raw:: html

   </td>

.. raw:: html

   <td>

0

.. raw:: html

   </td>

.. raw:: html

   <td>

Successful operation completion.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

InvalidDate

.. raw:: html

   </td>

.. raw:: html

   <td>

1

.. raw:: html

   </td>

.. raw:: html

   <td>

The date specified for the alarm was invalid.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

EarlyDate

.. raw:: html

   </td>

.. raw:: html

   <td>

2

.. raw:: html

   </td>

.. raw:: html

   <td>

The date specified for the alarm is an earlier date than the current
one.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NoDaysOfWeek

.. raw:: html

   </td>

.. raw:: html

   <td>

3

.. raw:: html

   </td>

.. raw:: html

   <td>

The daysOfWeek parameter of the alarm was not specified.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

OneTimeOnMoreDays

.. raw:: html

   </td>

.. raw:: html

   <td>

4

.. raw:: html

   </td>

.. raw:: html

   <td>

The one-time alarm was set to be kicked in several days.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

InvalidEvent

.. raw:: html

   </td>

.. raw:: html

   <td>

5

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm event is invalid.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AdaptationError

.. raw:: html

   </td>

.. raw:: html

   <td>

100

.. raw:: html

   </td>

.. raw:: html

   <td>

The error occurred in alarm adaptation layer. Adaptations may define
additional behind this value.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="message-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

message : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the message string which will be displayed when the
alarm is triggered. The default value is the localized "Alarm" text.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@message -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sound-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sound : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the alarm's sound to be played when the alarm is
triggered. An empty url will mean to play the default sound.

.. raw:: html

   </p>

.. raw:: html

   <p>

The defaul tvalue is an empty url.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sound -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : Status

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the status of the last performed operation. It can
take one of the following values:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Status code

.. raw:: html

   </th>

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Ready

.. raw:: html

   </td>

.. raw:: html

   <td>

1

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies either that the Alarm object is ready to perform any operation
or that the previous operation has been successfully completed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

InProgress

.. raw:: html

   </td>

.. raw:: html

   <td>

2

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies that there is an operation pending on Alarm object.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Fail

.. raw:: html

   </td>

.. raw:: html

   <td>

3

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies that the last alarm operation has failed. The failure code is
set in error property.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The notification signal has a parameter specifying the operation the
status refers to. The operation can take the following values:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Operation code

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NoOperation

.. raw:: html

   </td>

.. raw:: html

   <td>

There is no operation pending. This may be set when an error occured in
the alarm adapters and the operation cannot be determined.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Saving

.. raw:: html

   </td>

.. raw:: html

   <td>

The status reported refers to an operation requested through save().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Canceling

.. raw:: html

   </td>

.. raw:: html

   <td>

The status reported refers to an operation requested through cancel().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Reseting

.. raw:: html

   </td>

.. raw:: html

   <td>

The status reported refers to an operation requested through reset().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

For example an implementation which resets the alarm data whenever the
save or cancel operations succeed would look as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Alarm</a></span> {
   <span class="name">onStatusChanged</span>: {
   <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">!==</span> <span class="name">Alarm</span>.<span class="name">Ready</span>)
   <span class="keyword">return</span>;
   <span class="keyword">if</span> ((<span class="name">operation</span> <span class="operator">&gt;</span> <span class="name">Alarm</span>.<span class="name">NoOperation</span>) <span class="operator">&amp;&amp;</span> (<span class="name">operation</span> <span class="operator">&lt;</span> <span class="name">Alarm</span>.<span class="name">Reseting</span>)) {
   <span class="name">reset</span>();
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="type-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

type : AlarmType

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the type of the alarm, which can have one of the
following values:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="2" rowspan=" 1">

Alarm.AlarmType enum:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Type

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.OneTime

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm occurs only once.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm.Repeating

.. raw:: html

   </td>

.. raw:: html

   <td>

The alarm is a repeating one, either daily, weekly on a given day or on
selected days.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The default value is Alarm.OneTime.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@type -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancel-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancel()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function removes the alarm from the collection. The function will
fail for alarms which are not yet registered to the collection.

.. raw:: html

   </p>

.. raw:: html

   <p>

The operation is asynchronous, and its status is reported through the
status property. Further operations should wait till the previous
operation is completed. The operation result is stored in the error
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reset-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

reset()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function resets the alarm properties to its defaults. After this
call the object can be used to create a new alarm event.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: do not call this function on alarm objects retrieved from
AlarmModel, as calling it will result in the model being out of sync
from the alarm database.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reset -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="save-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

save()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Updates or adds an alarm to the alarm collection. The operation aligns
properties according to the following rules:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

-  the daysOfWeek will be set to the alarm day if the daysOfWeek was set
   to Alarm.AutoDetect.

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   -  if the daysOfWeek is set to a day other than the one specified in
      the date field, the date will be moved ahead to match the day from
      the daysOfWeek.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      The function will fail if

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      -  the date property is invalid

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         -  for one time alarm, the date property falue is earlier than
            the current time

            .. raw:: html

               </li>

            .. raw:: html

               <li>

            -  the daysOfWeek property is set to multiple days for one
               time alarm

               .. raw:: html

                  </li>

               .. raw:: html

                  </ul>

               .. raw:: html

                  <p>

               The operation is asynchronous, and its status is reported
               through the status property. Further operations should
               wait till the previous operation is completed. The
               operation result is stored in the error property.

               .. raw:: html

                  </p>

               .. raw:: html

                  <!-- @@@save -->
