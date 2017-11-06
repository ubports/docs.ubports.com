.. _sdk_qtqml_javascript_host_environment:

QtQml JavaScript Host Environment
=================================


QML provides a JavaScript host environment tailored to writing QML applications. This environment is different from the host environment provided by a browser or a server-side JavaScript environment such as Node.js. For example, QML does not provide a ``window`` object or ``DOM API`` as commonly found in a browser environment.

Like a browser or server-side JavaScript environment, the QML runtime implements the `ECMAScript Language Specification <http://www.ecma-international.org/publications/standards/Ecma-262.htm>`_  standard. This provides access to all of the built-in types and functions defined by the standard, such as Object, Array, and Math. The QML runtime implements the 5th edition of the standard, which is the same edition commonly implemented by browsers.

The standard ECMAScript built-ins are not explicitly documented in the QML documentation. For more information on their use, please refer to the ECMA-262 5th edition standard or one of the many online JavaScript reference and tutorial sites, such as the `W3Schools JavaScript Reference <http://www.w3schools.com/jsref/default.asp>`_  (JavaScript Objects Reference section). Many sites focus on JavaScript in the browser, so in some cases you may need to double check the specification to determine whether a given function or object is part of standard ECMAScript or specific to the browser environment. In the case of the W3Schools link above, the ``JavaScript Objects Reference`` section generally covers the standard, while the ``Browser Objects Reference`` and ``HTML DOM Objects Reference`` sections are browser specific (and thus not applicable to QML).

The QML JavaScript host environment implements a number of host objects and functions, as detailed in the `QML Global Object </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject/>`_  documentation.

These host objects and functions are always available, regardless of whether any modules have been imported.

A list of the JavaScript objects, functions and properties supported by the QML engine can be found in the `List of JavaScript Objects and Functions </sdk/apps/qml/QtQml/qtqml-javascript-functionlist/>`_ .

Note that QML makes the following modifications to native objects:

-  An :ref:`arg() <sdk_qtqml_string_arg>` function is added to the :ref:`String <sdk_qtqml_string>` prototype.
-  Locale-aware coversion functions are added to the :ref:`Date <sdk_qtqml_date>` and :ref:`Number <sdk_qtqml_number>` prototypes.

QML implements the following restrictions for JavaScript code:

-  JavaScript code cannot modify the global object.

   In QML, the global object is constant - existing properties cannot be modified or deleted, and no new properties may be created.

   Most JavaScript programs do not intentionally modify the global object. However, JavaScript's automatic creation of undeclared variables is an implicit modification of the global object, and is prohibited in QML.

   Assuming that the ``a`` variable does not exist in the scope chain, the following code is illegal in QML:

   .. code:: cpp

       // Illegal modification of undeclared variable
       a = 1;
       for (var ii = 1; ii < 10; ++ii)
           a = a * ii;
       console.log("Result: " + a);

   It can be trivially modified to this legal code.

   .. code:: cpp

       var a = 1;
       for (var ii = 1; ii < 10; ++ii)
           a = a * ii;
       console.log("Result: " + a);

   Any attempt to modify the global object - either implicitly or explicitly - will cause an exception. If uncaught, this will result in an warning being printed, that includes the file and line number of the offending code.

-  Global code is run in a reduced scope.

   During startup, if a QML file includes an external JavaScript file with "global" code, it is executed in a scope that contains only the external file itself and the global object. That is, it will not have access to the QML objects and properties it `normally would </sdk/apps/qml/QtQml/qtqml-documents-scope/>`_ .

   Global code that only accesses script local variable is permitted. This is an example of valid global code.

   .. code:: cpp

       var colors = [ "red", "blue", "green", "orange", "purple" ];

   Global code that accesses QML objects will not run correctly.

   .. code:: cpp

       // Invalid global code - the "rootObject" variable is undefined
       var initialPosition = { rootObject.x, rootObject.y }

   This restriction exists as the QML environment is not yet fully established. To run code after the environment setup has completed, see `JavaScript in Application Startup Code </sdk/apps/qml/QtQml/qtqml-javascript-expressions/#javascript-in-application-startup-code>`_ .

-  The value of ``this`` is currently undefined in QML in the majority of contexts.

   The ``this`` keyword is supported when binding properties from JavaScript. In all other situations, the value of ``this`` is undefined in QML.

   To refer to a specific object, provide an ``id``. For example:

   .. code:: qml

       Item {
           width: 200; height: 100
           function mouseAreaClicked(area) {
               console.log("Clicked in area at: " + area.x + ", " + area.y);
           }
           // This will not work because this is undefined
           MouseArea {
               height: 50; width: 200
               onClicked: mouseAreaClicked(this)
           }
           // This will pass area2 to the function
           MouseArea {
               id: area2
               y: 50; height: 50; width: 200
               onClicked: mouseAreaClicked(area2)
           }
       }

