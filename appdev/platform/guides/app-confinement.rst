Platform guides - app confinement
=================================

AppArmor policy for click packages
----------------------------------

`Application
Confinement <https://wiki.ubuntu.com/SecurityTeam/Specifications/ApplicationConfinement>`__
defines the implementation for confining applications in Ubuntu. This
page gets into the specifics of the permissions policy which should be
helpful for both Ubuntu system and app developers.

`AppArmor <https://wiki.ubuntu.com/AppArmor>`__ policy for click
packages is essentially based on templates and policy groups. The
developer specifies the template to use based on the type of application
being developed, and then specifies any additional accesses via policy
groups. Templates are organized by vendor (eg, ubuntu) and version (eg,
1.2).

Trust Model
~~~~~~~~~~~

Part of understanding the application confinement permissions is knowing
about the the trust model. Ubuntu's trust model is in essence:

-  **Untrusted by the OS**
   `AppStore <https://wiki.ubuntu.com/AppStore>`__ apps run in a
   restricted sandbox as defined in `Application
   Confinement <https://wiki.ubuntu.com/SecurityTeam/Specifications/ApplicationConfinement>`__.
   Reviews of apps can be shallow, but as a result
   `AppStore <https://wiki.ubuntu.com/AppStore>`__ apps are considered
   untrusted. Untrusted applications:

   -  can freely access their own data
   -  cannot access other applications' data
   -  cannot access user data
   -  cannot access privileged portions of the OS
   -  cannot access privileged APIs, such as Telephony
   -  may access sensitive APIs with user permission, such as Location
      or Online Accounts.
   -  are not typically supported by Ubuntu or Canonical

-  **Trusted by the OS**
   Software installed as part of the base OS or part of the Ubuntu
   archive are considered trusted by the OS. These applications
   typically do not run under confinement. User applications trusted by
   the OS:

   -  can typically access any resources or data available within the
      user's session
   -  have limited access to system services and data as defined by the
      OS (ie, traditional filesystem permissions, PolicyKit, etc)
   -  are supported by Ubuntu and/or Canonical and may receive security
      and high impact bug fixes `based on the software's support
      status <https://wiki.ubuntu.com/SecurityTeam/FAQ#Official%20Support>`__.

Importantly, permission to access sensitive data by
`AppStore <https://wiki.ubuntu.com/AppStore>`__ apps is typically
granted or denied at the time of access (caching the result for later
use as appropriate), so users have a context for the access being
requested. This provides better usability and less confusion overall.

Policy templates
----------------

The supported templates can be found by using the aa-easyprof command:

::

    $ aa-easyprof --policy-vendor=ubuntu --policy-version=1.2 --list-templates
    default
    ubuntu-scope-network
    ubuntu-sdk
    ubuntu-webapp
    unconfined

You can see the contents of a template with:

::

    $ aa-easyprof --policy-vendor=ubuntu --policy-version=1.2 --show-template --template=ubuntu-sdk
    #
    # Example usage for an ubuntu-sdk app 'appname'
    # $ aa-easyprof --template=ubuntu-sdk \
    #               --profile-name=appname.username \
    #               -p networking \
    #               --template-var="@{APP_PKGNAME}=appname" \
    #               --template-var="@{APP_VERSION}=0.1" \
    #               "/usr/share/appname/**"
    #
    ###ENDUSAGE###
    # vim:syntax=apparmor
    #include <tunables/global>
    ...

Usage
~~~~~

-  **ubuntu-sdk**: this is the default template if unspecified. This
   template is appropriate for Ubuntu SDK native, HTML5/PhoneGap/Cordova
   apps. default is a symlink to ubuntu-sdk
-  **ubuntu-webapp**: a specialized template for use by the Ubuntu
   Webapps platform
-  **ubuntu-scope-network**: a specialized template for use with scopes
   that require network access (added in version 1.2 of the policy).
   Scopes are typically not allowed to use the full range of policy
   groups available to other apps.
-  **unconfined**: provides no restrictions on the app. This template is
   reserved for applications that are explicitly trusted and should not
   be used by developers.

Various behaviors and APIs are automatically allowed in the Ubuntu
templates. For example, for SDK, HTML5/PhoneGap/Cordova and Webapps:

