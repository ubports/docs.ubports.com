.. _sdk_qtqml_instantiator:

QtQml Instantiator
==================

Dynamically creates objects

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  :ref:`active <sdk_qtqml_instantiator_active>` : bool
-  :ref:`asynchronous <sdk_qtqml_instantiator_asynchronous>` : bool
-  :ref:`count <sdk_qtqml_instantiator_count>` : int
-  :ref:`delegate <sdk_qtqml_instantiator_delegate>` : QtQml::Component
-  :ref:`model <sdk_qtqml_instantiator_model>` : variant
-  :ref:`object <sdk_qtqml_instantiator_object>` : QtQml::QtObject

Signals
-------

-  :ref:`objectAdded <sdk_qtqml_instantiator_objectAdded>`\ (int *index*, QtObject *object*)
-  :ref:`objectRemoved <sdk_qtqml_instantiator_objectRemoved>`\ (int *index*, QtObject *object*)

Detailed Description
--------------------

A Instantiator can be used to control the dynamic creation of objects, or to dynamically create multiple objects from a template.

The Instantiator element will manage the objects it creates. Those objects are parented to the Instantiator and can also be deleted by the Instantiator if the Instantiator's properties change. Objects can also be destroyed dynamically through other means, and the Instantiator will not recreate them unless the properties of the Instantiator change.

Property Documentation
----------------------

.. _sdk_qtqml_instantiator_active:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| active : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When active is true, and the delegate component is ready, the Instantiator will create objects according to the model. When active is false, no objects will be created and any previously created objects will be destroyed.

Default is true.

.. _sdk_qtqml_instantiator_asynchronous:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| asynchronous : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When asynchronous is true the Instantiator will attempt to create objects asynchronously. This means that objects may not be available immediately, even if active is set to true.

You can use the :ref:`objectAdded <sdk_qtqml_instantiator_objectAdded>` signal to respond to items being created.

Default is false.

.. _sdk_qtqml_instantiator_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The number of objects the Instantiator is currently managing.

.. _sdk_qtqml_instantiator_delegate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] delegate : :ref:`QtQml::Component <sdk_qtqml_component>`                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The component used to create all objects.

Note that an extra variable, index, will be available inside instances of the delegate. This variable refers to the index of the instance inside the Instantiator, and can be used to obtain the object through the itemAt method of the Instantiator.

If this property is changed, all instances using the old delegate will be destroyed and new instances will be created using the new delegate.

.. _sdk_qtqml_instantiator_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : variant                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property can be set to any of the supported data models:

-  A number that indicates the number of delegates to be created by the repeater
-  A model (e.g. a :ref:`ListModel <sdk_qtqml_listmodel>` item, or a QAbstractItemModel subclass)
-  A string list
-  An object list

The type of model affects the properties that are exposed to the :ref:`delegate <sdk_qtqml_instantiator_delegate>`.

Default value is 1, which creates a single delegate instance.

**See also** Data Models.

.. _sdk_qtqml_instantiator_object:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object : :ref:`QtQml::QtObject <sdk_qtqml_qtobject>`                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This is a reference to the first created object, intended as a convenience for the case where only one object has been created.

Signal Documentation
--------------------

.. _sdk_qtqml_instantiator_objectAdded:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| objectAdded(int *index*, :ref:`QtObject <sdk_qtqml_qtobject>` *object*)                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an object is added to the Instantiator. The *index* parameter holds the index which the object has been given, and the *object* parameter holds the :ref:`QtObject <sdk_qtqml_qtobject>` that has been added.

The corresponding handler is ``onObjectAdded``.

.. _sdk_qtqml_instantiator_objectRemoved:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| objectRemoved(int *index*, :ref:`QtObject <sdk_qtqml_qtobject>` *object*)                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an object is removed from the Instantiator. The *index* parameter holds the index which the object had been given, and the *object* parameter holds the :ref:`QtObject <sdk_qtqml_qtobject>` that has been removed.

Do not keep a reference to *object* if it was created by this Instantiator, as in these cases it will be deleted shortly after the signal is handled.

The corresponding handler is ``onObjectRemoved``.

