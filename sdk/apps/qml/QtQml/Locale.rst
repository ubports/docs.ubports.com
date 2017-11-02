.. _sdk_qtqml_locale:
QtQml Locale
============

Provides locale specific properties and formatted data

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  :ref:`amText <sdk_qtqml_locale_amText-prop>` : string
-  :ref:`decimalPoint <sdk_qtqml_locale_decimalPoint-prop>` :
   string
-  :ref:`exponential <sdk_qtqml_locale_exponential-prop>` : string
-  :ref:`firstDayOfWeek <sdk_qtqml_locale_firstDayOfWeek-prop>` :
   enumeration
-  :ref:`groupSeparator <sdk_qtqml_locale_groupSeparator-prop>` :
   string
-  :ref:`measurementSystem <sdk_qtqml_locale_measurementSystem-prop>`
   : enumeration
-  :ref:`name <sdk_qtqml_locale_name-prop>` : string
-  :ref:`nativeCountryName <sdk_qtqml_locale_nativeCountryName-prop>`
   : string
-  :ref:`nativeLanguageName <sdk_qtqml_locale_nativeLanguageName-prop>`
   : string
-  :ref:`negativeSign <sdk_qtqml_locale_negativeSign-prop>` :
   string
-  :ref:`percent <sdk_qtqml_locale_percent-prop>` : string
-  :ref:`pmText <sdk_qtqml_locale_pmText-prop>` : string
-  :ref:`positiveSign <sdk_qtqml_locale_positiveSign-prop>` :
   string
-  :ref:`textDirection <sdk_qtqml_locale_textDirection-prop>` :
   enumeration
-  :ref:`uiLanguages <sdk_qtqml_locale_uiLanguages-prop>` :
   Array<string>
-  :ref:`weekDays <sdk_qtqml_locale_weekDays-prop>` : Array<int>
-  :ref:`zeroDigit <sdk_qtqml_locale_zeroDigit-prop>` : string

Methods
-------

-  string
   **:ref:`currencySymbol <sdk_qtqml_locale#currencySymbol-method>`**\ (format)
-  string
   **:ref:`dateFormat <sdk_qtqml_locale#dateFormat-method>`**\ (type)
-  string
   **:ref:`dateTimeFormat <sdk_qtqml_locale#dateTimeFormat-method>`**\ (type)
-  string :ref:`dayName <sdk_qtqml_locale_dayName-method>`\ (day,
   type)
-  string
   **:ref:`monthName <sdk_qtqml_locale#monthName-method>`**\ (month,
   type)
-  string
   **:ref:`standaloneDayName <sdk_qtqml_locale#standaloneDayName-method>`**\ (day,
   type)
-  string
   **:ref:`standaloneMonthName <sdk_qtqml_locale#standaloneMonthName-method>`**\ (month,
   type)
-  string
   **:ref:`timeFormat <sdk_qtqml_locale#timeFormat-method>`**\ (type)

Detailed Description
--------------------

The Locale object may only be created via the
:ref:`Qt.locale() <sdk_qtqml_qt#locale-method>` function. It cannot be
created directly.

The :ref:`Qt.locale() <sdk_qtqml_qt#locale-method>` function returns a JS
Locale object representing the locale with the specified name, which has
the format "language[\_territory][.codeset][@modifier]" or "C".

Locale supports the concept of a default locale, which is determined
from the system's locale settings at application startup. If no
parameter is passed to Qt.locale() the default locale object is
returned.

The Locale object provides a number of functions and properties
providing data for the specified locale.

The Locale object may also be passed to the :ref:`Date <sdk_qtqml_date>`
and :ref:`Number <sdk_qtqml_number>` toLocaleString() and
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

The :ref:`monthName() <sdk_qtqml_locale#monthName-method>`,
:ref:`standaloneMonthName() <sdk_qtqml_locale#standaloneMonthName-method>`,
:ref:`dayName() <sdk_qtqml_locale#dayName-method>` and
:ref:`standaloneDayName() <sdk_qtqml_locale#standaloneDayName-method>` can
use the following enumeration values to specify the formatting of the
string representation for a Date object.

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

**See also** :ref:`Date <sdk_qtqml_date>` and
:ref:`Number <sdk_qtqml_number>`.

Property Documentation
----------------------

.. _sdk_qtqml_locale_amText-prop:

+--------------------------------------------------------------------------+
|        \ amText : string                                                 |
+--------------------------------------------------------------------------+

