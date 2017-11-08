.. _sdk_ubuntu_components_argument:

Ubuntu.Components Argument
==========================

The Argument class specifies what type a given command line parameter should be.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`help <sdk_ubuntu_components_argument_help>` : string
-  :ref:`name <sdk_ubuntu_components_argument_name>` : string
-  :ref:`required <sdk_ubuntu_components_argument_required>` : bool
-  :ref:`valueNames <sdk_ubuntu_components_argument_valueNames>` : list<string>

Methods
-------

-  string :ref:`at <sdk_ubuntu_components_argument_at>`\ (int *i*)

Detailed Description
--------------------

**Important**: Argument is not used on its own but must be a child of :ref:`Arguments <sdk_ubuntu_components_arguments>`.

An Argument is defined by its :ref:`name <sdk_ubuntu_components_argument_name>` and :ref:`valueNames <sdk_ubuntu_components_argument_valueNames>` properties which correspond to a command line parameter (e.g. *--target*) and the values passed to it (e.g. *--target=http://myaddress*).

For example, the following code allows to retrieve parameters on the command line of the form *--target=URL*:

.. code:: qml

    Argument {
        name: "target"
        help: "address of the resource to retrieve"
        required: true
        valueNames: ["URL"]
    }

To retrieve a value passed to the parameter knowing its position, use the :ref:`at <sdk_ubuntu_components_argument_at>` method.

**See also** :ref:`Arguments <sdk_ubuntu_components_arguments>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_argument_help:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| help : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Help displayed when launching the application with --usage.

.. _sdk_ubuntu_components_argument_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Name identifying the command line argument.

For example 'target' corrsesponds to the *'--target'* command line argument.

.. _sdk_ubuntu_components_argument_required:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| required : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether or not this argument needs to be passed on the command line when launching the application.

.. _sdk_ubuntu_components_argument_valueNames:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| valueNames : list<string>                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Names given to the values of this argument. They are used when displaying the expected command line arguments of the application.

Typically all capital letters (e.g. URL).

Method Documentation
--------------------

.. _sdk_ubuntu_components_argument_at:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string at(int *i*)                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the *i*\ th value of the argument. Values are counted from 0.

