Ubuntu.Components.OrientationHelper
===================================

.. raw:: html

   <p>

The OrientationHelper automatically rotates its children following the
orientation of the device. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OrientationHelper -->

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

Item

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

PopupBase.

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

anchorToKeyboard : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

automaticOrientation : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientationAngle : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotating : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

transitionEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$OrientationHelper-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Any Item placed inside an Orientation Helper will be automatically
rotated following the orientation of the device.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that OrientationHelper is always filling its parent
(anchors.parent: fill).

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="index.html">OrientationHelper</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Automatically rotated&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Automatically rotated&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@OrientationHelper -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$anchorToKeyboard -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="anchorToKeyboard-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchorToKeyboard : bool

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

The property holds if the OrientationHelper should automatically resize
the contents when the input method appears

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@anchorToKeyboard -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="automaticOrientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

automaticOrientation : bool

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

Sets whether it will be automatically rotating when the device is.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@automaticOrientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientationAngle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientationAngle : int

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

Calculates the current orientation angle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientationAngle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotating-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] rotating : bool

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

Exposes whether the orientationTransition is running.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotating -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="transitionEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

transitionEnabled : bool

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

Sets whether the rotation transition is performed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@transitionEnabled -->


