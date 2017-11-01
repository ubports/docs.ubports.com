Provides information about a drag event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`accepted </sdk/apps/qml/QtQuick/DragEvent#accepted-prop>`__****
   : bool
-  ****`action </sdk/apps/qml/QtQuick/DragEvent#action-prop>`__**** :
   enumeration
-  ****`colorData </sdk/apps/qml/QtQuick/DragEvent#colorData-prop>`__****
   : color
-  ****`drag.source </sdk/apps/qml/QtQuick/DragEvent#drag.source-prop>`__****
   : Object
-  ****`formats </sdk/apps/qml/QtQuick/DragEvent#formats-prop>`__**** :
   stringlist
-  ****`hasColor </sdk/apps/qml/QtQuick/DragEvent#hasColor-prop>`__****
   : bool
-  ****`hasHtml </sdk/apps/qml/QtQuick/DragEvent#hasHtml-prop>`__**** :
   bool
-  ****`hasText </sdk/apps/qml/QtQuick/DragEvent#hasText-prop>`__**** :
   bool
-  ****`hasUrls </sdk/apps/qml/QtQuick/DragEvent#hasUrls-prop>`__**** :
   bool
-  ****`html </sdk/apps/qml/QtQuick/DragEvent#html-prop>`__**** : string
-  ****`keys </sdk/apps/qml/QtQuick/DragEvent#keys-prop>`__**** :
   stringlist
-  ****`proposedAction </sdk/apps/qml/QtQuick/DragEvent#proposedAction-prop>`__****
   : flags
-  ****`supportedActions </sdk/apps/qml/QtQuick/DragEvent#supportedActions-prop>`__****
   : flags
-  ****`text </sdk/apps/qml/QtQuick/DragEvent#text-prop>`__**** : string
-  ****`urls </sdk/apps/qml/QtQuick/DragEvent#urls-prop>`__**** :
   urllist
-  ****`x </sdk/apps/qml/QtQuick/DragEvent#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/DragEvent#y-prop>`__**** : real

Methods
-------

-  ****`accept </sdk/apps/qml/QtQuick/DragEvent#accept-method-2>`__****\ (enumeration
   *action*)
-  ****`accept </sdk/apps/qml/QtQuick/DragEvent#accept-method>`__****\ ()
-  ****`acceptProposedAction </sdk/apps/qml/QtQuick/DragEvent#acceptProposedAction-method>`__****\ ()
-  string
   ****`getDataAsString </sdk/apps/qml/QtQuick/DragEvent#getDataAsString-method>`__****\ (string
   *format*)

Detailed Description
--------------------

The position of the drag event can be obtained from the
`x </sdk/apps/qml/QtQuick/DragEvent#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/DragEvent#y-prop>`__ properties, and the
`keys </sdk/apps/qml/QtQuick/DragEvent#keys-prop>`__ property identifies
the drag keys of the event
`source </sdk/apps/qml/QtQuick/DragEvent#drag.source-prop>`__.

The existence of specific drag types can be determined using the
`hasColor </sdk/apps/qml/QtQuick/DragEvent#hasColor-prop>`__,
`hasHtml </sdk/apps/qml/QtQuick/DragEvent#hasHtml-prop>`__,
`hasText </sdk/apps/qml/QtQuick/DragEvent#hasText-prop>`__, and
`hasUrls </sdk/apps/qml/QtQuick/DragEvent#hasUrls-prop>`__ properties.

The list of all supplied formats can be determined using the
`formats </sdk/apps/qml/QtQuick/DragEvent#formats-prop>`__ property.

Specific drag types can be obtained using the
`colorData </sdk/apps/qml/QtQuick/DragEvent#colorData-prop>`__,
`html </sdk/apps/qml/QtQuick/DragEvent#html-prop>`__,
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__, and
`urls </sdk/apps/qml/QtQuick/DragEvent#urls-prop>`__ properties.

A string version of any available mimeType can be obtained using
`getDataAsString </sdk/apps/qml/QtQuick/DragEvent#getDataAsString-method>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accepted : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the drag event was accepted by a handler.

The default value is true.

| 

+--------------------------------------------------------------------------+
|        \ action : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the action that the
`source </sdk/apps/qml/QtQuick/DragEvent#drag.source-prop>`__ is to
perform on an accepted drop.

The drop action may be one of:

-  Qt.CopyAction Copy the data to the target.
-  Qt.MoveAction Move the data from the source to the target.
-  Qt.LinkAction Create a link from the source to the target.
-  Qt.IgnoreAction Ignore the action (do nothing with the data).

| 

+--------------------------------------------------------------------------+
|        \ colorData : color                                               |
+--------------------------------------------------------------------------+

This property holds color data, if any.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ drag.source : Object                                            |
+--------------------------------------------------------------------------+

This property holds the source of a drag event.

| 

+--------------------------------------------------------------------------+
|        \ formats : stringlist                                            |
+--------------------------------------------------------------------------+

This property holds a list of mime type formats contained in the drag
data.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ hasColor : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains a color item.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ hasHtml : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains a html item.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ hasText : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains a text item.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ hasUrls : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains one or more url
items.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ html : string                                                   |
+--------------------------------------------------------------------------+

This property holds html data, if any.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ keys : stringlist                                               |
+--------------------------------------------------------------------------+

This property holds a list of keys identifying the data type or source
of a drag event.

| 

+--------------------------------------------------------------------------+
|        \ proposedAction : flags                                          |
+--------------------------------------------------------------------------+

This property holds the set of
`actions </sdk/apps/qml/QtQuick/DragEvent#action-prop>`__ proposed by
the drag source.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ supportedActions : flags                                        |
+--------------------------------------------------------------------------+

This property holds the set of
`actions </sdk/apps/qml/QtQuick/DragEvent#action-prop>`__ supported by
the drag source.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

This property holds text data, if any.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ urls : urllist                                                  |
+--------------------------------------------------------------------------+

This property holds a list of urls, if any.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

This property holds the x coordinate of a drag event.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

This property holds the y coordinate of a drag event.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ accept(enumeration *action*)                                    |
+--------------------------------------------------------------------------+

Accepts the drag event.

If an *action* is specified it will overwrite the value of the
`action </sdk/apps/qml/QtQuick/DragEvent#action-prop>`__ property.

| 

+--------------------------------------------------------------------------+
|        \ accept()                                                        |
+--------------------------------------------------------------------------+

Accepts the drag event.

If an *action* is specified it will overwrite the value of the
`action </sdk/apps/qml/QtQuick/DragEvent#action-prop>`__ property.

| 

+--------------------------------------------------------------------------+
|        \ acceptProposedAction()                                          |
+--------------------------------------------------------------------------+

Accepts the drag event with the
`proposedAction </sdk/apps/qml/QtQuick/DragEvent#proposedAction-prop>`__.

This QML method was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ string getDataAsString(string *format*)                         |
+--------------------------------------------------------------------------+

Returns the data for the given *format* converted to a string. *format*
should be one contained in the
`formats </sdk/apps/qml/QtQuick/DragEvent#formats-prop>`__ property.

This QML method was introduced in Qt 5.2.

| 
