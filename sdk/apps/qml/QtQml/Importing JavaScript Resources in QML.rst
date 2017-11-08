.. _sdk_qtqml_importing_javascript_resources_in_qml:

QtQml Importing JavaScript Resources in QML
===========================================


JavaScript resources may be imported by QML documents and other JavaScript resources. JavaScript resources may be imported via either relative or absolute URLs. In the case of a relative URL, the location is resolved relative to the location of the QML document or JavaScript Resource that contains the import. If the script file is not accessible, an error will occur. If the JavaScript needs to be fetched from a network resource, the component's status is set to "Loading" until the script has been downloaded.

JavaScript resources may also import QML modules and other JavaScript resources. The syntax of an import statement within a JavaScript resource differs slightly from an import statement within a QML document, which is documented thoroughly below.

A QML document may import a JavaScript resource with the following syntax:

.. code:: cpp

    import "ResourceURL" as Qualifier

For example:

.. code:: cpp

    import "jsfile.js" as Logic

Imported JavaScript resources are always qualified using the "as" keyword. The qualifier for JavaScript resources must be unique, so there is always a one-to-one mapping between qualifiers and JavaScript files. (This also means qualifiers cannot be named the same as built-in JavaScript objects such as ``Date`` and ``Math``).

The functions defined in an imported JavaScript file are available to objects defined in the importing QML document, via the ``"Qualifier.functionName(params)"`` syntax. Functions in JavaScript resources may take parameters whose type can be any of the supported QML basic types or object types, as well as normal JavaScript types. The normal `data type conversion rules </sdk/apps/qml/QtQml/qtqml-cppintegration-data/>`_  will apply to parameters and return values when calling such functions from QML.

In ``QtQuick 2.0``, support has been added to allow JavaScript resources to import other JavaScript resources and also QML type namespaces using a variation of the standard QML import syntax (where all of the previously described rules and qualifications apply).

Due to the ability of a JavaScript resource to import another script or QML module in this fashion in ``QtQuick 2.0``, some extra semantics are defined:

-  a script with imports will not inherit imports from the QML document which imported it (so accessing Component.errorString will fail, for example)
-  a script without imports will inherit imports from the QML document which imported it (so accessing Component.errorString will succeed, for example)
-  a shared script (i.e., defined as .pragma library) does not inherit imports from any QML document even if it imports no other scripts or modules

The first semantic is conceptually correct, given that a particular script might be imported by any number of QML files. The second semantic is retained for the purposes of backwards-compatibility. The third semantic remains unchanged from the current semantics for shared scripts, but is clarified here in respect to the newly possible case (where the script imports other scripts or modules).

A JavaScript resource may import another in the following fashion:

.. code:: cpp

    .import "filename.js" as Qualifier

For example:

.. code:: cpp

    .import "factorial.js" as MathFunctions

A JavaScript resource may import a QML module in the following fashion:

.. code:: cpp

    .import TypeNamespace MajorVersion.MinorVersion as Qualifier

For example:

.. code:: cpp

    .import Qt.test 1.0 as JsQtTest

In particular, this may be useful in order to access functionality provided via a singleton type; see qmlRegisterSingletonType() for more information.

**Note:** The .import syntax doesn't work for scripts used in the :ref:`WorkerScript <sdk_qtqml_workerscript>`

When a JavaScript file is imported, it must be imported with a qualifier. The functions in that file are then accessible from the importing script via the qualifier (that is, as ``Qualifier.functionName(params)``). Sometimes it is desirable to have the functions made available in the importing context without needing to qualify them, and in this circumstance the :ref:`Qt.include() <sdk_qtqml_qt_include>` function may be used to include one JavaScript file from another. This copies all functions from the other file into the current file's namespace, but ignores all pragmas and imports defined in that file.

For example, the QML code below left calls ``showCalculations()`` in ``script.js``, which in turn can call ``factorial()`` in ``factorial.js``, as it has included ``factorial.js`` using :ref:`Qt.include() <sdk_qtqml_qt_include>`.

.. code:: qml

    import QtQuick 2.0
    import "script.js" as MyScript
    Item {
        width: 100; height: 100
        MouseArea {
            anchors.fill: parent
            onClicked: {
                MyScript.showCalculations(10)
                console.log("Call factorial() from QML:",
                    MyScript.factorial(10))
            }
        }
    }

.. code:: js

    // script.js
    Qt.include("factorial.js")
    function showCalculations(value) {
        console.log("Call factorial() from script.js:",
            factorial(value));
    }

.. code:: js

    // factorial.js
    function factorial(a) {
        a = parseInt(a);
        if (a <= 0)
            return 1;
        else
            return a * factorial(a - 1);
    }

Notice that calling :ref:`Qt.include() <sdk_qtqml_qt_include>` copies all functions from ``factorial.js`` into the ``MyScript`` namespace, which means the QML component can also access ``factorial()`` directly as ``MyScript.factorial()``.

