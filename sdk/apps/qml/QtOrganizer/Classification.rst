The Classification element contains classification-information of an
item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`classification </sdk/apps/qml/QtOrganizer/Classification#classification-prop>`__****
   : enumeration

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/Classification#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The Classification detail contains classification related information.
This can be used as a part of security model for the organizer.

**See also** QOrganizerItemClassification.

Property Documentation
----------------------

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

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 
