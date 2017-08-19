Register your url dispatcher
============================

The URL dispatcher is a service which allows applications to launch
other applications and to open specific URLs with specific applications.

-  The most common case is to open ``https://foo.com/*`` links in a
   specific foo app. If you have the Youtube webapp installed, you will
   notice that Youtube links (from the Video scope, for example) are
   opened with it.
-  Another use case would be to open an application or scope from
   another application.

In this tutorial, you are going to learn how to setup the URL dispatcher
for your app or webapp and retrieve arguments from QML. It assumes you
already have a working app or that you are starting developing one,
using a QML template provided by the SDK.

**Note**: that the sample app we are going to use is called
"urldispatcher- tutorial", you will need to adapt the snippets with your
application name.

Basic setup
-----------

Registering your app as a URL opener, is a matter of adding a JSON
formatted file to your app metadata.

To do so, start by editing the ``hooks`` part of your ``manifest.json``
file.

.. code:: json

    {
        (...)
        "hooks": {
            "urldispatcher-tutorial": {
                "apparmor": "urldispatcher-tutorial.apparmor",
                "desktop": "urldispatcher-tutorial.desktop"
            }
        },
        (...)
    }

It needs a new ``urls`` key, pointing to a ``.dispatcher`` file you are
going to create at the root of your SDK project.

.. code:: json

    {
        (...)
        "hooks": {
            "urldispatcher-tutorial": {
                "apparmor": "urldispatcher-tutorial.apparmor",
                "desktop": "urldispatcher-tutorial.desktop",
                "urls": "urldispatcher-tutorial.dispatcher"
            }
        },
        (...)
    }

This new JSON formatted file needs to define a series of protocols and
domains, more specifically: an array of ``protocol`` and optional
``domain- suffix`` dictionaries:

In this example, let's make it a default opener for all
``http(s)://design.ubuntu.com/*`` links. Create an
``<appname>.dispatcher`` file containing the following code:

.. code:: qml

    [
            {
                    "protocol": "http",
                    "domain-suffix": "design.ubuntu.com"
            },
            {
                    "protocol": "https",
                    "domain-suffix": "design.ubuntu.com"
            }
    ]

That's it, you app will be used as an opener when design.ubuntu.com
links are activated by the user.

Custom protocols
----------------

This simple syntax means you can create your own protocols and have your
app opened when they are present in activated links.

For example:

.. code:: qml

    [
        {
            "protocol": "url-dispatcher",
        }
    ]

Opening URLs and apps
---------------------

Opening other apps and URLs in general from QML can be done with
``Qt.openUrlExternally()``.

For example, you can create a button to open the camera app this way:

.. code:: qml

    Button {
        id: openCameraApp
        text: i18n.tr("Camera")
        onClicked: {
            Qt.openUrlExternally("appid://com.ubuntu.camera/camera/current-user-version");
        }
    }

As you can see, it's using the ``appid`` protocol, followed by:

-  the package name
-  the app name
-  and the version number (replacable with a ``current-user-version``
   wildcard).

You can also use the ``application`` protocol with a desktop file name:

``application:///com.ubuntu.camera_camera_3.0.0.572.desktop``

Handling command-line arguments
-------------------------------

An ``Arguments`` component can be used to retrieve command-line launch
arguments.

You can also use it to specify usage and help text.

Here is an example of what a music player could use:

.. code:: qml

    Arguments {
        id: args
        defaultArgument.help: i18n.tr("Expects URL of the media to play.")
        defaultArgument.valueNames: ["URL"]
        Argument {
            name: "playlist"
            help: i18n.tr("Path of playlist to play")
            required: false
            valueNames: ["PATH"]
        }
    }

Which will generate the following terminal help output:

::

        Usage: <app> --playlist=PATH URL
        Options:
          --playlist=PATH      Path of playlist to play
        Expects URL of the media to play.

Arguments values can be retrieved by simply using the component id.

-  The default argument value is retrieved with:
   ``args.defaultArgument.at(<position of the argument>)``
-  Named arguments values are retrieved with:
   ``args.values.<argument name>``

Known issues
------------

When multiple applications register for the same protocol and domain,
the last one installed takes precedence over the others. A new UI to let
the user pick which application to use is currently being worked on. You
can follow its progress on `bug report
#1378350 <https://pad.lv/1378350>`__

If you have questions about this tutorial or corner cases usage of the
URL Dispatcher, make sure to ask your question on `AskUbuntu with the
application-development
tag <http://askubuntu.com/questions/tagged/application-development>`__.
