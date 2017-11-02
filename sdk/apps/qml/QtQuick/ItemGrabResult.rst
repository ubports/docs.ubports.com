.. _sdk_qtquick_itemgrabresult:
QtQuick ItemGrabResult
======================

Contains the results from a call to Item::grabToImage().

+---------------------+------------------------+
| Import Statement:   | import QtQuick 2.4     |
+---------------------+------------------------+
| Instantiates:       | QQuickItemGrabResult   |
+---------------------+------------------------+

Methods
-------

-  bool
   **:ref:`saveToFile <sdk_qtquick_itemgrabresult#saveToFile-method>`**\ (fileName)

Detailed Description
--------------------

The :ref:`ItemGrabResult <sdk_qtquick_itemgrabresult>` is a small container
used to encapsulate the results from
:ref:`Item::grabToImage() <sdk_qtquick_item#grabToImage-method>`.

**See also**
:ref:`Item::grabToImage() <sdk_qtquick_item#grabToImage-method>`.

Method Documentation
--------------------

.. _sdk_qtquick_itemgrabresult_bool saveToFile-method:

+--------------------------------------------------------------------------+
|        \ bool saveToFile(fileName)                                       |
+--------------------------------------------------------------------------+

Saves the grab result as an image to *fileName*. Returns true if
successful; otherwise returns false.

| 
