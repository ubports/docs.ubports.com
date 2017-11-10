.. _sdk_qtqml_dynamic_qml_object_creation_from_javascript:

QtQml Dynamic QML Object Creation from JavaScript
=================================================


QML supports the dynamic creation of objects from within JavaScript. This is useful to delay instantiation of objects until necessary, thereby improving application startup time. It also allows visual objects to be dynamically created and added to the scene in reaction to user input or other events.

See the `Dynamic Scene example </sdk/apps/qml/QtQml/dynamicscene/>`_  for a demonstration of the concepts discussed on this page.

There are two ways to create objects dynamically from JavaScript. You can either call :ref:`Qt.createComponent() <sdk_qtqml_qt_createComponent>` to dynamically create a :ref:`Component <sdk_qtqml_component>` object, or use :ref:`Qt.createQmlObject() <sdk_qtqml_qt_createQmlObject>` to create an object from a string of QML. Creating a component is better if you have an existing component defined in a QML document and you want to dynamically create instances of that component. Otherwise, creating an object from a string of QML is useful when the object QML itself is generated at runtime.

To dynamically load a component defined in a QML file, call the :ref:`Qt.createComponent() <sdk_qtqml_qt_createComponent>` function in the :ref:`Qt object <sdk_qtqml_qt_qmlglobalqtobject>`. This function takes the URL of the QML file as its only argument and creates a :ref:`Component <sdk_qtqml_component>` object from this URL.

Once you have a :ref:`Component <sdk_qtqml_component>`, you can call its :ref:`createObject() <sdk_qtqml_component_createObject>` method to create an instance of the component. This function can take one or two arguments:

-  The first is the parent for the new object. The parent can be a graphical object (i.e. of the Item type) or non-graphical object (i.e. of the :ref:`QtObject <sdk_qtqml_qtobject>` or C++ QObject type). Only graphical objects with graphical parent objects will be rendered to the Qt Quick visual canvas. If you wish to set the parent later you can safely pass ``null`` to this function.
-  The second is optional and is a map of property-value pairs that define initial any property values for the object. Property values specified by this argument are applied to the object before its creation is finalized, avoiding binding errors that may occur if particular properties must be initialized to enable other property bindings. Additionally, there are small performance benefits when compared to defining property values and bindings after the object is created.

Here is an example. First there is ``Sprite.qml``, which defines a simple QML component:

.. code:: qml

    import QtQuick 2.0
    Rectangle { width: 80; height: 50; color: "red" }

Our main application file, ``main.qml``, imports a ``componentCreation.js`` JavaScript file that will create ``Sprite`` objects:

.. code:: qml

    import QtQuick 2.0
    import "componentCreation.js" as MyScript
    Rectangle {
        id: appWindow
        width: 300; height: 300
        Component.onCompleted: MyScript.createSpriteObjects();
    }

Here is ``componentCreation.js``. Notice it checks whether the component :ref:`status <sdk_qtqml_component_status>` is ``Component.Ready`` before calling :ref:`createObject() <sdk_qtqml_component_createObject>` in case the QML file is loaded over a network and thus is not ready immediately.

.. code:: js

    var component;
    var sprite;
    function createSpriteObjects() {
        component = Qt.createComponent("Sprite.qml");
        if (component.status == Component.Ready)
            finishCreation();
        else
            component.statusChanged.connect(finishCreation);
    }
    function finishCreation() {
        if (component.status == Component.Ready) {
            sprite = component.createObject(appWindow, {"x": 100, "y": 100});
            if (sprite == null) {
                // Error Handling
                console.log("Error creating object");
            }
        } else if (component.status == Component.Error) {
            // Error Handling
            console.log("Error loading component:", component.errorString());
        }
    }

If you are certain the QML file to be loaded is a local file, you could omit the ``finishCreation()`` function and call :ref:`createObject() <sdk_qtqml_component_createObject>` immediately:

.. code:: js

    function createSpriteObjects() {
        component = Qt.createComponent("Sprite.qml");
        sprite = component.createObject(appWindow, {"x": 100, "y": 100});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    }

Notice in both instances, :ref:`createObject() <sdk_qtqml_component_createObject>` is called with ``appWindow`` passed as the parent argument, since the dynamically created object is a visual (Qt Quick) object. The created object will become a child of the ``appWindow`` object in ``main.qml``, and appear in the scene.

When using files with relative paths, the path should be relative to the file where :ref:`Qt.createComponent() <sdk_qtqml_qt_createComponent>` is executed.

