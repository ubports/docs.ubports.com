.. _sdk_qtqml_date:

QtQml Date
==========

Provides date functions

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Methods
-------

-  string :ref:`fromLocaleDateString <sdk_qtqml_date_fromLocaleDateString>`\ (locale, dateString, format)
-  string :ref:`fromLocaleString <sdk_qtqml_date_fromLocaleString>`\ (locale, dateTimeString, format)
-  string :ref:`fromLocaleTimeString <sdk_qtqml_date_fromLocaleTimeString>`\ (locale, timeString, format)
-  string :ref:`timeZoneUpdated <sdk_qtqml_date_timeZoneUpdated>`\ ()
-  string :ref:`toLocaleDateString <sdk_qtqml_date_toLocaleDateString>`\ (locale, format)
-  string :ref:`toLocaleString <sdk_qtqml_date_toLocaleString>`\ (locale, format)
-  string :ref:`toLocaleTimeString <sdk_qtqml_date_toLocaleTimeString>`\ (locale, format)

Detailed Description
--------------------

The QML Date object extends the `JS Date object <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date>`_  with locale aware functions.

Functions that accept a locale format may be either an enumeration value:

+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Locale.LongFormat     | The long version of the string; for example, returning "January" as a month name.                                                                                                                                                                                                                                                                                                        |
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Locale.ShortFormat    | The short version of the string; for example, returning "Jan" as a month name.                                                                                                                                                                                                                                                                                                           |
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Locale.NarrowFormat   | A special version for use when space is limited; for example, returning "J" as a month name. Note that the narrow format might contain the same text for different months and days or it can even be an empty string if the locale doesn't support narrow names, so you should avoid using it for date formatting. Also, for the system locale this format is the same as ShortFormat.   |
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

or a string specifying the format These expressions may be used for format dates:

+--------------+--------------------------------------------------------------------------------------------------+
| Expression   | Output                                                                                           |
+==============+==================================================================================================+
| d            | the day as number without a leading zero (1 to 31)                                               |
+--------------+--------------------------------------------------------------------------------------------------+
| dd           | the day as number with a leading zero (01 to 31)                                                 |
+--------------+--------------------------------------------------------------------------------------------------+
| ddd          | the abbreviated localized day name (e.g. 'Mon' to 'Sun').                                        |
+--------------+--------------------------------------------------------------------------------------------------+
| dddd         | the long localized day name (e.g. 'Monday' to 'Sunday').                                         |
+--------------+--------------------------------------------------------------------------------------------------+
| M            | the month as number without a leading zero (1 to 12)                                             |
+--------------+--------------------------------------------------------------------------------------------------+
| MM           | the month as number with a leading zero (01 to 12)                                               |
+--------------+--------------------------------------------------------------------------------------------------+
| MMM          | the abbreviated localized month name (e.g. 'Jan' to 'Dec').                                      |
+--------------+--------------------------------------------------------------------------------------------------+
| MMMM         | the long localized month name (e.g. 'January' to 'December').                                    |
+--------------+--------------------------------------------------------------------------------------------------+
| yy           | the year as two digit number (00 to 99)                                                          |
+--------------+--------------------------------------------------------------------------------------------------+
| yyyy         | the year as four digit number. If the year is negative, a minus sign is prepended in addition.   |
+--------------+--------------------------------------------------------------------------------------------------+

All other input characters will be ignored. Any sequence of characters that are enclosed in singlequotes will be treated as text and not be used as an expression. Two consecutive singlequotes ("''") are replaced by a singlequote in the output.

Example format strings (assuming that the Date is the 20 July 1969):

+---------------------+---------------------+
| Format              | Result              |
+=====================+=====================+
| dd.MM.yyyy          | 20.07.1969          |
+---------------------+---------------------+
| ddd MMMM d yy       | Sun July 20 69      |
+---------------------+---------------------+
| 'The day is' dddd   | The day is Sunday   |
+---------------------+---------------------+

These expressions may be used for formatting time:

+--------------+-------------------------------------------------------------------------+
| Expression   | Output                                                                  |
+==============+=========================================================================+
| h            | the hour without a leading zero (0 to 23 or 1 to 12 if AM/PM display)   |
+--------------+-------------------------------------------------------------------------+
| hh           | the hour with a leading zero (00 to 23 or 01 to 12 if AM/PM display)    |
+--------------+-------------------------------------------------------------------------+
| H            | the hour without a leading zero (0 to 23, even with AM/PM display)      |
+--------------+-------------------------------------------------------------------------+
| HH           | the hour with a leading zero (00 to 23, even with AM/PM display)        |
+--------------+-------------------------------------------------------------------------+
| m            | the minute without a leading zero (0 to 59)                             |
+--------------+-------------------------------------------------------------------------+
| mm           | the minute with a leading zero (00 to 59)                               |
+--------------+-------------------------------------------------------------------------+
| s            | the second without a leading zero (0 to 59)                             |
+--------------+-------------------------------------------------------------------------+
| ss           | the second with a leading zero (00 to 59)                               |
+--------------+-------------------------------------------------------------------------+
| z            | the milliseconds without leading zeroes (0 to 999)                      |
+--------------+-------------------------------------------------------------------------+
| zzz          | the milliseconds with leading zeroes (000 to 999)                       |
+--------------+-------------------------------------------------------------------------+
| AP or A      | use AM/PM display. *AP* will be replaced by either "AM" or "PM".        |
+--------------+-------------------------------------------------------------------------+
| ap or a      | use am/pm display. *ap* will be replaced by either "am" or "pm".        |
+--------------+-------------------------------------------------------------------------+
| t            | the timezone (for example "CEST")                                       |
+--------------+-------------------------------------------------------------------------+

