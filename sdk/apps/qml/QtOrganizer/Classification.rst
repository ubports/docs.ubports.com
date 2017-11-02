.. _sdk_qtorganizer_classification:
QtOrganizer Classification
==========================

The Classification element contains classification-information of an
item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`classification <sdk_qtorganizer_classification_classification-prop>`
   : enumeration

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_classification_onDetailChanged-signal>`\ ()

Detailed Description
--------------------

The Classification detail contains classification related information.
This can be used as a part of security model for the organizer.

**See also** QOrganizerItemClassification.

Property Documentation
----------------------

.. _sdk_qtorganizer_classification_classification-prop:

+--------------------------------------------------------------------------+
|        \ classification : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the calendar item's classification related
information. The value can be one of:

-  Classification.AccessPublic
-  Classification.AccessConfidential
-  Classification.AccessPrivate

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_classification_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 
