Ubuntu.OnlineAccounts.ProviderModel
===================================

.. raw:: html

   <p>

A model of the account providers More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ProviderModel -->

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

applicationId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

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

variant get(int row, string roleName)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ProviderModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The ProviderModel is a model representing the account providers
installed on the system.

.. raw:: html

   </p>

.. raw:: html

   <p>

The model defines the following roles:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

displayName, the user-visible name of this provider

.. raw:: html

   </li>

.. raw:: html

   <li>

providerId, the unique identifier of the account provider

.. raw:: html

   </li>

.. raw:: html

   <li>

iconName, the name of the icon representing this provider

.. raw:: html

   </li>

.. raw:: html

   <li>

isSingleAccount, true if this provider supports creating one account at
most

.. raw:: html

   </li>

.. raw:: html

   <li>

translations, the localization domain for translating the provider's
display name

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@ProviderModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$applicationId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="applicationId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

applicationId : string

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

If set, the model will only show those providers which are relevant for
the given applicationId. This means that a provider will only be shown
if at least one of its services can be used by the application, as
described in the application's manifest file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@applicationId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

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

The number of items in the model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

variant get(int row, string roleName)

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

Returns the data at row for the role roleName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@get -->


