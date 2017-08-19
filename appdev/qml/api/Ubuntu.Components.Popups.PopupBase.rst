Ubuntu.Components.Popups.PopupBase
==================================

.. raw:: html

   <p>

The base class for all dialogs, sheets and popovers. Do not use
directly. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PopupBase -->

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

import Ubuntu.Components.Popups 1.3

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

OrientationHelper

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Dialog, Popover, and SheetBase.

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

dismissArea : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

grabDismissAreaEvents : bool

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

hide()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

show()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PopupBase-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples: See subclasses.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PopupBase -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dismissArea -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dismissArea-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dismissArea : Item

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

The property holds the area used to dismiss the popups, the area from
where mouse and touch events will be grabbed. By default this area is
the Popup itself.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dismissArea -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="grabDismissAreaEvents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

grabDismissAreaEvents : bool

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

The property specifies whether to forward or not the mouse and touch
events happening outside of the popover. By default all events are
grabbed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@grabDismissAreaEvents -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$hide -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hide-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

hide()

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

Hide the popup. Only use this function if you handle memory management.
Otherwise use PopupUtils.close() to do it automatically.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hide -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="show-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

show()

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

Make the popup visible. Reparent to the background area object first if
needed. Only use this function if you handle memory management.
Otherwise use PopupUtils.open() to do it automatically.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@show -->


