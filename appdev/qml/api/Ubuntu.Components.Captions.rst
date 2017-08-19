Ubuntu.Components.Captions
==========================

.. raw:: html

   <p>

Container providing captionStyles for a twin-label column that can be
used in RowLayout or GridLayout. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Captions -->

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

Ubuntu.Components 1.2

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

captionStyle : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

subtitle : Label

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

   <!-- $$$Captions-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The labels are placed in a column and can be accessed through title and
subtitle properties. The default spacing between the labels is 0.5 grid
units.

.. raw:: html

   </p>

.. raw:: html

   <p>

The container only shows the labels which has its text property set to a
valid string. The labels not having any text set are not occupying the
space. When embedded in a positioner or in a RowLayout, the container is
aligned vertically centered. It is recommended to be used in context
with RowLayout or GridLayout, however can be used with any component.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="type">RowLayout</span> {
   <span class="type"><a href="index.html">Captions</a></span> {
   <span class="name">title</span>.text: <span class="string">&quot;Caption&quot;</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot;Subtitle text&quot;</span>
   <span class="comment">// attached properties of an Item type property</span>
   <span class="comment">// can be changed only with assignment</span>
   <span class="name">Component</span>.onCompleted: <span class="name">subtitle</span>.<span class="name">Layout</span>.<span class="name">alignment</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">AlignRight</span>
   }
   <span class="type"><a href="index.html">Captions</a></span> {
   <span class="name">captionStyle</span>: <span class="name">Ubuntu</span>.<span class="name">SummaryCaptionStyle</span>
   <span class="name">title</span>.text: <span class="string">&quot;Text&quot;</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot;Text&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Additional items can also be added to the layout after the two labels.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Captions</a></span> {
   <span class="name">title</span>.text: <span class="string">&quot;Caption&quot;</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot;Subtitle&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;third line&quot;</span>
   <span class="name">textSize</span>: <span class="name">Label</span>.<span class="name">XxSmall</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@Captions -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$captionStyle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="captionStyle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

captionStyle : int

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

The property configures the arrangement and font sizes of the Labels in
the component. It can take the following values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Ubuntu.TitleCaptionStyle - (default) typical configuration for a left
aligned twin-label setup, where the text covers the remaining area on a
list layout.

.. raw:: html

   </li>

.. raw:: html

   <li>

Ubuntu.SummaryCaptionStyle - configuration for a right-aligned twin
label setup, with 6 grid units width.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@captionStyle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="subtitle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] subtitle : Label

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

Label occupying the bottom area of the container.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@subtitle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="title-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] title : Label

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

Label occupying the top area of the container.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->


