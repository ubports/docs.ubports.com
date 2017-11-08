.. _sdk_qtorganizer_todoprogress:

QtOrganizer TodoProgress
========================

The TodoProgress element contains information about the progress of a todo item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`finishedDateTime <sdk_qtorganizer_todoprogress_finishedDateTime>` : date
-  :ref:`percentageComplete <sdk_qtorganizer_todoprogress_percentageComplete>` : int
-  :ref:`status <sdk_qtorganizer_todoprogress_status>` : enumeration

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_todoprogress_onDetailChanged>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.FieldStatus
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.FieldPercentage
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.FieldFinishedDateTime

**See also** QOrganizerTodoProgress.

Property Documentation
----------------------

.. _sdk_qtorganizer_todoprogress_finishedDateTime:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| finishedDateTime : date                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the date time value which contains the date and time at which the todo item was completed.

.. _sdk_qtorganizer_todoprogress_percentageComplete:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| percentageComplete : int                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value which contains the current completion percentage of the todo item.

.. _sdk_qtorganizer_todoprogress_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value which describes the current completion status of the todo item. The value can be one of:

-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.NotStarted
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.InProgress
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.Complete

Signal Documentation
--------------------

.. _sdk_qtorganizer_todoprogress_onDetailChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onDetailChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`Detail::onDetailChanged <sdk_qtorganizer_detail_onDetailChanged>`.

