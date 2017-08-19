autopilot.gestures
==================

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <p>

Gestural support for autopilot.

.. raw:: html

   </p>

.. raw:: html

   <p>

This module contains functions that can generate touch and multi-touch
gestures for you. This is a convenience for the test author - there is
nothing to prevent you from generating your own gestures!

.. raw:: html

   </p>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.gestures.pinch">

autopilot.gestures.pinch(center, vector\_start, vector\_end)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Perform a two finger pinch (zoom) gesture.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

center – The coordinates (x,y) of the center of the pinch gesture.

.. raw:: html

   </li>

.. raw:: html

   <li>

vector\_start – The (x,y) values to move away from the center for the
start.

.. raw:: html

   </li>

.. raw:: html

   <li>

vector\_end – The (x,y) values to move away from the center for the end.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p>

The fingers will move in 100 steps between the start and the end points.
If start is smaller than end, the gesture will zoom in, otherwise it
will zoom out.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <!-- End Namespace Content -->
