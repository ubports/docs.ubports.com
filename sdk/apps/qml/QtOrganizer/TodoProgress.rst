The TodoProgress element contains information about the progress of a
todo item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`finishedDateTime </sdk/apps/qml/QtOrganizer/TodoProgress#finishedDateTime-prop>`__****
   : date
-  ****`percentageComplete </sdk/apps/qml/QtOrganizer/TodoProgress#percentageComplete-prop>`__****
   : int
-  ****`status </sdk/apps/qml/QtOrganizer/TodoProgress#status-prop>`__****
   : enumeration

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/TodoProgress#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The following fields are supported:

-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.FieldStatus
-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.FieldPercentage
-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.FieldFinishedDateTime

**See also** QOrganizerTodoProgress.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ finishedDateTime : date                                         |
+--------------------------------------------------------------------------+

This property holds the date time value which contains the date and time
at which the todo item was completed.

| 

+--------------------------------------------------------------------------+
|        \ percentageComplete : int                                        |
+--------------------------------------------------------------------------+

This property holds the value which contains the current completion
percentage of the todo item.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the value which describes the current completion
status of the todo item. The value can be one of:

-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.NotStarted
-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.InProgress
-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.Complete

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 
