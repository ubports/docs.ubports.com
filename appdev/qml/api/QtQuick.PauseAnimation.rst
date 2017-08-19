QtQuick.PauseAnimation
======================

.. raw:: html

   <p>

Provides a pause for an animation More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PauseAnimation -->

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

import QtQuick 2.4

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

Animation

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

duration : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PauseAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

When used in a SequentialAnimation, PauseAnimation is a step when
nothing happens, for a specified duration.

.. raw:: html

   </p>

.. raw:: html

   <p>

A 500ms animation sequence, with a 100ms pause between two animations:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">SequentialAnimation {
   NumberAnimation { <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> duration: <span class="number">200</span> }
   PauseAnimation { duration: <span class="number">100</span> }
   NumberAnimation { <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> duration: <span class="number">200</span> }
   }</pre>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and Qt Quick Examples -
Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PauseAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="duration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

duration : int

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

This property holds the duration of the pause in milliseconds

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 250.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->


