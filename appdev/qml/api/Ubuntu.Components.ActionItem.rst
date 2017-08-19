Ubuntu.Components.ActionItem
============================

.. raw:: html

   <p>

A visual representation of an Action. The API of ActionItem is a copy of
the API of Action, with additional properties to define visual aspects
of the ActionItem. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionItem -->

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

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

AbstractButton, BottomEdgeHint, and ToolbarButton.

.. raw:: html

   </p>

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

action : Action

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconSource : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

triggered(var value)

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

void trigger(var value)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ActionItem-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

If action is set, the values of the other properties will by default be
identical to the Action's property values. Setting the other properties
will override the properties copied from the Action.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionItem -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$action -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="action-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

action : Action

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

The Action associated with this ActionItem. If action is set, the values
of the Action properties are copied to the values of the ActionItem
properties, unless those were previously overridden.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@action -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconName : string

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

The icon associated with the actionItem in the suru icon theme. Defaults
to action.iconName.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The complete list of icons available in Ubuntu is not published
yet. For now please refer to the folders where the icon themes are
installed:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Ubuntu Touch: /usr/share/icons/suru

.. raw:: html

   </li>

.. raw:: html

   <li>

Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These 2 separate icon themes will be merged soon.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both iconSource and iconName are defined, iconName will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconSource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconSource : url

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

The image associated with the ActionItem. Defaults to action.iconSource.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is the URL of any image file. If both iconSource and iconName are
defined, iconName will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconSource -->

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

The title of the actionItem. Defaults to the action.text.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$triggered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="triggered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

triggered(var value)

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

Called when the actionItem is triggered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@triggered -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$trigger -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="trigger-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void trigger(var value)

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

Trigger this action item if it is enabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@trigger -->


