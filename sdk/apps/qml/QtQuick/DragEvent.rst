.. _sdk_qtquick_dragevent:
QtQuick DragEvent
=================

Provides information about a drag event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`accepted <sdk_qtquick_dragevent_accepted-prop>` : bool
-  :ref:`action <sdk_qtquick_dragevent_action-prop>` : enumeration
-  :ref:`colorData <sdk_qtquick_dragevent_colorData-prop>` : color
-  :ref:`drag.source <sdk_qtquick_dragevent_drag.source-prop>` :
   Object
-  :ref:`formats <sdk_qtquick_dragevent_formats-prop>` : stringlist
-  :ref:`hasColor <sdk_qtquick_dragevent_hasColor-prop>` : bool
-  :ref:`hasHtml <sdk_qtquick_dragevent_hasHtml-prop>` : bool
-  :ref:`hasText <sdk_qtquick_dragevent_hasText-prop>` : bool
-  :ref:`hasUrls <sdk_qtquick_dragevent_hasUrls-prop>` : bool
-  :ref:`html <sdk_qtquick_dragevent_html-prop>` : string
-  :ref:`keys <sdk_qtquick_dragevent_keys-prop>` : stringlist
-  :ref:`proposedAction <sdk_qtquick_dragevent_proposedAction-prop>`
   : flags
-  :ref:`supportedActions <sdk_qtquick_dragevent_supportedActions-prop>`
   : flags
-  :ref:`text <sdk_qtquick_dragevent_text-prop>` : string
-  :ref:`urls <sdk_qtquick_dragevent_urls-prop>` : urllist
-  :ref:`x <sdk_qtquick_dragevent_x-prop>` : real
-  :ref:`y <sdk_qtquick_dragevent_y-prop>` : real

Methods
-------

-  :ref:`accept <sdk_qtquick_dragevent_accept-method-2>`\ (enumeration
   *action*)
-  :ref:`accept <sdk_qtquick_dragevent_accept-method>`\ ()
-  :ref:`acceptProposedAction <sdk_qtquick_dragevent_acceptProposedAction-method>`\ ()
-  string
   **:ref:`getDataAsString <sdk_qtquick_dragevent#getDataAsString-method>`**\ (string
   *format*)

Detailed Description
--------------------

The position of the drag event can be obtained from the
:ref:`x <sdk_qtquick_dragevent#x-prop>` and
:ref:`y <sdk_qtquick_dragevent#y-prop>` properties, and the
:ref:`keys <sdk_qtquick_dragevent#keys-prop>` property identifies the drag
keys of the event :ref:`source <sdk_qtquick_dragevent#drag.source-prop>`.

The existence of specific drag types can be determined using the
:ref:`hasColor <sdk_qtquick_dragevent#hasColor-prop>`,
:ref:`hasHtml <sdk_qtquick_dragevent#hasHtml-prop>`,
:ref:`hasText <sdk_qtquick_dragevent#hasText-prop>`, and
:ref:`hasUrls <sdk_qtquick_dragevent#hasUrls-prop>` properties.

The list of all supplied formats can be determined using the
:ref:`formats <sdk_qtquick_dragevent#formats-prop>` property.

Specific drag types can be obtained using the
:ref:`colorData <sdk_qtquick_dragevent#colorData-prop>`,
:ref:`html <sdk_qtquick_dragevent#html-prop>`,
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ , and
:ref:`urls <sdk_qtquick_dragevent#urls-prop>` properties.

A string version of any available mimeType can be obtained using
:ref:`getDataAsString <sdk_qtquick_dragevent#getDataAsString-method>`.

Property Documentation
----------------------

.. _sdk_qtquick_dragevent_accepted-prop:

+--------------------------------------------------------------------------+
|        \ accepted : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the drag event was accepted by a handler.

The default value is true.

| 

.. _sdk_qtquick_dragevent_action-prop:

+--------------------------------------------------------------------------+
|        \ action : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the action that the
:ref:`source <sdk_qtquick_dragevent#drag.source-prop>` is to perform on an
accepted drop.

The drop action may be one of:

