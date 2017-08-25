Platform guides - Online Accounts guide
=======================================

Terms and definitions
---------------------

Online Accounts uses some straightforward terminology, that is
nevertheless important to outline before further discussion.

-  **Account:** an account is given by a provider to a user, and allows
   access to services. For example, a Twitter account allows the user to
   post messages on Twitter.
-  **Provider: ** a provider gives out accounts to users, as well as
   allowing them to use the account with a variety of services. A user
   can have multiple accounts by the same provider, and each account can
   consist of multiple services. For example, the account provided by
   Google can be used to access services such as GMail and Picasa.
-  **Service:** a service is hosted by a provider, and allows the user
   to perform some task. For example, Picasa and Facebook Photos enable
   users to share their photos.
-  **Short app ID:** a unique identifier for the click application: it
   is given by the click package name followed by an underscore and the
   application name: ``_<package>_<app>_``.

Online Accounts for application developers
------------------------------------------

One of the main goals of the Online Accounts project is to simplify how
applications obtain access to online services. The UI for setting up and
configuring an online account can be quite complex, often requiring
embedding a web view in order to perform the login on the remote
website. By integrating with the Online Accounts framework, an
application can get rid of all the account management UI: all accounts
are configured in the Accounts applet in the system settings, so the
application is a simple consumer of the accounts. Indeed, applications
can also invoke the Accounts configuration panel when they want to ask
the user to configure a new account.

Packaging and manifest files
----------------------------

Applications using Online Accounts need to add the ”\ ``accounts``\ ”
policy group to their AppArmor manifest file:

::

    {
      "policy_groups": [
        "networking",
        "accounts",
        ...
      ],
      "policy_version": 1.1
    }

You can read more about application confinement
`here <app-confinement.md>`__. Next, the application needs to ship an
``app.accounts`` file which describes the service(s) it's going to use:

::

    {
      "services": [
        {
          "provider": "facebook"
        },
        {
          "provider": "google",
          "auth": {
            "oauth2/web_server": {
              "ClientId": "foo",
              "ClientSecret": "bar",
              "Scopes": ["https://picasaweb.google.com/data/"]
            }
          }
        }
      ],
      "translations": "myapp.developer"
    }

In the example above, the "services" consists of two elements: this can
happen, for instance, when the application supports sharing photos both
to Facebook and Picasa.

The ``app.accounts`` file describes the online services which the
application will access: this is done via the ``services`` key, which
can be assigned an array of elements, each describing a service. The
only required key is "``provider``", which should contain the identifier
of the account provider. The available account providers can be found in
``/usr/share/accounts/providers/`` (those installed via click packages
will be found in ``~/.local/share/accounts/providers/``), and their
identifier is given by their filename minus the “\ ``.provider``\ ”
suffix. Authentication information can be specified either in the
``auth`` key in one's ``app.accounts`` file, or it can be given at run
time when invoking the authentication APIs. It's worth having a look at
the contents of the .provider files for the services you are interested
in, as they'll probably contain information on the authentication method
which should be used, and the necessary parameters.

In the above example, the OAuth application keys for accessing Facebook
have not been declared in the manifest file, so they'll have to be
passed as runtime parameters. The second service, instead, declares the
OAuth keys in the manifest and therefore it won't be necessary to
specify them again while using the authentication APIs.

For a list of the names and parameters of the supported authentication
methods, please refer to the Authentication methods section below.

In the case where there isn't already a provider file for the service
you are interested in, it's possible to add support to it by shipping an
account plugin along with your application. The section Online Accounts
for service developers explains how to do this.

The Online Accounts json manifest file described above needs to be added
to the main ``manifest.json`` file of the package, like this:

.. code:: json

    "hooks":
    {
      "facebook-photos": {
        "apparmor": "app.json",
        "accounts": "app.accounts"
      }
      ...
    }

Once installed, the application will be registered as a client of the
Online Accounts service and will be able to access its API.

Using the configured accounts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Generally, the first step performed by an application using Online
Accounts is the discovery of all the existing accounts which are
supported to the application. If there is no available account (or if
the application supports multiple accounts), it's possible to request
one new account from Online Accounts. Once an application has found out
what accounts it can use, the second step is attempting to log into the
remote services where the accounts are registered and, finally, trying
to do something useful with them. The Online Accounts framework can help
the application to perform the first two steps, as described in more
detail in the following sections.

Accessing the accounts database
"""""""""""""""""""""""""""""""

