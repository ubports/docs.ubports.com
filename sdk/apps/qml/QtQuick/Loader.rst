.. _sdk_qtquick_loader:

QtQuick Loader
==============

Allows dynamic loading of a subtree from a URL or Component

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`active <sdk_qtquick_loader_active>` : bool
-  :ref:`asynchronous <sdk_qtquick_loader_asynchronous>` : bool
-  :ref:`item <sdk_qtquick_loader_item>` : object
-  :ref:`progress <sdk_qtquick_loader_progress>` : real
-  :ref:`source <sdk_qtquick_loader_source>` : url
-  :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>` : Component
-  :ref:`status <sdk_qtquick_loader_status>` : enumeration

Signals
-------

-  :ref:`loaded <sdk_qtquick_loader_loaded>`\ ()

Methods
-------

-  object :ref:`setSource <sdk_qtquick_loader_setSource>`\ (url *source*, object *properties*)

Detailed Description
--------------------

Loader is used to dynamically load QML components.

Loader can load a QML file (using the :ref:`source <sdk_qtquick_loader_source>` property) or a Component object (using the :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>` property). It is useful for delaying the creation of a component until it is required: for example, when a component should be created on demand, or when a component should not be created unnecessarily for performance reasons.

Here is a Loader that loads "Page1.qml" as a component when the :ref:`MouseArea <sdk_qtquick_mousearea>` is clicked:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 200; height: 200
        Loader { id: pageLoader }
        MouseArea {
            anchors.fill: parent
            onClicked: pageLoader.source = "Page1.qml"
        }
    }

The loaded object can be accessed using the :ref:`item <sdk_qtquick_loader_item>` property.

If the :ref:`source <sdk_qtquick_loader_source>` or :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>` changes, any previously instantiated items are destroyed. Setting :ref:`source <sdk_qtquick_loader_source>` to an empty string or setting :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>` to ``undefined`` destroys the currently loaded object, freeing resources and leaving the Loader empty.

Loader sizing behavior
~~~~~~~~~~~~~~~~~~~~~~

If the source component is not an Item type, Loader does not apply any special sizing rules. When used to load visual types, Loader applies the following sizing rules:

-  If an explicit size is not specified for the Loader, the Loader is automatically resized to the size of the loaded item once the component is loaded.
-  If the size of the Loader is specified explicitly by setting the width, height or by anchoring, the loaded item will be resized to the size of the Loader.

