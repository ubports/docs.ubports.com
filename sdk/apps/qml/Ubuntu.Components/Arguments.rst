.. _sdk_ubuntu_components_arguments:

Ubuntu.Components Arguments
===========================

The Arguments class provides a way to declare what command line parameters are expected by the application.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`arguments <sdk_ubuntu_components_arguments_arguments>` : list<Argument>
-  :ref:`defaultArgument <sdk_ubuntu_components_arguments_defaultArgument>` : Argument
-  :ref:`error <sdk_ubuntu_components_arguments_error>` : bool
-  :ref:`errorMessage <sdk_ubuntu_components_arguments_errorMessage>` : string
-  :ref:`values <sdk_ubuntu_components_arguments_values>` : Object

Methods
-------

-  void :ref:`printUsage <sdk_ubuntu_components_arguments_printUsage>`\ ()
-  void :ref:`quitWithError <sdk_ubuntu_components_arguments_quitWithError>`\ (string *errorMessage*)

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

The code above ensures that at least one argument is passed on the command line which will then be available in QML via the :ref:`defaultArgument <sdk_ubuntu_components_arguments_defaultArgument>` property. Optionally two other arguments can be passed:

*--fullscreen* that will be exposed as a boolean property: :ref:`values <sdk_ubuntu_components_arguments_values>`.fullscreen

*--volume* that will be exposed as a string property: :ref:`values <sdk_ubuntu_components_arguments_values>`.volume

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

If the application is launched with the incorrect arguments or with the *--usage* argument an help will be outputted on the command line and the application will exit:

.. code:: cpp

    Usage: application [--fullscreen] [--volume=VOLUME_LEVEL] URL
    Options:
    --fullscreen         whether or not the media will be played fullscreen
    --volume=VOLUME_LEVE level to which to set the volume
    Expects URL of the media to play.

**See also** :ref:`Argument <sdk_ubuntu_components_argument>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_arguments_arguments:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] [default] arguments : list<:ref:`Argument <sdk_ubuntu_components_argument>`>                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of command line :ref:`arguments <sdk_ubuntu_components_argument>` that are expected by the application.

See detailed description above for an example on how to use it.

.. _sdk_ubuntu_components_arguments_defaultArgument:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| defaultArgument : :ref:`Argument <sdk_ubuntu_components_argument>`                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The default argument corresponds to the values passed on the command line without any name.

For example in:

.. code:: cpp

    ./application --volume=42 http://myaddress

*http://myaddress* is the first value of the default argument.

.. _sdk_ubuntu_components_arguments_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] error : bool                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether or not the command line arguments passed to the application correspond to the expected arguments.

Also set when calling :ref:`quitWithError <sdk_ubuntu_components_arguments_quitWithError>`

.. _sdk_ubuntu_components_arguments_errorMessage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] errorMessage : string                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Error message describing how the command line arguments passed to the application failed to correspond to the expected arguments.

Also set when calling :ref:`quitWithError <sdk_ubuntu_components_arguments_quitWithError>`

.. _sdk_ubuntu_components_arguments_values:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] values : Object                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Object of which properties have the values of the command line arguments.

Method Documentation
--------------------

.. _sdk_ubuntu_components_arguments_printUsage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void printUsage()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Outputs help to the console on how to pass arguments to the application.

.. _sdk_ubuntu_components_arguments_quitWithError:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void quitWithError(string *errorMessage*)                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Exits the application outputting *errorMessage* to the console.

