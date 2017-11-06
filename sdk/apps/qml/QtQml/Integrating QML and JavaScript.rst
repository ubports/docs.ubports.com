.. _sdk_qtqml_integrating_qml_and_javascript:

QtQml Integrating QML and JavaScript
====================================


The QML language uses a JSON-like syntax and allows various expressions and methods to be defined as JavaScript functions. It also allows users to import JavaScript files and use the functionality those imports provide.

This allows developers and designers to leverage the knowledge they have of JavaScript to quickly develop both user-interfaces and application logic.

QML has a deep JavaScript integration, and allows `signal handlers </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#signal-attributes>`_  and `methods </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#method-attributes>`_  to be defined in JavaScript. Another core feature of QML is the ability to specify and enforce relationships between object properties using `property bindings </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/>`_ , which are also defined using JavaScript.

See the documentation page titled `JavaScript Expressions in QML Documents </sdk/apps/qml/QtQml/qtqml-javascript-expressions/>`_  for more information about using JavaScript expressions in QML.

Application logic defined in JavaScript functions may be separated into separate JavaScript files known as JavaScript resources. There are several different kinds of JavaScript resources, with different semantics.

See the documentation page titled `Defining JavaScript Resources In QML </sdk/apps/qml/QtQml/qtqml-javascript-resources/>`_  for more information about defining JavaScript resources for QML.

A QML document may import JavaScript resources, and JavaScript resources may import other JavaScript resources as well as QML modules. This allows an application developer to provide application logic in modular, self-contained files.

See the documentation page titled `Importing JavaScript Resources </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`_  for more information on how to import JavaScript resources and how to use the functionality they provide.

The QML engine provides a JavaScript environment that has some differences to the JavaScript environment provided by a web browser. Certain limitations apply to code running in the environment, and the QML engine provides various objects in the root context which may be unfamiliar to JavaScript developers.

These limitations and extensions are documented in the description of the `JavaScript Host Environment </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/>`_  provided by the QML engine.