The API to enumerate the accounts is provided by the
``[AccountModel](../../apps/api-qml-current/Ubuntu.OnlineAccounts.md)``
QML element. It's also possible to access the same functionality by
using C++ (via libOnlineAccountsQt), but the QML bindings are the
simplest and most recommended way; we'll focus on the QML bindings
throughout this document. The ``AccountModel`` offers a real-time view
over the accounts database, listing all the configured accounts which
the user has authorized the application to use:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 1.0
    import Ubuntu.OnlineAccounts 2.0
    Item {
      AccountModel {
        id: accounts
      }
      ListView {
        model: accounts
        delegate: Text { text: "Account: " + model.displayName }
      }
    }

When an application is run for the first time after being installed it
won't see any accounts in the model, because – even if the user might
have some accounts already configured in the System Settings – the user
hasn't yet authorized it to use any accounts. The application needs to
explicitly request access to the user's accounts, and this is done by
invoking the
`requestAccess() <../../apps/api-qml-current/Ubuntu.OnlineAccounts.md#requestAccess-method/>`__
method:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 1.0
    import Ubuntu.OnlineAccounts 2.0
    Item {
      AccountModel {
        id: accounts
      }
      ListView {
        model: accounts
        delegate: Text { text: "Account: " + model.displayName }
      }
      Button {
        visible: accounts.count === 0 /* remove this if your app supports
                                         multiple accounts */
        text: "Use Google to login"
        onClicked: accounts.requestAccess("myapp.me_app_google", {})
      }
    }

The code above would show a list of authorized accounts, and in case the
list is empty it would show a button which, when pressed, would request
the user to authorize a new account.

Note that since an application can use services from different
providers, it's necessary to tell Online Accounts which account service
the application needs, when requesting a new account. This is done by
specifying the unique identifier of the service, as the first parameter
of the ``requestAccess`` method. The unique identifier of a service is
defined as the short app ID of the application, followed by an
underscore and the identifier of the account provider, as specified in
the manifest file.

