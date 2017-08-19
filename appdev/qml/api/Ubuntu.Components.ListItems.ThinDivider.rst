Ubuntu.Components.ListItems.ThinDivider
=======================================

.. raw:: html

   <p>

Narrow line used as a divider between ListItems. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ThinDivider -->

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

Rectangle

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

   <!-- $$$ThinDivider-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The component is deprecated. Use ListItem component's divider
property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItems will usually include this line at the bottom of the item to
give a visually pleasing list of items. But a divider line can also be
inserted manually using this component.

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
   <span class="name">width</span>: <span class="number">250</span>
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ThinDivider {} <span class="comment">//can be used as header for list</span>
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="string">&quot;List Item without thin divider line&quot;</span>
   <span class="name">showDivider</span>: <span class="number">false</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ThinDivider {} <span class="comment">// manually inserted divider line</span>
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="string">&quot;ListItem with thin divider line&quot;</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ThinDivider -->
