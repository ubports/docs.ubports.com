.. _sdk_qtorganizer_fetchhint:

QtOrganizer FetchHint
=====================

The FetchHint element provides hints to the manager about which organizer item information needs to be retrieved in an asynchronous fetch request or a synchronous function call.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`detailTypesHint <sdk_qtorganizer_fetchhint_detailTypesHint>` : list<int>
-  :ref:`optimizationHints <sdk_qtorganizer_fetchhint_optimizationHints>` : enumeration

Signals
-------

-  :ref:`onFetchHintChanged <sdk_qtorganizer_fetchhint_onFetchHintChanged>`\ ()

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtorganizer_fetchhint_detailTypesHint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detailTypesHint : list<int>                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of organizer item detail types the manager should (at a minimum) retrieve when fetching contacts.

.. _sdk_qtorganizer_fetchhint_optimizationHints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| optimizationHints : enumeration                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the optimization hint flags specified by the client.

-  AllRequired Tells the backend that all information is required.
-  NoActionPreferences Tells the backend that the client does not require retrieved organizer items to include a cache of action preferences.
-  NoBinaryBlobs Tells the backend that the client does not require retrieved organizer items to include binary blobs such as thumbnail images.

Signal Documentation
--------------------

.. _sdk_qtorganizer_fetchhint_onFetchHintChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onFetchHintChanged()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when any of the :ref:`FetchHint <sdk_qtorganizer_fetchhint>`'s properties have been changed.

