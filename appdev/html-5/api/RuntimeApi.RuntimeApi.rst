RuntimeApi.RuntimeApi
=====================

.. raw:: html

   <p>

The RuntimeApi object

.. raw:: html

   </p>

RuntimeApi( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>  var api = external.getUnityObject('1.0');
   api.RuntimeApi.getApplication(function(application) {
   console.log('Application name: ' + application.getApplicationName());
   });</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   <li>

Properties

.. raw:: html

   </li>

.. raw:: html

   </ul>

getApplication( callback )

.. raw:: html

   <p>

Creates an Application object.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function (Application)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

String getApplicationName( )

.. raw:: html

   <p>

Retrieves the application name.

.. raw:: html

   </p>

Returns: <String>

.. raw:: html

   <p>

application name

.. raw:: html

   </p>

String getApplicationWritableLocation( )

.. raw:: html

   <p>

Retrieves the fileystem location where the application is allowed to
write its data in.

.. raw:: html

   </p>

Returns: <String>

.. raw:: html

   <p>

application writable location path

.. raw:: html

   </p>

String getInputMethodName( )

.. raw:: html

   <p>

Retrieves the current input method's name. The name varies depending on
the platform e.g. maliit can be part of the name for a maliit based
Virtual Keyboard (possibly mangled with e.g. 'phablet'), when a keyboard
is there the name can be empty, ...

.. raw:: html

   </p>

Returns: <String>

.. raw:: html

   <p>

current input method name

.. raw:: html

   </p>

Object getPlatformInfos( )

.. raw:: html

   <p>

Retrieves current platform information.

.. raw:: html

   </p>

Returns: <Object>

.. raw:: html

   <p>

platform information as a dictionary with the following keys:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

name: the platform name

.. raw:: html

   </li>

.. raw:: html

   </ul>

ScreenOrientation getScreenOrientation( )

.. raw:: html

   <p>

Retrieves the current screen orientation.

.. raw:: html

   </p>

Returns: <ScreenOrientation>

.. raw:: html

   <p>

current screen orientation.

.. raw:: html

   </p>

onAboutToQuit( callback )

.. raw:: html

   <p>

Sets up a callback that is to be called when the application is about to
quit.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

Function to be called when the application is about to quit.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

onActivated( callback )

.. raw:: html

   <p>

Sets up a callback that is to be called when the application has been
activated (from background).

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

Function to be called when the application has been activated.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

onApplicationNameChanged( callback )

.. raw:: html

   <p>

Sets up a callback that is to be called when the application's name
changed.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   <p>

Function to be called when the application's name has changed.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

onDeactivated( callback )

.. raw:: html

   <p>

Sets up a callback that is to be called when the application has been
deactivated (background).

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

Function to be called when the application has been deactivated.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

onInputMethodVisibilityChanged( callback )

.. raw:: html

   <p>

Sets up a callback that is to be called when the On Screen Keyboard
visibility has changed.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(Bool)>

.. raw:: html

   <p>

Function to be called when the On Screen Keyboard visibility has changed
(received the visibility as an arg).

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

onScreenOrientationChanged( callback )

.. raw:: html

   <p>

Sets up a callback that is to be called when the application's screen
has changed its orientation.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(ScreenOrientation)>

.. raw:: html

   <p>

Function to be called when the application's screen orientation has
changed.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setupUriHandler( callback )

.. raw:: html

   <p>

Sets up a URI handler. The application can be sent URIs to open.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   <p>

Function to be called with the current list of uris to open

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

ScreenOrientation <Object> (static)

.. raw:: html

   <p>

Enumeration of the available types of ScreenOrientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <pre class="code prettyprint"><code>Landscape: The application screen is in landscape mode
   InvertedLandscape: The application screen is in inverted landscape mode
   Portrait: The application screen is in portrait mode
   InvertedPortrait: The application screen is in inverted portrait mode
   Unknown: The application screen is in an unknown mode</code></pre>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>var api = external.getUnityObject('1.0');
   var orientation = api.RuntimeApi.ScreenOrientation;
   // use orientation.Landscape or orientation.Portrait</code></pre>
