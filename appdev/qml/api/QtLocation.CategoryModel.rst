QtLocation.CategoryModel
========================

.. raw:: html

   <p>

The CategoryModel type provides a model of the categories supported by a
Plugin. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CategoryModel -->

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

import QtLocation 5.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt Location 5.0

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

hierarchical : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

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

dataChanged()

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

string errorString()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CategoryModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The hierarchical property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The model supports the following roles:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Role

.. raw:: html

   </th>

.. raw:: html

   <th>

Type

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

category

.. raw:: html

   </td>

.. raw:: html

   <td>

Category

.. raw:: html

   </td>

.. raw:: html

   <td>

Category object for the current item.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

parentCategory

.. raw:: html

   </td>

.. raw:: html

   <td>

Category

.. raw:: html

   </td>

.. raw:: html

   <td>

Parent category object for the current item. If there is no parent, null
is returned.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The following example displays a flat list of all available categories:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">CategoryModel</span> {
   <span class="name">plugin</span>: <span class="name">myPlugin</span>
   <span class="name">hierarchical</span>: <span class="number">false</span>
   }
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">category</span>.<span class="name">name</span> }
   }</pre>

.. raw:: html

   <p>

To access the hierarchical category model it is necessary to use a
DelegateModel to access the child items.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CategoryModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$hierarchical -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hierarchical-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hierarchical : bool

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

This property holds whether the model provides a hierarchical tree of
categories or a flat list. The default is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hierarchical -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="plugin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

plugin : Plugin

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

This property holds the provider Plugin used by this model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

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

This property holds the status of the model. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CategoryModel.Null

.. raw:: html

   </td>

.. raw:: html

   <td>

No category fetch query has been executed. The model is empty.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CategoryModel.Ready

.. raw:: html

   </td>

.. raw:: html

   <td>

No error occurred during the last operation, further operations may be
performed on the model.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CategoryModel.Loading

.. raw:: html

   </td>

.. raw:: html

   <td>

The model is being updated, no other operations may be performed until
complete.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CategoryModel.Error

.. raw:: html

   </td>

.. raw:: html

   <td>

An error occurred during the last operation, further operations can
still be performed on the model.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dataChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dataChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dataChanged()

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

This signal is emitted when significant changes have been made to the
underlying datastore.

.. raw:: html

   </p>

.. raw:: html

   <p>

Applications should act on this signal at their own discretion. The data
provided by the model could be out of date and so the model should be
reupdated sometime, however an immediate reupdate may be disconcerting
to users if the categories change without any action on their part.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDataChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dataChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string errorString() const

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

This read-only property holds the textual presentation of latest
category model error. If no error has occurred, an empty string is
returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

An empty string may also be returned if an error occurred which has no
associated textual representation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->