To connect signals to (or receive signals from) dynamically created objects, use the signal ``connect()`` method. See `Connecting Signals to Methods and Signals </sdk/apps/qml/QtQml/qtqml-syntax-signals/#connecting-signals-to-methods-and-signals>`_  for more information.

It is also possible to instantiate components without blocking via the :ref:`incubateObject() <sdk_qtqml_component_incubateObject>` function.

If the QML is not defined until runtime, you can create a QML object from a string of QML using the :ref:`Qt.createQmlObject() <sdk_qtqml_qt_createQmlObject>` function, as in the following example:

.. code:: qml

    var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
        parentItem, "dynamicSnippet1");

The first argument is the string of QML to create. Just like in a new file, you will need to import any types you wish to use. The second argument is the parent object for the new object, and the parent argument semantics which apply to components are similarly applicable for ``createQmlObject()``. The third argument is the file path to associate with the new object; this is used for error reporting.

If the string of QML imports files using relative paths, the path should be relative to the file in which the parent object (the second argument to the method) is defined.

When managing dynamically created objects, you must ensure the creation context outlives the created object. Otherwise, if the creation context is destroyed first, the bindings in the dynamic object will no longer work.

The actual creation context depends on how an object is created:

-  If Qt.createComponent() is used, the creation context is the QQmlContext in which this method is called
-  If :ref:`Qt.createQmlObject() <sdk_qtqml_qt_createQmlObject>` is called, the creation context is the context of the parent object passed to this method
-  If a ``Component{}`` object is defined and :ref:`createObject() <sdk_qtqml_component_createObject>` or :ref:`incubateObject() <sdk_qtqml_component_incubateObject>` is called on that object, the creation context is the context in which the ``Component`` is defined

Also, note that while dynamically created objects may be used the same as other objects, they do not have an id in QML.

In many user interfaces, it is sufficient to set a visual object's opacity to 0 or to move the visual object off the screen instead of deleting it. If you have lots of dynamically created objects, however, you may receive a worthwhile performance benefit if unused objects are deleted.

Note that you should never manually delete objects that were dynamically created by convenience QML object factories (such as Loader and Repeater). Also, you should avoid deleting objects that you did not dynamically create yourself.

Items can be deleted using the ``destroy()`` method. This method has an optional argument (which defaults to 0) that specifies the approximate delay in milliseconds before the object is to be destroyed.

Here is an example. The ``application.qml`` creates five instances of the ``SelfDestroyingRect.qml`` component. Each instance runs a NumberAnimation, and when the animation has finished, calls ``destroy()`` on its root object to destroy itself:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.qml``                                                                                                                                    | ``SelfDestroyingRect.qml``                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |     import QtQuick 2.0                                                                                                                                 |
|     Item {                                                                                                                                             |     Rectangle {                                                                                                                                        |
|         id: container                                                                                                                                  |         id: rect                                                                                                                                       |
|         width: 500; height: 100                                                                                                                        |         width: 80; height: 80                                                                                                                          |
|         Component.onCompleted: {                                                                                                                       |         color: "red"                                                                                                                                   |
|             var component = Qt.createComponent("SelfDestroyingRect.qml");                                                                              |         NumberAnimation on opacity {                                                                                                                   |
|             for (var i=0; i<5; i++) {                                                                                                                  |             to: 0                                                                                                                                      |
|                 var object = component.createObject(container);                                                                                        |             duration: 1000                                                                                                                             |
|                 object.x = (object.width + 10) * i;                                                                                                    |             onRunningChanged: {                                                                                                                        |
|             }                                                                                                                                          |                 if (!running) {                                                                                                                        |
|         }                                                                                                                                              |                     console.log("Destroying...")                                                                                                       |
|     }                                                                                                                                                  |                     rect.destroy();                                                                                                                    |
|                                                                                                                                                        |                 }                                                                                                                                      |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Alternatively, the ``application.qml`` could have destroyed the created object by calling ``object.destroy()``.

Note that it is safe to call destroy() on an object within that object. Objects are not destroyed the instant destroy() is called, but are cleaned up sometime between the end of that script block and the next frame (unless you specified a non-zero delay).

Note also that if a ``SelfDestroyingRect`` instance was created statically like this:

.. code:: qml

    Item {
        SelfDestroyingRect {
            // ...
        }
    }

This would result in an error, since objects can only be dynamically destroyed if they were dynamically created.

Objects created with :ref:`Qt.createQmlObject() <sdk_qtqml_qt_createQmlObject>` can similarly be destroyed using ``destroy()``:

.. code:: qml

    var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
        parentItem, "dynamicSnippet1");
    newObject.destroy(1000);

