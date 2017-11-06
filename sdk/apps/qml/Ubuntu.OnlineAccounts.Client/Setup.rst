.. _sdk_ubuntu_onlineaccounts_client_setup:

Ubuntu.OnlineAccounts.Client Setup
==================================

Invoke the Online Accounts panel

+---------------------+-----------------------------------------+
| Import Statement:   | import Ubuntu.OnlineAccounts.Client .   |
+---------------------+-----------------------------------------+

Properties
----------

-  `applicationId </sdk/apps/qml/Ubuntu.OnlineAccounts/Client.Setup/#applicationId-prop>`_  : string
-  `providerId </sdk/apps/qml/Ubuntu.OnlineAccounts/Client.Setup/#providerId-prop>`_  : string
-  `serviceId </sdk/apps/qml/Ubuntu.OnlineAccounts/Client.Setup/#serviceId-prop>`_  : string
-  `serviceTypeId </sdk/apps/qml/Ubuntu.OnlineAccounts/Client.Setup/#serviceTypeId-prop>`_  : string

Signals
-------

-  `finished </sdk/apps/qml/Ubuntu.OnlineAccounts/Client.Setup/#finished-signal>`_ \ ()

Methods
-------

-  void `exec </sdk/apps/qml/Ubuntu.OnlineAccounts/Client.Setup/#exec-method>`_ \ ()

Detailed Description
--------------------

This object can be used by applications to request the creation of an account. By calling the `exec() </sdk/apps/qml/Ubuntu.OnlineAccounts/Client.Setup/#exec-method>`_  method, the Online Accounts panel will appear and guide the user through the creation of an account. Once done, the finished() signal will be emitted. The type of account to be created can be configured by this object's properties.

Example:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 1.3
    import Ubuntu.OnlineAccounts.Client 0.1
    Rectangle {
        width: 400
        height: 300
        Button {
            anchors.centerIn: parent
            text: "Create Facebook account"
            onClicked: setup.exec()
        }
        Setup {
            id: setup
            applicationId: "MyApp"
            providerId: "facebook"
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_onlineaccounts_client_setup_applicationId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| applicationId : string                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies which application is asking for access. The value of this string must be equal to the filename of the XML application file (installed in ``/usr/share/accounts/applications/`` or ``~/.local/share/accounts/applications/``) minus the ``.application`` suffix.

.. _sdk_ubuntu_onlineaccounts_client_setup_providerId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| providerId : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to a valid provider, the user will be asked to create an Online Account provided by this entity.

.. _sdk_ubuntu_onlineaccounts_client_setup_serviceId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| serviceId : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to a valid service ID, the user will be asked to create an Online Account which provides this service.

.. _sdk_ubuntu_onlineaccounts_client_setup_serviceTypeId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| serviceTypeId : string                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to a valid service type, the user will be asked to create an Online Account which supports this service type.

Signal Documentation
--------------------

.. _sdk_ubuntu_onlineaccounts_client_setup_finished:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| finished()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Emitted when the Online Accounts panel has been closed.

Method Documentation
--------------------

.. _sdk_ubuntu_onlineaccounts_client_setup_exec:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void exec()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Launches the Online Accounts panel.

