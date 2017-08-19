Ubuntu.Components.Sections
==========================

.. raw:: html

   <p>

Display a list of sections that the user can select. By tapping on a
section name the selectedIndex will be updated, and the associated
Action is triggered. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Sections -->

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

actions : Action

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : var

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

   <!-- $$$Sections-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Sections -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

actions : Action

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

List of actions that represent the sections. The text of each action is
displayed as the section name and clicking a section will update the
selectedIndex.

.. raw:: html

   </p>

.. raw:: html

   <p>

When selectedIndex is changed (by user interaction or by setting the
value), actions[selectedIndex] will be triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Sections</a></span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">text</span>: <span class="string">&quot;first&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;one&quot;</span>)
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">text</span>: <span class="string">&quot;second&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;two&quot;</span>)
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">text</span>: <span class="string">&quot;third&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;three&quot;</span>)
   }
   ]
   }</pre>

.. raw:: html

   <p>

It is strongly recommended to limit the number of sections to two or
three. The actions are used as the model for the Sections by default. If
no trigger functions need to be specified, model may be used directly
without setting the actions property. If both actions and model are set,
model overrides the actions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actions -->

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

The input model for the sections. By default model takes the actions as
input, but if no trigger functions need to be specified, it can be
simplified to a list of strings naming the sections:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Sections</a></span> {
   <span class="name">model</span>: [ <span class="string">&quot;one&quot;</span>, <span class="string">&quot;two&quot;</span>, <span class="string">&quot;three&quot;</span> ]
   <span class="name">onSelectedIndexChanged</span>: {
   <span class="name">print</span>(<span class="string">&quot;Selected section &quot;</span> <span class="operator">+</span> <span class="name">model</span>[<span class="name">selectedIndex</span>]);
   }
   }</pre>

.. raw:: html

   <!-- @@@model -->

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

The index of the currently selected section in model. The default value
is 0 if there is at least 1 section, or -1 for no sections. When the
model is changed, selectedIndex is reset to 0 and the first action is
triggered. Upon completion of the Sections component, if there is an
Action associated with the selected index, that Action will be
triggered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedIndex -->


