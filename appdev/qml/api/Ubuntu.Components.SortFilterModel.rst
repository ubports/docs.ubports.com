Ubuntu.Components.SortFilterModel
=================================

.. raw:: html

   <p>

SortFilterModel sorts and filters rows from an existing model. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SortFilterModel -->

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

filter.pattern : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

filter.property : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : QAbstractItemModel

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sort.order : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sort.property : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SortFilterModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The SortFilterModel takes an existing model such as a ListModel or any
QAbstractItemModel implementation. The original rows and role names show
up in the SortFilterModel with two basic differences. For one if
sort.property is set all rows will be sorted. Further more if
filter.property is set only rows matching the filter will be in the
model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   import Ubuntu.Components.ListItems 1.1
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="type"><a href="QtQml.ListModel.md">ListModel</a></span> {
   <span class="name">id</span>: <span class="name">movies</span>
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Esign&quot;</span>
   <span class="name">producer</span>: <span class="string">&quot;Chris Larkee&quot;</span>
   }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Elephants Dream&quot;</span>
   <span class="name">producer</span>: <span class="string">&quot;Blender&quot;</span>
   }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Big Buck Bunny&quot;</span>
   <span class="name">producer</span>: <span class="string">&quot;Blender&quot;</span>
   }
   }
   <span class="type"><a href="index.html">SortFilterModel</a></span> {
   <span class="name">id</span>: <span class="name">sortedMovies</span>
   <span class="name">model</span>: <span class="name">movies</span>
   <span class="name">sort</span>.property: <span class="string">&quot;title&quot;</span>
   <span class="name">sort</span>.order: <span class="name">Qt</span>.<span class="name">DescendingOrder</span>
   <span class="comment">// case insensitive sorting</span>
   <span class="name">sortCaseSensitivity</span>: <span class="name">Qt</span>.<span class="name">CaseInsensitive</span>
   <span class="name">filter</span>.property: <span class="string">&quot;producer&quot;</span>
   <span class="name">filter</span>.pattern: /blender/
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">sortedMovies</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">delegate</span>: <span class="name">Subtitled</span> {
   <span class="name">text</span>: <span class="name">title</span>
   <span class="name">subText</span>: <span class="name">producer</span>
   }
   <span class="name">section</span>.delegate: <span class="name">ListItem</span>.Header { <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="name">section</span>) }
   <span class="name">section</span>.property: <span class="string">&quot;title&quot;</span>
   <span class="name">section</span>.criteria: <span class="name">ViewSection</span>.<span class="name">FirstCharacter</span>
   }
   }</pre>

.. raw:: html

   <p>

Pay attention to the differences between the original model and the
result:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Big Buck Bunny will be the first row, because it's sorted by title

.. raw:: html

   </li>

.. raw:: html

   <li>

Esign won't be visible, because it's from the wrong producer

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@SortFilterModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$filter.pattern -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="filter.pattern-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

filter.pattern : string

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

The pattern all rows must match, if filter.property is set.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some examples:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

/possible/ matches anywhere in a word, so both "impossible" and
"possible".

.. raw:: html

   </li>

.. raw:: html

   <li>

/^sign/ matches "sign". But not "assignment" because ^ means start.

.. raw:: html

   </li>

.. raw:: html

   <li>

/vest$/ matches "safety vest" and "vest" but not "vested".

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For more advanced uses it's recommended to read up on Javascript regular
expressions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@filter.pattern -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="filter.property-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

filter.property : string

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

If set to a valid role name, only rows matching filter.pattern will be
in the model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@filter.property -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : QAbstractItemModel

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

The source model to sort and/ or filter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sort.order-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sort.order : string

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

The order, if sort.property is set. Qt::AscendingOrder sorts results
from A to Z or 0 to 9. Qt::DescendingOrder sorts results from Z to A or
9 to 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sort.order -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sort.property-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sort.property : string

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

If set to a valid role name, all rows will be sorted according to
sort.order.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sort.property -->