In both scenarios the size of the item and the Loader are identical. This ensures that anchoring to the Loader is equivalent to anchoring to the loaded item.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| sizeloader.qml                                                                                                                                         | sizeitem.qml                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |     import QtQuick 2.0                                                                                                                                 |
|     Item {                                                                                                                                             |     Item {                                                                                                                                             |
|         width: 200; height: 200                                                                                                                        |         width: 200; height: 200                                                                                                                        |
|         Loader {                                                                                                                                       |         Loader {                                                                                                                                       |
|             // Explicitly set the size of the Loader to the parent item's size                                                                         |             // position the Loader in the center of the parent                                                                                         |
|             anchors.fill: parent                                                                                                                       |             anchors.centerIn: parent                                                                                                                   |
|             sourceComponent: rect                                                                                                                      |             sourceComponent: rect                                                                                                                      |
|         }                                                                                                                                              |         }                                                                                                                                              |
|         Component {                                                                                                                                    |         Component {                                                                                                                                    |
|             id: rect                                                                                                                                   |             id: rect                                                                                                                                   |
|             Rectangle {                                                                                                                                |             Rectangle {                                                                                                                                |
|                 width: 50                                                                                                                              |                 width: 50                                                                                                                              |
|                 height: 50                                                                                                                             |                 height: 50                                                                                                                             |
|                 color: "red"                                                                                                                           |                 color: "red"                                                                                                                           |
|             }                                                                                                                                          |             }                                                                                                                                          |
|         }                                                                                                                                              |         }                                                                                                                                              |
|     }                                                                                                                                                  |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| The red rectangle will be sized to the size of the root item.                                                                                          | The red rectangle will be 50x50, centered in the root item.                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Receiving signals from loaded objects
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Any signals emitted from the loaded object can be received using the Connections type. For example, the following ``application.qml`` loads ``MyItem.qml``, and is able to receive the ``message`` signal from the loaded item through a Connections object:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| application.qml                                                                                                                                        | MyItem.qml                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |     import QtQuick 2.0                                                                                                                                 |
|     Item {                                                                                                                                             |     Rectangle {                                                                                                                                        |
|         width: 100; height: 100                                                                                                                        |        id: myItem                                                                                                                                      |
|         Loader {                                                                                                                                       |        signal message(string msg)                                                                                                                      |
|            id: myLoader                                                                                                                                |        width: 100; height: 100                                                                                                                         |
|            source: "MyItem.qml"                                                                                                                        |        MouseArea {                                                                                                                                     |
|         }                                                                                                                                              |            anchors.fill: parent                                                                                                                        |
|         Connections {                                                                                                                                  |            onClicked: myItem.message("clicked!")                                                                                                       |
|             target: myLoader.item                                                                                                                      |        }                                                                                                                                               |
|             onMessage: console.log(msg)                                                                                                                |     }                                                                                                                                                  |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Alternatively, since ``MyItem.qml`` is loaded within the scope of the Loader, it could also directly call any function defined in the Loader or its parent :ref:`Item <sdk_qtquick_item>`.

Focus and key events
~~~~~~~~~~~~~~~~~~~~

Loader is a focus scope. Its :ref:`focus <sdk_qtquick_item_focus>` property must be set to ``true`` for any of its children to get the *active focus*. (See `Keyboard Focus in Qt Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_  for more details.) Any key events received in the loaded item should likely also be :ref:`accepted <sdk_qtquick_keyevent_accepted>` so they are not propagated to the Loader.

For example, the following ``application.qml`` loads ``KeyReader.qml`` when the :ref:`MouseArea <sdk_qtquick_mousearea>` is clicked. Notice the :ref:`focus <sdk_qtquick_item_focus>` property is set to ``true`` for the Loader as well as the :ref:`Item <sdk_qtquick_item>` in the dynamically loaded object:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| application.qml                                                                                                                                        | KeyReader.qml                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |     import QtQuick 2.0                                                                                                                                 |
|     Rectangle {                                                                                                                                        |     Item {                                                                                                                                             |
|         width: 200; height: 200                                                                                                                        |         Item {                                                                                                                                         |
|         Loader {                                                                                                                                       |             focus: true                                                                                                                                |
|             id: loader                                                                                                                                 |             Keys.onPressed: {                                                                                                                          |
|             focus: true                                                                                                                                |                 console.log("Loaded item captured:", event.text);                                                                                      |
|         }                                                                                                                                              |                 event.accepted = true;                                                                                                                 |
|         MouseArea {                                                                                                                                    |             }                                                                                                                                          |
|             anchors.fill: parent                                                                                                                       |         }                                                                                                                                              |
|             onClicked: loader.source = "KeyReader.qml"                                                                                                 |     }                                                                                                                                                  |
|         }                                                                                                                                              |                                                                                                                                                        |
|         Keys.onPressed: {                                                                                                                              |                                                                                                                                                        |
|             console.log("Captured:", event.text);                                                                                                      |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Once ``KeyReader.qml`` is loaded, it accepts key events and sets ``event.accepted`` to ``true`` so that the event is not propagated to the parent :ref:`Rectangle <sdk_qtquick_rectangle>`.

Since ``QtQuick 2.0``, Loader can also load non-visual components.

Using a Loader within a view delegate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In some cases you may wish to use a Loader within a view delegate to improve delegate loading performance. This works well in most cases, but there is one important issue to be aware of related to the creation context of a Component.

In the following example, the ``index`` context property inserted by the :ref:`ListView <sdk_qtquick_listview>` into ``delegateComponent``'s context will be inaccessible to Text, as the Loader will use the creation context of ``myComponent`` as the parent context when instantiating it, and ``index`` does not refer to anything within that context chain.

.. code:: qml

    Item {
        width: 400
        height: 400
        Component {
            id: myComponent
            Text { text: index }    //fails
        }
        ListView {
            anchors.fill: parent
            model: 5
            delegate: Component {
                id: delegateComponent
                Loader {
                    sourceComponent: myComponent
                }
            }
        }
    }

In this situation we can either move the component inline,

.. code:: qml

            delegate: Component {
                Loader {
                    sourceComponent: Component {
                        Text { text: index }    //okay
                    }
                }
            }

into a separate file,

.. code:: qml

            delegate: Component {
                Loader {
                    source: "MyComponent.qml" //okay
                }
            }

or explicitly set the required information as a property of the Loader (this works because the Loader sets itself as the context object for the component it is loading).

.. code:: qml

    Item {
        width: 400
        height: 400
        Component {
            id: myComponent
            Text { text: modelIndex }    //okay
        }
        ListView {
            anchors.fill: parent
            model: 5
            delegate: Component {
                Loader {
                    property int modelIndex: index
                    sourceComponent: myComponent
                }
            }
        }
    }

**See also** Dynamic Object Creation.

Property Documentation
----------------------

.. _sdk_qtquick_loader_active:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| active : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is ``true`` if the Loader is currently active. The default value for this property is ``true``.

If the Loader is inactive, changing the :ref:`source <sdk_qtquick_loader_source>` or :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>` will not cause the item to be instantiated until the Loader is made active.

Setting the value to inactive will cause any :ref:`item <sdk_qtquick_loader_item>` loaded by the loader to be released, but will not affect the :ref:`source <sdk_qtquick_loader_source>` or :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>`.

The :ref:`status <sdk_qtquick_loader_status>` of an inactive loader is always ``Null``.

**See also** :ref:`source <sdk_qtquick_loader_source>` and :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>`.

.. _sdk_qtquick_loader_asynchronous:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| asynchronous : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the component will be instantiated asynchronously.

When used in conjunction with the :ref:`source <sdk_qtquick_loader_source>` property, loading and compilation will also be performed in a background thread.

Loading asynchronously creates the objects declared by the component across multiple frames, and reduces the likelihood of glitches in animation. When loading asynchronously the status will change to Loader.Loading. Once the entire component has been created, the :ref:`item <sdk_qtquick_loader_item>` will be available and the status will change to Loader.Ready.

To avoid seeing the items loading progressively set ``visible`` appropriately, e.g.

.. code:: cpp

    Loader {
        source: "mycomponent.qml"
        asynchronous: true
        visible: status == Loader.Ready
    }

Note that this property affects object instantiation only; it is unrelated to loading a component asynchronously via a network.

.. _sdk_qtquick_loader_item:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| item : object                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the top-level object that is currently loaded.

Since ``QtQuick 2.0``, Loader can load any object type.

.. _sdk_qtquick_loader_progress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| progress : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the progress of loading QML data from the network, from 0.0 (nothing loaded) to 1.0 (finished). Most QML files are quite small, so this value will rapidly change from 0 to 1.

**See also** :ref:`status <sdk_qtquick_loader_status>`.

.. _sdk_qtquick_loader_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the URL of the QML component to instantiate.

Since ``QtQuick 2.0``, Loader is able to load any type of object; it is not restricted to Item types.

To unload the currently loaded object, set this property to an empty string, or set :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>` to ``undefined``. Setting ``source`` to a new URL will also cause the item created by the previous URL to be unloaded.

**See also** :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>`, :ref:`status <sdk_qtquick_loader_status>`, and :ref:`progress <sdk_qtquick_loader_progress>`.

.. _sdk_qtquick_loader_sourceComponent:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceComponent : Component                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the Component to instantiate.

.. code:: qml

    Item {
        Component {
            id: redSquare
            Rectangle { color: "red"; width: 10; height: 10 }
        }
        Loader { sourceComponent: redSquare }
        Loader { sourceComponent: redSquare; x: 10 }
    }

To unload the currently loaded object, set this property to ``undefined``.

Since ``QtQuick 2.0``, Loader is able to load any type of object; it is not restricted to Item types.

**See also** :ref:`source <sdk_qtquick_loader_source>` and :ref:`progress <sdk_qtquick_loader_progress>`.

.. _sdk_qtquick_loader_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of QML loading. It can be one of:

-  Loader.Null - the loader is inactive or no QML source has been set
-  Loader.Ready - the QML source has been loaded
-  Loader.Loading - the QML source is currently being loaded
-  Loader.Error - an error occurred while loading the QML source

Use this status to provide an update or respond to the status change in some way. For example, you could:

-  Trigger a state change:

   .. code:: qml

       State { name: 'loaded'; when: loader.status == Loader.Ready }

-  Implement an ``onStatusChanged`` signal handler:

   .. code:: qml

       Loader {
           id: loader
           onStatusChanged: if (loader.status == Loader.Ready) console.log('Loaded')
       }

-  Bind to the status value:

   .. code:: qml

       Text { text: loader.status == Loader.Ready ? 'Loaded' : 'Not loaded' }

Note that if the source is a local file, the status will initially be Ready (or Error). While there will be no onStatusChanged signal in that case, the onLoaded will still be invoked.

**See also** :ref:`progress <sdk_qtquick_loader_progress>`.

Signal Documentation
--------------------

.. _sdk_qtquick_loader_loaded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loaded()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the :ref:`status <sdk_qtquick_loader_status>` becomes ``Loader.Ready``, or on successful initial load.

The corresponding handler is ``onLoaded``.

Method Documentation
--------------------

.. _sdk_qtquick_loader_setSource:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object setSource(url *source*, object *properties*)                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Creates an object instance of the given *source* component that will have the given *properties*. The *properties* argument is optional. The instance will be accessible via the :ref:`item <sdk_qtquick_loader_item>` property once loading and instantiation is complete.

If the :ref:`active <sdk_qtquick_loader_active>` property is ``false`` at the time when this function is called, the given *source* component will not be loaded but the *source* and initial *properties* will be cached. When the loader is made :ref:`active <sdk_qtquick_loader_active>`, an instance of the *source* component will be created with the initial *properties* set.

Setting the initial property values of an instance of a component in this manner will **not** trigger any associated :ref:`Behavior <sdk_qtquick_behavior>`\ s.

Note that the cached *properties* will be cleared if the :ref:`source <sdk_qtquick_loader_source>` or :ref:`sourceComponent <sdk_qtquick_loader_sourceComponent>` is changed after calling this function but prior to setting the loader :ref:`active <sdk_qtquick_loader_active>`.

Example:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     // ExampleComponent.qml                                                                                                                            |     // example.qml                                                                                                                                     |
|     import QtQuick 2.0                                                                                                                                 |     import QtQuick 2.0                                                                                                                                 |
|     Rectangle {                                                                                                                                        |     Item {                                                                                                                                             |
|         id: rect                                                                                                                                       |         Loader {                                                                                                                                       |
|         color: "red"                                                                                                                                   |             id: squareLoader                                                                                                                           |
|         width: 10                                                                                                                                      |             onLoaded: console.log(squareLoader.item.width); // prints [10], not [30]                                                                   |
|         height: 10                                                                                                                                     |         }                                                                                                                                              |
|         Behavior on color {                                                                                                                            |         Component.onCompleted: {                                                                                                                       |
|             NumberAnimation {                                                                                                                          |             squareLoader.setSource("ExampleComponent.qml", { "color": "blue" });                                                                       |
|                 target: rect                                                                                                                           |             // will trigger the onLoaded code when complete.                                                                                           |
|                 property: "width"                                                                                                                      |         }                                                                                                                                              |
|                 to: (rect.width + 20)                                                                                                                  |     }                                                                                                                                                  |
|                 duration: 0                                                                                                                            |                                                                                                                                                        |
|             }                                                                                                                                          |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`source <sdk_qtquick_loader_source>` and :ref:`active <sdk_qtquick_loader_active>`.

