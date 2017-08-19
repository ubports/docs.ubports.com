Ubuntu.Components.ComboButton
=============================

.. raw:: html

   <p>

Ubuntu button providing a drop-down panel visualizing custom options.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ComboButton -->

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

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

AbstractButton

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

   <li>

Obsolete members

.. raw:: html

   </li>

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

collapsedHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

comboList : list<Item>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

comboListHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expanded : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expandedHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font : font

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconPosition : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ComboButton-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component is composed of three main blocks: main button, dropdown
and combo list.

.. raw:: html

   </p>

.. raw:: html

   <p>

The main button holds the main functionailty of the component, and it is
located at the left-top side of the expanded button. The clicked()
signal is triggered only when this button is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The dropdown is a button located on the right of the main button. Its
functionality is to drive the component's expanded state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The combo list is a panel showing the content specified in comboList
property when expanded. The content is stretched horizontally to the
component's width, and its height is controlled by the expandedHeight
property as follows:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

If the content height is smaller than the value of expandedHeight, the
combo list will be expanded only to the height of the content.

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">text</span>: <span class="string">&quot;smaller content&quot;</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>) <span class="comment">// smaller than the default expandedHeight</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

If the content height is greater than expandedHeight, the combo list
will expand till the height specified by the property and the content
will be scrolled; in case the combo list content is one single
Flickable, ListView, GridView or PathView, the content scrolling will be
provided by the content itself.

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">text</span>: <span class="string">&quot;long scrolled content&quot;</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">5</span>
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

In case the content is a single Flickable, ListView, GridView or
PathView, the content will be filling the entire combo list area
defined.

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3
   <span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">text</span>: <span class="string">&quot;listview&quot;</span>
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="number">10</span>
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">text</span>: <span class="string">&quot;Item #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
   }
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Vertical anchoring of combo list content to its parent is not possible
as the expansion calculation is done based on the combo list content
height. If the content wants to take the size of the entire combo list,
it should bind its height to the comboListHeight property.

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">id</span>: <span class="name">combo</span>
   <span class="name">text</span>: <span class="string">&quot;smaller content&quot;</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">height</span>: <span class="name">combo</span>.<span class="name">comboListHeight</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

In case the expansion needs to be the size of the combo list content,
the expandedHeight should be set to -1.

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">text</span>: <span class="string">&quot;auto-sized content&quot;</span>
   <span class="name">expandedHeight</span>: -<span class="number">1</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">5</span>
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Button #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
   }
   }
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The combo list can be expanded/collapsed either through the expanded
property or by clicking on the dropdown button. It is not collapsed when
pressing the main button or clicking on the combo list. In order to do
an auto-collapsing button you must reset the expanded property (set it
to false) when the main button is clicked or when a selection is taken
from the combo list content. The following example illustrates a
possible implementation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">id</span>: <span class="name">combo</span>
   <span class="name">text</span>: <span class="string">&quot;Auto closing&quot;</span>
   <span class="name">expanded</span>: <span class="number">true</span>
   <span class="name">expandedHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">onClicked</span>: <span class="name">expanded</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">combo</span>.<span class="name">comboListHeight</span>
   <span class="name">model</span>: <span class="number">20</span>
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">text</span>: <span class="string">&quot;Action #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
   <span class="name">onClicked</span>: {
   <span class="name">combo</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">text</span>;
   <span class="name">combo</span>.<span class="name">expanded</span> <span class="operator">=</span> <span class="number">false</span>;
   }
   }
   }
   }</pre>

.. raw:: html

   <h3>

Styling

.. raw:: html

   </h3>

.. raw:: html

   <p>

The style of the component is defined in ComboButtonStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ComboButton -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$collapsedHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collapsedHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

collapsedHeight : real

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

The property holds the height of the component when collapsed. By
default the value is the implicit height of the component.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collapsedHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="comboList-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] comboList : list<Item>

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

Property holding the list of items to be shown in the combo list. Being
a default property children items declared will land in the combo list.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The component is not responsible for layouting the content. It
only provides scrolling abilities for the case the content exceeds the
defined expanded height.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@comboList -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="comboListHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] comboListHeight : real

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

The property holds the maximum combo list height allowed based on the
expandedHeight and collapsedHeight values. It is a convenience property
that can be used to size the combo list content.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3
   <span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">id</span>: <span class="name">combo</span>
   <span class="name">text</span>: <span class="string">&quot;Full comboList size&quot;</span>
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   <span class="name">height</span>: <span class="name">combo</span>.<span class="name">comboListHeight</span>
   <span class="name">model</span>: <span class="number">20</span>
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">text</span>: <span class="string">&quot;Action #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

See also collapsedHeight and expandedHeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@comboListHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expanded-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

expanded : bool

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

Specifies whether the combo list is expanded or not. The default falue
is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expanded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expandedHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

expandedHeight : real

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

The property holds the maximum height value the component should expand.
When setting the property, remember to take into account the
collapsedHeight value. The best practice is to use bind it with
collapsedHeight.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ComboButton</a></span> {
   <span class="name">text</span>: <span class="string">&quot;altered expandedHeight&quot;</span>
   <span class="name">expandedHeight</span>: <span class="name">collapsedHeight</span> <span class="operator">+</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">25</span>)
   }</pre>

.. raw:: html

   <p>

A value of -1 will instruct the component to expand the combo list as
much as its content height is.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is collapsedHeight + 19.5 GU, so at least 3 ListItems
can fit in the combo list.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also collapsedHeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expandedHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font : font

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

The font used for the button's text.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconPosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconPosition : string

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

The position of the icon relative to the text. Options are "left" and
"right". The default value is "left".

.. raw:: html

   </p>

.. raw:: html

   <p>

If only text or only an icon is defined, this property is ignored and
the text or icon is centered horizontally and vertically in the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently this is a string value. We are waiting for support for enums:
https://bugreports.qt-project.org/browse/QTBUG-14861

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconPosition -->