-  Normal operation within the Unity shell
-  Use of QML app Toolbars
-  Communicating with the on screen keyboard (OSK)
-  Use of the accessbility bus
-  Use of the `URL dispatcher <https://wiki.ubuntu.com/URLDispatcher>`__

   -  QML: Qt.openUrlExternally()
   -  Note: underlying libraries must be present for
      Qt.openUrlExternally() to work with the URL Dispatcher, otherwise
      access will be denied.

-  LocalStorage

   -  QML: ``qtdeclarative5-localstorage-plugin``
   -  ``import QtQuick.LocalStorage <version>``

-  U1db

   -  QML: ``qtdeclarative5-u1db1.0``
   -  ``import U1db <version>``
   -  Note: needs 'networking' policy group

-  Read access to the install directory and all its files and
   subdirectories
-  Write access based on the XDG basedir specification (see below)

Deprecated APIs:

-  HUD (prior to 14.10)

   -  QML: ``qtdeclarative5-hud1.0``
   -  ``import Ubuntu.Unity.Action <version>`` as UnityActions

Scopes access is considerably different than app access and is defined
in
`ScopesConfinement <https://wiki.ubuntu.com/SecurityTeam/Specifications/ScopesConfinement>`__.

Policy groups
-------------

The supported policy groups can be seen with:

::

    $ aa-easyprof --policy-vendor=ubuntu --policy-version=1.2 --list-policy-groups
    accounts
    audio
    calendar
    camera
    connectivity
    contacts
    content_exchange
    content_exchange_source
    debug
    history
    keep-display-on
    location
    microphone
    music_files
    music_files_read
    networking
    picture_files
    picture_files_read
    push-notification-client
    sensors
    usermetrics
    video
    video_files
    video_files_read
    webview

You can see the contents of policy groups by running this command (on a
Ubuntu 14.10 system):

::

    $ aa-easyprof --policy-vendor=ubuntu --policy-version=1.2 --show-policy-group --policy-groups=audio,networking
    # Description: Can play audio
    # Usage: common
    ...
    # Description: Can access the network
    # Usage: common

Policy groups fall into different usage categories

-  **common**: policy groups available for use by any app (not including
   scopes)
-  **reserved**: policy groups available for specialized applications.
   Use of these will result in the application being red flagged

Other categories may be added in a future version of the policy.

Usage
~~~~~

Policy groups have been tested to work with QML APIs, but apps may use
any API that complies with the defined policy. APIs listed should not be
considered exhaustive. Scopes are typically not allowed to use the full
range of policy groups.

Common
^^^^^^

-  **accounts**: Can use Online Accounts

   -  QML: ``qtdeclarative5-accounts-plugin``
   -  ``import Ubuntu.OnlineAccounts <version>``
   -  Note: Not permitted by untrusted apps with policy version 1.1 and
      lower.

-  **audio**: Can play audio

   -  QML: ``qtdeclarative5-qtmultimedia-plugin``
   -  ``import QtMultimedia <version>``
   -  Other APIs: anything that uses pulseaudio, like gstreamer. Direct
      access to hardware is not allowed

-  **camera**: Can access the camera(s)

   -  QML: ``qtdeclarative5-qtmultimedia-plugin``
   -  ``import QtMultimedia <version>``

-  **connectivity**: Can access coarse network connectivity information

   -  QML: ``qtdeclarative5-systeminfo-plugin``
   -  ``import QtSystemInfo <version>``
   -  Other APIs: Qt5 ``QHostAddress`` and ``QNetworkInterface``

-  **content\_exchange**: Can request/import data from other
   applications

   -  QML: ``qtdeclarative5-ubuntu-content0.1``
   -  i\ ``mport Ubuntu.Content <version>``

-  **content\_exchange\_source**: Can provide/export data to other
   applications

   -  QML: ``qtdeclarative5-ubuntu-content0.1``
   -  ``import Ubuntu.Content <version>``

-  **keep-display-on**: Can request keeping the screen on (available
   since 15.04, OTA 5)

   -  QML: ``qtdeclarative5-systeminfo-plugin``
   -  ``import QtSystemInfo <version>``

-  **location**: Can access Location

   -  QML: ``qtdeclarative5-qtlocation-plugin``
   -  ``import QtLocation <version>``

-  **microphone**: Can access the microphone

   -  QML: no QML for audio-only recording in Qt5
   -  Qt5 ``QAudioRecorder``
   -  Other APIs: anything that uses pulseaudio, like gstreamer. Direct
      access to hardware is not allowed

