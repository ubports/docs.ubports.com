Ubuntu.Components.ListItems.ItemSelector
========================================

.. raw:: html

   <p>

ListItem displaying either a single selected value or expanded multiple
choice with an optional image and subtext when not expanded, when
expanding it opens a listing of all the possible values for selection
with an additional option of always being expanded. If multiple choice
is selected the list is expanded automatically. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ItemSelector -->

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

import Ubuntu.Components.ListItems 1.3

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

Empty

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

colourImage : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

containerHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

currentlyExpanded : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expanded : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

multiSelection : bool

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

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

delegateClicked(int index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expansionCompleted()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ItemSelector-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ItemSelector {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
   <span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>)]
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ItemSelector {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
   <span class="name">expanded</span>: <span class="number">true</span>
   <span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>)]
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ItemSelector {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Multiple Selection&quot;</span>)
   <span class="name">alwaysExpanded</span>: <span class="number">false</span>
   <span class="name">expanded</span>: <span class="number">true</span>
   <span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>)]
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ItemSelector {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
   <span class="name">model</span>: <span class="name">customModel</span>
   <span class="name">expanded</span>: <span class="number">true</span>
   <span class="name">colourImage</span>: <span class="number">true</span>
   <span class="name">delegate</span>: <span class="name">selectorDelegate</span>
   }
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">selectorDelegate</span>
   <span class="type">OptionSelectorDelegate</span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">subText</span>: <span class="name">description</span>; <span class="name">iconSource</span>: <span class="name">image</span> }
   }
   <span class="type"><a href="QtQml.ListModel.md">ListModel</a></span> {
   <span class="name">id</span>: <span class="name">customModel</span>
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 1&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 1&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 2&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 2&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 3&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 3&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 4&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 4&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ItemSelector {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
   <span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 5&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 6&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 7&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 8&quot;</span>)]
   <span class="name">containerHeight</span>: <span class="name">itemHeight</span> <span class="operator">*</span> <span class="number">4</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ItemSelector {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
   <span class="name">expanded</span>: <span class="number">true</span>
   <span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 5&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 6&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 7&quot;</span>),
   <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 8&quot;</span>)]
   <span class="name">containerHeight</span>: <span class="name">itemHeight</span> <span class="operator">*</span> <span class="number">4</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ItemSelector -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$colourImage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="colourImage-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

colourImage : bool

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

Colours image according to the fieldText colour of the theme, otherwise
source colour is maintained.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@colourImage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="containerHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

containerHeight : real

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

Custom height for list container which allows scrolling inside the
selector.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@containerHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentlyExpanded-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentlyExpanded : bool

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

Is our list currently expanded?

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentlyExpanded -->

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

ListView delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

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

Specifies whether the list is always expanded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expanded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] itemHeight : real

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

Height of an individual list item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemHeight -->

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

The list of values that will be shown under the label text. This is a
model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="multiSelection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

multiSelection : bool

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

If multiple choice selection is enabled the list is always expanded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@multiSelection -->

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

The index of the currently selected element in our list.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedIndex -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$delegateClicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegateClicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

delegateClicked(int index)

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

Called when delegate is clicked.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegateClicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expansionCompleted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

expansionCompleted()

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

Called when the selector has finished expanding or collapsing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expansionCompleted -->


