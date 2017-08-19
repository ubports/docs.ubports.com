Ubuntu.Components.PageHeadState
===============================

.. raw:: html

   <p>

PageHeadState is a helper component to make it easier to configure the
page header when changing states. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageHeadState -->

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

State

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

head : PageHeadConfiguration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PageHeadState-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This example shows how to add an action to the header that enables the
user to enter search/input mode:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">id</span>: <span class="name">mainView</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">searchPage</span>
   <span class="name">title</span>: <span class="string">&quot;Click the icon&quot;</span>
   <span class="type">Label</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">searchPage</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;search&quot;</span> ? <span class="string">&quot;search mode&quot;</span> : <span class="string">&quot;normal mode&quot;</span>
   }
   <span class="name">state</span>: <span class="string">&quot;default&quot;</span>
   <span class="name">states</span>: [
   <span class="type"><a href="#">PageHeadState</a></span> {
   <span class="name">name</span>: <span class="string">&quot;default&quot;</span>
   <span class="name">head</span>: <span class="name">searchPage</span>.<span class="name">head</span>
   <span class="name">actions</span>: <span class="name">Action</span> {
   <span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">searchPage</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;search&quot;</span>
   }
   },
   <span class="type"><a href="#">PageHeadState</a></span> {
   <span class="name">id</span>: <span class="name">headerState</span>
   <span class="name">name</span>: <span class="string">&quot;search&quot;</span>
   <span class="name">head</span>: <span class="name">searchPage</span>.<span class="name">head</span>
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;contact&quot;</span>
   }
   ]
   <span class="name">backAction</span>: <span class="name">Action</span> {
   <span class="name">id</span>: <span class="name">leaveSearchAction</span>
   <span class="name">text</span>: <span class="string">&quot;back&quot;</span>
   <span class="name">iconName</span>: <span class="string">&quot;back&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">searchPage</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
   }
   <span class="name">contents</span>: <span class="name">TextField</span> {
   <span class="name">placeholderText</span>: <span class="string">&quot;search...&quot;</span>
   }
   }
   ]
   }
   }</pre>

.. raw:: html

   <!-- @@@PageHeadState -->

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

The actions to be shown in the header with this state.

.. raw:: html

   </p>

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

The back action for this state.

.. raw:: html

   </p>

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

The contents of the header when this state is active.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="head-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

head : PageHeadConfiguration

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

The head property of the Page which will be the target of the property
changes of this State. This property must always be set before the State
can be used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@head -->