-  **networking**: Can access the network

   -  QML: Anything that can fetch web content, like
      ``qtdeclarative5-xmllistmodel-plugin``
   -  Note: also provides access to the `Ubuntu Download
      Service <https://wiki.ubuntu.com/DownloadService>`__

-  **push-notification-client**: Can use push notifications as a client

   -  Anything that uses ``com.ubuntu.Postal`` and
      ``com.ubuntu.PushNotifications`` DBus interfaces
   -  Note: should only be used alongside 'push-helper' hook and not
      with 'desktop' or 'scope' hooks

-  **sensors**: Can access the sensors

   -  QML: ``qtdeclarative5-qtsensors-plugin`` (uses
      ``qtubuntu-sensors``)
   -  ``import QtSensors <version>``

-  **usermetrics:** Can use UserMetrics to update the InfoGraphic

   -  QML: ``qtdeclarative5-usermetrics0.1``
   -  ``import UserMetrics <version>``

-  **video**: Can play video

   -  QML: ``qtdeclarative5-qtmultimedia-plugin``
   -  ``import QtMultimedia <version>``

-  **webview**: Can use the UbuntuWebview (new in 14.04)

   -  QML: ``qtdeclarative5-ubuntu-ui-extras-browser-plugin``
   -  ``import Ubuntu.Components.Extras.Browser <version>`` (version
      should be >= 0.2 for Oxide)
   -  May also use Oxide directly with ``import Oxide <version>``

Reserved
^^^^^^^^

As noted, use of these is reserved for specialized apps only. They are
listed here for completeness.

-  **calendar**: Can access the user's calendar(s)

   -  QML: ``qtdeclarative5-qtorganizer-plugin`` (uses
      ``qtorganizer5-eds``)
   -  ``import QtOrganizer <version>`` and use manager: "eds"
   -  Note: Not permitted by untrusted apps. Will move to common once
      `LP: #1227824 <https://launchpad.net/bugs/1227824>`__ is
      implemented

-  **contacts**: Can access the user's contacts

   -  QML: ``qtdeclarative5-ubuntu-contacts0.1``
   -  ``import Ubuntu.Contacts <version>``
   -  Note: Not permitted by untrusted apps. Will move to common once
      `LP: #1227821 <https://launchpad.net/bugs/1227821>`__ is
      implemented

-  **debug**: Use special debugging tools (new in 14.10)

   -  Note: This should only be used during development and is not
      intended for production packages. This policy group provides
      significantly different confinement than normal and is not
      considered secure

-  **history**: Can access the history-service (SMS and call logs)

   -  QML: ``qtdeclarative5-ubuntu-history0.1``
   -  ``import Ubuntu.History <version>``
   -  Note: Not permitted by untrusted apps.

-  **music\_files**: Can read and write to music files

   -  Note: Developers should typically use the content\_exchange policy
      group and API to access music files instead

-  **music\_files\_read**: Can read all music files

   -  Note: Developers should typically use the content\_exchange policy
      group and API to access music files instead

-  **picture\_files**: Can read and write to picture files

   -  Note: Developers should typically use the content\_exchange policy
      group and API to access picture files instead

-  **picture\_files\_read**: Can read all picture files

   -  Note: Developers should typically use the content\_exchange policy
      group and API to access picture files instead

-  **video\_files**: Can read and write to video files

   -  Note: Developers should typically use the content\_exchange policy
      group and API to access video files instead

-  **video\_files\_read**: Can read all video files

   -  Note: Developers should typically use the content\_exchange policy
      group and API to access video files instead

Removed
^^^^^^^

Previous iterations of the v1.0 policy defined the following policy
groups:

-  **bluetooth**: Can access bluetooth devices

   -  QML: ``qtdeclarative5-qtbluetooth-plugin`` (unusable with Qt5 on
      Ubuntu 13.10)

