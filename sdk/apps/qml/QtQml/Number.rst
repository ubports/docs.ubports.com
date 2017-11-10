.. _sdk_qtqml_number:

QtQml Number
============

The Number object provides represents a number value

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Methods
-------

-  string :ref:`fromLocaleString <sdk_qtqml_number_fromLocaleString>`\ (locale, number)
-  string :ref:`toLocaleCurrencyString <sdk_qtqml_number_toLocaleCurrencyString>`\ (locale, symbol)
-  string :ref:`toLocaleString <sdk_qtqml_number_toLocaleString>`\ (locale, format, precision)

Detailed Description
--------------------

The QML Number object extends the JS Number object with locale aware functions.

**See also** :ref:`Locale <sdk_qtqml_locale>`.

Method Documentation
--------------------

.. _sdk_qtqml_number_fromLocaleString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string fromLocaleString(locale, number)                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Number by parsing *number* using the conventions of the supplied *locale*.

If *locale* is not supplied the default locale will be used.

For example, using the German locale:

.. code:: cpp

    var german = Qt.locale("de_DE");
    var d;
    d = Number.fromLocaleString(german, "1234,56)   // d == 1234.56
    d = Number.fromLocaleString(german, "1.234,56") // d == 1234.56
    d = Number.fromLocaleString(german, "1234.56")  // throws exception
    d = Number.fromLocaleString(german, "1.234")    // d == 1234.0

.. _sdk_qtqml_number_toLocaleCurrencyString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string toLocaleCurrencyString(locale, symbol)                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the Number to a currency using the currency and conventions of the specified *locale*. If *symbol* is specified it will be used as the currency symbol.

**See also** :ref:`Locale::currencySymbol() <sdk_qtqml_locale_currencySymbol>`.

.. _sdk_qtqml_number_toLocaleString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string toLocaleString(locale, format, precision)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Converts the Number to a string suitable for the specified *locale* in the specified *format*, with the specified *precision*.

Valid formats are:

-  'f' Decimal floating point, e.g. 248.65
-  'e' Scientific notation using e character, e.g. 2.4865e+2
-  'E' Scientific notation using E character, e.g. 2.4865E+2
-  'g' Use the shorter of e or f
-  'G' Use the shorter of E or f

If precision is not specified, the precision will be 2.

If the format is not specified 'f' will be used.

If *locale* is not specified, the default locale will be used.

The following example shows a number formatted for the German locale:

.. code:: cpp

    import QtQuick 2.0
    Text {
        text: "The value is: " +  Number(4742378.423).toLocaleString(Qt.locale("de_DE"))
    }

You can apply toLocaleString() directly to constants, provided the decimal is included in the constant, e.g.

.. code:: cpp

    123.0.toLocaleString(Qt.locale("de_DE")) // OK
    123..toLocaleString(Qt.locale("de_DE"))  // OK
    123.toLocaleString(Qt.locale("de_DE"))   // fails

