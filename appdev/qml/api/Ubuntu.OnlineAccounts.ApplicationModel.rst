Ubuntu.OnlineAccounts.ApplicationModel
======================================

.. raw:: html

   <p>

A model of the applications using online accounts. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ApplicationModel -->

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

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

service : string

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

   <!-- $$$ApplicationModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The ApplicationModel is a model representing the applications using
online accounts installed on the system.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the current implementation, the model is valid only if its
ApplicationModel::service property is set to a valid service ID.

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

applicationId is the unique identifier of the application

.. raw:: html

   </li>

.. raw:: html

   <li>

displayName is the application display name

.. raw:: html

   </li>

.. raw:: html

   <li>

iconName is the name of the application icon

.. raw:: html

   </li>

.. raw:: html

   <li>

serviceUsage is a description of how the application uses the service;
this is set to a valid value only if the ApplicationModel::service
property is set to a valid service ID.

.. raw:: html

   </li>

.. raw:: html

   <li>

application is the Application object

.. raw:: html

   </li>

.. raw:: html

   <li>

translations, the localization domain for translating the serviceUsage
field

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@ApplicationModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

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

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="service-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

service : string

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

If set, the model will list only those applications which can use this
specific service.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@service -->

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


