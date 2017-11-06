.. _sdk_qtqml_defining_javascript_resources_in_qml:

QtQml Defining JavaScript Resources In QML
==========================================


The program logic for a QML application may be defined in JavaScript. The JavaScript code may either be defined in-line in QML documents, or separated into JavaScript files (known as ``JavaScript Resources`` in QML).

There are two different kinds of JavaScript resources which are supported in QML: code-behind implementation files, and shared (library) files. Both kinds of JavaScript resource may be `imported </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`_  by other JavaScript resources, or included in `QML modules </sdk/apps/qml/QtQml/qtqml-modules-topic/>`_ .

Most JavaScript files imported into a QML document are stateful implementations for the QML document importing them. In these cases, each instance of the QML object type defined in the document requires a separate copy of the JavaScript objects and state in order to behave correctly.

The default behavior when importing JavaScript files is to provide a unique, isolated copy for each QML component instance. If that JavaScript file does not import any resources or modules with a ``.import`` statement, its code will run in the same scope as the QML component instance and consequently can access and manipulate the objects and properties declared in that QML component. Otherwise, it will have its own unique scope, and objects and properties of the QML component should be passed to the functions of the JavaScript file as parameters if they are required.

An example of a code-behind implementation resource follows:

.. code:: qml

    // MyButton.qml
    import QtQuick 2.0
    import "my_button_impl.js" as Logic // a new instance of this JavaScript resource is loaded for each instance of Button.qml
    Rectangle {
        id: rect
        width: 200
        height: 100
        color: "red"
        MouseArea {
            id: mousearea
            anchors.fill: parent
            onClicked: Logic.onClicked(rect)
        }
    }

.. code:: qml

    // my_button_impl.js
    var clickCount = 0;   // this state is separate for each instance of MyButton
    function onClicked(btn) {
        clickCount += 1;
        if ((clickCount % 5) == 0) {
            obj.color = Qt.rgba(1,0,0,1);
        } else {
            obj.color = Qt.rgba(0,1,0,1);
        }
    }

In general, simple logic should be defined in-line in the QML file, but more complex logic should be separated into code-behind implementation resources for maintainability and readability.

Some JavaScript files act more like libraries - they provide a set of helper functions that take input and compute output, but never manipulate QML component instances directly.

As it would be wasteful for each QML component instance to have a unique copy of these libraries, the JavaScript programmer can indicate a particular file is a shared library through the use of a pragma, as shown in the following example.

.. code:: cpp

    // factorial.js
    .pragma library
    var factorialCount = 0;
    function factorial(a) {
        a = parseInt(a);
        // factorial recursion
        if (a > 0)
            return a * factorial(a - 1);
        // shared state
        factorialCount += 1;
        // recursion base-case.
        return 1;
    }
    function factorialCallCount() {
        return factorialCount;
    }

The pragma declaration must appear before any JavaScript code excluding comments.

Note that multiple QML documents can import ``"factorial.js"`` and call the factorial and factorialCallCount functions that it provides. The state of the JavaScript import is shared across the QML documents which import it, and thus the return value of the factorialCallCount function may be non-zero when called within a QML document which never calls the factorial function.

For example:

.. code:: qml

    // Calculator.qml
    import QtQuick 2.0
    import "factorial.js" as FactorialCalculator // this JavaScript resource is only ever loaded once by the engine, even if multiple instances of Calculator.qml are created
    Text {
        width: 500
        height: 100
        property int input: 17
        text: "The factorial of " + input + " is: " + FactorialCalculator.factorial(input)
    }

As they are shared, .pragma library files cannot access QML component instance objects or properties directly, although QML values can be passed as function parameters.

