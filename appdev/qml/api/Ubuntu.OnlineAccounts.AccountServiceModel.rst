Ubuntu.OnlineAccounts.AccountServiceModel
=========================================

.. raw:: html

   <p>

A model of the user's Online Accounts More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AccountServiceModel -->

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

account : Account

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

accountId : quint32

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

applicationId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

includeDisabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

provider : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

service : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

serviceType : string

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

   <!-- $$$AccountServiceModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AccountServiceModel is a model representing the user's Online
Accounts services. Please note that an Online Account can offer several
different services (chat, e-mail, micro-blogging, etc.); these are the
items represented by this model, and not the user accounts as a whole.
Since most applications are interested on a small subset of the user's
accounts, AccountServiceModel offers some filtering functionalities: it
is possible to restrict it to only one account provider, to a specific
service type (for instance, an e-mail application will probably be
interested in only those accounts which offer an e-mail service), or to
a specific service (e.g., picasa; this is often equivalent to filtering
by provider and by service-type, because it's rare for a provider to
offer two different services of the same type). By default, only enabled
accounts are returned. Use the includeDisabled property to list also
disabled accounts; keep in mind, though, that an application should
never use an account which has been disabled by the user.

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

displayName is the name of the account (usually the user's login)

.. raw:: html

   </li>

.. raw:: html

   <li>

providerName is the name of the account provider (e.g., "Google")

.. raw:: html

   </li>

.. raw:: html

   <li>

serviceName is the name of the service (e.g., "Picasa")

.. raw:: html

   </li>

.. raw:: html

   <li>

enabled

.. raw:: html

   </li>

.. raw:: html

   <li>

accountServiceHandle is a handle to the underlying Qt object which can
be used to instantiate an AccountService from QML

.. raw:: html

   </li>

.. raw:: html

   <li>

accountId is the numeric ID of the account

.. raw:: html

   </li>

.. raw:: html

   <li>

accountHandle is a handle to the underlying Qt object which can be used
to instantiate an Account from QML

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Examples of use:

.. raw:: html

   </p>

.. raw:: html

   <p>

1. Model of all enabled microblogging accounts:

   .. raw:: html

      </p>

   .. raw:: html

      <pre class="qml"><span class="type">Item</span> {
      <span class="type"><a href="index.html">AccountServiceModel</a></span> {
      <span class="name">id</span>: <span class="name">accounts</span>
      <span class="name">serviceType</span>: <span class="string">&quot;microblogging&quot;</span>
      }
      <span class="type">ListView</span> {
      <span class="name">model</span>: <span class="name">accounts</span>
      <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">model</span>.<span class="name">displayName</span> <span class="operator">+</span> <span class="string">&quot; by &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">providerName</span> }
      }
      }</pre>

   .. raw:: html

      <p>

   2. List all Facebook account services:

      .. raw:: html

         </p>

      .. raw:: html

         <pre class="qml"><span class="type">Item</span> {
         <span class="type"><a href="index.html">AccountServiceModel</a></span> {
         <span class="name">id</span>: <span class="name">accounts</span>
         <span class="name">provider</span>: <span class="string">&quot;facebook&quot;</span>
         <span class="name">includeDisabled</span>: <span class="number">true</span>
         }
         <span class="type">ListView</span> {
         <span class="name">model</span>: <span class="name">accounts</span>
         <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">model</span>.<span class="name">serviceName</span> <span class="operator">+</span> <span class="string">&quot; on &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">displayName</span> }
         }
         }</pre>

      .. raw:: html

         <p>

      3. List all Flickr accounts enabled for uploading:

         .. raw:: html

            </p>

         .. raw:: html

            <pre class="qml"><span class="type">Item</span> {
            <span class="type"><a href="index.html">AccountServiceModel</a></span> {
            <span class="name">id</span>: <span class="name">accounts</span>
            <span class="name">service</span>: <span class="string">&quot;flickr-sharing&quot;</span>
            }
            <span class="type">ListView</span> {
            <span class="name">model</span>: <span class="name">accounts</span>
            <span class="name">delegate</span>: <span class="name">Rectangle</span> {
            <span class="name">id</span>: <span class="name">rect</span>
            <span class="type">Text</span> { <span class="name">text</span>: <span class="name">rect</span>.<span class="name">model</span>.<span class="name">displayName</span> }
            <span class="type"><a href="Ubuntu.OnlineAccounts.AccountService.md">AccountService</a></span> {
            <span class="name">id</span>: <span class="name">accountService</span>
            <span class="name">objectHandle</span>: <span class="name">rect</span>.<span class="name">model</span>.<span class="name">accountServiceHandle</span>
            <span class="name">onAuthenticated</span>: { <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Access token is &quot;</span> <span class="operator">+</span> <span class="name">reply</span>.<span class="name">AccessToken</span>) }
            <span class="name">onAuthenticationError</span>: { <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Authentication failed, code &quot;</span> <span class="operator">+</span> <span class="name">error</span>.<span class="name">code</span>) }
            }
            <span class="type">MouseArea</span> {
            <span class="name">anchors</span>.fill: <span class="name">parent</span>
            <span class="name">onClicked</span>: <span class="name">accountService</span>.<span class="name">authenticate</span>()
            }
            }
            }
            }</pre>

         .. raw:: html

            <p>

         4. List all the online accounts, without their services:

            .. raw:: html

               </p>

            .. raw:: html

               <pre class="qml"><span class="type">Item</span> {
               <span class="type"><a href="index.html">AccountServiceModel</a></span> {
               <span class="name">id</span>: <span class="name">accounts</span>
               <span class="name">service</span>: <span class="string">&quot;global&quot;</span>
               }
               <span class="type">ListView</span> {
               <span class="name">model</span>: <span class="name">accounts</span>
               <span class="name">delegate</span>: <span class="name">Rectangle</span> {
               <span class="name">id</span>: <span class="name">rect</span>
               <span class="type">Text</span> { <span class="name">text</span>: <span class="name">account</span>.<span class="name">displayName</span> }
               <span class="type"><a href="Ubuntu.OnlineAccounts.Account.md">Account</a></span> {
               <span class="name">id</span>: <span class="name">account</span>
               <span class="name">objectHandle</span>: <span class="name">rect</span>.<span class="name">model</span>.<span class="name">accountHandle</span>
               }
               }
               }
               }</pre>

            .. raw:: html

               <!-- @@@AccountServiceModel -->

            .. raw:: html

               <h2>

            Property Documentation

            .. raw:: html

               </h2>

            .. raw:: html

               <!-- $$$account -->

            .. raw:: html

               <table class="qmlname">

            .. raw:: html

               <tr valign="top" id="account-prop">

            .. raw:: html

               <td class="tblQmlPropNode">

            .. raw:: html

               <p>

            account : Account

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

            If set, the model will list only those accounts services
            available in the given account.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@account -->

            .. raw:: html

               <table class="qmlname">

            .. raw:: html

               <tr valign="top" id="accountId-prop">

            .. raw:: html

               <td class="tblQmlPropNode">

            .. raw:: html

               <p>

            accountId : quint32

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

            If set, the model will list only those accounts services
            available in the given account.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@accountId -->

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

            If set, the model will only show those account services
            which are relevant for the given applicationId. This means
            that an account service will only be shown if it can be used
            by the application, as described in the application's
            manifest file.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@applicationId -->

            .. raw:: html

               <table class="qmlname">

            .. raw:: html

               <tr valign="top" id="includeDisabled-prop">

            .. raw:: html

               <td class="tblQmlPropNode">

            .. raw:: html

               <p>

            includeDisabled : bool

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

            If true, even disabled account services will be listed. Note
            that an application should never use a disabled account.

            .. raw:: html

               </p>

            .. raw:: html

               <p>

            By default, this property is false.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@includeDisabled -->

            .. raw:: html

               <table class="qmlname">

            .. raw:: html

               <tr valign="top" id="provider-prop">

            .. raw:: html

               <td class="tblQmlPropNode">

            .. raw:: html

               <p>

            provider : string

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

            If set, the model will list only those accounts services
            provided by this provider.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@provider -->

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

            If set, the model will list only those accounts services for
            this specific service.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@service -->

            .. raw:: html

               <table class="qmlname">

            .. raw:: html

               <tr valign="top" id="serviceType-prop">

            .. raw:: html

               <td class="tblQmlPropNode">

            .. raw:: html

               <p>

            serviceType : string

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

            If set, the model will list only those accounts services
            supporting this service type. Each provider-specific service
            is an instance of a generic service type (such as "e-mail",
            "IM", etc.) which identifies the main functionality provided
            by the service.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@serviceType -->

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
