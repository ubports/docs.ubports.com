Content that can be imported or exported from a ContentPeer

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  ****`text </sdk/apps/qml/Ubuntu.Content/ContentItem#text-prop>`__****
   : string
-  ****`url </sdk/apps/qml/Ubuntu.Content/ContentItem#url-prop>`__**** :
   url

Methods
-------

-  bool
   ****`move </sdk/apps/qml/Ubuntu.Content/ContentItem#move-method-2>`__****\ (dir,
   fileName)
-  bool
   ****`move </sdk/apps/qml/Ubuntu.Content/ContentItem#move-method>`__****\ (dir)
-  string
   ****`toDataURI </sdk/apps/qml/Ubuntu.Content/ContentItem#toDataURI-method>`__****\ ()

Detailed Description
--------------------

A `ContentItem </sdk/apps/qml/Ubuntu.Content/ContentItem/>`__ is an item
that can be imported or exported from a
`ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__

See documentation for
`ContentHub </sdk/apps/qml/Ubuntu.Content/ContentHub/>`__

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

Content of the transfer

| 

+--------------------------------------------------------------------------+
|        \ url :                                                           |
| `url </sdk/apps/qml/Ubuntu.Content/ContentItem#url-prop>`__              |
+--------------------------------------------------------------------------+

URL of the content data

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool move(dir, fileName)                                        |
+--------------------------------------------------------------------------+

If the url is a local file, move the file to *dir* and rename to
*fileName*

If the move is successful, the url property will be changed and
onUrlChanged will be emitted.

Returns true if the file was moved successfully, false on error or if
the url wasn't a local file.

| 

+--------------------------------------------------------------------------+
|        \ bool move(dir)                                                  |
+--------------------------------------------------------------------------+

If the url is a local file, move the file to *dir*

If the move is successful, the url property will be changed and
onUrlChanged will be emitted.

Returns true if the file was moved successfully, false on error or if
the url wasn't a local file.

| 

+--------------------------------------------------------------------------+
|        \ string toDataURI()                                              |
+--------------------------------------------------------------------------+

Returns the `ContentItem </sdk/apps/qml/Ubuntu.Content/ContentItem/>`__
base64 encoded with the mimetype as a properly formated dataUri

| 