-  Qt.CopyAction Copy the data to the target.
-  Qt.MoveAction Move the data from the source to the target.
-  Qt.LinkAction Create a link from the source to the target.
-  Qt.IgnoreAction Ignore the action (do nothing with the data).

| 

.. _sdk_qtquick_dragevent_colorData-prop:

+--------------------------------------------------------------------------+
|        \ colorData : color                                               |
+--------------------------------------------------------------------------+

This property holds color data, if any.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_drag.source-prop:

+--------------------------------------------------------------------------+
|        \ drag.source : Object                                            |
+--------------------------------------------------------------------------+

This property holds the source of a drag event.

| 

.. _sdk_qtquick_dragevent_formats-prop:

+--------------------------------------------------------------------------+
|        \ formats : stringlist                                            |
+--------------------------------------------------------------------------+

This property holds a list of mime type formats contained in the drag
data.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_hasColor-prop:

+--------------------------------------------------------------------------+
|        \ hasColor : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains a color item.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_hasHtml-prop:

+--------------------------------------------------------------------------+
|        \ hasHtml : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains a html item.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_hasText-prop:

+--------------------------------------------------------------------------+
|        \ hasText : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains a text item.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_hasUrls-prop:

+--------------------------------------------------------------------------+
|        \ hasUrls : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the drag event contains one or more url
items.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_html-prop:

+--------------------------------------------------------------------------+
|        \ html : string                                                   |
+--------------------------------------------------------------------------+

This property holds html data, if any.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_keys-prop:

+--------------------------------------------------------------------------+
|        \ keys : stringlist                                               |
+--------------------------------------------------------------------------+

This property holds a list of keys identifying the data type or source
of a drag event.

| 

.. _sdk_qtquick_dragevent_proposedAction-prop:

+--------------------------------------------------------------------------+
|        \ proposedAction : flags                                          |
+--------------------------------------------------------------------------+

This property holds the set of
:ref:`actions <sdk_qtquick_dragevent#action-prop>` proposed by the drag
source.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_supportedActions-prop:

+--------------------------------------------------------------------------+
|        \ supportedActions : flags                                        |
+--------------------------------------------------------------------------+

This property holds the set of
:ref:`actions <sdk_qtquick_dragevent#action-prop>` supported by the drag
source.

| 

.. _sdk_qtquick_dragevent_text-prop:

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

This property holds text data, if any.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_urls-prop:

+--------------------------------------------------------------------------+
|        \ urls : urllist                                                  |
+--------------------------------------------------------------------------+

This property holds a list of urls, if any.

This QML property was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_x-prop:

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

This property holds the x coordinate of a drag event.

| 

.. _sdk_qtquick_dragevent_y-method:

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

This property holds the y coordinate of a drag event.

| 

Method Documentation
--------------------

.. _sdk_qtquick_dragevent_accept-method:

+--------------------------------------------------------------------------+
|        \ accept(enumeration *action*)                                    |
+--------------------------------------------------------------------------+

Accepts the drag event.

If an *action* is specified it will overwrite the value of the
:ref:`action <sdk_qtquick_dragevent#action-prop>` property.

| 

.. _sdk_qtquick_dragevent_accept-method:

+--------------------------------------------------------------------------+
|        \ accept()                                                        |
+--------------------------------------------------------------------------+

Accepts the drag event.

If an *action* is specified it will overwrite the value of the
:ref:`action <sdk_qtquick_dragevent#action-prop>` property.

| 

.. _sdk_qtquick_dragevent_acceptProposedAction-method:

+--------------------------------------------------------------------------+
|        \ acceptProposedAction()                                          |
+--------------------------------------------------------------------------+

Accepts the drag event with the
:ref:`proposedAction <sdk_qtquick_dragevent#proposedAction-prop>`.

This QML method was introduced in Qt 5.2.

| 

.. _sdk_qtquick_dragevent_string getDataAsString-method:

+--------------------------------------------------------------------------+
|        \ string getDataAsString(string *format*)                         |
+--------------------------------------------------------------------------+

Returns the data for the given *format* converted to a string. *format*
should be one contained in the
:ref:`formats <sdk_qtquick_dragevent#formats-prop>` property.

This QML method was introduced in Qt 5.2.

| 
