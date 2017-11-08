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

-  bool :ref:`saveToFile <sdk_qtquick_itemgrabresult_saveToFile>`\ (fileName)

Detailed Description
--------------------

The :ref:`ItemGrabResult <sdk_qtquick_itemgrabresult>` is a small container used to encapsulate the results from :ref:`Item::grabToImage() <sdk_qtquick_item_grabToImage>`.

**See also** :ref:`Item::grabToImage() <sdk_qtquick_item_grabToImage>`.

Method Documentation
--------------------

.. _sdk_qtquick_itemgrabresult_saveToFile:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool saveToFile(fileName)                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Saves the grab result as an image to *fileName*. Returns true if successful; otherwise returns false.

