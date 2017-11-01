The TodoTime element contains the start and due dates and times of a
recurring todo series, or occurrence of an todo item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`allDay </sdk/apps/qml/QtOrganizer/TodoTime#allDay-prop>`__**** :
   date
-  ****`dueDateTime </sdk/apps/qml/QtOrganizer/TodoTime#dueDateTime-prop>`__****
   : date
-  ****`startDateTime </sdk/apps/qml/QtOrganizer/TodoTime#startDateTime-prop>`__****
   : date

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/TodoTime#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The following fields are supported:

-  `TodoTime </sdk/apps/qml/QtOrganizer/TodoTime/>`__.FieldStartDateTime
-  `TodoTime </sdk/apps/qml/QtOrganizer/TodoTime/>`__.FieldDueDateTime
-  `TodoTime </sdk/apps/qml/QtOrganizer/TodoTime/>`__.FieldAllDay

**See also** QOrganizerTodoTime.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ allDay : date                                                   |
+--------------------------------------------------------------------------+

This property holds whether the time is significant in the start
datetime.

| 

+--------------------------------------------------------------------------+
|        \ dueDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the end date and time value of the todo item.

| 

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the start date and time value of the todo item.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 
