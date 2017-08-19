Ubuntu.Components.PageHeadConfiguration
=======================================

.. raw:: html

   <p>

Page.head is used to configure the header for a Page. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageHeadConfiguration -->

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

Ubuntu.Components 1.1

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

actions : list<Action>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

backAction : Action

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contents : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

foregroundColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locked : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preset : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sections : PageHeadSections

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visible : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PageHeadConfiguration-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

For examples how to use Page.head, see Page.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageHeadConfiguration -->

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

actions : list<Action>

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

List of actions to show in the header.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Custom header actions&quot;</span>
   <span class="name">head</span>.actions: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;save&quot;</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Save&quot;</span>)
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;add&quot;</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Add&quot;</span>)
   }
   ]
   }</pre>

.. raw:: html

   <!-- @@@actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backAction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

backAction : Action

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

Overrides the default PageStack back button and the Tabs drawer button
in the header.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Back Action Page&quot;</span>
   <span class="name">head</span>.backAction: <span class="name">Action</span> {
   <span class="name">iconName</span>: <span class="string">&quot;close&quot;</span>
   <span class="name">onTriggered</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Run custom back action&quot;</span>)
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@backAction -->

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

Set this property to show this Item in the header instead of the title.
Use a TextField here for implementing search in header.

.. raw:: html

   </p>

.. raw:: html

   <p>

The parent of this Item will be binded while the Page is active. The
header contents will automatically be anchored to the left and
vertically centered inside the header.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Invisible title&quot;</span>
   <span class="name">head</span>.contents: <span class="name">Rectangle</span> {
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">width</span>: <span class="name">parent</span> ? <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>) : <span class="name">undefined</span>
   }
   }</pre>

.. raw:: html

   <p>

See PageHeadState for an example that shows how search mode can be
implemented.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="foregroundColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

foregroundColor : color

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

The color of the text and icons.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@foregroundColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="locked-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

locked : bool

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

When the visible property. An unlocked header automatically shows and
hides if the Page has a flickable in which the user scrolls up or down.
Default value: false

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@locked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preset-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

preset : string

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

Choose a preset for the header visuals and behavior. The default is an
empty string "". By setting this to "select", title will be hidden and
actions will be represented by icons with a label.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">id</span>: <span class="name">mainView</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page</span>
   <span class="name">title</span>: <span class="string">&quot;Demo&quot;</span>
   <span class="name">state</span>: <span class="string">&quot;default&quot;</span>
   <span class="name">states</span>: [
   <span class="type"><a href="Ubuntu.Components.PageHeadState.md">PageHeadState</a></span> {
   <span class="name">name</span>: <span class="string">&quot;default&quot;</span>
   <span class="name">head</span>: <span class="name">page</span>.<span class="name">head</span>
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;contact&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Contact&quot;</span>
   }
   ]
   },
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">selectState</span>
   <span class="name">name</span>: <span class="string">&quot;select&quot;</span>
   property <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> <span class="name">leaveSelect</span>: <span class="name">Action</span> {
   <span class="name">iconName</span>: <span class="string">&quot;back&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Back&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
   }
   property list&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt; <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;select&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Select All&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Delete&quot;</span>
   }
   ]
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
   <span class="name">target</span>: <span class="name">page</span>.<span class="name">head</span>
   <span class="name">backAction</span>: <span class="name">selectState</span>.<span class="name">leaveSelect</span>
   <span class="name">actions</span>: <span class="name">selectState</span>.<span class="name">actions</span>
   <span class="name">preset</span>: <span class="string">&quot;select&quot;</span>
   }
   }
   ]
   <span class="type">Label</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Use back button to leave selection mode.&quot;</span>
   <span class="name">visible</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;select&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;select&quot;</span>
   <span class="name">visible</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">!=</span> <span class="string">&quot;select&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;selection mode&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@preset -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sections-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sections : PageHeadSections

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

Defines the sections in the page header divider.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sections -->

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

The title to show in the header. This is automatically copied from the
Page title.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visible-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visible : bool

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

Update the value of the visible property to show or hide the header.
This works both when the header is locked and unlocked. An unlocked
header can also become visible or hidden when the user scrolls the
active Page's flickable. The value of the visible property will be
updated at the end of the showing/hiding animation of the header.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@visible -->


