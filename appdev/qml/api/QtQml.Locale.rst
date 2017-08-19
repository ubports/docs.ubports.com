QtQml.Locale
============

.. raw:: html

   <p>

Provides locale specific properties and formatted data More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Locale -->

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

amText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

decimalPoint : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exponential : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

firstDayOfWeek : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

groupSeparator : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

measurementSystem : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nativeCountryName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nativeLanguageName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

negativeSign : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

percent : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pmText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positiveSign : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

uiLanguages : Array<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

weekDays : Array<int>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

zeroDigit : string

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

string currencySymbol(format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string dateFormat(type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string dateTimeFormat(type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string dayName(day, type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string monthName(month, type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string standaloneDayName(day, type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string standaloneMonthName(month, type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string timeFormat(type)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Locale-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Locale object may only be created via the Qt.locale() function. It
cannot be created directly.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Qt.locale() function returns a JS Locale object representing the
locale with the specified name, which has the format
"language[\_territory][.codeset][@modifier]" or "C".

.. raw:: html

   </p>

.. raw:: html

   <p>

Locale supports the concept of a default locale, which is determined
from the system's locale settings at application startup. If no
parameter is passed to Qt.locale() the default locale object is
returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Locale object provides a number of functions and properties
providing data for the specified locale.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Locale object may also be passed to the Date and Number
toLocaleString() and fromLocaleString() methods in order to convert
to/from strings using the specified locale.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example shows the current date formatted for the German locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Text {
   text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> Date()<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
   }</pre>

.. raw:: html

   <p>

The following example displays the specified number in the correct
format for the default locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Text {
   text: <span class="string">&quot;The value is: &quot;</span> <span class="operator">+</span> Number(<span class="number">23443.34</span>)<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale())
   }</pre>

.. raw:: html

   <p>

Qt Quick Locale's data is based on Common Locale Data Repository v1.8.1.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Locale String Format Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

The monthName(), standaloneMonthName(), dayName() and
standaloneDayName() can use the following enumeration values to specify
the formatting of the string representation for a Date object.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Locale.LongFormat The long version of day and month names; for example,
returning "January" as a month name.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.ShortFormat The short version of day and month names; for
example, returning "Jan" as a month name.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.NarrowFormat A special version of day and month names for use
when space is limited; for example, returning "J" as a month name. Note
that the narrow format might contain the same text for different months
and days or it can even be an empty string if the locale doesn't support
narrow names, so you should avoid using it for date formatting. Also,
for the system locale this format is the same as ShortFormat.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Additionally the double-to-string and string-to-double conversion
functions are covered by the following licenses:

.. raw:: html

   </p>

.. raw:: html

   <p>

Copyright (c) 1991 by AT&T.

.. raw:: html

   </p>

.. raw:: html

   <p>

Permission to use, copy, modify, and distribute this software for any
purpose without fee is hereby granted, provided that this entire notice
is included in all copies of any software which is or includes a copy or
modification of this software and in all copies of the supporting
documentation for such software.

.. raw:: html

   </p>

.. raw:: html

   <p>

THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED
WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&T MAKES ANY
REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF
THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.

.. raw:: html

   </p>

.. raw:: html

   <p>

This product includes software developed by the University of
California, Berkeley and its contributors.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Date and Number.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Locale -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$amText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="amText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

amText : string

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

The localized name of the "AM" suffix for times specified using the
conventions of the 12-hour clock.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@amText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="decimalPoint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

decimalPoint : string

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

Holds the decimal point character of this locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@decimalPoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exponential-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exponential : string

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

Holds the exponential character of this locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exponential -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="firstDayOfWeek-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

firstDayOfWeek : enumeration

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

Holds the first day of the week according to the current locale.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Locale.Sunday = 0

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.Monday = 1

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.Tuesday = 2

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.Wednesday = 3

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.Thursday = 4

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.Friday = 5

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.Saturday = 6

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: that these values match the JS Date API which is different from
the Qt C++ API where Qt::Sunday = 7.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@firstDayOfWeek -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="groupSeparator-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

groupSeparator : string

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

Holds the group separator character of this locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@groupSeparator -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="measurementSystem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

measurementSystem : enumeration

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

This property defines which units are used for measurement.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Locale.MetricSystem This value indicates metric units, such as meters,
centimeters and millimeters.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.ImperialUSSystem This value indicates imperial units, such as
inches and miles as they are used in the United States.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.ImperialUKSystem This value indicates imperial units, such as
inches and miles as they are used in the United Kingdom.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.ImperialSystem Provided for compatibility. The same as
Locale.ImperialUSSystem.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@measurementSystem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

Holds the language and country of this locale as a string of the form
"language\_country", where language is a lowercase, two-letter ISO 639
language code, and country is an uppercase, two- or three-letter ISO
3166 country code.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nativeCountryName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

nativeCountryName : string

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

Holds a native name of the country for the locale. For example "España"
for Spanish/Spain locale.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also nativeLanguageName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nativeCountryName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nativeLanguageName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

nativeLanguageName : string

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

Holds a native name of the language for the locale. For example
"Schwiizertüütsch" for Swiss-German locale.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also nativeCountryName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nativeLanguageName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="negativeSign-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

negativeSign : string

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

Holds the negative sign character of this locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@negativeSign -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="percent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

percent : string

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

Holds the percent character of this locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@percent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pmText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pmText : string

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

The localized name of the "PM" suffix for times specified using the
conventions of the 12-hour clock.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pmText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positiveSign-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

positiveSign : string

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

Holds the positive sign character of this locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@positiveSign -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textDirection : enumeration

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

Holds the text direction of the language:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.LeftToRight

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightToLeft

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@textDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="uiLanguages-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

uiLanguages : Array<string>

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

Returns an ordered list of locale names for translation purposes in
preference order.

.. raw:: html

   </p>

.. raw:: html

   <p>

The return value represents locale names that the user expects to see
the UI translation in.

.. raw:: html

   </p>

.. raw:: html

   <p>

The first item in the list is the most preferred one.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@uiLanguages -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="weekDays-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

weekDays : Array<int>

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

Holds an array of days that are considered week days according to the
current locale, where Sunday is 0 and Saturday is 6.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also firstDayOfWeek.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@weekDays -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="zeroDigit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

zeroDigit : string

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

Holds Returns the zero digit character of this locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@zeroDigit -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$currencySymbol -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currencySymbol-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string currencySymbol(format)

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

Returns the currency symbol for the specified format:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Locale.CurrencyIsoCode a ISO-4217 code of the currency.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.CurrencySymbol a currency symbol.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale.CurrencyDisplayName a user readable name of the currency.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Number::toLocaleCurrencyString().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currencySymbol -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dateFormat-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string dateFormat(type)

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

Returns the date format used for the current locale. type specifies the
FormatType to return.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Date.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dateFormat -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dateTimeFormat-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string dateTimeFormat(type)

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

Returns the date time format used for the current locale. type specifies
the FormatType to return.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Date.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dateTimeFormat -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dayName-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string dayName(day, type)

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

Returns the localized name of the day (where 0 represents Sunday, 1
represents Monday and so on), in the optional FormatType specified by
type.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also monthName() and standaloneDayName().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dayName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="monthName-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string monthName(month, type)

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

Returns the localized name of month (0-11), in the optional FormatType
specified by type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: the QLocale C++ API expects a range of (1-12), however
Locale.monthName() expects 0-11 as per the JS Date object.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also dayName() and standaloneMonthName().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@monthName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="standaloneDayName-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string standaloneDayName(day, type)

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

Returns the localized name of the day (where 0 represents Sunday, 1
represents Monday and so on) that is used as a standalone text, in the
FormatType specified by type.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the locale information does not specify the standalone day name then
return value is the same as in dayName().

.. raw:: html

   </p>

.. raw:: html

   <p>

See also dayName() and standaloneMonthName().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@standaloneDayName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="standaloneMonthName-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string standaloneMonthName(month, type)

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

Returns the localized name of month (0-11) that is used as a standalone
text, in the optional FormatType specified by type.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the locale information doesn't specify the standalone month name then
return value is the same as in monthName().

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: the QLocale C++ API expects a range of (1-12), however
Locale.standaloneMonthName() expects 0-11 as per the JS Date object.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also monthName() and standaloneDayName().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@standaloneMonthName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="timeFormat-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string timeFormat(type)

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

Returns the time format used for the current locale. type specifies the
FormatType to return.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Date.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@timeFormat -->


