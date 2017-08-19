Ubuntu.Components.Pickers.Picker
================================

.. raw:: html

   <p>

Picker is a slot-machine style value selection component. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Picker -->

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

import Ubuntu.Components.Pickers 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

StyledItem

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

circular : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

live : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moving : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedIndex : int

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

positionViewAtIndex(index)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Picker-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Picker lists the elements specified by the model using the delegate
vertically using a slot-machine tumbler-like list. The selected item is
always the one in the center of the component, and it is represented by
the selectedIndex property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The elements can be either in a circular list or in a normal list.

.. raw:: html

   </p>

.. raw:: html

   <p>

Delegates must be composed using PickerDelegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Pickers 1.0
   <span class="type"><a href="index.html">Picker</a></span> {
   <span class="name">model</span>: [<span class="string">&quot;Jan&quot;</span>, <span class="string">&quot;Feb&quot;</span>, <span class="string">&quot;Mar&quot;</span>, <span class="string">&quot;Apr&quot;</span>, <span class="string">&quot;May&quot;</span>, <span class="string">&quot;Jun&quot;</span>, <span class="string">&quot;Jul&quot;</span>, <span class="string">&quot;Aug&quot;</span>, <span class="string">&quot;Sept&quot;</span>, <span class="string">&quot;Oct&quot;</span>, <span class="string">&quot;Nov&quot;</span>, <span class="string">&quot;Dec&quot;</span>]
   <span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="name">modelData</span>
   }
   }
   <span class="name">selectedIndex</span>: <span class="number">5</span>
   <span class="name">onSelectedIndexChanged</span>: {
   <span class="name">print</span>(<span class="string">&quot;selected month: &quot;</span> <span class="operator">+</span> <span class="name">selectedIndex</span>);
   }
   }</pre>

.. raw:: html

   <p>

Note: the selectedIndex must be set explicitly to the desired index if
the model is set, filled or changed after the component is complete. In
the following example the selected item must be set after the model is
set.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Picker</a></span> {
   <span class="name">selectedIndex</span>: <span class="number">5</span> <span class="comment">// this will be set to 0 at the model completion</span>
   <span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="name">modelData</span>
   }
   }
   <span class="name">Component</span>.onCompleted: {
   var <span class="name">stack</span> = [];
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">10</span>; i++) {
   <span class="name">stack</span>.<span class="name">push</span>(<span class="string">&quot;Line &quot;</span> <span class="operator">+</span> <span class="name">i</span>);
   }
   <span class="name">model</span> <span class="operator">=</span> <span class="name">stack</span>;
   <span class="comment">// selectedIndex must be set explicitly</span>
   <span class="name">selectedIndex</span> <span class="operator">=</span> <span class="number">3</span>;
   }
   }</pre>

.. raw:: html

   <h4>

Known issues

.. raw:: html

   </h4>

.. raw:: html

   <ul>

.. raw:: html

   <li>

[1] Circular picker does not react on touch generated flicks (on touch
enabled devices) when nested into a Flickable -
https://bugreports.qt.io/browse/QTBUG-30840

.. raw:: html

   </li>

.. raw:: html

   <li>

[2] Circular picker sets selectedIndex to 0 when the model is cleared,
contrary to linear one, which sets it to -1 -
https://bugreports.qt.io/browse/QTBUG-35400

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@Picker -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$circular -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="circular-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

circular : bool

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

Property specifying whether the tumbler list is wrap-around (true), or
normal (false). Default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@circular -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

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

The delegate visualizing the model elements. Any kind of component can
be used as delegate, however it is recommended to use PickerDelegate,
which integrates selection functionality into the Picker.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

itemHeight : real

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

The property specifies the defautl height of the PickerDelegates. It is
recommended to change the delegate height through this property rather
than changing it from the delegate itself.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components.Pickers 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="live-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

live : bool

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

Defines whether the selectedIndex should be updated while the tumbler
changes the selected item during draggingm or only when the tumbler's
motion ends. The default behavior is non-live update.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@live -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : var

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

Specifies the model listing the content of the picker.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moving-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] moving : bool

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

The property holds whether the picker's view is moving due to the user
interaction either by dragging, flicking or due to the manual change of
the selectedIndex property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moving -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectedIndex : int

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

The property holds the index of the selected item

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedIndex -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$positionViewAtIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionViewAtIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

positionViewAtIndex( index)

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

The function positions the picker's view to the given index without
animating the view. The component must be ready when calling the
function, e.g. to make sure the Picker shows up at the given index, do
the following:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Picker</a></span> {
   <span class="name">model</span>: <span class="number">120</span>
   <span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">verticalCenter</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
   <span class="name">text</span>: <span class="name">modelData</span>
   }
   }
   <span class="name">Component</span>.onCompleted: <span class="name">positionViewAtIndex</span>(<span class="number">10</span>)
   }</pre>

.. raw:: html

   <!-- @@@positionViewAtIndex -->


