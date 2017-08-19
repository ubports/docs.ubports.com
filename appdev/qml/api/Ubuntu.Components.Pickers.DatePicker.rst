Ubuntu.Components.Pickers.DatePicker
====================================

.. raw:: html

   <p>

DatePicker component provides date and time value picking functionality.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DatePicker -->

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

import Ubuntu.Components.Pickers 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

StyledItem

.. raw:: html

   </p>

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

date : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

day : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hours : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locale : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximum : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimum : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minutes : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mode : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

month : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moving : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

seconds : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

week : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

year : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DatePicker-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

DatePicker combines up to three Picker elements providing different date
or time value selection possibilities. It can be used to select full
date (year, month, day), full time (hours, minutes, seconds) as well as
to select a combination of year and month, month and day, hours and
minutes, minutes and seconds or individual time units (i.e. year, month
or day as well as hours, minutes or seconds). The selected date as well
as the initial one is provided by the date property. For convenience the
component provides also the year, month, day, week, hours, minutes and
seconds values as separate properties, however these properties are not
writable, and their initialization can happen only through the date
property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Pickers 1.0
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Selected date: W&quot;</span> <span class="operator">+</span> <span class="name">datePicker</span>.<span class="name">week</span> <span class="operator">+</span> <span class="string">&quot; - &quot;</span> <span class="operator">+</span>
   <span class="name">Qt</span>.<span class="name">formatDate</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;dddd, dd-MMMM-yyyy&quot;</span>)
   }
   <span class="type"><a href="index.html">DatePicker</a></span> {
   <span class="name">id</span>: <span class="name">datePicker</span>
   }
   }</pre>

.. raw:: html

   <p>

The mode property specifies what time units should be shown by the
picker. The property holds a string, combining Years, Months, Days,
Hours, Minutes and Seconds strings sepatared with '\|' character. A
DatePicker which shows only year and month date units would look as
follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Pickers 1.0
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Selected month: &quot;</span> <span class="operator">+</span> <span class="name">Qt</span>.<span class="name">formatDate</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;MMMM-yyyy&quot;</span>)
   }
   <span class="type"><a href="index.html">DatePicker</a></span> {
   <span class="name">id</span>: <span class="name">datePicker</span>
   <span class="name">mode</span>: <span class="string">&quot;Years|Months&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

The mode of the DatePicker is set to date picking. In case time picking
is needed, the model should be set to contain the time specific mode
flags. The following example demonstrates how to use DatePicker for time
picking.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Pickers 1.0
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Selected time: &quot;</span> <span class="operator">+</span> <span class="name">Qt</span>.<span class="name">formatTime</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;hh:mm:ss&quot;</span>)
   }
   <span class="type"><a href="index.html">DatePicker</a></span> {
   <span class="name">id</span>: <span class="name">datePicker</span>
   <span class="name">mode</span>: <span class="string">&quot;Hours|Minutes|Seconds&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Note that the order in which the mode flags are specified does not
influence the order the pickers are arranged. That is driven by the date
format of the locale used in the picker. Also not all combinations of
mode flags are supported. See mode for the supported combinations.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default interval the date values are chosen is a window starting at
the current date ending 50 years later. This window is defined by the
minimum and maximum properties. The interval can be altered considering
the following rules:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

minimum must be less or equal than the date; if the date value is less
than the given minimum, the date will be set to the minimum's value

.. raw:: html

   </li>

.. raw:: html

   <li>

maximum value must be greater than the minimum, or invalid. When the
maximum is smaller than the date, the date property will be updated to
get the maximum value. When set to invalid date (see
Date.getInvalidDate()), the upper limit of the date interval becomes
infinite, meaning the year picker will extend infinitely. This leads to
increased memory use and should be avoided if possible. Invalid date
will make hours picker presenting 24 hours.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Pickers 1.0
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Selected date: &quot;</span> <span class="operator">+</span> <span class="name">Qt</span>.<span class="name">formatDate</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;dddd, dd-MMMM-yyyy&quot;</span>)
   }
   <span class="type"><a href="index.html">DatePicker</a></span> {
   <span class="name">id</span>: <span class="name">datePicker</span>
   <span class="name">minimum</span>: {
   var <span class="name">d</span> = new <span class="name">Date</span>();
   <span class="name">d</span>.<span class="name">setFullYear</span>(<span class="name">d</span>.<span class="name">getFullYear</span>() <span class="operator">-</span> <span class="number">1</span>);
   <span class="keyword">return</span> <span class="name">d</span>;
   }
   <span class="name">maximum</span>: <span class="name">Date</span>.<span class="name">prototype</span>.<span class="name">getInvalidDate</span>.<span class="name">call</span>()
   }
   }</pre>

