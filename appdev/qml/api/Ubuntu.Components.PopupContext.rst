Ubuntu.Components.PopupContext
==============================

.. raw:: html

   <p>

A special ActionContext used in Dialogs and Popups. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PopupContext -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

ActionContext

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

   <!-- $$$PopupContext-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A PopupContext is similar to the ActionContext, with the only difference
being that there can be only one PopupContext active at a time in an
application. A PopupContext can have several active ActionContext
children declared, however when deactivated all child contexts will be
deactivated as well, and no Action declared in these contexts will be
available through shortcuts.

.. raw:: html

   </p>

.. raw:: html

   <p>

The toolkit provides this kind of contexts in MainView, Popup and
Dialog. It is highly recommended for applications to have a PopupContext
defined in their rootItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PopupContext -->
