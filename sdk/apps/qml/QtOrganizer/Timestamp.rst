.. _sdk_qtorganizer_timestamp:
QtOrganizer Timestamp
=====================

The Timestamp element contains the created and last modified timestamp
of an organizer item's creating date and time.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`created <sdk_qtorganizer_timestamp_created-prop>` : date
-  :ref:`lastModified <sdk_qtorganizer_timestamp_lastModified-prop>`
   : date

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_timestamp_onDetailChanged-signal>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  Timestamp.FieldCreated
-  Timestamp.FieldLastModified

**See also** QOrganizerItemTimestamp.

Property Documentation
----------------------

.. _sdk_qtorganizer_timestamp_created-prop:

+--------------------------------------------------------------------------+
|        \ created : date                                                  |
+--------------------------------------------------------------------------+

This property holds the value of the item's creation date and time.

| 

.. _sdk_qtorganizer_timestamp_lastModified-prop:

+--------------------------------------------------------------------------+
|        \ lastModified : date                                             |
+--------------------------------------------------------------------------+

This property holds the value of the item's last modified date and time.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_timestamp_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 
