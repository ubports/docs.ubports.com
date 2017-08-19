Ubuntu.Components.ListItemLayout
================================

.. raw:: html

   <p>

ListItemLayout provides an easy way to create list items which follow
Ubuntu design standards, thus making them visually appealing and
consistent with the rest of the platform without effort. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemLayout -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

SlotsLayout

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

subtitle : Label

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

summary : Label

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : Label

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ListItemLayout-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItemLayout is essentially a SlotsLayout with a predefined
SlotsLayout::mainSlot that provides (up to) 3 Labels automatically laid
out according to our UI guidelines.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: those labels may have properties whose default value is different
from what is used by the standard Label component. The default wrapMode,
for instance, is different. Have a look at Labels' properties section.

.. raw:: html

   </p>

.. raw:: html

   <p>

This main slot has been optimized to cover most of the usecases without
compromising performance (read more in Optimizing memory consumption).

.. raw:: html

   </p>

.. raw:: html

   <p>

We're aware there could be usecases which the SlotsLayout::mainSlot
provided by ListItemLayout doesn't cover. If that is the case, please
use SlotsLayout instead of ListItemLayout and provide your own
SlotsLayout::mainSlot.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItemLayout works similarly to QtQuick's Row, but while Row just
positions its children in a horizontal formation, ListItemLayout also
tweaks their vertical position to ensure a clean layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

We will call ListItemLayout's visual children "slots". ListItemLayout
positions its slots automatically, following the visual rules specified
by the Ubuntu Design team. Because we think flexibility is an important
value of our UI components, we made it possible to tweak the position of
each slot by modifying its attached properties (see Advanced layout
tweaks).

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that if you're wrapping the ListItemLayout in a container such as
ListItem, you will have to specify the height of the container so that
it follows ListItemLayout's height, otherwise the layout content may
appear clipped or not vertically centered.

.. raw:: html

   </p>

.. raw:: html

   <p>

See here for more details. Here's an example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Component 1.3
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="comment">//CORRECT, ListItem will be tall enough to accomodate all the content</span>
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot;I am a ListItemLayout&quot;</span>
   <span class="name">summary</span>.text: <span class="string">&quot;I resize automatically to accomodate all the elements I hold. My parents should track my height property!&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

If you need a progression symbol in your list item, just add
ProgressionSlot as a child of your ListItemLayout. No manual positioning
is needed, the layout will handle it for you.

.. raw:: html

   </p>

.. raw:: html

   <p>

To read more about advanced slots positioning or how to handle input
(mouse or touch) in ListItemLayout, see SlotsLayout documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you don't need the features provided by ListItem (such as the swiping
actions), you can also use ListItemLayout directly as root of your list
view delegate or inside a MouseArea, as explained in Input handling.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following code example shows how easy it is to create even non
trivial list items using ListItem and ListItemLayout:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot;I'm a subtitle, I'm tiny!&quot;</span>
   <span class="name">summary</span>.text: <span class="string">&quot;Ubuntu!&quot;</span>
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Leading</span> }
   <span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
   <span class="name">name</span>: <span class="string">&quot;message&quot;</span>
   <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span>;
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

