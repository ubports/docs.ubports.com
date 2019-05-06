Importing from Content Hub and URLdispatcher
============================================

.. figure:: /_static/images/appdev/guides/importingCHdispatcherimages/01ichu.png
        :align: center

In the previous guide we have seen a little bit about how Content Hub works. In this guide we will see how ``URLdispatcher`` works and how to handle imported data from the Content Hub.

Handle data from the Content Hub
--------------------------------

.. figure:: /_static/images/appdev/guides/importingCHdispatcherimages/02ichu.png
        :align: center

        OpenStore app from open-store.io

One of the easiest ways of testing an app, is to send a test click to yourself on Telegram, and opening that click file with the OpenStore through the Content Hub:

.. image:: /_static/images/appdev/guides/importingCHdispatcherimages/03ichu.png
        :align: center

If we tap on the OpenStore app, it will be opened and it will ask if we want to install the click file. Let’s take a look into `the Main.qml code of the app <https://github.com/UbuntuOpenStore/openstore-app/blob/master/openstore/Main.qml#L85>`_ to see how it is done:

.. code-block:: qml

        Connections {
                target: ContentHub

                onImportRequested: {
                    var filePath = String(transfer.items[0].url).replace('file://', '')
                    print("Should import file", filePath)
                    var fileName = filePath.split("/").pop();
                    var popup = PopupUtils.open(installQuestion, root, {fileName: fileName});
                    popup.accepted.connect(function() {
                        contentHubInstallInProgress = true;
                        PlatformIntegration.clickInstaller.installPackage(filePath)
                    })
                }
        }

Do you see that Connections element that targets the ContentHub? When it receives the signal onImportRequested, it will take the url of the data sent from the Content Hub (``transfer.items[0].url`` is the url of the first data sent) and open a ``PopUp`` element to let the user install the click.

What about the URLdispatcher?
-----------------------------

The URL dispatcher is a piece of software, similar to the Content Hub, that makes our life easier trying to choose the correct app for a certain protocol. For example: We probably want to open the web browser when tapping on an http protocol. If we tap on a map link it is handy to open it with uNav or to open a twitter link in the Twitter app! How does that work?

The ``URLdispatcher`` selects which app (according to their ``manifest.json``) will open a certain link.

.. image:: /_static/images/appdev/guides/importingCHdispatcherimages/05ichu.png
        :align: center

Let’s see how our navigation app looks inside. uNav’s manifest shows special hooks for the ``URLdispatcher`` in its `manifest.json code <https://bazaar.launchpad.net/~unav-devs/unav/trunk/view/head:/manifest.json#L9>`_:

.. code-block:: javascript

      1  [
      2     {
      3         "protocol": "http",
      4         "domain-suffix": "map.unav.me"
      5     },
      6     {
      7         "protocol": "http",
      8         "domain-suffix": "unav-go.github.io"
      9     },
      10    {
      11        "protocol": "geo"
      12    },
      13    {
      14        "protocol": "http",
      15        "domain-suffix": "www.openstreetmap.org"
      16    },
      17    {
      18        "protocol": "http",
      19        "domain-suffix": "www.opencyclemap.org"
      20    },
      21    {
      22        "protocol": "https",
      23        "domain-suffix": "maps.google.com"
      24    }
      25 ]

This means that a link that looks like http://map.unav.me/xxxxx,xxxxx will be opened in uNav. And that’s defined in lines 2 and 3, where it looks for protocol http followed by map.unav.me.

Also, a URI formatted geo:xxx,xxx should open in uNav, as it’s defined in line 11.

And how do we manage the received URL?
--------------------------------------

After the ``URLdispatcher`` sends the link to the correspondent app, we need to handle that URL or URI in the targeted app. Let’s see how to do that:

In the main qml file, we need to add some code to know what to do with the dispatched URL. First add an `Arguments element <https://gitlab.com/ubports-linphone/linphone-simple/blob/master/qml/Main.qml#L189>`_ that holds the URL, as is done, for example, in the `Linphone app <https://open-store.io/app/linphone.cibersheep>`_. Also, we add `connection to the URI Handler <https://gitlab.com/ubports-linphone/linphone-simple/blob/master/qml/Main.qml#L200>`_ with a Connection element with ``UriHandler`` as a target.

.. code:: qml

        Arguments {
            id: args
        
            Argument {
                name: 'url'
                help: i18n.tr('Incoming Call from URL')
                required: false
                valueNames: ['URL']
            }
        }

        Connections {
            target: UriHandler
        
            onOpened: {
                console.log('Open from UriHandler')
        
                if (uris.length > 0) {
                    console.log('Incoming call from UriHandler ' + uris[0]);
                    showIncomingCall(uris[0]);
                }
            }
        }

This code will manage a URI in the form ``linphone://sip:xxx@xxx.xx`` when the app is opened. But what do we need to do to handle this link when the app is closed?

We need to add a little bit `extra code <https://gitlab.com/ubports-linphone/linphone-simple/blob/master/qml/Main.qml#L69>`_ that will cover two cases:
1) We receive one URL
2) We receive more than one URL

.. code:: qml

        Component.onCompleted: {
            //Check if opened the app because we have an incoming call
            if (args.values.url && args.values.url.match(/^linphone/)) {

                console.log("Incoming Call on Closed App")
                showIncomingCall(args.values.url);

            } else if (Qt.application.arguments && Qt.application.arguments.length > 0) {

                for (var i = 0; i < Qt.application.arguments.length; i++) {
                    if (Qt.application.arguments[i].match(/^linphone/)) {
                        showIncomingCall(Qt.application.arguments[i]);
                    }
                }
            }

            //Start timer for Registering Status
            checkStatus.start()
        }

What happens if more than one app has the same URL type defined?
----------------------------------------------------------------

A very good question. What happens if we tap on a Twitter link? How is such a URL handled by the ``URLdispatcher`` as protocol ``http`` or the protocol ``http://twitter``?

What happens if two apps have the same defined protocol?

Now it’s time to do some tests and share the results in the next guide.

