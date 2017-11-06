.. _sdk_qtqml_extending_qml_-_extension_objects_example:

QtQml Extending QML - Extension Objects Example
===============================================


This example builds on:

-  `Extending QML - Adding Types Example </sdk/apps/qml/QtQml/referenceexamples-adding/>`_ 

Shows how to use qmlRegisterExtendedType() to provide an extension object to a QLineEdit without modifying or subclassing. The QML engine instantiates a QLineEdit and sets a property that only exists on the extension type. The extension type performs calls on the QLineEdit that otherwise will not be accessible to the QML engine.

Files:

-  referenceexamples/extended/example.qml
-  referenceexamples/extended/lineedit.cpp
-  referenceexamples/extended/lineedit.h
-  referenceexamples/extended/main.cpp
-  referenceexamples/extended/extended.pro
-  referenceexamples/extended/extended.qrc

