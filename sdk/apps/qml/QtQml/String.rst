.. _sdk_qtqml_string:

QtQml String
============

The String object represents a string value

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Methods
-------

-  string :ref:`arg <sdk_qtqml_string_arg>`\ (value)

Detailed Description
--------------------

The QML String object extends the JS String object with the :ref:`arg() <sdk_qtqml_string_arg>` function.

**See also** `ECMAScript Language Specification <http://www.ecma-international.org/publications/standards/Ecma-262.htm>`_ .

Method Documentation
--------------------

.. _sdk_qtqml_string_arg:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string arg(value)                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a copy of this string with the lowest numbered place marker replaced by value, i.e., %1, %2, ..., %99. The following example prints "There are 20 items"

.. code:: cpp

    var message = "There are %1 items"
    var count = 20
    console.log(message.arg(count))