Logging in
""""""""""

Once the application has got an account, it can proceed and obtain an
authentication token for that account. Depending on the authentication
method being used, this could be an OAuth authentication token or, in
case of services offering a basic login only, a username and a password.
Obtaining the authentication token is simply done by accessing an
``[Account](../../apps/api-qml-current/Ubuntu.OnlineAccounts.md)``
element and calling its
``[authenticate()](../../apps/api-qml-current/Ubuntu.OnlineAccounts.md#authenticate-method)``
method:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 1.0
    import Ubuntu.OnlineAccounts 2.0
    ListView {
      model: AccountModel {}
      delegate: Button {
        text: "Login with " + model.displayName
        onClicked: model.account.authenticate({})
        Connections {
          target: model.account
          onAuthenticationReply: {
            console.log("Access token is " + reply['AccessToken'])
          }
        }
      }
    }

After the ``authenticate()`` method has been called, the ``Account``
object will emit the
`authenticationReply() <../../apps/api-qml-current/Ubuntu.OnlineAccounts.md#authenticationReply-signal>`__
signal which will carry a ``reply`` parameter with the authentication
result. Applications might want to specify some additional parameters
when performing the authentication; for example, an application which is
logging into an account which supports OAuth could specify its own
client ID and client secret, as well as the required service
permissions:

.. code:: qml

    ...
    Button {
      onClicked: model.account.authenticate({
        "ClientId": "foo",
        "ClientSecret": "bar",
        "Scopes": ["publish_actions"]
      })
    }
    ...

The parameters passed to the ``authenticate()`` method, as well as the
``reply`` object returned with the ``authenticationReply()``\ signal,
depend on the authentication method being used. In the next sections,
the most common authentication method are described, along with their
parameters and replies.

Authentication methods
^^^^^^^^^^^^^^^^^^^^^^

The current Online Accounts implementation supports several
authentication methods commonly used by service providers. In this
section we'll go through them and describe their parameters.

When adding these parameters to the Online Accounts manifest file,
please remember that the key for the group of parameters should be
``"<method>/<mechanism>"``, where method and mechanism are given in the
sections below. For instance, if a service uses the OAuth 1.0
authentication with HMAC\_SHA1 signature, all the authentication
settings should be put under the ``"oauth2/``\ HMAC\_SHA1\ ``"`` key.

OAuth 2.0 authentication
""""""""""""""""""""""""

The OAuth 2.0 method (called ``"oauth2"`` in the account configuration)
supports two different authentication mechanisms, ``user_agent`` and
``web_server``; the set of required parameters can differ depending on
the mechanism used, and differences are mentioned in the list below:

-  **``ClientId``**: client application ID, usually obtained when
   registering an application with the service. **This parameter is
   mandatory**.
-  **``ClientSecret``**: client application secret. **This parameter is
   mandatory for the ``web_server`` mechanism only**.
-  **``Scope``**: `Access token
   scope <http://tools.ietf.org/html/rfc6749#section-3.3>`__: this is a
   server-specific list of scopes. Refer to the provider's documentation
   for a list of possible values.
-  **``ForceTokenRefresh``** (boolean): if set to ``true``, the access
   token currently stored in the account is deleted. Applications can
   specify this flag when the access token they are currently using
   turns out to be invalid. This parameter should never be specified in
   a manifest file, it's only for run-time usage.
-  **``Host``**: the server on which the authentication happens, for
   example "www.facebook.com". **Note**: applications shouldn't need to
   specify this parameter.
-  **``AuthPath``**: `Authorization
   endpoint <http://tools.ietf.org/html/rfc6749#section-3.1>`__ of the
   server, relative to the host parameter. **Note**: applications
   shouldn't need to specify this parameter.
-  **``TokenPath``**: `Token
   endpoint <http://tools.ietf.org/html/rfc6749#section-3.2>`__ of the
   server, relative to the host parameter. **Note**: applications
   shouldn't need to specify this parameter.
-  **``ResponseType``**: `Response
   type <http://tools.ietf.org/html/rfc6749#section-3.1.1>`__ of the
   authentication request. **Note**: applications shouldn't need to
   specify this parameter.
-  **``RedirectUri``**: `Redirection
   URI <http://tools.ietf.org/html/rfc6749#section-3.1.2>`__ to collect
   the OAuth response. **Note**: applications shouldn't need to specify
   this parameter.

The last five parameters above are typically only used by account
plugins; applications rarely need to override them. The OAuth 2.0
response consists of the following keys:

-  **``AccessToken``**: the OAuth access token.
-  **``ExpiresIn``**: token validity time, in seconds. Normally
   applications don't need to worry about this.

OAuth 1.0a authentication
"""""""""""""""""""""""""

The OAuth 1.0a method (called ``"oauth2"`` in the account configuration)
supports different signatures, which are represented by the
``PLAINTEXT``, ``HMAC_SHA1`` and ``RSA_SHA1`` mechanisms. The
authentication parameters are the same regardless of the mechanism being
used:

-  **``ConsumerKey``**: client application ID, usually obtained when
   registering an application with the service. **This parameter is
   mandatory**.
-  **``ConsumerSecret``**: client application secret, used to sign the
   authentication requests. **This parameter is mandatory**.
-  **``ForceTokenRefresh``** (boolean): if set to ``true``, the access
   token currently stored in the account is deleted. Applications can
   specify this flag when the access token they are currently using
   turns out to be invalid. This parameter should never be specified in
   a manifest file, it's only for run-time usage.
-  **``RequestEndpoint``**: the URL where `temporary
   credentials <http://tools.ietf.org/html/rfc5849#section-2.1>`__
   should be requested. **Note**: applications shouldn't need to specify
   this parameter.
-  **``AuthorizationEndpoint``**: the URL where `the user
   authorization <http://tools.ietf.org/html/rfc5849#section-2.2>`__
   should be requested. **Note**: applications shouldn't need to specify
   this parameter.
-  **``TokenEndpoint``**: the URL where `token
   credentials <http://tools.ietf.org/html/rfc5849#section-2.3>`__ will
   be obtained. **Note**: applications shouldn't need to specify this
   parameter.
-  **``Callback``**: callback URL, to collect the OAuth response.
   **Note**: applications shouldn't need to specify this parameter.
-  **``Realm``**: optional realm for the `HTTP Authorization
   header <http://tools.ietf.org/html/rfc5849#section-3.5.1>`__.
   **Note**: applications shouldn't need to specify this parameter.

The last five parameters above are typically only used by account
plugins; applications rarely need to override them. The OAuth 1.0a
response consists of the following keys:

-  **``Token``**: the OAuth access token.
-  **``TokenSecret``**: the OAuth secret token, used for signing the
   requests.
-  **``ConsumerKey``**: the OAuth application consumer key.
-  **``ConsumerSecret``**: the OAuth application consumer secret.
-  **``SignatureMethod``**: the signature method which needs to be used.

Once the client application has received the authentication reply, it
will need to `sign the
requests <http://tools.ietf.org/html/rfc5849#section-3.1>`__ made
against the service APIs. While the ``ConsumerKey``, ``ConsumerSecret``
and ``SignatureMethod`` are typically already known to the application,
they are also provided in the authentication reply for convenience.

Username/password authentication
""""""""""""""""""""""""""""""""

For services which offer only a basic login, it's possible to
authenticate using a combination of username and password. In order to
retrieve the username and password stored in an account, applications
need to use the ``"password"`` method and ``"password"`` mechanism. No
parameters are required when authenticating, and the response will
contain:

-  **``Username``**: the user's login.
-  **``Password``**: the user's password.

Online Accounts for service developers
--------------------------------------

The list of providers and services supported by Online Accounts can be
extended by third-party developers. Adding a new provider consists of
two steps: declaring the plugin in the manifest file, and creating a QML
plugin which the Online Accounts configuration applet will load when an
account for this service needs to be created or edited.

Preparing the manifest file
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The manifest file for applications using Online Accounts has already
been described here. When an application ships an account plugin, an
additional ``plugins`` key must be present in the manifest, listing all
the account plugins installed by this package:

.. code:: qml

    {
      "services": [
        {
          "provider": "myapp.me_myapp_myservice"
        }
      ],
      "plugins": [
        {
          "provider": "myservice",
          "name": "My service",
          "icon": "myservice.svg",
          "qml": "account-plugin",
          "auth": {
            "oauth2/user_agent": {
              "Host": "www.myservice.com",
              "AuthPath": "/login"
              "RedirectUri": "https://somesite.com",
              "ClientId": "foo",
              "Scopes": ["just-login"]
            }
          }
        }
      ]
    }

Each object in the ``plugins`` key describes an account plugin. The
following keys should be present:

-  ``**provider**``: an identifier for the account provider. Note that
   once the application is installed, the account plugin will be
   registered in the system under the unique name
   ``"<shortAppId>_<provider>"``, where shortAppId is described here and
   provider is the value set on this key.
-  **``name``**: the display name of the provider. This can optionally
   be translated to the user's language, if a ``"translations"`` key is
   also present in the manifest file.
-  ``**icon**``: path to the service icon, relative to the root of the
   application package.
-  ``**qml**``: path to the directory containing the QML plugin files,
   relative to the root of the application package.
-  ``**auth**``: optional authentication parameters; for OAuth-based
   authentications it can be simpler to statically specify
   authentication parameters here, as opposed to specifying them in the
   QML plugin code. The list of parameters for the supported
   authentication methods is described in the Authentication methods
   section.

Creating the QML plugin
^^^^^^^^^^^^^^^^^^^^^^^

The QML plugin is responsible for creating the UI to be shown when an
account needs to be created or edited. The root element of the plugin is
expected to be a ``Flickable``, and it will have access to an
``account`` context variable of type
``[Account](http://developer.ubuntu.com/api/qml/current/Ubuntu.OnlineAccounts.Account/)``
which represents the account being created or edited. In order to decide
whether the desired operation is the creation or the editing of an
account, the plugin can check the ``account.accountId`` property, whose
value will be ``0`` for the creation operation, and a number greater
than zero if the account already exists in the database and just needs
to be edited. When the plugin is done creating or editing the account,
it needs to emit a ``finished()`` signal. Here's an example of a plugin
skeleton:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 0.1
    Flickable {
        id: root
        signal finished
        Loader {
            id: loader
            anchors.fill: parent
            sourceComponent: account.accountId != 0 ? existingAccountComponent : newAccountComponent
            Connections {
                target: loader.item
                onFinished: root.finished()
            }
        }
        Component {
            id: newAccountComponent
            NewAccount {} // UI for creating a new account
        }
        Component {
            id: existingAccountComponent
            EditAccount {} // UI for editing an existing account
        }
    }

The Online Accounts UI comes with a QML module providing a few elements
which can simplify the task of creating an account plugin. For instance,
it offers an ``Options`` element which can be used as the UI for editing
accounts (just replace ``EditAccount`` with ``Options`` in the example
above to take it into use), as well as QML elements for OAuth based
services. In order to use the elements from this module, import it as

::

    import Ubuntu.OnlineAccounts.Plugin 1.0

In the case of OAuth based services, the module provides a good starting
point which gives an already usable account plugin in just a couple of
lines:

::

    import Ubuntu.OnlineAccounts.Plugin 1.0
    OAuthMain {}

Some more complete examples can be found in the directory
``/usr/share/accounts/qml-plugins/``.

Debugging a QML plugin
^^^^^^^^^^^^^^^^^^^^^^

In order to see the console output from an account plugin, the following
commands need to entered in the device where the Online Accounts UI will
be running:

::

    export OAU_LOGGING_LEVEL=2
    export OAU_DAEMON_TIMEOUT=9999
    online-accounts-service

The last command won't return (it can be stopped by pressing ``Ctrl+C``
at any time, though), and while running it will be showing all the
output from the account plugin: for instance, if you add a
``console.log("Hello World")`` statement in your plugin, you'll see it
appearing in this terminal when your plugin is being run.
