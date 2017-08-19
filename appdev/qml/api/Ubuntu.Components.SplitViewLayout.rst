Ubuntu.Components.SplitViewLayout
=================================

.. raw:: html

   <p>

Layout configuration for SplitView. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SplitViewLayout -->

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

import .

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

columns : list<ViewColumn>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

when : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SplitViewLayout-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

SplitViewLayout defines a layout configuration and the condition when
the layout is expected to be applied. In case multiple layout conditions
evaluate to true, the first one in the list will be activated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SplitViewLayout -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$columns -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="columns-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] columns : list<ViewColumn>

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

The property holds the column configurations for the layout. If the view
has more columns than the configuration specifies, the extra columns
will be hidden (their visible property will be set to false!). Also, the
hidden column sizes may change, therefore size-sensitive content must be
aware of this.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@columns -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="when-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

when : bool

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

Specifies the condition when to apply the layout. Usually holds a
binding which evaluates to true or false to activate the layout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@when -->