All other input characters will be ignored. Any sequence of characters that are enclosed in singlequotes will be treated as text and not be used as an expression. Two consecutive singlequotes ("''") are replaced by a singlequote in the output.

Example format strings (assuming that the QTime is 14:13:09.042)

+----------------+----------------+
| Format         | Result         |
+================+================+
| hh:mm:ss.zzz   | 14:13:09.042   |
+----------------+----------------+
| h:m:s ap       | 2:13:9 pm      |
+----------------+----------------+
| H:m:s a        | 14:13:9 pm     |
+----------------+----------------+

If the date is invalid, an empty string will be returned.

Note: Using the locale-aware functions to perform date or time formatting can result in incorrectly formatted times, due to an inconsistency in specification between Qt and JS. ECMA-262 specifies that historical dates should be intrepreted by projecting the current rules for daylight-saving onto past years, while Qt uses historical data (where available) to determine whether daylight-saving was in effect for a given date. Therefore, constructing a Date value in JS and converting it to a string using the locale-aware functions can yield a result incorrect by one hour, if DST is currently in effect, while it was not for the time specified, or vice versa.

**See also** :ref:`Locale <sdk_qtqml_locale>`.

Method Documentation
--------------------

.. _sdk_qtqml_date_fromLocaleDateString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string fromLocaleDateString(locale, dateString, format)                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the date string *dateString* to a :ref:`Date <sdk_qtqml_date>` object using *locale* and *format*.

If *format* is not specified, :ref:`Locale.LongFormat <sdk_qtqml_locale>` will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current date first being formatted as a date string using the default locale and format, then parsed back again in the same manner:

.. code:: cpp

    import QtQml 2.0
    QtObject {
        property var locale: Qt.locale()
        property date currentDate: new Date()
        property string dateString
        Component.onCompleted: {
            dateString = currentDate.toLocaleDateString();
            print(Date.fromLocaleDateString(dateString));
        }
    }

.. _sdk_qtqml_date_fromLocaleString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string fromLocaleString(locale, dateTimeString, format)                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the datetime string *dateTimeString* to a :ref:`Date <sdk_qtqml_date>` object using *locale* and *format*.

If *format* is not specified, :ref:`Locale.LongFormat <sdk_qtqml_locale>` will be used.

If *locale* is not specified, the default locale will be used.

The following example shows a datetime being parsed from a datetime string in a certain format using the default locale:

.. code:: cpp

    import QtQml 2.0
    QtObject {
        property var locale: Qt.locale()
        property string dateTimeString: "Tue 2013-09-17 10:56:06"
        Component.onCompleted: {
            print(Date.fromLocaleString(locale, dateTimeString, "ddd yyyy-MM-dd hh:mm:ss"));
        }
    }

.. _sdk_qtqml_date_fromLocaleTimeString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string fromLocaleTimeString(locale, timeString, format)                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the time string *timeString* to a :ref:`Date <sdk_qtqml_date>` object using *locale* and *format*.

If *format* is not specified, :ref:`Locale.LongFormat <sdk_qtqml_locale>` will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current time first being formatted as a time string using the default locale and a short format, then parsed back again in the same manner:

.. code:: cpp

    import QtQml 2.2
    QtObject {
        property var locale: Qt.locale()
        property date currentTime: new Date()
        property string timeString
        Component.onCompleted: {
            timeString = currentTime.toLocaleTimeString(locale, Locale.ShortFormat);
            print(Date.fromLocaleTimeString(locale, timeString, Locale.ShortFormat));
        }
    }

.. _sdk_qtqml_date_timeZoneUpdated:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string timeZoneUpdated()                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Informs the JS engine that the system's timezone has been changed, which is necessary for the correct manipulation of datetime data.

JS stores Date objects in UTC time; all access to and from Date components in local time involves the application of the current offset from UTC. If the current offset changes due to the timezone being updated, the JS engine needs to be informed so that it can recalculate the offset.

This function should be called after the system's timezone has been updated.

For example, an application that changes the timezone would call timeZoneUpdated() after setting the new time zone:

.. code:: cpp

    property string selectedTimeZone
    onSelectedTimeZoneChanged: {
        MyFunctions.setSystemTimeZone(selectedTimeZone)
        Date.timeZoneUpdated()
    }

.. _sdk_qtqml_date_toLocaleDateString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string toLocaleDateString(locale, format)                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the Date to a string containing the date suitable for the specified *locale* in the specified *format*.

If *format* is not specified, :ref:`Locale.LongFormat <sdk_qtqml_locale>` will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current date formatted for the German locale:

.. code:: cpp

    import QtQuick 2.0
    Text {
        text: "The date is: " + new Date().toLocaleDateString(Qt.locale("de_DE"))
    }

.. _sdk_qtqml_date_toLocaleString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string toLocaleString(locale, format)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the Date to a string containing the date and time suitable for the specified *locale* in the specified *format*.

If *format* is not specified, :ref:`Locale.LongFormat <sdk_qtqml_locale>` will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current date and time formatted for the German locale:

.. code:: cpp

    import QtQuick 2.0
    Text {
        text: "The date is: " + new Date().toLocaleString(Qt.locale("de_DE"))
    }

.. _sdk_qtqml_date_toLocaleTimeString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string toLocaleTimeString(locale, format)                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the Date to a string containing the time suitable for the specified *locale* in the specified *format*.

If *format* is not specified, :ref:`Locale.LongFormat <sdk_qtqml_locale>` will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current time formatted for the German locale:

.. code:: cpp

    import QtQuick 2.0
    Text {
        text: "The date is: " + new Date().toLocaleTimeString(Qt.locale("de_DE"))
    }

