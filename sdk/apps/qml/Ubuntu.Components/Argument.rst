The Argument class specifies what type a given command line parameter
should be.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`help </sdk/apps/qml/Ubuntu.Components/Argument#help-prop>`__****
   : string
-  ****`name </sdk/apps/qml/Ubuntu.Components/Argument#name-prop>`__****
   : string
-  ****`required </sdk/apps/qml/Ubuntu.Components/Argument#required-prop>`__****
   : bool
-  ****`valueNames </sdk/apps/qml/Ubuntu.Components/Argument#valueNames-prop>`__****
   : list<string>

Methods
-------

-  string
   ****`at </sdk/apps/qml/Ubuntu.Components/Argument#at-method>`__****\ (int
   *i*)

Detailed Description
--------------------

**Important**: Argument is not used on its own but must be a child of
`Arguments </sdk/apps/qml/Ubuntu.Components/Arguments/>`__.

An Argument is defined by its
`name </sdk/apps/qml/Ubuntu.Components/Argument#name-prop>`__ and
`valueNames </sdk/apps/qml/Ubuntu.Components/Argument#valueNames-prop>`__
properties which correspond to a command line parameter (e.g.
*--target*) and the values passed to it (e.g.
*--target=http://myaddress*).

For example, the following code allows to retrieve parameters on the
command line of the form *--target=URL*:

.. code:: qml

    Argument {
        name: "target"
        help: "address of the resource to retrieve"
        required: true
        valueNames: ["URL"]
    }

To retrieve a value passed to the parameter knowing its position, use
the `at </sdk/apps/qml/Ubuntu.Components/Argument#at-method>`__ method.

**See also** `Arguments </sdk/apps/qml/Ubuntu.Components/Arguments/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ help : string                                                   |
+--------------------------------------------------------------------------+

Help displayed when launching the application with --usage.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

Name identifying the command line argument.

For example 'target' corrsesponds to the *'--target'* command line
argument.

| 

+--------------------------------------------------------------------------+
|        \ required : bool                                                 |
+--------------------------------------------------------------------------+

Whether or not this argument needs to be passed on the command line when
launching the application.

| 

+--------------------------------------------------------------------------+
|        \ valueNames : list<string>                                       |
+--------------------------------------------------------------------------+

Names given to the values of this argument. They are used when
displaying the expected command line arguments of the application.

Typically all capital letters (e.g. URL).

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ string at(int *i*)                                              |
+--------------------------------------------------------------------------+

Returns the *i*\ th value of the argument. Values are counted from 0.

| 
