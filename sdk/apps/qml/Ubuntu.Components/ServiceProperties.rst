The component enables accessing service properties from QML.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.1          |
+---------------------+--------------------------------+

Properties
----------

-  ****`adaptorInterface </sdk/apps/qml/Ubuntu.Components/ServiceProperties#adaptorInterface-prop>`__****
   : string
-  ****`error </sdk/apps/qml/Ubuntu.Components/ServiceProperties#error-prop>`__****
   : string
-  ****`path </sdk/apps/qml/Ubuntu.Components/ServiceProperties#path-prop>`__****
   : string
-  ****`service </sdk/apps/qml/Ubuntu.Components/ServiceProperties#service-prop>`__****
   : string
-  ****`serviceInterface </sdk/apps/qml/Ubuntu.Components/ServiceProperties#serviceInterface-prop>`__****
   : string
-  ****`status </sdk/apps/qml/Ubuntu.Components/ServiceProperties#status-prop>`__****
   : enum
-  ****`type </sdk/apps/qml/Ubuntu.Components/ServiceProperties#type-prop>`__****
   : enum

Detailed Description
--------------------

The services accessed by the component are ones providing their
interfaces through DBus. The component is specialized to read properties
exposed by these services, andf to keep these property values up to
date. It is not meant to access signals or slots exposed, nor to change
the values of the properties watched.

Properties watched should be declared within the body of the component
like any other QML property, preferably defining a default value for
them. The component will enumerate these properties and will ask the
service to provide values for those. When enumerating properties, each
property will be checked twice, with the case specified as well as with
the first letter capitalized.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    ServiceProperties {
        service: "org.freenode.AccountsService"
        path: "/org/freenode/AccountsService"
        serviceInterface: "org.freenode.AccountsService"
        adaptorInterface: "com.ubuntu.touch.Accounts.Sound"
        // listing properties to watch
        // each property name existence will be checked against the current case
        // as well as with first character capitalized
        property bool incomingCallVibrate: true
    }

Note that there are few properties which must be set in order the
component to work. These are
`service </sdk/apps/qml/Ubuntu.Components/ServiceProperties#service-prop>`__,
`path </sdk/apps/qml/Ubuntu.Components/ServiceProperties#path-prop>`__
and
`adaptorInterface </sdk/apps/qml/Ubuntu.Components/ServiceProperties#adaptorInterface-prop>`__.
Also, once specified,
`service </sdk/apps/qml/Ubuntu.Components/ServiceProperties#service-prop>`__,
`serviceInterface </sdk/apps/qml/Ubuntu.Components/ServiceProperties#serviceInterface-prop>`__
and
`adaptorInterface </sdk/apps/qml/Ubuntu.Components/ServiceProperties#adaptorInterface-prop>`__
values should not be changed as it cannot be guaranteed that properties
watched will be available on those service. Therefore any change on
these properties after the component completion will be ignored.
Property bindings on properties watched will be ignored as well, as
service will report changes in these property values.

The service is connected once the component gets completed
(Component.onCompleted). The
`error </sdk/apps/qml/Ubuntu.Components/ServiceProperties#error-prop>`__
property specifies any error occured during connection, and the
`status </sdk/apps/qml/Ubuntu.Components/ServiceProperties#status-prop>`__
property notifies whether the connection to the service is active or
not.

**Note:** Pay attention when chosing the service watched, and set your
application's AppArmor rights to ensure a successful service connection.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ adaptorInterface : string                                       |
+--------------------------------------------------------------------------+

The proeprty specifies the dbus adaptor interface which provides the
properties watched. This can be a different interface that the one
specified in
`serviceInterface </sdk/apps/qml/Ubuntu.Components/ServiceProperties#serviceInterface-prop>`__,
and in the same way, it can be empty, in which case all the properties
from all interfaces of the service will be watched.

| 

+--------------------------------------------------------------------------+
|        \ error : string                                                  |
+--------------------------------------------------------------------------+

The property is set with a human readablestring each time an error
occurrs during the service connection. Empty string means no error.

| 

+--------------------------------------------------------------------------+
|        \ path : string                                                   |
+--------------------------------------------------------------------------+

The property specifies the DBus service connection path. It is mandatory
to be specified.

| 

+--------------------------------------------------------------------------+
|        \ service : string                                                |
+--------------------------------------------------------------------------+

The proeprty specifies the DBus service URI. It is mandatory to be
specified.

| 

+--------------------------------------------------------------------------+
|        \ serviceInterface : string                                       |
+--------------------------------------------------------------------------+

The property specifies the service intertface. If it is an empty string,
the component will refer to the merging of all interfaces found in the
service.

| 

+--------------------------------------------------------------------------+
|        \ status : enum                                                   |
+--------------------------------------------------------------------------+

The property presents the status of the component.

-  - *ServiceProperties.Inactive* - the component is inactive, initial
   state
-  - *ServiceProperties.ConnectionError* - there was a connection error,
   the
   `error </sdk/apps/qml/Ubuntu.Components/ServiceProperties#error-prop>`__
   contains the error string.
-  - *ServiceProperties.Synchronizing* - the connection to the service
   succeeded, and the properties are being synchronized;
-  - *ServiceProperties.Active* - the service watcher is active and
   initial property synchronization completed.

**Note:** While the status is set to *Synchronizing*, the properties are
checked against their existence in the service. Each proeprty will be
checked as declared as well with capital first letter. If neither of
these exists in the service, it will be reported in the
`error </sdk/apps/qml/Ubuntu.Components/ServiceProperties#error-prop>`__
property separately.

| 

+--------------------------------------------------------------------------+
|        \ type : enum                                                     |
+--------------------------------------------------------------------------+

Specifies the DBus connection session type. It can get the following
values:

-  - *ServiceProperties.System* when system bus is used (default)
-  - *ServiceProperties.Session* when session bus is used

| 
