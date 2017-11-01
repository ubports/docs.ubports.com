Provides locale specific properties and formatted data

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  ****`amText </sdk/apps/qml/QtQml/Locale#amText-prop>`__**** : string
-  ****`decimalPoint </sdk/apps/qml/QtQml/Locale#decimalPoint-prop>`__****
   : string
-  ****`exponential </sdk/apps/qml/QtQml/Locale#exponential-prop>`__****
   : string
-  ****`firstDayOfWeek </sdk/apps/qml/QtQml/Locale#firstDayOfWeek-prop>`__****
   : enumeration
-  ****`groupSeparator </sdk/apps/qml/QtQml/Locale#groupSeparator-prop>`__****
   : string
-  ****`measurementSystem </sdk/apps/qml/QtQml/Locale#measurementSystem-prop>`__****
   : enumeration
-  ****`name </sdk/apps/qml/QtQml/Locale#name-prop>`__**** : string
-  ****`nativeCountryName </sdk/apps/qml/QtQml/Locale#nativeCountryName-prop>`__****
   : string
-  ****`nativeLanguageName </sdk/apps/qml/QtQml/Locale#nativeLanguageName-prop>`__****
   : string
-  ****`negativeSign </sdk/apps/qml/QtQml/Locale#negativeSign-prop>`__****
   : string
-  ****`percent </sdk/apps/qml/QtQml/Locale#percent-prop>`__**** :
   string
-  ****`pmText </sdk/apps/qml/QtQml/Locale#pmText-prop>`__**** : string
-  ****`positiveSign </sdk/apps/qml/QtQml/Locale#positiveSign-prop>`__****
   : string
-  ****`textDirection </sdk/apps/qml/QtQml/Locale#textDirection-prop>`__****
   : enumeration
-  ****`uiLanguages </sdk/apps/qml/QtQml/Locale#uiLanguages-prop>`__****
   : Array<string>
-  ****`weekDays </sdk/apps/qml/QtQml/Locale#weekDays-prop>`__**** :
   Array<int>
-  ****`zeroDigit </sdk/apps/qml/QtQml/Locale#zeroDigit-prop>`__**** :
   string

Methods
-------

-  string
   ****`currencySymbol </sdk/apps/qml/QtQml/Locale#currencySymbol-method>`__****\ (format)
-  string
   ****`dateFormat </sdk/apps/qml/QtQml/Locale#dateFormat-method>`__****\ (type)
-  string
   ****`dateTimeFormat </sdk/apps/qml/QtQml/Locale#dateTimeFormat-method>`__****\ (type)
-  string
   ****`dayName </sdk/apps/qml/QtQml/Locale#dayName-method>`__****\ (day,
   type)
-  string
   ****`monthName </sdk/apps/qml/QtQml/Locale#monthName-method>`__****\ (month,
   type)
-  string
   ****`standaloneDayName </sdk/apps/qml/QtQml/Locale#standaloneDayName-method>`__****\ (day,
   type)
-  string
   ****`standaloneMonthName </sdk/apps/qml/QtQml/Locale#standaloneMonthName-method>`__****\ (month,
   type)
-  string
   ****`timeFormat </sdk/apps/qml/QtQml/Locale#timeFormat-method>`__****\ (type)

Detailed Description
--------------------

The Locale object may only be created via the
`Qt.locale() </sdk/apps/qml/QtQml/Qt#locale-method>`__ function. It
cannot be created directly.

The `Qt.locale() </sdk/apps/qml/QtQml/Qt#locale-method>`__ function
returns a JS Locale object representing the locale with the specified
name, which has the format "language[\_territory][.codeset][@modifier]"
or "C".

Locale supports the concept of a default locale, which is determined
from the system's locale settings at application startup. If no
parameter is passed to Qt.locale() the default locale object is
returned.

The Locale object provides a number of functions and properties
providing data for the specified locale.

The Locale object may also be passed to the
`Date </sdk/apps/qml/QtQml/Date/>`__ and
`Number </sdk/apps/qml/QtQml/Number/>`__ toLocaleString() and
fromLocaleString() methods in order to convert to/from strings using the
specified locale.

This example shows the current date formatted for the German locale:

.. code:: cpp

    import QtQuick 2.0
    Text {
        text: "The date is: " + Date().toLocaleString(Qt.locale("de_DE"))
    }

The following example displays the specified number in the correct
format for the default locale:

.. code:: cpp

    import QtQuick 2.0
    Text {
        text: "The value is: " + Number(23443.34).toLocaleString(Qt.locale())
    }

Qt Quick Locale's data is based on Common Locale Data Repository v1.8.1.

       \        

Locale String Format Types
~~~~~~~~~~~~~~~~~~~~~~~~~~

