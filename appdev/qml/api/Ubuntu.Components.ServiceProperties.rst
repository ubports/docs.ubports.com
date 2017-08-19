Ubuntu.Components.ServiceProperties
===================================

.. raw:: html

   <p>

The component enables accessing service properties from QML. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ServiceProperties -->

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

Ubuntu.Components 1.1

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

adaptorInterface : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

service : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

serviceInterface : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enum

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

type : enum

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ServiceProperties-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The services accessed by the component are ones providing their
interfaces through DBus. The component is specialized to read properties
exposed by these services, andf to keep these property values up to
date. It is not meant to access signals or slots exposed, nor to change
the values of the properties watched.

.. raw:: html

   </p>

.. raw:: html

   <p>

Properties watched should be declared within the body of the component
like any other QML property, preferably defining a default value for
them. The component will enumerate these properties and will ask the
service to provide values for those. When enumerating properties, each
property will be checked twice, with the case specified as well as with
the first letter capitalized.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="index.html">ServiceProperties</a></span> {
   <span class="name">service</span>: <span class="string">&quot;org.freenode.AccountsService&quot;</span>
   <span class="name">path</span>: <span class="string">&quot;/org/freenode/AccountsService&quot;</span>
   <span class="name">serviceInterface</span>: <span class="string">&quot;org.freenode.AccountsService&quot;</span>
   <span class="name">adaptorInterface</span>: <span class="string">&quot;com.ubuntu.touch.Accounts.Sound&quot;</span>
   <span class="comment">// listing properties to watch</span>
   <span class="comment">// each property name existence will be checked against the current case</span>
   <span class="comment">// as well as with first character capitalized</span>
   property <span class="type">bool</span> <span class="name">incomingCallVibrate</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

Note that there are few properties which must be set in order the
component to work. These are service, path and adaptorInterface. Also,
once specified, service, serviceInterface and adaptorInterface values
should not be changed as it cannot be guaranteed that properties watched
will be available on those service. Therefore any change on these
properties after the component completion will be ignored. Property
bindings on properties watched will be ignored as well, as service will
report changes in these property values.

.. raw:: html

   </p>

.. raw:: html

   <p>

The service is connected once the component gets completed
(Component.onCompleted). The error property specifies any error occured
during connection, and the status property notifies whether the
connection to the service is active or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Pay attention when chosing the service watched, and set your
application's AppArmor rights to ensure a successful service connection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ServiceProperties -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$adaptorInterface -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="adaptorInterface-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

adaptorInterface : string

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

The proeprty specifies the dbus adaptor interface which provides the
properties watched. This can be a different interface that the one
specified in serviceInterface, and in the same way, it can be empty, in
which case all the properties from all interfaces of the service will be
watched.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@adaptorInterface -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : string

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

The property is set with a human readablestring each time an error
occurrs during the service connection. Empty string means no error.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="path-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

path : string

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

The property specifies the DBus service connection path. It is mandatory
to be specified.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@path -->

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

The proeprty specifies the DBus service URI. It is mandatory to be
specified.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@service -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="serviceInterface-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

serviceInterface : string

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

The property specifies the service intertface. If it is an empty string,
the component will refer to the merging of all interfaces found in the
service.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@serviceInterface -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enum

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

The property presents the status of the component.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

-  ServiceProperties.Inactive - the component is inactive, initial state

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   -  ServiceProperties.ConnectionError - there was a connection error,
      the error contains the error string.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      -  ServiceProperties.Synchronizing - the connection to the service
         succeeded, and the properties are being synchronized;

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         -  ServiceProperties.Active - the service watcher is active and
            initial property synchronization completed.

            .. raw:: html

               </li>

            .. raw:: html

               </ul>

            .. raw:: html

               <p>

            Note: While the status is set to Synchronizing, the
            properties are checked against their existence in the
            service. Each proeprty will be checked as declared as well
            with capital first letter. If neither of these exists in the
            service, it will be reported in the error property
            separately.

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@status -->

            .. raw:: html

               <table class="qmlname">

            .. raw:: html

               <tr valign="top" id="type-prop">

            .. raw:: html

               <td class="tblQmlPropNode">

            .. raw:: html

               <p>

            type : enum

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

            Specifies the DBus connection session type. It can get the
            following values:

            .. raw:: html

               </p>

            .. raw:: html

               <ul>

            .. raw:: html

               <li>

            -  ServiceProperties.System when system bus is used
               (default)

               .. raw:: html

                  </li>

               .. raw:: html

                  <li>

               -  ServiceProperties.Session when session bus is used

                  .. raw:: html

                     </li>

                  .. raw:: html

                     </ul>

                  .. raw:: html

                     <!-- @@@type -->
