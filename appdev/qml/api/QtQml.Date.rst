QtQml.Date
==========

.. raw:: html

   <p>

Provides date functions More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Date -->

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

import QtQml 2.2

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

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

string fromLocaleDateString(locale, dateString, format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string fromLocaleString(locale, dateTimeString, format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string fromLocaleTimeString(locale, timeString, format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string timeZoneUpdated()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string toLocaleDateString(locale, format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string toLocaleString(locale, format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string toLocaleTimeString(locale, format)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Date-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML Date object extends the JS Date object with locale aware
functions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Functions that accept a locale format may be either an enumeration
value:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Locale.LongFormat

.. raw:: html

   </td>

.. raw:: html

   <td>

The long version of the string; for example, returning "January" as a
month name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Locale.ShortFormat

.. raw:: html

   </td>

.. raw:: html

   <td>

The short version of the string; for example, returning "Jan" as a month
name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Locale.NarrowFormat

.. raw:: html

   </td>

.. raw:: html

   <td>

A special version for use when space is limited; for example, returning
"J" as a month name. Note that the narrow format might contain the same
text for different months and days or it can even be an empty string if
the locale doesn't support narrow names, so you should avoid using it
for date formatting. Also, for the system locale this format is the same
as ShortFormat.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

or a string specifying the format These expressions may be used for
format dates:

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

Expression

.. raw:: html

   </th>

.. raw:: html

   <th>

Output

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

d

.. raw:: html

   </td>

.. raw:: html

   <td>

the day as number without a leading zero (1 to 31)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

dd

.. raw:: html

   </td>

.. raw:: html

   <td>

the day as number with a leading zero (01 to 31)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ddd

.. raw:: html

   </td>

.. raw:: html

   <td>

the abbreviated localized day name (e.g. 'Mon' to 'Sun').

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

dddd

.. raw:: html

   </td>

.. raw:: html

   <td>

the long localized day name (e.g. 'Monday' to 'Sunday').

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

M

.. raw:: html

   </td>

.. raw:: html

   <td>

the month as number without a leading zero (1 to 12)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MM

.. raw:: html

   </td>

.. raw:: html

   <td>

the month as number with a leading zero (01 to 12)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MMM

.. raw:: html

   </td>

.. raw:: html

   <td>

the abbreviated localized month name (e.g. 'Jan' to 'Dec').

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MMMM

.. raw:: html

   </td>

.. raw:: html

   <td>

the long localized month name (e.g. 'January' to 'December').

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

yy

.. raw:: html

   </td>

.. raw:: html

   <td>

the year as two digit number (00 to 99)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

yyyy

.. raw:: html

   </td>

.. raw:: html

   <td>

the year as four digit number. If the year is negative, a minus sign is
prepended in addition.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

All other input characters will be ignored. Any sequence of characters
that are enclosed in singlequotes will be treated as text and not be
used as an expression. Two consecutive singlequotes ("''") are replaced
by a singlequote in the output.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example format strings (assuming that the Date is the 20 July 1969):

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

Format

.. raw:: html

   </th>

.. raw:: html

   <th>

Result

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

dd.MM.yyyy

.. raw:: html

   </td>

.. raw:: html

   <td>

20.07.1969

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ddd MMMM d yy

.. raw:: html

   </td>

.. raw:: html

   <td>

Sun July 20 69

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

'The day is' dddd

.. raw:: html

   </td>

.. raw:: html

   <td>

The day is Sunday

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

These expressions may be used for formatting time:

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

Expression

.. raw:: html

   </th>

.. raw:: html

   <th>

Output

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

h

.. raw:: html

   </td>

.. raw:: html

   <td>

the hour without a leading zero (0 to 23 or 1 to 12 if AM/PM display)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

hh

.. raw:: html

   </td>

.. raw:: html

   <td>

the hour with a leading zero (00 to 23 or 01 to 12 if AM/PM display)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

H

.. raw:: html

   </td>

.. raw:: html

   <td>

the hour without a leading zero (0 to 23, even with AM/PM display)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

HH

.. raw:: html

   </td>

.. raw:: html

   <td>

the hour with a leading zero (00 to 23, even with AM/PM display)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

m

.. raw:: html

   </td>

.. raw:: html

   <td>

the minute without a leading zero (0 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mm

.. raw:: html

   </td>

.. raw:: html

   <td>

the minute with a leading zero (00 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

s

.. raw:: html

   </td>

.. raw:: html

   <td>

the second without a leading zero (0 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ss

.. raw:: html

   </td>

.. raw:: html

   <td>

the second with a leading zero (00 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

z

.. raw:: html

   </td>

.. raw:: html

   <td>

the milliseconds without leading zeroes (0 to 999)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

zzz

.. raw:: html

   </td>

.. raw:: html

   <td>

the milliseconds with leading zeroes (000 to 999)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AP or A

.. raw:: html

   </td>

.. raw:: html

   <td>

use AM/PM display. AP will be replaced by either "AM" or "PM".

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ap or a

.. raw:: html

   </td>

.. raw:: html

   <td>

use am/pm display. ap will be replaced by either "am" or "pm".

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

t

.. raw:: html

   </td>

.. raw:: html

   <td>

the timezone (for example "CEST")

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

All other input characters will be ignored. Any sequence of characters
that are enclosed in singlequotes will be treated as text and not be
used as an expression. Two consecutive singlequotes ("''") are replaced
by a singlequote in the output.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example format strings (assuming that the QTime is 14:13:09.042)

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

Format

.. raw:: html

   </th>

.. raw:: html

   <th>

Result

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

hh:mm:ss.zzz

.. raw:: html

   </td>

.. raw:: html

   <td>

14:13:09.042

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

h:m:s ap

.. raw:: html

   </td>

.. raw:: html

   <td>

2:13:9 pm

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

H:m:s a

.. raw:: html

   </td>

.. raw:: html

   <td>

14:13:9 pm

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If the date is invalid, an empty string will be returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Using the locale-aware functions to perform date or time
formatting can result in incorrectly formatted times, due to an
inconsistency in specification between Qt and JS. ECMA-262 specifies
that historical dates should be intrepreted by projecting the current
rules for daylight-saving onto past years, while Qt uses historical data
(where available) to determine whether daylight-saving was in effect for
a given date. Therefore, constructing a Date value in JS and converting
it to a string using the locale-aware functions can yield a result
incorrect by one hour, if DST is currently in effect, while it was not
for the time specified, or vice versa.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Date -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$fromLocaleDateString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fromLocaleDateString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string fromLocaleDateString(locale, dateString, format)

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

Converts the date string dateString to a Date object using locale and
format.

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, Locale.LongFormat will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not specified, the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows the current date first being formatted as a
date string using the default locale and format, then parsed back again
in the same manner:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.0</span>
   <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
   property var locale: <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale()
   property date currentDate: <span class="keyword">new</span> Date()
   property string dateString
   Component<span class="operator">.</span>onCompleted: {
   dateString <span class="operator">=</span> currentDate<span class="operator">.</span>toLocaleDateString();
   print(Date<span class="operator">.</span>fromLocaleDateString(dateString));
   }
   }</pre>

.. raw:: html

   <!-- @@@fromLocaleDateString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fromLocaleString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string fromLocaleString(locale, dateTimeString, format)

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

Converts the datetime string dateTimeString to a Date object using
locale and format.

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, Locale.LongFormat will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not specified, the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows a datetime being parsed from a datetime
string in a certain format using the default locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.0</span>
   <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
   property var locale: <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale()
   property string dateTimeString: <span class="string">&quot;Tue 2013-09-17 10:56:06&quot;</span>
   Component<span class="operator">.</span>onCompleted: {
   print(Date<span class="operator">.</span>fromLocaleString(locale<span class="operator">,</span> dateTimeString<span class="operator">,</span> <span class="string">&quot;ddd yyyy-MM-dd hh:mm:ss&quot;</span>));
   }
   }</pre>

.. raw:: html

   <!-- @@@fromLocaleString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fromLocaleTimeString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string fromLocaleTimeString(locale, timeString, format)

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

Converts the time string timeString to a Date object using locale and
format.

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, Locale.LongFormat will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not specified, the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows the current time first being formatted as a
time string using the default locale and a short format, then parsed
back again in the same manner:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.2</span>
   <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
   property var locale: <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale()
   property date currentTime: <span class="keyword">new</span> Date()
   property string timeString
   Component<span class="operator">.</span>onCompleted: {
   timeString <span class="operator">=</span> currentTime<span class="operator">.</span>toLocaleTimeString(locale<span class="operator">,</span> Locale<span class="operator">.</span>ShortFormat);
   print(Date<span class="operator">.</span>fromLocaleTimeString(locale<span class="operator">,</span> timeString<span class="operator">,</span> Locale<span class="operator">.</span>ShortFormat));
   }
   }</pre>

.. raw:: html

   <!-- @@@fromLocaleTimeString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="timeZoneUpdated-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string timeZoneUpdated()

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

Informs the JS engine that the system's timezone has been changed, which
is necessary for the correct manipulation of datetime data.

.. raw:: html

   </p>

.. raw:: html

   <p>

JS stores Date objects in UTC time; all access to and from Date
components in local time involves the application of the current offset
from UTC. If the current offset changes due to the timezone being
updated, the JS engine needs to be informed so that it can recalculate
the offset.

.. raw:: html

   </p>

.. raw:: html

   <p>

This function should be called after the system's timezone has been
updated.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, an application that changes the timezone would call
timeZoneUpdated() after setting the new time zone:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">property string selectedTimeZone
   onSelectedTimeZoneChanged: {
   MyFunctions<span class="operator">.</span>setSystemTimeZone(selectedTimeZone)
   Date<span class="operator">.</span>timeZoneUpdated()
   }</pre>

.. raw:: html

   <!-- @@@timeZoneUpdated -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toLocaleDateString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string toLocaleDateString(locale, format)

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

Converts the Date to a string containing the date suitable for the
specified locale in the specified format.

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, Locale.LongFormat will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not specified, the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows the current date formatted for the German
locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Text {
   text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> <span class="keyword">new</span> Date()<span class="operator">.</span>toLocaleDateString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
   }</pre>

.. raw:: html

   <!-- @@@toLocaleDateString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toLocaleString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string toLocaleString(locale, format)

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

Converts the Date to a string containing the date and time suitable for
the specified locale in the specified format.

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, Locale.LongFormat will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not specified, the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows the current date and time formatted for the
German locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Text {
   text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> <span class="keyword">new</span> Date()<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
   }</pre>

.. raw:: html

   <!-- @@@toLocaleString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toLocaleTimeString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string toLocaleTimeString(locale, format)

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

Converts the Date to a string containing the time suitable for the
specified locale in the specified format.

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, Locale.LongFormat will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not specified, the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows the current time formatted for the German
locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Text {
   text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> <span class="keyword">new</span> Date()<span class="operator">.</span>toLocaleTimeString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
   }</pre>

.. raw:: html

   <!-- @@@toLocaleTimeString -->