Although ListItemLayout covers most of the usecases, there might be
times where you might want to tweak the position of one or more slots.
The following example shows one way to implement a list item with a
trailing slot holding two labels. What is special about this example is
that we want the baseline of one label inside the trailing slot to align
to title's baseline and the baseline of the other label to align to
subtitle's baseline.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="name">id</span>: <span class="name">listItem</span>
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">title</span>.text: <span class="string">&quot;Hello...&quot;</span>
   <span class="name">title</span>.color: <span class="name">UbuntuColors</span>.<span class="name">Orange</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot;...world!&quot;</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Leading</span>
   <span class="name">color</span>: <span class="string">&quot;pink&quot;</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">6</span>)
   <span class="name">width</span>: <span class="name">height</span>
   }
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">slot</span>
   <span class="name">width</span>: <span class="name">secondLabel</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="comment">//as we want to position labels to align with title and subtitle</span>
   <span class="name">SlotsLayout</span>.overrideVerticalPositioning: <span class="number">true</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">id</span>: <span class="name">firstLabel</span>
   <span class="name">anchors</span>.right: <span class="name">secondLabel</span>.<span class="name">right</span>
   <span class="name">text</span>: <span class="string">&quot;19:17&quot;</span>
   <span class="name">fontSize</span>: <span class="string">&quot;small&quot;</span>
   <span class="name">y</span>: <span class="name">layout</span>.<span class="name">mainSlot</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">layout</span>.<span class="name">title</span>.<span class="name">y</span>
   <span class="operator">+</span> <span class="name">layout</span>.<span class="name">title</span>.<span class="name">baselineOffset</span> <span class="operator">-</span> <span class="name">baselineOffset</span>
   }
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">id</span>: <span class="name">secondLabel</span>
   <span class="name">text</span>: <span class="string">&quot;Outgoing&quot;</span>
   <span class="name">fontSize</span>: <span class="string">&quot;small&quot;</span>
   <span class="name">y</span>: <span class="name">layout</span>.<span class="name">mainSlot</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">layout</span>.<span class="name">subtitle</span>.<span class="name">y</span>
   <span class="operator">+</span> <span class="name">layout</span>.<span class="name">subtitle</span>.<span class="name">baselineOffset</span> <span class="operator">-</span> <span class="name">baselineOffset</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <h2 id="labels-layout">

Labels layout

.. raw:: html

   </h2>

.. raw:: html

   <p>

The labels in ListItemLayout's default SlotsLayout::mainSlot are laid
out in a column. The title is positioned at the top, followed by
subtitle and summary, respectively.

.. raw:: html

   </p>

.. raw:: html

   <p>

The subtitle has its top anchored to title's bottom, with a margin of 2
DPs.

.. raw:: html

   </p>

.. raw:: html

   <p>

The summary has its top tightly anchored to subtitle's bottom.

.. raw:: html

   </p>

.. raw:: html

   <p>

The height of the default SlotsLayout::mainSlot provided with
ListItemLayout is the minimum height required to accomodate the visible
and non-empty labels it holds. If only title is visible and has a
non-empty text set, for instance, the height of the main slot will be
title.height.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you wish to have the layout process accomodate a label which doesn't
have a defined text yet, you should set its text property to " ", as
shown in the following example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
   <span class="comment">//NOTE: the whitespace</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot; &quot;</span>
   }</pre>

.. raw:: html

   <p>

That will make sure SlotsLayout::mainSlot is resized to accomodate the
(currently empty) subtitle.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is useful, for instance, if you want all list items in a list view
to have the same height even without having to fill subtitle's (or
summary's) text with dummy content.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="labels-properties">

Labels' properties

.. raw:: html

   </h2>

.. raw:: html

   <p>

ListItemLayout's labels are the same component as Label, but with
slightly different default properties. Moreover, Label derives from
Text. As a consequence, you can access and override all the properties
provided by Text and Label, if needed. Please refer to Text's and
Label's documentation to see the list of all the properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default values for ListItemLayout's labels are defined in the
documentation of each label. See title, subtitle and summary.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: if you want to change the elide mode of a label to something other
than Text.ElideRight, make sure its wrapMode is set to Text.NoWrap. See
Text::wrapMode for more details.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">fileLayout</span>
   <span class="comment">//Let's change the default elide mode to Text.ElideMiddle</span>
   <span class="name">title</span>.elide: <span class="name">Text</span>.<span class="name">ElideMiddle</span>
   <span class="comment">//ElideMiddle only works if there is no wrapping (see Text::wrapMode doc)</span>
   <span class="name">title</span>.wrapMode: <span class="name">Text</span>.<span class="name">NoWrap</span>
   <span class="name">title</span>.text: <span class="string">&quot;Red Roses run no risk, sir, on nurses order.&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <h2 id="optimizing-memory-consumption">

Optimizing memory consumption

.. raw:: html

   </h2>

.. raw:: html

   <p>

In order to minimize memory consumption, the Labels in the
SlotsLayout::mainSlot are only allocated in memory on demand, i.e. the
first time one of their properties is queried.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="comment">//NOTE: querying subtitle.text triggers allocation of subtitle Label</span>
   <span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="name">subtitle</span>.<span class="name">text</span>)
   <span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
   }</pre>

.. raw:: html

   <p>

