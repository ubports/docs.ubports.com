The Anniversary element contains an anniversary of a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`calendarId </sdk/apps/qml/QtContacts/Anniversary#calendarId-prop>`__****
   : string
-  ****`event </sdk/apps/qml/QtContacts/Anniversary#event-prop>`__**** :
   string
-  ****`originalDate </sdk/apps/qml/QtContacts/Anniversary#originalDate-prop>`__****
   : date
-  ****`subType </sdk/apps/qml/QtContacts/Anniversary#subType-prop>`__****
   : enumeration

Detailed Description
--------------------

Anniversary element contains the following field types:

-  Anniversary.CalendarId
-  Anniversary.OriginalDate
-  Anniversary.Event
-  Anniversary.SubType

This element is part of the **QtContacts** module.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ calendarId : string                                             |
+--------------------------------------------------------------------------+

This property holds the id of the calendar event.

| 

+--------------------------------------------------------------------------+
|        \ event : string                                                  |
+--------------------------------------------------------------------------+

This property holds the name of the event value.

| 

+--------------------------------------------------------------------------+
|        \ originalDate : date                                             |
+--------------------------------------------------------------------------+

This property holds the original anniversary date value. This property
is either a date, or a date and time.

| 

+--------------------------------------------------------------------------+
|        \ subType : enumeration                                           |
+--------------------------------------------------------------------------+

This property holds the sub type of an Anniversary.

-  Unknown - Unknown sub type (default).
-  Wedding - A wedding anniversary.
-  Engagement - An engagement anniversary.
-  House - A new residence anniversary.
-  Employment - A start of employment anniversary.
-  Memorial - An event of sentimental significance.

| 
