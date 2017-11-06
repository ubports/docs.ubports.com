.. _sdk_qtqml_javascript_expressions_in_qml_documents:

QtQml JavaScript Expressions in QML Documents
=============================================


The `JavaScript Host Environment </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/>`_  provided by QML can run valid standard JavaScript constructs such as conditional operators, arrays, variable setting, loops. In addition to the standard JavaScript properties, the `QML Global Object </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject/>`_  includes a number of helper methods that simplify building UIs and interacting with the QML environment.

The JavaScript environment provided by QML is stricter than that in a web browser. For example, in QML you cannot add to, or modify, members of the JavaScript global object. In regular JavaScript, it is possible to do this accidentally by using a variable without declaring it. In QML this will throw an exception, so all local variables must be explicitly declared. See `JavaScript Environment Restrictions </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/#javascript-environment-restrictions>`_  for a complete description of the restrictions on JavaScript code executed from QML.

Various parts of `QML documents </sdk/apps/qml/QtQml/qtqml-documents-topic/>`_  can contain JavaScript code:

#. The body of `property bindings </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/>`_ . These JavaScript expressions describe relationships between QML object `properties </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#property-attributes>`_ . When any of a property's *dependencies* change, the property is automatically updated too, according to the specified relationship.
#. The body of `Signal handlers </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#signal-attributes>`_ . These JavaScript statements are automatically evaluated whenever a QML object emits the associated signal.
#. The definition of `custom methods </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#method-attributes>`_ . JavaScript functions that are defined within the body of a QML object become methods of that object.
#. Standalone `JavaScript resource (.js) files </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`_ . These files are actually separate from QML documents, but they can be imported into QML documents. Functions and variables that are defined within the imported files can be used in property bindings, signal handlers, and custom methods.

In the following example, the Rectangle's ``color`` depends on the MouseArea's ``pressed`` property. This relationship is described using a conditional expression:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: colorbutton
        width: 200; height: 80;
        color: mousearea.pressed ? "steelblue" : "lightsteelblue"
        MouseArea {
            id: mousearea
            anchors.fill: parent
        }
    }

In fact, any JavaScript expression (no matter how complex) may be used in a property binding definition, as long as the result of the expression is a value whose type can be assigned to the property. This includes side effects. However, complex bindings and side effects are discouraged because they can reduce the performance, readability, and maintainability of the code.

There are two ways to define a property binding: the first (and most common) is, as previously shown, in a `property initialization </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#value-assignment-on-initialization>`_ . The second (and much rarer) way is to assign the property a function returned from the :ref:`Qt.binding() <sdk_qtqml_qt_binding>` function, from within imperative JavaScript code, as shown below:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: colorbutton
        width: 200; height: 80;
        color: "red"
        MouseArea {
            id: mousearea
            anchors.fill: parent
        }
        Component.onCompleted: {
            color = Qt.binding(function() { return mousearea.pressed ? "steelblue" : "lightsteelblue" });
        }
    }

See the `property bindings </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/>`_  documentation for more information about how to define property bindings, and see the documentation about `Property Assignment versus Property Binding </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/#qml-javascript-assignment>`_  for information about how bindings differ from value assignments.

QML object types can emit signals in reaction to certain events occurring. Those signals can be handled by signal handler functions, which can be defined by clients to implement custom program logic.

Suppose that a button represented by a Rectangle type has a MouseArea and a Text label. The MouseArea will emit its pressed signal when the user presses the defined interactive area, which will automatically trigger the ``onPressed`` handler, which can be defined by clients. The QML engine will execute the JavaScript expressions defined in the ``onPressed`` and ``onReleased`` handlers, as required. Typically, a signal handler is bound to JavaScript expressions to initiate other events or to simply assign property values.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: button
        width: 200; height: 80; color: "lightsteelblue"
        MouseArea {
            id: mousearea
            anchors.fill: parent
            onPressed: {
                // arbitrary JavaScript expression
                label.text = "I am Pressed!"
            }
            onReleased: {
                // arbitrary JavaScript expression
                label.text = "Click Me!"
            }
        }
        Text {
            id: label
            anchors.centerIn: parent
            text: "Press Me!"
        }
    }

Please see the `Signal and Handler Event System </sdk/apps/qml/QtQml/qtqml-syntax-signals/>`_  documentation for in-depth discussion of signals and signal handlers, and see the `QML Object Attributes </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/>`_  documentation for in-depth discussion of how to define the implementation of signal handlers in QML with JavaScript.