The `monthName() </sdk/apps/qml/QtQml/Locale#monthName-method>`__,
`standaloneMonthName() </sdk/apps/qml/QtQml/Locale#standaloneMonthName-method>`__,
`dayName() </sdk/apps/qml/QtQml/Locale#dayName-method>`__ and
`standaloneDayName() </sdk/apps/qml/QtQml/Locale#standaloneDayName-method>`__
can use the following enumeration values to specify the formatting of
the string representation for a Date object.

-  Locale.LongFormat The long version of day and month names; for
   example, returning "January" as a month name.
-  Locale.ShortFormat The short version of day and month names; for
   example, returning "Jan" as a month name.
-  Locale.NarrowFormat A special version of day and month names for use
   when space is limited; for example, returning "J" as a month name.
   Note that the narrow format might contain the same text for different
   months and days or it can even be an empty string if the locale
   doesn't support narrow names, so you should avoid using it for date
   formatting. Also, for the system locale this format is the same as
   ShortFormat.

Additionally the double-to-string and string-to-double conversion
functions are covered by the following licenses:

Copyright (c) 1991 by AT&T.

Permission to use, copy, modify, and distribute this software for any
purpose without fee is hereby granted, provided that this entire notice
is included in all copies of any software which is or includes a copy or
modification of this software and in all copies of the supporting
documentation for such software.

THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED
WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&T MAKES ANY
REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF
THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.

This product includes software developed by the University of
California, Berkeley and its contributors.

**See also** `Date </sdk/apps/qml/QtQml/Date/>`__ and
`Number </sdk/apps/qml/QtQml/Number/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ amText : string                                                 |
+--------------------------------------------------------------------------+

The localized name of the "AM" suffix for times specified using the
conventions of the 12-hour clock.

| 

+--------------------------------------------------------------------------+
|        \ decimalPoint : string                                           |
+--------------------------------------------------------------------------+

Holds the decimal point character of this locale.

| 

+--------------------------------------------------------------------------+
|        \ exponential : string                                            |
+--------------------------------------------------------------------------+

Holds the exponential character of this locale.

| 

+--------------------------------------------------------------------------+
|        \ firstDayOfWeek : enumeration                                    |
+--------------------------------------------------------------------------+

Holds the first day of the week according to the current locale.

-  Locale.Sunday = 0
-  Locale.Monday = 1
-  Locale.Tuesday = 2
-  Locale.Wednesday = 3
-  Locale.Thursday = 4
-  Locale.Friday = 5
-  Locale.Saturday = 6

**Note:** that these values match the JS Date API which is different
from the Qt C++ API where Qt::Sunday = 7.

| 

+--------------------------------------------------------------------------+
|        \ groupSeparator : string                                         |
+--------------------------------------------------------------------------+

Holds the group separator character of this locale.

| 

+--------------------------------------------------------------------------+
|        \ measurementSystem : enumeration                                 |
+--------------------------------------------------------------------------+

This property defines which units are used for measurement.

-  Locale.MetricSystem This value indicates metric units, such as
   meters, centimeters and millimeters.
-  Locale.ImperialUSSystem This value indicates imperial units, such as
   inches and miles as they are used in the United States.
-  Locale.ImperialUKSystem This value indicates imperial units, such as
   inches and miles as they are used in the United Kingdom.
-  Locale.ImperialSystem Provided for compatibility. The same as
   Locale.ImperialUSSystem.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

Holds the language and country of this locale as a string of the form
"language\_country", where language is a lowercase, two-letter ISO 639
language code, and country is an uppercase, two- or three-letter ISO
3166 country code.

| 

+--------------------------------------------------------------------------+
|        \ nativeCountryName : string                                      |
+--------------------------------------------------------------------------+

Holds a native name of the country for the locale. For example "España"
for Spanish/Spain locale.

**See also**
`nativeLanguageName </sdk/apps/qml/QtQml/Locale#nativeLanguageName-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ nativeLanguageName : string                                     |
+--------------------------------------------------------------------------+

Holds a native name of the language for the locale. For example
"Schwiizertüütsch" for Swiss-German locale.

**See also**
`nativeCountryName </sdk/apps/qml/QtQml/Locale#nativeCountryName-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ negativeSign : string                                           |
+--------------------------------------------------------------------------+

Holds the negative sign character of this locale.

| 

+--------------------------------------------------------------------------+
|        \ percent : string                                                |
+--------------------------------------------------------------------------+

Holds the percent character of this locale.

| 

+--------------------------------------------------------------------------+
|        \ pmText : string                                                 |
+--------------------------------------------------------------------------+

The localized name of the "PM" suffix for times specified using the
conventions of the 12-hour clock.

| 

+--------------------------------------------------------------------------+
|        \ positiveSign : string                                           |
+--------------------------------------------------------------------------+

Holds the positive sign character of this locale.

| 

+--------------------------------------------------------------------------+
|        \ textDirection : enumeration                                     |
+--------------------------------------------------------------------------+

Holds the text direction of the language:

-  Qt.LeftToRight
-  Qt.RightToLeft

| 

+--------------------------------------------------------------------------+
|        \ uiLanguages : Array<string>                                     |
+--------------------------------------------------------------------------+

Returns an ordered list of locale names for translation purposes in
preference order.

The return value represents locale names that the user expects to see
the UI translation in.

The first item in the list is the most preferred one.

| 

+--------------------------------------------------------------------------+
|        \ weekDays : Array<int>                                           |
+--------------------------------------------------------------------------+

Holds an array of days that are considered week days according to the
current locale, where Sunday is 0 and Saturday is 6.

**See also**
`firstDayOfWeek </sdk/apps/qml/QtQml/Locale#firstDayOfWeek-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ zeroDigit : string                                              |
+--------------------------------------------------------------------------+

