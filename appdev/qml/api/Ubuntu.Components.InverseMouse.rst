Ubuntu.Components.InverseMouse
==============================

.. raw:: html

   <p>

Attached object filtering mouse events occured outside the owner.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@InverseMouse -->

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

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$InverseMouse-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Similar to Mouse filter attached property, provides mouse event
filtering capabilities but for events occurring outside of the owner's
area, excluding the input method area.

.. raw:: html

   </p>

.. raw:: html

   <p>

Being derived from Mouse filter element, provides the same behavior as
the Mouse filter, except that all the signals are emitted when the mouse
event occurs outside the owner's area. Note that accepting composed
mouse events does not have any effect on event propagation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Altering priority property has no effect on inverse mouse filter as
mouse events captured by the filter are not forwarded to the owner,
hence forwarding those events first to the owner will not have any
effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@InverseMouse -->