The localized name of the "AM" suffix for times specified using the
conventions of the 12-hour clock.

| 

.. _sdk_qtqml_locale_decimalPoint-prop:

+--------------------------------------------------------------------------+
|        \ decimalPoint : string                                           |
+--------------------------------------------------------------------------+

Holds the decimal point character of this locale.

| 

.. _sdk_qtqml_locale_exponential-prop:

+--------------------------------------------------------------------------+
|        \ exponential : string                                            |
+--------------------------------------------------------------------------+

Holds the exponential character of this locale.

| 

.. _sdk_qtqml_locale_firstDayOfWeek-prop:

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

.. _sdk_qtqml_locale_groupSeparator-prop:

+--------------------------------------------------------------------------+
|        \ groupSeparator : string                                         |
+--------------------------------------------------------------------------+

Holds the group separator character of this locale.

| 

.. _sdk_qtqml_locale_measurementSystem-prop:

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

.. _sdk_qtqml_locale_name-prop:

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

Holds the language and country of this locale as a string of the form
"language\_country", where language is a lowercase, two-letter ISO 639
language code, and country is an uppercase, two- or three-letter ISO
3166 country code.

| 

.. _sdk_qtqml_locale_nativeCountryName-prop:

+--------------------------------------------------------------------------+
|        \ nativeCountryName : string                                      |
+--------------------------------------------------------------------------+

Holds a native name of the country for the locale. For example "España"
for Spanish/Spain locale.

**See also**
:ref:`nativeLanguageName <sdk_qtqml_locale#nativeLanguageName-prop>`.

| 

.. _sdk_qtqml_locale_nativeLanguageName-prop:

+--------------------------------------------------------------------------+
|        \ nativeLanguageName : string                                     |
+--------------------------------------------------------------------------+

Holds a native name of the language for the locale. For example
"Schwiizertüütsch" for Swiss-German locale.

**See also**
:ref:`nativeCountryName <sdk_qtqml_locale#nativeCountryName-prop>`.

| 

.. _sdk_qtqml_locale_negativeSign-prop:

+--------------------------------------------------------------------------+
|        \ negativeSign : string                                           |
+--------------------------------------------------------------------------+

Holds the negative sign character of this locale.

| 

.. _sdk_qtqml_locale_percent-prop:

+--------------------------------------------------------------------------+
|        \ percent : string                                                |
+--------------------------------------------------------------------------+

Holds the percent character of this locale.

| 

.. _sdk_qtqml_locale_pmText-prop:

+--------------------------------------------------------------------------+
|        \ pmText : string                                                 |
+--------------------------------------------------------------------------+

The localized name of the "PM" suffix for times specified using the
conventions of the 12-hour clock.

| 

.. _sdk_qtqml_locale_positiveSign-prop:

+--------------------------------------------------------------------------+
|        \ positiveSign : string                                           |
+--------------------------------------------------------------------------+

Holds the positive sign character of this locale.

| 

.. _sdk_qtqml_locale_textDirection-prop:

+--------------------------------------------------------------------------+
|        \ textDirection : enumeration                                     |
+--------------------------------------------------------------------------+

Holds the text direction of the language:

-  Qt.LeftToRight
-  Qt.RightToLeft

| 

.. _sdk_qtqml_locale_uiLanguages-prop:

+--------------------------------------------------------------------------+
|        \ uiLanguages : Array<string>                                     |
+--------------------------------------------------------------------------+

Returns an ordered list of locale names for translation purposes in
preference order.

The return value represents locale names that the user expects to see
the UI translation in.

The first item in the list is the most preferred one.

| 

.. _sdk_qtqml_locale_weekDays-prop:

+--------------------------------------------------------------------------+
|        \ weekDays : Array<int>                                           |
+--------------------------------------------------------------------------+

Holds an array of days that are considered week days according to the
current locale, where Sunday is 0 and Saturday is 6.

**See also** :ref:`firstDayOfWeek <sdk_qtqml_locale#firstDayOfWeek-prop>`.

| 

.. _sdk_qtqml_locale_zeroDigit-method:

+--------------------------------------------------------------------------+
|        \ zeroDigit : string                                              |
+--------------------------------------------------------------------------+

Holds Returns the zero digit character of this locale.

| 

Method Documentation
--------------------

.. _sdk_qtqml_locale_string currencySymbol-method:

+--------------------------------------------------------------------------+
|        \ string currencySymbol(format)                                   |
+--------------------------------------------------------------------------+