Holds Returns the zero digit character of this locale.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ string currencySymbol(format)                                   |
+--------------------------------------------------------------------------+

Returns the currency symbol for the specified *format*:

-  Locale.CurrencyIsoCode a ISO-4217 code of the currency.
-  Locale.CurrencySymbol a currency symbol.
-  Locale.CurrencyDisplayName a user readable name of the currency.

**See also**
`Number::toLocaleCurrencyString() </sdk/apps/qml/QtQml/Number#toLocaleCurrencyString-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ string dateFormat(type)                                         |
+--------------------------------------------------------------------------+

Returns the date format used for the current locale. *type* specifies
the `FormatType </sdk/apps/qml/QtQml/Locale#formattype>`__ to return.

**See also** `Date </sdk/apps/qml/QtQml/Date/>`__.

| 

+--------------------------------------------------------------------------+
|        \ string dateTimeFormat(type)                                     |
+--------------------------------------------------------------------------+

Returns the date time format used for the current locale. *type*
specifies the `FormatType </sdk/apps/qml/QtQml/Locale#formattype>`__ to
return.

**See also** `Date </sdk/apps/qml/QtQml/Date/>`__.

| 

+--------------------------------------------------------------------------+
|        \ string dayName(day, type)                                       |
+--------------------------------------------------------------------------+

Returns the localized name of the *day* (where 0 represents Sunday, 1
represents Monday and so on), in the optional
`FormatType </sdk/apps/qml/QtQml/Locale#formattype>`__ specified by
*type*.

**See also**
`monthName() </sdk/apps/qml/QtQml/Locale#monthName-method>`__ and
`standaloneDayName() </sdk/apps/qml/QtQml/Locale#standaloneDayName-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ string monthName(month, type)                                   |
+--------------------------------------------------------------------------+

Returns the localized name of *month* (0-11), in the optional
`FormatType </sdk/apps/qml/QtQml/Locale#formattype>`__ specified by
*type*.

**Note:** the QLocale C++ API expects a range of (1-12), however
Locale.monthName() expects 0-11 as per the JS Date object.

**See also** `dayName() </sdk/apps/qml/QtQml/Locale#dayName-method>`__
and
`standaloneMonthName() </sdk/apps/qml/QtQml/Locale#standaloneMonthName-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ string standaloneDayName(day, type)                             |
+--------------------------------------------------------------------------+

Returns the localized name of the *day* (where 0 represents Sunday, 1
represents Monday and so on) that is used as a standalone text, in the
`FormatType </sdk/apps/qml/QtQml/Locale#formattype>`__ specified by
*type*.

If the locale information does not specify the standalone day name then
return value is the same as in
`dayName() </sdk/apps/qml/QtQml/Locale#dayName-method>`__.

**See also** `dayName() </sdk/apps/qml/QtQml/Locale#dayName-method>`__
and
`standaloneMonthName() </sdk/apps/qml/QtQml/Locale#standaloneMonthName-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ string standaloneMonthName(month, type)                         |
+--------------------------------------------------------------------------+

Returns the localized name of *month* (0-11) that is used as a
standalone text, in the optional
`FormatType </sdk/apps/qml/QtQml/Locale#formattype>`__ specified by
*type*.

If the locale information doesn't specify the standalone month name then
return value is the same as in
`monthName() </sdk/apps/qml/QtQml/Locale#monthName-method>`__.

**Note:** the QLocale C++ API expects a range of (1-12), however
Locale.standaloneMonthName() expects 0-11 as per the JS Date object.

**See also**
`monthName() </sdk/apps/qml/QtQml/Locale#monthName-method>`__ and
`standaloneDayName() </sdk/apps/qml/QtQml/Locale#standaloneDayName-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ string timeFormat(type)                                         |
+--------------------------------------------------------------------------+

Returns the time format used for the current locale. *type* specifies
the `FormatType </sdk/apps/qml/QtQml/Locale#formattype>`__ to return.

**See also** `Date </sdk/apps/qml/QtQml/Date/>`__.

| 
