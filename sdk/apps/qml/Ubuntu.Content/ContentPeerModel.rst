A list of applications that can export or import a ContentType

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  ****`contentType </sdk/apps/qml/Ubuntu.Content/ContentPeerModel#contentType-prop>`__****
   : ContentType
-  ****`handler </sdk/apps/qml/Ubuntu.Content/ContentPeerModel#handler-prop>`__****
   : ContentHandler
-  ****`peers </sdk/apps/qml/Ubuntu.Content/ContentPeerModel#peers-prop>`__****
   : list<ContentPeer>

Detailed Description
--------------------

A `ContentPeerModel </sdk/apps/qml/Ubuntu.Content/ContentPeerModel/>`__
provides a list of all applications that are registered in the
`ContentHub </sdk/apps/qml/Ubuntu.Content/ContentHub/>`__ as a source or
destination of a
`ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__

See documentation for
`ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contentType :                                                   |
| `ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__              |
+--------------------------------------------------------------------------+

Specifies which
`ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__ discovered
peers should support.

| 

+--------------------------------------------------------------------------+
|        \ handler :                                                       |
| `ContentHandler </sdk/apps/qml/Ubuntu.Content/ContentHandler/>`__        |
+--------------------------------------------------------------------------+

Specifies which
`ContentHandler </sdk/apps/qml/Ubuntu.Content/ContentHandler/>`__
discovered peers should support.

| 

+--------------------------------------------------------------------------+
|        \ peers :                                                         |
| list<`ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__>        |
+--------------------------------------------------------------------------+

Provides a list of discovered peers matching the requested
`ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__ and
`ContentHandler </sdk/apps/qml/Ubuntu.Content/ContentHandler/>`__.

| 
