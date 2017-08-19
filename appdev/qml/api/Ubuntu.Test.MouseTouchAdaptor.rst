Ubuntu.Test.MouseTouchAdaptor
=============================

.. raw:: html

   <p>

Singleton type turning mouse events into single finger touch events.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MouseTouchAdaptor -->

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

import Ubuntu.Test .

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

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MouseTouchAdaptor-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

When enabled, mouse events will be translated into single finger touch
events. Being a singleton, the feature must be enabled explicitly either
on component completion or through a binding.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQml.Binding.md">Binding</a></span> {
   <span class="name">target</span>: <span class="name">MouseTouchAdaptor</span>
   <span class="name">property</span>: <span class="string">&quot;enabled&quot;</span>
   <span class="name">value</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <!-- @@@MouseTouchAdaptor -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

Enables the mouse to touch conversion functionality. Defaults to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->