In the example above, querying subtitle.text will trigger the allocation
in memory of the subtitle Label, which we don't actually use. We
recommend avoiding querying properties of labels that we don't plan to
use in the layout, in order to minimize memory consumption and maximize
the scrolling performance of our list views.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="comment">//no extra labels created</span>
   <span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
   }</pre>

.. raw:: html

   <h2 id="about-aliasing-labels-properties">

About aliasing labels properties

.. raw:: html

   </h2>

.. raw:: html

   <p>

Due to the way ListItemsLayout's labels are created (see Optimizing
memory consumption) it is not possible to directly alias their
properties. It is still possible, however, to expose an API that gives
indirect read-write access to those properties. The following code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   property <span class="type">alias</span> <span class="name">titleText</span>: <span class="name">layout</span>.<span class="name">title</span>.<span class="name">text</span>
   <span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   }
   }</pre>

.. raw:: html

   <p>

will return the error "Invalid alias location", because the title object
does not yet exist at time when the alias is created.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you need to expose an API for your component that allows changing the
properties of the labels, we recommend aliasing the labels themselves.
Let's assume you want to create a QML component to use as a delegate of
many list views inside your application: you will probably have a qml
file holding the definition of the that delegate, and the content of
that file will be similar to:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//Content of CustomListItem.qml</span>
   import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="name">id</span>: <span class="name">listitem</span>
   property <span class="type">alias</span> <span class="name">title</span>: <span class="name">layout</span>.<span class="name">title</span>
   property <span class="type">alias</span> <span class="name">iconName</span>: <span class="name">icon</span>.<span class="name">name</span>
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
   <span class="name">id</span>: <span class="name">icon</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

As you can see, we alias the label item itself instead of its
properties. This also has the advantage of only exposing one alias
instead of one for each property, thus making your QML app a bit more
performant. Once your delegate is defined, you can use it in your
ListViews like usual.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//other UI code...</span>
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="name">id</span>: <span class="name">listViewModel</span>
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello1&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;message&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello2&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;email&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello3&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;email&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello4&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;message&quot;</span> }
   }
   <span class="name">delegate</span>: <span class="name">CustomListItem</span> {
   <span class="name">title</span>.text: <span class="name">model</span>.<span class="name">titleText</span>
   <span class="name">iconName</span>: <span class="name">model</span>.<span class="name">icon</span>
   }
   }</pre>

.. raw:: html

   <p>

Note how title's properties are all accessible via the "title"
identifier.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SlotsLayout and ProgressionSlot.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemLayout -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$subtitle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="subtitle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

subtitle : Label

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

This property defines the subtitle label and its properties. Styling and
font properties can be set by using the prefix subtitle. in a similar
way as shown in title.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Text::elide value for subtitle is Text.ElideRight.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Text::wrapMode is Text.WrapAnywhere.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Label::textSize is Label.Small.

.. raw:: html

   </p>

.. raw:: html

   <p>

The rest of the properties have the same default values as Label.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@subtitle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="summary-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

summary : Label

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

This property defines the subtitle label and its properties. Styling and
font properties can be set by using the prefix summary. in a similar way
as shown in title.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Text::elide value for summary is Text.ElideRight.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Text::wrapMode is Text.WrapAnywhere.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Label::textSize is Label.Small.

.. raw:: html

   </p>

.. raw:: html

   <p>

The rest of the properties have the same default values as Label.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@summary -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="title-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

title : Label

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

This property defines the title label and its properties. Styling and
font properties can be set just like on any other Text component, as
shown in the following example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">ListItemLayout</a></span> {
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">title</span>.color: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
   <span class="name">title</span>.maximumLineCount: <span class="number">3</span>
   <span class="name">title</span>.text: <span class="string">&quot;Red Roses\nrun no risk,\nsir, on nurses order.&quot;</span>
   }</pre>

.. raw:: html

   <p>

The default Text::elide value for title is Text.ElideRight.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Text::wrapMode is Text.WrapAnywhere.

.. raw:: html

   </p>

.. raw:: html

   <p>

That means, for instance, that if you want to use a different elide
mode, you also have to set wrapMode to Text.NoWrap. Refer to the
official Text documentation for further details.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default Label::textSize is Label.Medium.

.. raw:: html

   </p>

.. raw:: html

   <p>

The rest of the properties have the same default values as Label.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->