-  **friends:** Can use Friends social network service

   -  QML: ``qtdeclarative5-friends-plugin/qtdeclarative5-friends0.2``
   -  ``import Friends <version>`` (also needs accounts policy group
      (see above)
   -  Note: Not permitted by untrusted apps and obsoleted on Ubuntu
      14.10

-  **nfc**: Can access NFC (Near Field Communications) device

   -  QML: ``qtdeclarative5-qtnfc-plugin`` (unusable with Qt5 on Ubuntu
      13.10)

These may be added in a later version of the policy.

Runtime Environment
-------------------

`ApplicationConfinement <https://wiki.ubuntu.com/SecurityTeam/Specifications/ApplicationConfinement>`__
defines the application environment fully, but the following provides
what developers should need. The following environment variables are
set/adjusted for apps (`not including
scopes <https://wiki.ubuntu.com/SecurityTeam/Specifications/ScopesConfinement>`__):

-  **UBUNTU\_APPLICATION\_ISOLATION=1**: convenience variable
-  **APP\_ID**: the `application
   ID <https://wiki.ubuntu.com/AppStore/Interfaces/ApplicationId>`__ as
   used by the system. Provided for convenience
-  **XDG\_CACHE\_HOME**: set to ``$HOME/.cache``
-  **XDG\_CONFIG\_HOME**: set to ``$HOME/.config``
-  **XDG\_DATA\_HOME**: set to ``$HOME/.local/share``
-  **XDG\_RUNTIME\_DIR**: set to ``/run/user/$UID``
-  **TMPDIR**: set to application specific path under
   ``XDG_RUNTIME_DIR``. Note: standard libraries should all honor
   ``TMPDIR``
-  **PWD**: a ``chdir()`` to the installation directory is performed
   prior to launching the app
-  **PATH**: adjusted to be
   ``PATH=<installation directory>:<installation directory>/lib/<gnutriplet>/bin:$PATH``
-  **LD\_LIBRARY\_PATH**: adjusted to be
   ``LD_LIBRARY_PATH=<installation directory>/lib/<gnutriplet>:$LD_LIBRARY_PATH``
-  **QML2\_IMPORT\_PATH**: adjusted to be
   ``QML2_IMPORT_PATH=$QML2_IMPORT_PATH:<installation directory>/lib/<gnutriplet>``

**Note**: ``<gnutriplet>`` will vary depending on the target platform,
but common values are '``arm-linux-gnueabihf``' (for armhf),
'``x86_64-linux-gnu``' (for amd64) and '``i386-linux-gnu``' (for i386).
The application will have read/write access files in the standard XDG
base directories. Specifically:

-  ``XDG_CACHE_HOME/<APP_PKGNAME>``
-  ``XDG_CONFIG_HOME/<APP_PKGNAME>``
-  ``XDG_DATA_HOME/<APP_PKGNAME>``
-  ``XDG_RUNTIME_DIR/<APP_PKGNAME>``
-  ``XDG_RUNTIME_DIR/confined/<APP_PKGNAME>`` (for TMPDIR)

Where ``<APP_PKGNAME>`` is what is used in the "name" field of the click
manifest. Eg, if the click manifest has this:

::

    $ cat ./manifest.json
    {
      "name": "com.ubuntu.developer.you.yourapp",
      ...
    }

Then the app will have read/write access to these directories and any
files or subdirectories under them:

-  ``XDG_CACHE_HOME/com.ubuntu.developer.you.yourapp``
-  ``XDG_CONFIG_HOME/com.ubuntu.developer.you.yourapp``
-  ``XDG_DATA_HOME/com.ubuntu.developer.you.yourapp``
-  ``XDG_RUNTIME_DIR/com.ubuntu.developer.you.yourapp``
-  ``XDG_RUNTIME_DIR/confined/com.ubuntu.developer.you.yourapp``

QML applications will use the correct location as long as they set
applicationName in the MainView to be the same as what is in the click
manifest file for name. Eg:

::

    $ cat ./yourapp.qml
    ...
    MainView {
        ...
        // Note! applicationName must match the click manifest
        applicationName: "com.ubuntu.developer.you.yourapp"
        ...
    }

Qt applications can find the values of the XDG directories by using the
QStandardPaths API as well as ``QCoreApplication::applicationName``.
Alternatively, the ``APP_PKGNAME`` can be programmaticly found by
parsing the ``APP_ID`` (it is everything before the first underscore)
and combing it with the desired ``XDG`` dir. Example pseudocode:

::

    APP_PKGNAME = APP_ID.split('_')[0]
    my_writable_dir = os.environ['XDG_DATA_HOME'] + APP_PKGNAME

**IMPORTANT**: an app that chooses to ignore, change or otherwise not
adhere to anything in the runtime environment will be blocked by
application confinement.

App confinement and your app
----------------------------

Read our article on `security
policygroups <http://developer.ubuntu.com/en/publish/security-policy-groups/>`__
if you want to find out more about how this is relevant to your app and
how you can effectively test your app.
