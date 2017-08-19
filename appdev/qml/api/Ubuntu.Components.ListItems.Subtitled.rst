Ubuntu.Components.ListItems.Subtitled
=====================================

.. raw:: html

   <p>

List item displaying a second string under the main label. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Subtitled -->

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

import Ubuntu.Components.ListItems 1.3

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

Base

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

subText : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Subtitled-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The component is deprecated. Use ListItem component instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
   <span class="name">text</span>: <span class="string">&quot;Idle&quot;</span>
   <span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
   <span class="name">text</span>: <span class="string">&quot;Disabled&quot;</span>
   <span class="name">enabled</span>: <span class="number">false</span>
   <span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
   <span class="name">text</span>: <span class="string">&quot;Selected&quot;</span>
   <span class="name">selected</span>: <span class="number">true</span>
   <span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
   <span class="name">text</span>: <span class="string">&quot;Progression&quot;</span>
   <span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
   <span class="name">progression</span>: <span class="number">true</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
   <span class="name">text</span>: <span class="string">&quot;Icon&quot;</span>
   <span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
   <span class="name">text</span>: <span class="string">&quot;Multiple lines&quot;</span>
   <span class="name">subText</span>: <span class="string">&quot;This is a multi-line subText.\nUp to 5 lines are supported.&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
   <span class="name">text</span>: <span class="string">&quot;Multiple lines&quot;</span>
   <span class="name">subText</span>: <span class="string">&quot;It also works well with icons and progression.&quot;</span>
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   <span class="name">progression</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@Subtitled -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$subText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="subText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

subText : string

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

The list of strings that will be shown under the label text

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@subText -->


