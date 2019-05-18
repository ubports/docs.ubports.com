.. _click:

Click package
=============

Every ``click`` application package must embed at least 3 files:

``manifest.json`` file
  Contains application declarations such as application name, description, author, framework sdk target, and version.

  Example ``manifest.json`` file::

    {
        "name": "myapp.author",
        "title": "App Title",
        "version": "0.1"
        "description": "Description of the app",
        "framework": "ubuntu-sdk-16.04",
        "maintainer": "xxxx <xxx@xxxx>",
        "hooks": {
            "myapp": {
                "apparmor": "apparmor.json",
                "desktop": "app.desktop"
            }
        }
    }

AppArmor profile policy file
  Contains which policy the app needs to work properly. See `Security and app isolation`_ below for more information on this file.

``.desktop`` file
  The launcher file will tell UT how to launch the app, which name and icon to display on the home screen, and some other properties.

  Example of ``app.desktop``::

    [Desktop Entry]
    Name=Application title
    Exec=qmlscene qml/Main.qml
    Icon=assets/logo.svg
    Terminal=false
    Type=Application
    X-Ubuntu-Touch=true

  Non exhaustive list of properties:

  - Name: Application title has shown in the dash
  - Exec: Path to the executable file
  - Icon: Path to the icon to display
  - Terminal: ``false`` if will not run in terminal window
  - Type: Specifies the type of the launcher file. The type can be Application, Link or Directory.
  - X-Ubuntu-Touch: ``true`` to make the app visible
  - X-Ubuntu-XMir-Enable: ``true`` if your app is built for X
  - X-Ubuntu-Supported-Orientations: ``landscape`` or ``portrait`` to force your app start in landscape mode and portrait mode respectively.

.. todo:
  link to official .desktop specifications


Security and app isolation
^^^^^^^^^^^^^^^^^^^^^^^^^^

All Ubuntu apps are confined respecting AppArmor access control mechanism (see `Application Confinement <https://wiki.ubuntu.com/SecurityTeam/Specifications/ApplicationConfinement#App_confinement_with_AppArmor>`_) , meaning they only have access to their own resources and are isolated from other apps and parts of the system. The developer must declare which policy groups are needed for the app or scope to function properly with an apparmor ``.json`` file.

Example ``apparmor.json`` file::

    {
        "policy_version": 16.04,
        "policy_groups": [
            "networking",
            "webview",
            "content_exchange"
        ]

    }

For a full list of available policy groups, see :doc:`apparmor`.
