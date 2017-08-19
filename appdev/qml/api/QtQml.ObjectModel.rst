QtQml.ObjectModel
=================

.. raw:: html

   <p>

Defines a set of items to be used as a model More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ObjectModel -->

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

import QtQml.Models 2.1

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

count : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

index : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ObjectModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A ObjectModel contains the visual items to be used in a view. When a
ObjectModel is used in a view, the view does not require a delegate
since the ObjectModel already contains the visual delegate (items).

.. raw:: html

   </p>

.. raw:: html

   <p>

An item can determine its index within the model via the index attached
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below places three colored rectangles in a ListView.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import <span class="type">QtQml</span><span class="operator">.</span>Models <span class="number">2.1</span>
   Rectangle {
   ObjectModel {
   id: itemModel
   Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;red&quot;</span> }
   Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;green&quot;</span> }
   Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;blue&quot;</span> }
   }
   ListView {
   anchors<span class="operator">.</span>fill: parent
   model: itemModel
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt Quick Examples - Views.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ObjectModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

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

The number of items in the model. This property is readonly.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$index -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="index-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ObjectModel.index : int

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

This attached property holds the index of this delegate's item within
the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@index -->