Returns the currency symbol for the specified *format*:

-  Locale.CurrencyIsoCode a ISO-4217 code of the currency.
-  Locale.CurrencySymbol a currency symbol.
-  Locale.CurrencyDisplayName a user readable name of the currency.

**See also**
:ref:`Number::toLocaleCurrencyString() <sdk_qtqml_number#toLocaleCurrencyString-method>`.

| 

.. _sdk_qtqml_locale_string dateFormat-method:

+--------------------------------------------------------------------------+
|        \ string dateFormat(type)                                         |
+--------------------------------------------------------------------------+

Returns the date format used for the current locale. *type* specifies
the :ref:`FormatType <sdk_qtqml_locale#formattype>` to return.

**See also** :ref:`Date <sdk_qtqml_date>`.

| 

.. _sdk_qtqml_locale_string dateTimeFormat-method:

+--------------------------------------------------------------------------+
|        \ string dateTimeFormat(type)                                     |
+--------------------------------------------------------------------------+

Returns the date time format used for the current locale. *type*
specifies the :ref:`FormatType <sdk_qtqml_locale#formattype>` to return.

**See also** :ref:`Date <sdk_qtqml_date>`.

| 

.. _sdk_qtqml_locale_string dayName-method:

+--------------------------------------------------------------------------+
|        \ string dayName(day, type)                                       |
+--------------------------------------------------------------------------+

Returns the localized name of the *day* (where 0 represents Sunday, 1
represents Monday and so on), in the optional
:ref:`FormatType <sdk_qtqml_locale#formattype>` specified by *type*.

**See also** :ref:`monthName() <sdk_qtqml_locale#monthName-method>` and
:ref:`standaloneDayName() <sdk_qtqml_locale#standaloneDayName-method>`.

| 

.. _sdk_qtqml_locale_string monthName-method:

+--------------------------------------------------------------------------+
|        \ string monthName(month, type)                                   |
+--------------------------------------------------------------------------+

Returns the localized name of *month* (0-11), in the optional
:ref:`FormatType <sdk_qtqml_locale#formattype>` specified by *type*.

**Note:** the QLocale C++ API expects a range of (1-12), however
Locale.monthName() expects 0-11 as per the JS Date object.

**See also** :ref:`dayName() <sdk_qtqml_locale#dayName-method>` and
:ref:`standaloneMonthName() <sdk_qtqml_locale#standaloneMonthName-method>`.

| 

.. _sdk_qtqml_locale_string standaloneDayName-method:

+--------------------------------------------------------------------------+
|        \ string standaloneDayName(day, type)                             |
+--------------------------------------------------------------------------+

Returns the localized name of the *day* (where 0 represents Sunday, 1
represents Monday and so on) that is used as a standalone text, in the
:ref:`FormatType <sdk_qtqml_locale#formattype>` specified by *type*.

If the locale information does not specify the standalone day name then
return value is the same as in
:ref:`dayName() <sdk_qtqml_locale#dayName-method>`.

**See also** :ref:`dayName() <sdk_qtqml_locale#dayName-method>` and
:ref:`standaloneMonthName() <sdk_qtqml_locale#standaloneMonthName-method>`.

| 

.. _sdk_qtqml_locale_string standaloneMonthName-method:

+--------------------------------------------------------------------------+
|        \ string standaloneMonthName(month, type)                         |
+--------------------------------------------------------------------------+

Returns the localized name of *month* (0-11) that is used as a
standalone text, in the optional
:ref:`FormatType <sdk_qtqml_locale#formattype>` specified by *type*.

If the locale information doesn't specify the standalone month name then
return value is the same as in
:ref:`monthName() <sdk_qtqml_locale#monthName-method>`.

**Note:** the QLocale C++ API expects a range of (1-12), however
Locale.standaloneMonthName() expects 0-11 as per the JS Date object.

**See also** :ref:`monthName() <sdk_qtqml_locale#monthName-method>` and
:ref:`standaloneDayName() <sdk_qtqml_locale#standaloneDayName-method>`.

| 

.. _sdk_qtqml_locale_string timeFormat-method:

+--------------------------------------------------------------------------+
|        \ string timeFormat(type)                                         |
+--------------------------------------------------------------------------+

Returns the time format used for the current locale. *type* specifies
the :ref:`FormatType <sdk_qtqml_locale#formattype>` to return.

**See also** :ref:`Date <sdk_qtqml_date>`.

| 
