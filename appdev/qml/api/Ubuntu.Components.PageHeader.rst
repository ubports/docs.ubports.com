Ubuntu.Components.PageHeader
============================

.. raw:: html

   <p>

The PageHeader shows a title with a leading and a trailing ActionBar
that add action buttons to the header. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageHeader -->

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

Header

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

contents : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

extension : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

leadingActionBar : ActionBar

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

navigationActions : Action

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

subtitle : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

trailingActionBar : ActionBar

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PageHeader-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The colors for foreground, background and the divider are configured in
the style, so they may be set using StyleHints:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Colors&quot;</span>
   <span class="type"><a href="Ubuntu.Components.StyleHints.md">StyleHints</a></span> {
   <span class="name">foregroundColor</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
   <span class="name">backgroundColor</span>: <span class="string">&quot;black&quot;</span>
   <span class="name">dividerColor</span>: <span class="name">UbuntuColors</span>.<span class="name">slate</span>
   }
   }</pre>

.. raw:: html

   <p>

See Header properties that are inherited by PageHeader to control the
visibility of the header.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageHeader -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$contents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contents : Item

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

The contents item to display in the header. By default the contents is
undefined, and setting it will disable showing of the title and
subtitle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
   <span class="name">id</span>: <span class="name">header</span>
   <span class="name">title</span>: <span class="string">&quot;Welcome&quot;</span>
   <span class="name">contents</span>: <span class="name">Rectangle</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">red</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">header</span>.<span class="name">title</span>
   <span class="name">color</span>: <span class="string">&quot;white&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@contents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="extension-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

extension : Item

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

Item shown at the bottom of the header. The extension can be any Item,
but it must have a height so that the PageHeader correctly adjusts its
height for the extension to fit. The extension Item should anchor to the
left, right and bottom of its parent so that it will be automatically
positioned above the header divider. This property replaces the sections
property. Sections can now be added to the header as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Header with sections&quot;</span>
   <span class="name">extension</span>: <span class="name">Sections</span> {
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">leftMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">model</span>: [<span class="string">&quot;one&quot;</span>, <span class="string">&quot;two&quot;</span>, <span class="string">&quot;three&quot;</span>]
   }
   }</pre>

.. raw:: html

   <p>

See Toolbar and Sections.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@extension -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="leadingActionBar-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] leadingActionBar : ActionBar

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

The ActionBar for the leading navigation actions. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
   <span class="name">leadingActionBar</span>.actions: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;back&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Back&quot;</span>
   }
   ]
   }</pre>

.. raw:: html

   <p>

The default value of leadingActionBar actions is navigationActions, but
that value can be changed to show different actions in front of the
title. The leading action bar has only one slot. See ActionBar.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@leadingActionBar -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="navigationActions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

navigationActions : Action

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

The actions to be shown in the leading action bar. This property is
automatically set by the AdaptivePageLayout and other navigation
components to configure the back action for the Page. Application
developers should not set this property, because the value may be
overridden by Ubuntu components that have navigation. Instead, set
leadingActionBar's actions property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@navigationActions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="subtitle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

subtitle : string

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

Displayed under the title. Hidden when the contents Item is set.

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

title : string

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

The title to display in the header. Note that the title will be hidden
if the contents Item is set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="trailingActionBar-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] trailingActionBar : ActionBar

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

The ActionBar with trailing actions. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
   <span class="type">trailingActionBar</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;settings&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;first&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;info&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;second&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;third&quot;</span>
   }
   ]
   <span class="name">numberOfSlots</span>: <span class="number">2</span>
   }
   }</pre>

.. raw:: html

   <p>

By default the trailing action bar automatically adapts its number of
slots to the available space in the range from 3 to 6. See ActionBar.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@trailingActionBar -->


