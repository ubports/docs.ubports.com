Dynamically creates objects

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  ****`active </sdk/apps/qml/QtQml/Instantiator#active-prop>`__**** :
   bool
-  ****`asynchronous </sdk/apps/qml/QtQml/Instantiator#asynchronous-prop>`__****
   : bool
-  ****`count </sdk/apps/qml/QtQml/Instantiator#count-prop>`__**** : int
-  ****`delegate </sdk/apps/qml/QtQml/Instantiator#delegate-prop>`__****
   : QtQml::Component
-  ****`model </sdk/apps/qml/QtQml/Instantiator#model-prop>`__**** :
   variant
-  ****`object </sdk/apps/qml/QtQml/Instantiator#object-prop>`__**** :
   QtQml::QtObject

Signals
-------

-  ****`objectAdded </sdk/apps/qml/QtQml/Instantiator#objectAdded-signal>`__****\ (int
   *index*, QtObject *object*)
-  ****`objectRemoved </sdk/apps/qml/QtQml/Instantiator#objectRemoved-signal>`__****\ (int
   *index*, QtObject *object*)

Detailed Description
--------------------

A Instantiator can be used to control the dynamic creation of objects,
or to dynamically create multiple objects from a template.

The Instantiator element will manage the objects it creates. Those
objects are parented to the Instantiator and can also be deleted by the
Instantiator if the Instantiator's properties change. Objects can also
be destroyed dynamically through other means, and the Instantiator will
not recreate them unless the properties of the Instantiator change.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ active : bool                                                   |
+--------------------------------------------------------------------------+

When active is true, and the delegate component is ready, the
Instantiator will create objects according to the model. When active is
false, no objects will be created and any previously created objects
will be destroyed.

Default is true.

| 

+--------------------------------------------------------------------------+
|        \ asynchronous : bool                                             |
+--------------------------------------------------------------------------+

When asynchronous is true the Instantiator will attempt to create
objects asynchronously. This means that objects may not be available
immediately, even if active is set to true.

You can use the
`objectAdded </sdk/apps/qml/QtQml/Instantiator#objectAdded-signal>`__
signal to respond to items being created.

Default is false.

| 

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

The number of objects the Instantiator is currently managing.

| 

+--------------------------------------------------------------------------+
|        \ [default] delegate :                                            |
| `QtQml::Component </sdk/apps/qml/QtQml/Component/>`__                    |
+--------------------------------------------------------------------------+

The component used to create all objects.

Note that an extra variable, index, will be available inside instances
of the delegate. This variable refers to the index of the instance
inside the Instantiator, and can be used to obtain the object through
the itemAt method of the Instantiator.

If this property is changed, all instances using the old delegate will
be destroyed and new instances will be created using the new delegate.

| 

+--------------------------------------------------------------------------+
|        \ model : variant                                                 |
+--------------------------------------------------------------------------+

This property can be set to any of the supported data models:

-  A number that indicates the number of delegates to be created by the
   repeater
-  A model (e.g. a `ListModel </sdk/apps/qml/QtQml/ListModel/>`__ item,
   or a QAbstractItemModel subclass)
-  A string list
-  An object list

The type of model affects the properties that are exposed to the
`delegate </sdk/apps/qml/QtQml/Instantiator#delegate-prop>`__.

Default value is 1, which creates a single delegate instance.

**See also** Data Models.

| 

+--------------------------------------------------------------------------+
|        \ object : `QtQml::QtObject </sdk/apps/qml/QtQml/QtObject/>`__    |
+--------------------------------------------------------------------------+

This is a reference to the first created object, intended as a
convenience for the case where only one object has been created.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ objectAdded(int *index*,                                        |
| `QtObject </sdk/apps/qml/QtQml/QtObject/>`__ *object*)                   |
+--------------------------------------------------------------------------+

This signal is emitted when an object is added to the Instantiator. The
*index* parameter holds the index which the object has been given, and
the *object* parameter holds the
`QtObject </sdk/apps/qml/QtQml/QtObject/>`__ that has been added.

The corresponding handler is ``onObjectAdded``.

| 

+--------------------------------------------------------------------------+
|        \ objectRemoved(int *index*,                                      |
| `QtObject </sdk/apps/qml/QtQml/QtObject/>`__ *object*)                   |
+--------------------------------------------------------------------------+

This signal is emitted when an object is removed from the Instantiator.
The *index* parameter holds the index which the object had been given,
and the *object* parameter holds the
`QtObject </sdk/apps/qml/QtQml/QtObject/>`__ that has been removed.

Do not keep a reference to *object* if it was created by this
Instantiator, as in these cases it will be deleted shortly after the
signal is handled.

The corresponding handler is ``onObjectRemoved``.

| 
