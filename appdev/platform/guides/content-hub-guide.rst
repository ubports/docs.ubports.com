Platform guides - content hub guide
===================================

Ubuntu (for Phone and Tablets) has a new app security model. Apps are
confined. That is, they cannot read or use the file system outside of
their own limited area. But apps naturally do need to access common
content like Pictures and Music that originates from other apps, so how
do they get this common content? And how does an app make its content
available to any other app that might be interested?

Ubuntu now provides a Trusted Helper service called the Content Hub. Its
job is to provide an API and a run time service to enable apps to share
content with and import content from other apps.

The Content Hub API is not yet final, so expect a few refinements and
changes to come along. But you can get started now, so let’s dive in.

A few key points
----------------

-  **Content is owned**: Every piece of content is owned by one and only
   one app. There is no single app that owns, for example, all the
   pictures.
-  **Each content type has a default app**: For example, right now, the
   default app for pictures is the Gallery app.
-  **Apps register as a source for a content type**: This allows the
   system to display a list of app sources that the user can choose
   from. Or, an importing app can name a source app.
-  **Apps register as a destination for a content type**: The system can
   then display the apps that can receive this kind of content. For
   example, the user may want to save a picture from the web browser.
   The system may present a list of apps that the user picks from.
-  **Content transfer object**: A transfer has a source app, a
   destination app, the piece of content, and a state. The actual
   transfer is a state transition: When a source app is ready to export
   content, it sets the transfer state to Charged, which starts the
   transfer.
-  **ContentStore provides persistence**: By default, an imported piece
   of content disappears when the app ends. You can save the content so
   that it does not disappear with the Content Hub’s ContentStore API.
-  Source apps usually provide a selector GUI: This GUI allows the user
   to select the content they want.Then, focus returns appropriately to
   the importing app.

Let’s look at couple scenarios to get a clearer picture of how the
concepts fit together.

An app that imports a picture from the default source
-----------------------------------------------------

Let’s say you want an app that can import pictures from the default
picture source. Pretty simple:

-  The app tells Content Hub it wants to use the default source for
   pictures (currently Gallery, but our app does not care).
-  Content hub gives the importing app a Transfer object that connects
   it to the source app. Content Hub runs the source app’s (Gallery)
   callback.
-  Gallery’s callback displays its picture selection GUI, which allows
   the user to select a picture, at which point the Transfer object is
   told it is ready, and Gallery is dismissed.
-  Our receiving app detects the Transfer object is ready (from its
   state) and is able to import the picture.
-  Our app does something sensible with the picture, for example
   displaying it, and maybe using a ContentStore to save it
   persistently.

So Content hub is the broker between two apps. The Transfer object is
given to the exporter app and the importer app. When the exporter app
sets a Transfer object property to indicate the content is ready, the
Content Hub transfers the content (whether one piece or multiple) to the
importer app.

An app that exports its pictures
--------------------------------

Another possibility is an app that shares its pictures (or other
content) to other apps.

-  This app registers with Content Hub as a source for pictures.
-  It implements the callback that Content Hub calls when another app
   wants to import.
-  The callback displays a GUI that allows the user to select content
   (it could skip this and just hard code a piece of content for
   export).
-  The call back sets a the state of the Transfer object indicating the
   content is identified and ready to go.
-  The importing app detects the Transfer state and imports the picture
   (or other content).

App registration as source or destination
-----------------------------------------

As noted, apps that export content (source apps) need to register as
sources for the content type. Also, apps can register to potentially
receive specific content types. This registration tells Content Hub
about the app. How is this registration done?

It’s done with Click package hooks. These are declared in a Click
package’s manifest.json file. Specially, the json object has a “Hooks”
item that carries the needed info. It may look like like this:

.. code:: json

    {
    [...]
        "hooks": {
            "APPONE": {
                "apparmor": "APPONE.json",
                "content-hub": "APPONE.json",
                "desktop": "APPNAME.desktop"
            },
            "APPTWO": {
                "apparmor": "APPTWO.json",
                "content-hub": "APPTWO.json",
                "desktop": "APPTWO.desktop"
            }
        },
    [...]
    }

This shows a couple things:

-  A click package can contain more than one app. That’s why the “hooks”
   item, in this example, has two children: ``APPNONE`` and ``APPTWO``.
   (Many click packages contain only a single app.)
-  The developer adds the “content-hub” hook. (Click packages often have
   only an “apparmor” and a “desktop” hook.
-  Each app that wants to declare itself as a source or destination sets
   the content-hub hook to equal the filename of the json file (in the
   app source tree) that contains the required information.

Let’s look at one of these, ``APPONE.json``:

.. code:: json

    {
        "source": [
            "pictures"
        ]
    }

With this, when the click package is installed, Content Hub learns that
``APPONE`` is registered as a source (an exporter) of pictures.

AppArmor profiles for content exchange
--------------------------------------

Yes, apps are confined by AppArmor. This means they can only access a
specified set of file system locations. Content Hub file system
locations can only be accessed by an app that runs with specific
AppArmor profiles.

Using the same example, let’s take a look at the apparmor hooks for both
apps, each of which declares a filename in the app source tree:

.. code:: json

    {
    [...]
        "hooks": {
            "APPONE": {
                "apparmor": "APPONE.json",
                "content-hub": "APPONE.json",
                "desktop": "APPNAME.desktop"
            }
      "APPTWO": {
                "apparmor": "APPTWO.json",
                "content-hub": "APPTWO.json",
                "desktop": "APPTWO.desktop"
            }
        },
    [...]
    }

Looking at ``APPONE.json``, we may see something like this:

.. code:: json

    {
        "policy_groups": [
            "networking",
            "content_exchange"
        ],
        "policy_version": 1
    }

The content\_exchange policy group is needed for all apps that export
(source apps) and that import (destination apps).

Exporter apps also require the ``content_exchange_source`` policy group,
for example:

.. code:: json

    {
        "policy_groups": [
            "networking",
            "content_exchange_source",
            "content_exchange"
        ],
        "policy_version": 1
    }

Next steps
----------

That’s a high level view of the Content Hub. For detailed API reference
docs on Content Hub, be sure to check out the API documentation on
developer.ubuntu.com. Check both the `QML <../../apps/qml/api.md>`__ and
the `HTML5 <../../apps/html-5/api.md>`__ sections of the website as APIs
are available for both. If you are interested in security policy groups
and how app confinement works, `here's our
article <app-confinement.md>`__ about that.
