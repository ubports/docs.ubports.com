Ubuntu.Components.ProgressionSlot
=================================

.. raw:: html

   <p>

ProgressionSlot holds an icon representing the progression symbol.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ProgressionSlot -->

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

Icon

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

   <!-- $$$ProgressionSlot-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ProgressionSlot is designed to provide an easy way for developers to add
a progression symbol to the list item created using ListItemLayout or
SlotsLayout.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItemLayout will automatically accomodate the progression symbol as
the last trailing slot inside the layout. For more details, see
ListItemLayout documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following is an example of how easy it is to implement list items
using ListItem with ListItemLayout and ProgressionSlot:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span>
   <span class="name">onClicked</span>: <span class="name">pushPageOnStack</span>()
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">title</span>.text: <span class="string">&quot;Push a new page on the PageStack&quot;</span>
   <span class="type"><a href="index.html">ProgressionSlot</a></span> {}
   }
   }</pre>

.. raw:: html

   <p>

See also ListItemLayout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ProgressionSlot -->
