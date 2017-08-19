QtQml.qtqml-javascript-topic
============================

.. raw:: html

   <p>

The QML language uses a JSON-like syntax and allows various expressions
and methods to be defined as JavaScript functions. It also allows users
to import JavaScript files and use the functionality those imports
provide.

.. raw:: html

   </p>

.. raw:: html

   <p>

This allows developers and designers to leverage the knowledge they have
of JavaScript to quickly develop both user-interfaces and application
logic.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-expressions">

JavaScript Expressions

.. raw:: html

   </h2>

.. raw:: html

   <p>

QML has a deep JavaScript integration, and allows signal handlers and
methods to be defined in JavaScript. Another core feature of QML is the
ability to specify and enforce relationships between object properties
using property bindings, which are also defined using JavaScript.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the documentation page titled JavaScript Expressions in QML
Documents for more information about using JavaScript expressions in
QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-resources">

JavaScript Resources

.. raw:: html

   </h2>

.. raw:: html

   <p>

Application logic defined in JavaScript functions may be separated into
separate JavaScript files known as JavaScript resources. There are
several different kinds of JavaScript resources, with different
semantics.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the documentation page titled Defining JavaScript Resources In QML
for more information about defining JavaScript resources for QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-imports">

JavaScript Imports

.. raw:: html

   </h2>

.. raw:: html

   <p>

A QML document may import JavaScript resources, and JavaScript resources
may import other JavaScript resources as well as QML modules. This
allows an application developer to provide application logic in modular,
self-contained files.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the documentation page titled Importing JavaScript Resources for
more information on how to import JavaScript resources and how to use
the functionality they provide.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-host-environment">

JavaScript Host Environment

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML engine provides a JavaScript environment that has some
differences to the JavaScript environment provided by a web browser.
Certain limitations apply to code running in the environment, and the
QML engine provides various objects in the root context which may be
unfamiliar to JavaScript developers.

.. raw:: html

   </p>

.. raw:: html

   <p>

These limitations and extensions are documented in the description of
the JavaScript Host Environment provided by the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-javascript-topic.html -->
