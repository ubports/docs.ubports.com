Working on the Online Accounts subsystem
========================================

.. uml::
   card "QML Application" {
      component "import Lomiri.OnlineAccounts 2.0" as qmlapp
   }
   card "C++ Application" {
      component "OnlineAccountsQt\n(pkg-config file)" as cxxapp
   }
   card "Online Accounts service" as oas {
      interface "D-Bus interface" as dbus
   }
   qmlapp ..( dbus
   cxxapp ..( dbus

The Online Accounts subsystem consists of the following components:

* The `Accounts UI <https://github.com/ubports/ubuntu-system-settings-online-accounts>`_: this provides the user facing components and the base classes for the whole Online Accounts feature. More in detail, you will find these subdirectories:

  - ``click-hooks``: the programs run when a :ref:`Click application <click>` making use of the Online Accounts functionality is installed or removed
  - ``client``: the library that client applications can use to request access to an account
  - ``online-accounts-service``: the main service, implementing the logic to process client requests; it has no UI, but is able to attach the ``online-accounts-ui`` on top of an application's UI
  - ``online-accounts-ui``: the user interface which pops up when applications interact with online accounts (for example, the dialog that appears when an application requests access to an account)
  - ``plugins``: the base classes and QML elements that account plugins can use in their implementation
  - ``system-settings-plugin``: the user interface for the Accounts panel in the System Settings application

* The `Account plugins <https://github.com/ubports/account-plugins>`_ define the available account providers and implement the user interface and logic for creating the accounts
* A set of components from the `Accounts&SSO project <https://gitlab.com/accounts-sso>`_: while development happens in the upstream projects, the UBports forks add the Debian packaging. These projects are:

  - `libaccounts-glib <https://github.com/ubports/libaccounts-glib>`_: account management API for C/GLib applications
  - `libsignon-glib <https://github.com/ubports/libsignon-glib>`_: authentication API for C/GLib applications
  - `libaccounts-qt <https://github.com/ubports/libaccounts-qt>`_: account management API for Qt applications
  - `signond <https://github.com/ubports/signon>`_: authentication daemon, exposing a D-Bus API. It includes the ``libsignon-qt`` library, which offers an authentication API for Qt applications
  - `signon-plugin-oauth2 <https://github.com/ubports/signon-plugin-oauth2>`_: OAuth (1.0 and 2.0) plugin for signond
  - `accounts-qml-module <https://github.com/ubports/accounts-qml-module>`_ authentication and account management API, for QML applications (can be used when implementing account plugins, too)

* The `account-polld service <https://github.com/ubports/account-polld>`_, which runs in the background and checks every 5 minutes for new account activity (the interval is decided by the `Ubuntu Push service <https://github.com/ubports/ubuntu-push>`_)
* The `account-polld-plugins-go <https://github.com/ubports/account-polld-plugins-go>`_, a repository of plugins for the ``account-polld`` service. The plugins in this repository are written in Go, but plugins can be written in whatever language and can reside in different repositories


Debugging
---------

Account creation issues
^^^^^^^^^^^^^^^^^^^^^^^

It may happen that the account creation fails, either due to communication issues with the remote server, or to some bug in the account plugin itself (this can easily happen while developing a new plugin). In order to debug such situations, you can open a terminal (it's easier if done from a remote shell -- you can gain a shell on the device using :doc:`/userguide/advanceduse/adb` or :doc:`/userguide/advanceduse/ssh`) and start the ``online-accounts-service`` in debug mode:

.. code-block:: bash

        pkill online-accounts-service
        OAU_LOGGING_LEVEL=2 OAU_DAEMON_TIMEOUT=9999 online-accounts-service

If you believe that the issue might be caused by some errors in the authentication phase, you can also enabled extensive logging by ``signond`` like this:

.. code-block:: bash

        pkill signond
        export SSO_LOGGING_OUTPUT="stdout"    # signond logs to the syslog by default
        SSO_LOGGING_LEVEL=2 SSO_DAEMON_TIMEOUT=9999 signond

At this point, repeat the operation that was failing, and you'll get all debugging output printed on the console.
