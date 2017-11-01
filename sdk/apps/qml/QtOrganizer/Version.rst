The Version element contains versioning information of an organizer
item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`extendedVersion </sdk/apps/qml/QtOrganizer/Version#extendedVersion-prop>`__****
   : string
-  ****`version </sdk/apps/qml/QtOrganizer/Version#version-prop>`__****
   : int

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/Version#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

**See also** QOrganizerItemVersion.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ extendedVersion : string                                        |
+--------------------------------------------------------------------------+

This property holds the extended version of an organizer item, which can
be used to represent the version stored in the back-end.

| 

+--------------------------------------------------------------------------+
|        \ version : int                                                   |
+--------------------------------------------------------------------------+

This property holds the integer version of an organizer item, which can
be used as the sequence number as per iCalendar spec.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 
