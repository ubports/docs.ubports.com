QtQuick.DragEvent
=================

.. raw:: html

   <p>

Provides information about a drag event More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DragEvent -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

accepted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

action : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

colorData : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.source : Object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

formats : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hasColor : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hasHtml : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hasText : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hasUrls : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

html : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keys : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

proposedAction : flags

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supportedActions : flags

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

urls : urllist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

x : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

y : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

accept(enumeration action)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

accept()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

acceptProposedAction()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string getDataAsString(string format)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DragEvent-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The position of the drag event can be obtained from the x and y
properties, and the keys property identifies the drag keys of the event
source.

.. raw:: html

   </p>

.. raw:: html

   <p>

The existence of specific drag types can be determined using the
hasColor, hasHtml, hasText, and hasUrls properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The list of all supplied formats can be determined using the formats
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Specific drag types can be obtained using the colorData, html, text, and
urls properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

A string version of any available mimeType can be obtained using
getDataAsString.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DragEvent -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accepted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accepted : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the drag event was accepted by a handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="action-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

action : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the action that the source is to perform on an
accepted drop.

.. raw:: html

   </p>

.. raw:: html

   <p>

The drop action may be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.CopyAction Copy the data to the target.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.MoveAction Move the data from the source to the target.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.LinkAction Create a link from the source to the target.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.IgnoreAction Ignore the action (do nothing with the data).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@action -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="colorData-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

colorData : color

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds color data, if any.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@colorData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drag.source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.source : Object

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the source of a drag event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@drag.source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="formats-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

formats : stringlist

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of mime type formats contained in the drag
data.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@formats -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hasColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hasColor : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the drag event contains a color item.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hasColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hasHtml-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hasHtml : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the drag event contains a html item.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hasHtml -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hasText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hasText : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the drag event contains a text item.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hasText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hasUrls-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hasUrls : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the drag event contains one or more url
items.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hasUrls -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="html-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

html : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds html data, if any.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@html -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keys-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

keys : stringlist

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of keys identifying the data type or source
of a drag event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keys -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="proposedAction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

proposedAction : flags

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the set of actions proposed by the drag source.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@proposedAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportedActions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

supportedActions : flags

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the set of actions supported by the drag source.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supportedActions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds text data, if any.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="urls-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

urls : urllist

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of urls, if any.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@urls -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

x : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the x coordinate of a drag event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@x -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

y : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the y coordinate of a drag event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accept -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accept-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

accept(enumeration action)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Accepts the drag event.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an action is specified it will overwrite the value of the action
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accept -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accept-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

accept()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Accepts the drag event.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an action is specified it will overwrite the value of the action
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accept -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="acceptProposedAction-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

acceptProposedAction()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Accepts the drag event with the proposedAction.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acceptProposedAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="getDataAsString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string getDataAsString(string format)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the data for the given format converted to a string. format
should be one contained in the formats property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@getDataAsString -->


