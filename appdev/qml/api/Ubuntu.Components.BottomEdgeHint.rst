Ubuntu.Components.BottomEdgeHint
================================

.. raw:: html

   <p>

The BottomEdgeHint shows the availability of extra features available
from the bottom edge of the application. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BottomEdgeHint -->

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

ActionItem

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

deactivateTimeout : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickable : Flickable

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconSource : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : Status

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

swipeArea : SwipeArea

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

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

void clicked()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$BottomEdgeHint-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

It displays a label and/or an icon at the bottom of the component it is
attached to.

.. raw:: html

   </p>

.. raw:: html

   <p>

When used with a mouse it acts like a button. The typical action
associated with clicking on it should be revealing the extra features
provided by the bottom edge.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">BottomEdgeHint</a></span> {
   <span class="name">id</span>: <span class="name">bottomEdgeHint</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Favorites&quot;</span>)
   <span class="name">onClicked</span>: <span class="name">revealBottomEdge</span>()
   }</pre>

.. raw:: html

   <p>

The component is styled through BottomEdgeHintStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BottomEdgeHint -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$deactivateTimeout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="deactivateTimeout-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

deactivateTimeout : int

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

The property specifies the timeout interval in milliseconds the status
is set to Inactive after a gesture based activation. Gesture based
activation is only possible when mouse is not attached to the device.
Defaults to 800 milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@deactivateTimeout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flickable : Flickable

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

The property holds the flickable, which when flicked hides the hint.
Hidden state is reached when this property is set to a Flickable which
is flicking or moving. It is recommended to set the property when the
hint is placed above a flickable content. Defaults to null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconName : string

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

The icon associated with the BottomEdgeHint in the icon theme.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both iconSource and iconName are defined, iconName will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconSource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconSource : url

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

The icon displayed by the BottomEdgeHint.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is the URL of any image file. If both iconSource and iconName are
defined, iconName will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : Status

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

The property represents the status of the hint. The property is writable
so it can be set to any of the following values programatically:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Status

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Hidden

.. raw:: html

   </td>

.. raw:: html

   <td>

The hint is not shown. Equivalent with setting visible to false, however
visuals may do animations when altering this property. It can only be
set if the current status is not Locked.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Inactive

.. raw:: html

   </td>

.. raw:: html

   <td>

The hint is shown and inactive. Styles can represent this state with
different visuals. When inactive, clicked signal cannot be emitted.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Active

.. raw:: html

   </td>

.. raw:: html

   <td>

The hint is shown and active, meaning clicked signal is emitted when
clicked with mouse.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Locked

.. raw:: html

   </td>

.. raw:: html

   <td>

Similar to Active the hint is shown and active, but no automatic
transition to any other state is allowed. This is relevant for style
implementations.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note: Locked status value is set automatically when the system detects a
mouse attached. In this case any change into other state value than
Locked is rejected. Defaults to

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Inactive if no mouse is attached or

.. raw:: html

   </li>

.. raw:: html

   <li>

Locked if there is a mouse detected.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="swipeArea-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] swipeArea : SwipeArea

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

The property specifies the SwipeArea attached to the component driving
its behavior.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@swipeArea -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : string

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

The label displayed by the BottomEdgeHint.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$clicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void clicked()

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

This handler is called when there is a mouse click on the BottomEdgeHint
and the BottomEdgeHint is not disabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clicked -->


