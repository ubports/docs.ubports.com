QtOrganizer.DetailFilter
========================

.. raw:: html

   <p>

The DetailFilter element provides a filter based around a detail value
criterion. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailFilter -->

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

import QtOrganizer 5.0

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

detail : Detail

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

onFilterChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DetailFilter-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Simple example how to utilize DetailFilter element together with
OrganizerModel and ListView elements:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   height: <span class="number">400</span>; width: <span class="number">400</span>;
   OrganizerModel{
   id: organizer
   startPeriod: <span class="string">&quot;2009-01-01&quot;</span>
   endPeriod: <span class="string">&quot;2012-12-31&quot;</span>
   filter: todoFilter
   }
   Type {
   id: typeDetailToMatch
   type: Type<span class="operator">.</span>Todo
   }
   DetailFilter {
   id: todoFilter
   detail: typeDetailToMatch
   }
   ListView {
   width: parent<span class="operator">.</span>width; height: parent<span class="operator">.</span>height;
   model: organizer<span class="operator">.</span>items
   delegate: Text {text: displayLabel}
   }
   }</pre>

.. raw:: html

   <p>

See also QOrganizerItemDetailFilter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailFilter -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$detail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

detail : Detail

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

This property holds the detail instance used by this filter for
matching.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detail -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onFilterChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onFilterChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onFilterChanged()

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

See also QtOrganizer5::Filter::onFilterChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onFilterChanged -->


