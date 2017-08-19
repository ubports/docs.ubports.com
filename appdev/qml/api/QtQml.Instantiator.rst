QtQml.Instantiator
==================

.. raw:: html

   <p>

Dynamically creates objects More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Instantiator -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQml 2.2

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

active : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

asynchronous : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : QtQml::Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object : QtQml::QtObject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

objectAdded(int index, QtObject object)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

objectRemoved(int index, QtObject object)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Instantiator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A Instantiator can be used to control the dynamic creation of objects,
or to dynamically create multiple objects from a template.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Instantiator element will manage the objects it creates. Those
objects are parented to the Instantiator and can also be deleted by the
Instantiator if the Instantiator's properties change. Objects can also
be destroyed dynamically through other means, and the Instantiator will
not recreate them unless the properties of the Instantiator change.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Instantiator -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="active-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

active : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When active is true, and the delegate component is ready, the
Instantiator will create objects according to the model. When active is
false, no objects will be created and any previously created objects
will be destroyed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="asynchronous-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

asynchronous : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When asynchronous is true the Instantiator will attempt to create
objects asynchronously. This means that objects may not be available
immediately, even if active is set to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can use the objectAdded signal to respond to items being created.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The number of objects the Instantiator is currently managing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] delegate : QtQml::Component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The component used to create all objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that an extra variable, index, will be available inside instances
of the delegate. This variable refers to the index of the instance
inside the Instantiator, and can be used to obtain the object through
the itemAt method of the Instantiator.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is changed, all instances using the old delegate will
be destroyed and new instances will be created using the new delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property can be set to any of the supported data models:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

A number that indicates the number of delegates to be created by the
repeater

.. raw:: html

   </li>

.. raw:: html

   <li>

A model (e.g. a ListModel item, or a QAbstractItemModel subclass)

.. raw:: html

   </li>

.. raw:: html

   <li>

A string list

.. raw:: html

   </li>

.. raw:: html

   <li>

An object list

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The type of model affects the properties that are exposed to the
delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is 1, which creates a single delegate instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Data Models.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="object-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

object : QtQml::QtObject

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This is a reference to the first created object, intended as a
convenience for the case where only one object has been created.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@object -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$objectAdded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="objectAdded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

objectAdded(int index, QtObject object)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when an object is added to the Instantiator. The
index parameter holds the index which the object has been given, and the
object parameter holds the QtObject that has been added.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onObjectAdded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@objectAdded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="objectRemoved-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

objectRemoved(int index, QtObject object)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when an object is removed from the Instantiator.
The index parameter holds the index which the object had been given, and
the object parameter holds the QtObject that has been removed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Do not keep a reference to object if it was created by this
Instantiator, as in these cases it will be deleted shortly after the
signal is handled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onObjectRemoved.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@objectRemoved -->


