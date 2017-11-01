The FetchHint element provides hints to the manager about which
organizer item information needs to be retrieved in an asynchronous
fetch request or a synchronous function call.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`detailTypesHint </sdk/apps/qml/QtOrganizer/FetchHint#detailTypesHint-prop>`__****
   : list<int>
-  ****`optimizationHints </sdk/apps/qml/QtOrganizer/FetchHint#optimizationHints-prop>`__****
   : enumeration

Signals
-------

-  ****`onFetchHintChanged </sdk/apps/qml/QtOrganizer/FetchHint#onFetchHintChanged-signal>`__****\ ()

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ detailTypesHint : list<int>                                     |
+--------------------------------------------------------------------------+

This property holds a list of organizer item detail types the manager
should (at a minimum) retrieve when fetching contacts.

| 

+--------------------------------------------------------------------------+
|        \ optimizationHints : enumeration                                 |
+--------------------------------------------------------------------------+

This property holds the optimization hint flags specified by the client.

-  AllRequired Tells the backend that all information is required.
-  NoActionPreferences Tells the backend that the client does not
   require retrieved organizer items to include a cache of action
   preferences.
-  NoBinaryBlobs Tells the backend that the client does not require
   retrieved organizer items to include binary blobs such as thumbnail
   images.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onFetchHintChanged()                                            |
+--------------------------------------------------------------------------+

This signal is emitted, when any of the
`FetchHint </sdk/apps/qml/QtOrganizer/FetchHint/>`__'s properties have
been changed.

| 
