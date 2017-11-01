The Arguments class provides a way to declare what command line
parameters are expected by the application.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`arguments </sdk/apps/qml/Ubuntu.Components/Arguments#arguments-prop>`__****
   : list<Argument>
-  ****`defaultArgument </sdk/apps/qml/Ubuntu.Components/Arguments#defaultArgument-prop>`__****
   : Argument
-  ****`error </sdk/apps/qml/Ubuntu.Components/Arguments#error-prop>`__****
   : bool
-  ****`errorMessage </sdk/apps/qml/Ubuntu.Components/Arguments#errorMessage-prop>`__****
   : string
-  ****`values </sdk/apps/qml/Ubuntu.Components/Arguments#values-prop>`__****
   : Object

Methods
-------

-  void
   ****`printUsage </sdk/apps/qml/Ubuntu.Components/Arguments#printUsage-method>`__****\ ()
-  void
   ****`quitWithError </sdk/apps/qml/Ubuntu.Components/Arguments#quitWithError-method>`__****\ (string
   *errorMessage*)

Detailed Description
--------------------

Example of use:

.. code:: qml

    Arguments {
        id: args
        defaultArgument.help: "Expects URL of the media to play."
        defaultArgument.valueNames: ["URL"]
        Argument {
            name: "fullscreen"
            help: "whether or not the media will be played fullscreen"
            required: false
        }
        Argument {
            name: "volume"
            help: "level to which to set the volume"
            required: false
            valueNames: ["VOLUME_LEVEL"]
        }
    }

The code above ensures that at least one argument is passed on the
command line which will then be available in QML via the
`defaultArgument </sdk/apps/qml/Ubuntu.Components/Arguments#defaultArgument-prop>`__
property. Optionally two other arguments can be passed:

*--fullscreen* that will be exposed as a boolean property:
`values </sdk/apps/qml/Ubuntu.Components/Arguments#values-prop>`__.fullscreen

*--volume* that will be exposed as a string property:
`values </sdk/apps/qml/Ubuntu.Components/Arguments#values-prop>`__.volume

.. code:: qml

    Item {
        Label {
            text: "volume = " + args.values.volume
        }
        Label {
            text: "fullscreen = " + args.values.fullscreen
        }
        Label {
            text: "URL = " + args.defaultArgument.at(0)
        }
    }

If the application is launched with the incorrect arguments or with the
*--usage* argument an help will be outputted on the command line and the
application will exit:

.. code:: cpp

    Usage: application [--fullscreen] [--volume=VOLUME_LEVEL] URL
    Options:
    --fullscreen         whether or not the media will be played fullscreen
    --volume=VOLUME_LEVE level to which to set the volume
    Expects URL of the media to play.

**See also** `Argument </sdk/apps/qml/Ubuntu.Components/Argument/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] [default] arguments :                               |
| list<`Argument </sdk/apps/qml/Ubuntu.Components/Argument/>`__>           |
+--------------------------------------------------------------------------+

List of command line
`arguments </sdk/apps/qml/Ubuntu.Components/Argument/>`__ that are
expected by the application.

See detailed description above for an example on how to use it.

| 

+--------------------------------------------------------------------------+
|        \ defaultArgument :                                               |
| `Argument </sdk/apps/qml/Ubuntu.Components/Argument/>`__                 |
+--------------------------------------------------------------------------+

The default argument corresponds to the values passed on the command
line without any name.

For example in:

.. code:: cpp

    ./application --volume=42 http://myaddress

*http://myaddress* is the first value of the default argument.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] error : bool                                        |
+--------------------------------------------------------------------------+

Whether or not the command line arguments passed to the application
correspond to the expected arguments.

Also set when calling
`quitWithError </sdk/apps/qml/Ubuntu.Components/Arguments#quitWithError-method>`__

| 

+--------------------------------------------------------------------------+
|        \ [read-only] errorMessage : string                               |
+--------------------------------------------------------------------------+

Error message describing how the command line arguments passed to the
application failed to correspond to the expected arguments.

Also set when calling
`quitWithError </sdk/apps/qml/Ubuntu.Components/Arguments#quitWithError-method>`__

| 

+--------------------------------------------------------------------------+
|        \ [read-only] values : Object                                     |
+--------------------------------------------------------------------------+

Object of which properties have the values of the command line
arguments.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void printUsage()                                               |
+--------------------------------------------------------------------------+

Outputs help to the console on how to pass arguments to the application.

| 

+--------------------------------------------------------------------------+
|        \ void quitWithError(string *errorMessage*)                       |
+--------------------------------------------------------------------------+

Exits the application outputting *errorMessage* to the console.

| 
