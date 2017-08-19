Ubuntu.OnlineAccounts.Manager
=============================

.. raw:: html

   <p>

The account manager More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Manager -->

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

import Ubuntu.OnlineAccounts 0.1

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

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

object createAccount(string providerName)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object loadAccount(uint accountId)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Manager-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Manager element is a singleton class which can be used to create new
online accounts or load existing ones.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Manager -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$createAccount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createAccount-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object createAccount(string providerName)

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

Create a new account interfacing to the provider identified by
providerName.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loadAccount().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createAccount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loadAccount-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object loadAccount(uint accountId)

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

Loads the account identified by accountId. The returned object can be
used to instantiate an Account.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also createAccount().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loadAccount -->


