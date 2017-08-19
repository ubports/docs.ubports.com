QtQml.qtqml-referenceexamples-extended-example
==============================================

.. raw:: html

   <p>

This example builds on:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Extending QML - Adding Types Example

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Shows how to use qmlRegisterExtendedType() to provide an extension
object to a QLineEdit without modifying or subclassing. The QML engine
instantiates a QLineEdit and sets a property that only exists on the
extension type. The extension type performs calls on the QLineEdit that
otherwise will not be accessible to the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

referenceexamples/extended/example.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/extended/lineedit.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/extended/lineedit.h

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/extended/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/extended/extended.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/extended/extended.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@referenceexamples/extended -->
