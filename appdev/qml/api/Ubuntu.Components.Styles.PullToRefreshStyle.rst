Ubuntu.Components.Styles.PullToRefreshStyle
===========================================

.. raw:: html

   <p>

Style API for PullToRefresh component. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PullToRefreshStyle -->

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

import Ubuntu.Components.Styles 1.3

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

activationThreshold : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultContent : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

releaseToRefresh : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PullToRefreshStyle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component defines the style API for the PullToRefresh component.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PullToRefreshStyle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$activationThreshold -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activationThreshold-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

activationThreshold : real

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

The property holds the threshold value when the component should enter
into ready-to-refresh state when dragged manually. The default value is
the height of the component styled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activationThreshold -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultContent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultContent : Component

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

The property holds the style provided default content component. The
value is assigned to the PullToRefresh::content property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultContent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="releaseToRefresh-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

releaseToRefresh : bool

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

The property informs the component when a manual refresh can be
triggered. Style implementations (themes) can decide when to flip the
component to be ready to trigger reftesh signal.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@releaseToRefresh -->


