.. _sdk_runtimeapi_runtimeapi:

RuntimeApi RuntimeApi
=====================


The RuntimeApi object

**RuntimeApi**\ ()

.. code:: html

      var api = external.getUnityObject('1.0');
          api.RuntimeApi.getApplication(function(application) {
            console.log('Application name: ' + application.getApplicationName());
          });

-  Methods
-  Properties

**getApplication**\ (``callback``)
Creates an Application object.

**Parameters:**

- ``callback`` **<Function (Application)>**

String **getApplicationName**\ ()
Retrieves the application name.

**Returns:** <String>
application name

String **getApplicationWritableLocation**\ ()
Retrieves the fileystem location where the application is allowed to write its data in.

**Returns:** <String>
application writable location path

String **getInputMethodName**\ ()
Retrieves the current input method's name. The name varies depending on the platform e.g. maliit can be part of the name for a maliit based Virtual Keyboard (possibly mangled with e.g. 'phablet'), when a keyboard is there the name can be empty, ...

**Returns:** <String>
current input method name

Object **getPlatformInfos**\ ()
Retrieves current platform information.

**Returns:** <Object>
platform information as a dictionary with the following keys:

-  name: the platform name

ScreenOrientation **getScreenOrientation**\ ()
Retrieves the current screen orientation.

**Returns:** <ScreenOrientation>
current screen orientation.

**onAboutToQuit**\ (``callback``)
Sets up a callback that is to be called when the application is about to quit.

**Parameters:**

- ``callback`` **<Function()>**

   Function to be called when the application is about to quit.

**onActivated**\ (``callback``)
Sets up a callback that is to be called when the application has been activated (from background).

**Parameters:**

- ``callback`` **<Function()>**

   Function to be called when the application has been activated.

**onApplicationNameChanged**\ (``callback``)
Sets up a callback that is to be called when the application's name changed.

**Parameters:**

- ``callback`` **<Function(String)>**

   Function to be called when the application's name has changed.

**onDeactivated**\ (``callback``)
Sets up a callback that is to be called when the application has been deactivated (background).

**Parameters:**

- ``callback`` **<Function()>**

   Function to be called when the application has been deactivated.

**onInputMethodVisibilityChanged**\ (``callback``)
Sets up a callback that is to be called when the On Screen Keyboard visibility has changed.

**Parameters:**

- ``callback`` **<Function(Bool)>**

   Function to be called when the On Screen Keyboard visibility has changed (received the visibility as an arg).

**onScreenOrientationChanged**\ (``callback``)
Sets up a callback that is to be called when the application's screen has changed its orientation.

**Parameters:**

- ``callback`` **<Function(ScreenOrientation)>**

   Function to be called when the application's screen orientation has changed.

**setupUriHandler**\ (``callback``)
Sets up a URI handler. The application can be sent URIs to open.

**Parameters:**

- ``callback`` **<Function(String)>**

   Function to be called with the current list of uris to open

``ScreenOrientation`` <**Object**> *(static)*
Enumeration of the available types of ScreenOrientation.

Values:

.. code:: html

    Landscape: The application screen is in landscape mode

                    InvertedLandscape: The application screen is in inverted landscape mode

                    Portrait: The application screen is in portrait mode

                    InvertedPortrait: The application screen is in inverted portrait mode

                    Unknown: The application screen is in an unknown mode

.. code:: html

    var api = external.getUnityObject('1.0');
                    var orientation = api.RuntimeApi.ScreenOrientation;
                    // use orientation.Landscape or orientation.Portrait