.. raw:: html

   <p>

Note: do not use the date property when initializing minimum and maximum
as it will cause binding loops.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Layout

.. raw:: html

   </h3>

.. raw:: html

   <p>

As mentioned earlier, DatePicker combines up to three Picker tumblers
depending on the mode requested. These tumblers are laid out in a row in
the order the default date format of the locale is.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Date picker layout rules

.. raw:: html

   </h4>

.. raw:: html

   <p>

The date picker consist of three pickers: year, month, and date. The
exact contents of the month and date pickers depends on the available
width:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

full name for month, number and full day for date (“August” “28
Wednesday”)

.. raw:: html

   </li>

.. raw:: html

   <li>

otherwise full name for month, number and abbreviated day for date
(“August” “28 Wed”);

.. raw:: html

   </li>

.. raw:: html

   <li>

otherwise full name for month, number for date (“August” “28”);

.. raw:: html

   </li>

.. raw:: html

   <li>

otherwise abbreviated name for month, number for date (“Aug” “28”).

.. raw:: html

   </li>

.. raw:: html

   <li>

otherwise number for month, number for date (“08” “28”).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the currently selected date becomes impossible due to year change
(from a leap to a non-leap year when the date is set to February 29) or
month change (e.g. from a month that has 31 days to one that has fewer
when the date is set to 31), the date reduces automatically to the last
day of the month (i.e February 28 or 30th day of the month).

.. raw:: html

   </p>

.. raw:: html

   <h4>

Time picker layout rules

.. raw:: html

   </h4>

.. raw:: html

   <p>

Time units are shown in fixed width picker tumblers, numbers padded with
leading zeroes. There is no other special rule on the formatting of the
time unit numbers.

.. raw:: html

   </p>

.. raw:: html

   <h4>

How minimum/maximum affects the tumblers

.. raw:: html

   </h4>

.. raw:: html

   <p>

If minimum and maximum are within the same year, the year picker will be
insensitive. If minimum and maximum are within the same month, the month
picker will also be insensitive.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DatePicker -->

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

date : date

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

The date chosen by the DatePicker. The default value is the date at the
component creation time. The property automatically updates year, month
and day properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@date -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="day-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] day : int

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

For convenience, the day value of the date property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@day -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hours-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] hours : int

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

For convenience, the hours value of the date property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hours -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="locale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

locale : var

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

The property defines the locale used in the picker. The default value is
the system locale.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">DatePicker</a></span> {
   <span class="name">locale</span>: <span class="name">Qt</span>.<span class="name">locale</span>(<span class="string">&quot;hu_HU&quot;</span>)
   }</pre>

.. raw:: html

   <!-- @@@locale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximum-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximum : date

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

The maximum date (inclusive) to be shown in the picker. Both year and
month values will be considered from the properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

See minimum for more details.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximum -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimum-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimum : date

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

The minimum date (inclusive) to be shown in the picker. Both year and
month values will be considered from the properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The year and month picker values are filled based on these values. The
year picker will be infinite (extending infinitely) if the maximum is an
invalid date. If the distance between maximum and minimum is less than a
year, the year picker will be shown disabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The month picker will be circular if the distance between maximum and
minimum is at least one year, or if the maximum date is invalid.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default values are the current date for the minimum, and 50 year
distance value for maximum.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimum -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minutes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] minutes : int

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

For convenience, the minutes value of the date property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minutes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mode : string

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

Specifies what kind of date value selectors should be shown by the
picker. This is a string of 'flags' separated by '\|' separator, where
flags are:

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

Date picker modes

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="qt-style">

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

Years

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies to show the year picker

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Months

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies to show the month picker

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Days

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies to show the day picker

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="2" rowspan=" 1">

Time picker modes

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="qt-style">

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

Hours

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies to show the hours picker

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Minutes

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies to show the minutes picker

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Seconds

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies to show the seconds picker

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

With some exceptions, any combination of these flags is allowed within
the same group. Date and time picker modes cannot be combined.

.. raw:: html

   </p>

.. raw:: html

   <p>

The supported combinations are: Years\|Months\|Days, Years\|Months,
Months\|Days, Hours\|Minutes\|Seconds, Hours\|Minutes and
Minutes\|Seconds, as well as each mode flag individually.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is "Years\|Months\|Days".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="month-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] month : int

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

For convenience, the month value of the date property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@month -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moving-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] moving : bool

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

The property holds whether the component's pickers are moving.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Picker::moving.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moving -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="seconds-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] seconds : int

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

For convenience, the seconds value of the date property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@seconds -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="week-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] week : int

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

For convenience, the week value of the date property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@week -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="year-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] year : int

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

For convenience, the year value of the date property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@year -->