Program logic can also be defined in JavaScript functions. These functions can be defined inline in QML documents (as custom methods) or externally in imported JavaScript files.

Custom methods can be defined in QML documents and may be called from signal handlers, property bindings, or functions in other QML objects. Methods defined in this way are often referred to as *inline JavaScript functions* because their implementation is included in the QML object type definition (QML document), as opposed to an external JavaScript file.

An example of an inline custom method is as follows:

.. code:: qml

    import QtQuick 2.0
    Item {
        function factorial(a) {
            a = parseInt(a);
            if (a <= 0)
                return 1;
            else
                return a * factorial(a - 1);
        }
        MouseArea {
            anchors.fill: parent
            onClicked: console.log(factorial(10))
        }
    }

The factorial function will run whenever the MouseArea detects a ``clicked`` signal.

Importantly, custom methods defined inline in a QML document are exposed to other objects, and therefore inline functions on the root object in a QML component can be invoked by callers outside the component. If this is not desired, the method can be added to a non-root object or, preferably, written in an external JavaScript file.

See the `QML Object Attributes </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/>`_  documentation for in-depth discussion of how to define custom methods in QML with JavaScript code implementations.

Non-trivial program logic is best separated into external JavaScript files. These files can be imported into QML files using an ``import`` statement, in the same way that `modules </sdk/apps/qml/QtQml/qtqml-modules-topic/>`_  are imported.

For example, the ``factorial()`` method in the above example could be moved into an external file named ``factorial.js``, and accessed like this:

.. code:: qml

    import "factorial.js" as MathFunctions
    Item {
        MouseArea {
            anchors.fill: parent
            onClicked: console.log(MathFunctions.factorial(10))
        }
    }

For more information about loading external JavaScript files into QML, read the section about `Importing JavaScript Resources in QML </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`_ .

QML object types which emit signals also provide default signal handlers for their signals, as described in a previous section. Sometimes, however, a client will want to cause a signal emitted from one object to trigger a function defined in another object; and in that case, a signal connection is often preferable.

A signal emitted by a QML object may be connected to a JavaScript function by calling the signal's ``connect()`` method and passing the JavaScript function as an argument. For example, the following code connects the MouseArea ``clicked`` signal to the ``jsFunction()`` in ``script.js``:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: js                                                                                                                                           |
|                                                                                                                                                        |                                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |     // script.js                                                                                                                                       |
|     import "script.js" as MyScript                                                                                                                     |     function jsFunction() {                                                                                                                            |
|     Item {                                                                                                                                             |         console.log("Called JavaScript function!")                                                                                                     |
|         id: item                                                                                                                                       |     }                                                                                                                                                  |
|         width: 200; height: 200                                                                                                                        |                                                                                                                                                        |
|         MouseArea {                                                                                                                                    |                                                                                                                                                        |
|             id: mouseArea                                                                                                                              |                                                                                                                                                        |
|             anchors.fill: parent                                                                                                                       |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|         Component.onCompleted: {                                                                                                                       |                                                                                                                                                        |
|             mouseArea.clicked.connect(MyScript.jsFunction)                                                                                             |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``jsFunction()`` will now be called whenever MouseArea's ``clicked`` signal is emitted.

See `Connecting Signals to Methods and Signals </sdk/apps/qml/QtQml/qtqml-syntax-signals/>`_  for more information.

It is occasionally necessary to run some imperative code at application (or component instance) startup. While it is tempting to just include the startup script as *global code* in an external script file, this can have severe limitations as the QML environment may not have been fully established. For example, some objects might not have been created or some `property bindings </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/>`_  may not have been established. See `JavaScript Environment Restrictions </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/#javascript-environment-restrictions>`_  for the exact limitations of global script code.

A QML object will emit the ``Component.completed`` `attached signal </sdk/apps/qml/QtQml/qtqml-syntax-signals/#attached-signal-handlers>`_  when its instantiation is complete. JavaScript code in the corresponding ``Component.onCompleted`` handler runs after the object is instantiated. Thus, the best place to write application startup code is in the ``Component.onCompleted`` handler of the top-level object, because this object emits ``Component.completed`` when the QML environment is fully established.

For example:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        function startupFunction() {
            // ... startup code
        }
        Component.onCompleted: startupFunction();
    }

Any object in a QML file - including nested objects and nested QML component instances - can use this attached property. If there is more than one ``onCompleted()`` handler to execute at startup, they are run sequentially in an undefined order.

Likewise, every ``Component`` will emit a :ref:`destruction() <sdk_qtqml_component_destruction>` signal just before being destroyed.

