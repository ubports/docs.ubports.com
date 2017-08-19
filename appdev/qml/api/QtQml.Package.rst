QtQml.Package
=============

.. raw:: html

   <p>

Specifies a collection of named items More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Package -->

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

import QtQuick .

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

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Package-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Package class is used in conjunction with VisualDataModel to enable
delegates with a shared context to be provided to multiple views.

.. raw:: html

   </p>

.. raw:: html

   <p>

Any item within a Package may be assigned a name via the Package.name
attached property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below creates a Package containing two named items; list and
grid. The third item in the package (the Rectangle) is parented to
whichever delegate it should appear in. This allows an item to move
between views.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Package</a></span> {
   <span class="type">Text</span> { <span class="name">id</span>: <span class="name">listDelegate</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">text</span>: <span class="string">'Empty'</span>; <span class="name">Package</span>.name: <span class="string">'list'</span> }
   <span class="type">Text</span> { <span class="name">id</span>: <span class="name">gridDelegate</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">text</span>: <span class="string">'Empty'</span>; <span class="name">Package</span>.name: <span class="string">'grid'</span> }
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">25</span>
   <span class="name">color</span>: <span class="string">'lightsteelblue'</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">display</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
   <span class="name">state</span>: <span class="name">root</span>.<span class="name">upTo</span> <span class="operator">&gt;</span> <span class="name">index</span> ? <span class="string">'inGrid'</span> : <span class="string">'inList'</span>
   <span class="name">states</span>: [
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">'inList'</span>
   <span class="type">ParentChange</span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">parent</span>: <span class="name">listDelegate</span> }
   },
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">'inGrid'</span>
   <span class="type">ParentChange</span> {
   <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">parent</span>: <span class="name">gridDelegate</span>
   <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="name">gridDelegate</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">gridDelegate</span>.<span class="name">height</span>
   }
   }
   ]
   <span class="name">transitions</span>: [
   <span class="type">Transition</span> {
   <span class="type">ParentAnimation</span> {
   <span class="type">NumberAnimation</span> { <span class="name">properties</span>: <span class="string">'x,y,width,height'</span>; <span class="name">duration</span>: <span class="number">300</span> }
   }
   }
   ]
   }
   }</pre>

.. raw:: html

   <p>

These named items are used as the delegates by the two views who
reference the special VisualDataModel::parts property to select a model
which provides the chosen delegate.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQml.DelegateModel.md">DelegateModel</a></span> {
   <span class="name">id</span>: <span class="name">visualModel</span>
   <span class="name">delegate</span>: <span class="name">Delegate</span> {}
   <span class="name">model</span>: <span class="name">myModel</span>
   }
   <span class="type">ListView</span> {
   <span class="name">id</span>: <span class="name">lv</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">list</span>
   }
   <span class="type">GridView</span> {
   <span class="name">y</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">cellWidth</span>: <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">cellHeight</span>: <span class="number">50</span>
   <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">grid</span>
   }</pre>

.. raw:: html

   <p>

See also Qt Quick Examples - Views, Qt Quick Demo - Photo Viewer, and Qt
QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Package -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Package.name : string

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

This attached property holds the name of an item within a Package.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->


