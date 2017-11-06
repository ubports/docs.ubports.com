.. _sdk_qtqml_qt:

QtQml Qt
========

Provides a global object with useful enums and functions from Qt.

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  :ref:`application <sdk_qtqml_qt_application>` : object
-  :ref:`inputMethod <sdk_qtqml_qt_inputMethod>` : object
-  :ref:`platform <sdk_qtqml_qt_platform>` : object

Methods
-------

-  string :ref:`atob <sdk_qtqml_qt_atob>`\ (data)
-  :ref:`binding <sdk_qtqml_qt_binding>`\ (function)
-  string :ref:`btoa <sdk_qtqml_qt_btoa>`\ (data)
-  color :ref:`colorEqual <sdk_qtqml_qt_colorEqual>`\ (color *lhs*, string *rhs*)
-  object :ref:`createComponent <sdk_qtqml_qt_createComponent>`\ (url, mode, parent)
-  object :ref:`createQmlObject <sdk_qtqml_qt_createQmlObject>`\ (string *qml*, object *parent*, string *filepath*)
-  color :ref:`darker <sdk_qtqml_qt_darker>`\ (color *baseColor*, real *factor*)
-  :ref:`font <sdk_qtqml_qt_font>`\ (object *fontSpecifier*)
-  list<string> :ref:`fontFamilies <sdk_qtqml_qt_fontFamilies>`\ ()
-  string :ref:`formatDate <sdk_qtqml_qt_formatDate>`\ (datetime *date*, variant *format*)
-  string :ref:`formatDateTime <sdk_qtqml_qt_formatDateTime>`\ (datetime *dateTime*, variant *format*)
-  string :ref:`formatTime <sdk_qtqml_qt_formatTime>`\ (datetime *time*, variant *format*)
-  color :ref:`hsla <sdk_qtqml_qt_hsla>`\ (real *hue*, real *saturation*, real *lightness*, real *alpha*)
-  object :ref:`include <sdk_qtqml_qt_include>`\ (string *url*, jsobject *callback*)
-  bool :ref:`isQtObject <sdk_qtqml_qt_isQtObject>`\ (object)
-  color :ref:`lighter <sdk_qtqml_qt_lighter>`\ (color *baseColor*, real *factor*)
-  :ref:`locale <sdk_qtqml_qt_locale>`\ (name)
-  string :ref:`md5 <sdk_qtqml_qt_md5>`\ (data)
-  :ref:`matrix4x4 <sdk_qtqml_qt_matrix4x4>`\ (real *m11*, real *m12*, real *m13*, real *m14*, real *m21*, real *m22*, real *m23*, real *m24*, real *m31*, real *m32*, real *m33*, real *m34*, real *m41*, real *m42*, real *m43*, real *m44*)
-  bool :ref:`openUrlExternally <sdk_qtqml_qt_openUrlExternally>`\ (url *target*)
-  point :ref:`point <sdk_qtqml_qt_point>`\ (int *x*, int *y*)
-  string :ref:`qsTr <sdk_qtqml_qt_qsTr>`\ (string *sourceText*, string *disambiguation*, int *n*)
-  string :ref:`qsTrId <sdk_qtqml_qt_qsTrId>`\ (string *id*, int *n*)
-  string :ref:`qsTrIdNoOp <sdk_qtqml_qt_qsTrIdNoOp>`\ (string *id*)
-  string :ref:`qsTrNoOp <sdk_qtqml_qt_qsTrNoOp>`\ (string *sourceText*, string *disambiguation*)
-  string :ref:`qsTranslate <sdk_qtqml_qt_qsTranslate>`\ (string *context*, string *sourceText*, string *disambiguation*, int *n*)
-  string :ref:`qsTranslateNoOp <sdk_qtqml_qt_qsTranslateNoOp>`\ (string *context*, string *sourceText*, string *disambiguation*)
-  :ref:`quaternion <sdk_qtqml_qt_quaternion>`\ (real *scalar*, real *x*, real *y*, real *z*)
-  :ref:`quit <sdk_qtqml_qt_quit>`\ ()
-  rect :ref:`rect <sdk_qtqml_qt_rect>`\ (int *x*, int *y*, int *width*, int *height*)
-  url :ref:`resolvedUrl <sdk_qtqml_qt_resolvedUrl>`\ (url *url*)
-  color :ref:`rgba <sdk_qtqml_qt_rgba>`\ (real *red*, real *green*, real *blue*, real *alpha*)
-  :ref:`size <sdk_qtqml_qt_size>`\ (int *width*, int *height*)
-  color :ref:`tint <sdk_qtqml_qt_tint>`\ (color *baseColor*, color *tintColor*)
-  :ref:`vector2d <sdk_qtqml_qt_vector2d>`\ (real *x*, real *y*)
-  :ref:`vector3d <sdk_qtqml_qt_vector3d>`\ (real *x*, real *y*, real *z*)
-  :ref:`vector4d <sdk_qtqml_qt_vector4d>`\ (real *x*, real *y*, real *z*, real *w*)

Detailed Description
--------------------

The ``Qt`` object is a global object with utility functions, properties and enums.

It is not instantiable; to use it, call the members of the global ``Qt`` object directly. For example:

.. code:: qml

    import QtQuick 2.0
    Text {
        color: Qt.rgba(1, 0, 0, 1)
        text: Qt.md5("hello, world")
    }

Enums
-----

The Qt object contains the enums available in the :ref:`Qt Namespace <sdk_qtqml_qt>`. For example, you can access the Qt::LeftButton and Qt::RightButton enumeration values as ``Qt.LeftButton`` and ``Qt.RightButton``.

Types
-----

The Qt object also contains helper functions for creating objects of specific data types. This is primarily useful when setting the properties of an item when the property has one of the following types:

-  ``rect`` - use :ref:`Qt.rect() <sdk_qtqml_qt_rect>`
-  ``point`` - use :ref:`Qt.point() <sdk_qtqml_qt_point>`
-  ``size`` - use :ref:`Qt.size() <sdk_qtqml_qt_size>`

If the ``QtQuick`` module has been imported, the following helper functions for creating objects of specific data types are also available for clients to use:

-  ``color`` - use :ref:`Qt.rgba() <sdk_qtqml_qt_rgba>`, :ref:`Qt.hsla() <sdk_qtqml_qt_hsla>`, :ref:`Qt.darker() <sdk_qtqml_qt_darker>`, :ref:`Qt.lighter() <sdk_qtqml_qt_lighter>` or :ref:`Qt.tint() <sdk_qtqml_qt_tint>`
-  ``font`` - use :ref:`Qt.font() <sdk_qtqml_qt_font>`
-  ``vector2d`` - use :ref:`Qt.vector2d() <sdk_qtqml_qt_vector2d>`
-  ``vector3d`` - use :ref:`Qt.vector3d() <sdk_qtqml_qt_vector3d>`
-  ``vector4d`` - use :ref:`Qt.vector4d() <sdk_qtqml_qt_vector4d>`
-  ``quaternion`` - use :ref:`Qt.quaternion() <sdk_qtqml_qt_quaternion>`
-  ``matrix4x4`` - use :ref:`Qt.matrix4x4() <sdk_qtqml_qt_matrix4x4>`

There are also string based constructors for these types. See `QML Basic Types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_  for more information.

Date/Time Formatters
--------------------

The Qt object contains several functions for formatting QDateTime, QDate and QTime values.

-  :ref:`string Qt.formatDateTime(datetime date, variant format) <sdk_qtqml_qt_formatDateTime>`
-  :ref:`string Qt.formatDate(datetime date, variant format) <sdk_qtqml_qt_formatDate>`
-  :ref:`string Qt.formatTime(datetime date, variant format) <sdk_qtqml_qt_formatTime>`

The format specification is described at :ref:`Qt.formatDateTime <sdk_qtqml_qt_formatDateTime>`.

Dynamic Object Creation
-----------------------

The following functions on the global object allow you to dynamically create QML items from files or strings. See `Dynamic QML Object Creation from JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-dynamicobjectcreation/>`_  for an overview of their use.

-  :ref:`object Qt.createComponent(url) <sdk_qtqml_qt_createComponent>`
-  :ref:`object Qt.createQmlObject(string qml, object parent, string filepath) <sdk_qtqml_qt_createQmlObject>`

Other Functions
---------------

The following functions are also on the Qt object.

-  :ref:`Qt.quit() <sdk_qtqml_qt_quit>`
-  :ref:`Qt.md5(string) <sdk_qtqml_qt_md5>`
-  :ref:`string Qt.btoa(string) <sdk_qtqml_qt_btoa>`
-  :ref:`string Qt.atob(string) <sdk_qtqml_qt_atob>`
-  :ref:`object Qt.binding(function) <sdk_qtqml_qt_binding>`
-  :ref:`object Qt.locale() <sdk_qtqml_qt_locale>`
-  :ref:`string Qt.resolvedUrl(string) <sdk_qtqml_qt_resolvedUrl>`
-  :ref:`Qt.openUrlExternally(string) <sdk_qtqml_qt_openUrlExternally>`
-  `list<string> Qt.fontFamilies() <sdk_qtqml_qt#fontFamilies-method>`_ 

Property Documentation
----------------------

.. _sdk_qtqml_qt_application:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| application : object                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``application`` object provides access to global application state properties shared by many QML components.

Its properties are:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.active``                                                                                                                                 | Deprecated, use Qt.application.state == Qt.ApplicationActive instead.                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.state``                                                                                                                                  | This read-only property indicates the current state of the application.                                                                                |
|                                                                                                                                                        | Possible values are:                                                                                                                                   |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        | -  Qt.ApplicationActive - The application is the top-most and focused application, and the user is able to interact with the application.              |
|                                                                                                                                                        | -  Qt.ApplicationInactive - The application is visible or partially visible, but not selected to be in front, the user cannot interact with the        |
|                                                                                                                                                        |    application. On desktop platforms, this typically means that the user activated another application. On mobile platforms, it is more common to      |
|                                                                                                                                                        |    enter this state when the OS is interrupting the user with for example incoming calls, SMS-messages or dialogs. This is usually a transient state   |
|                                                                                                                                                        |    during which the application is paused. The user may return focus to your application, but most of the time it will be the first indication that    |
|                                                                                                                                                        |    the application is going to be suspended. While in this state, consider pausing or stopping any activity that should not continue when the user     |
|                                                                                                                                                        |    cannot interact with your application, such as a video, a game, animations, or sensors. You should also avoid performing CPU-intensive tasks which  |
|                                                                                                                                                        |    might slow down the application in front.                                                                                                           |
|                                                                                                                                                        | -  Qt.ApplicationSuspended - The application is suspended and not visible to the user. On mobile platforms, the application typically enters this      |
|                                                                                                                                                        |    state when the user returns to the home screen or switches to another application. While in this state, the application should ensure that the user |
|                                                                                                                                                        |    perceives it as always alive and does not lose his progress, saving any persistent data. The application should cease all activities and be         |
|                                                                                                                                                        |    prepared for code execution to stop. While suspended, the application can be killed at any time without further warnings (for example when low      |
|                                                                                                                                                        |    memory forces the OS to purge suspended applications).                                                                                              |
|                                                                                                                                                        | -  Qt.ApplicationHidden - The application is hidden and runs in the background. This is the normal state for applications that need to do background   |
|                                                                                                                                                        |    processing, like playing music, while the user interacts with other applications. The application should free up all graphical resources when       |
|                                                                                                                                                        |    entering this state. A Qt Quick application should not usually handle this state at the QML level. Instead, you should unload the entire UI and     |
|                                                                                                                                                        |    reload the QML files whenever the application becomes active again.                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.layoutDirection``                                                                                                                        | This read-only property can be used to query the default layout direction of the application. On system start-up, the default layout direction depends |
|                                                                                                                                                        | on the application's language. The property has a value of ``Qt.RightToLeft`` in locales where text and graphic elements are read from right to left,  |
|                                                                                                                                                        | and ``Qt.LeftToRight`` where the reading direction flows from left to right. You can bind to this property to customize your application layouts to    |
|                                                                                                                                                        | support both layout directions.                                                                                                                        |
|                                                                                                                                                        | Possible values are:                                                                                                                                   |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        | -  Qt.LeftToRight - Text and graphics elements should be positioned from left to right.                                                                |
|                                                                                                                                                        | -  Qt.RightToLeft - Text and graphics elements should be positioned from right to left.                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.arguments``                                                                                                                              | This is a string list of the arguments the executable was invoked with.                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.name``                                                                                                                                   | This is the application name set on the QCoreApplication instance. This property can be written to in order to set the application name.               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.version``                                                                                                                                | This is the application version set on the QCoreApplication instance. This property can be written to in order to set the application version.         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.organization``                                                                                                                           | This is the organization name set on the QCoreApplication instance. This property can be written to in order to set the organization name.             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.domain``                                                                                                                                 | This is the organization domain set on the QCoreApplication instance. This property can be written to in order to set the organization domain.         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``application.supportsMultipleWindows``                                                                                                                | This read-only property can be used to determine whether or not the platform supports multiple windows. Some embedded platforms do not support         |
|                                                                                                                                                        | multiple windows, for example.                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The object also has one signal, aboutToQuit(), which is the same as QCoreApplication::aboutToQuit().

The following example uses the ``application`` object to indicate whether the application is currently active:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 300; height: 55
        color: Qt.application.active ? "white" : "lightgray"
        Text {
            text: "Application " + (Qt.application.active ? "active" : "inactive")
            opacity: Qt.application.active ? 1.0 : 0.5
            anchors.centerIn: parent
        }
    }

Note that when using QML without a QGuiApplication, the following properties will be undefined:

-  application.active
-  application.state
-  application.layoutDirection

This QML property was introduced in Qt 5.1.

.. _sdk_qtqml_qt_inputMethod:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| inputMethod : object                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``inputMethod`` object allows access to application's QInputMethod object and all its properties and slots. See the QInputMethod documentation for further details.

This QML property was introduced in Qt 5.0.

.. _sdk_qtqml_qt_platform:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| platform : object                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``platform`` object provides info about the underlying platform.

Its properties are:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``platform.os``                                                                                                                                        | This read-only property contains the name of the operating system.                                                                                     |
|                                                                                                                                                        | Possible values are:                                                                                                                                   |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        | -  ``"android"`` - Android                                                                                                                             |
|                                                                                                                                                        | -  ``"blackberry"`` - BlackBerry OS                                                                                                                    |
|                                                                                                                                                        | -  ``"ios"`` - iOS                                                                                                                                     |
|                                                                                                                                                        | -  ``"linux"`` - Linux                                                                                                                                 |
|                                                                                                                                                        | -  ``"osx"`` - OS X                                                                                                                                    |
|                                                                                                                                                        | -  ``"unix"`` - Other Unix-based OS                                                                                                                    |
|                                                                                                                                                        | -  ``"windows"`` - Windows                                                                                                                             |
|                                                                                                                                                        | -  ``"wince"`` - Windows CE                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

This QML property was introduced in Qt 4.8.

Method Documentation
--------------------

.. _sdk_qtqml_qt_atob:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string atob(data)                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

ASCII to binary - this function returns a base64 decoding of ``data``.

.. _sdk_qtqml_qt_binding:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| binding(function)                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a JavaScript object representing a `property binding </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/>`_ .

There are two main use-cases for the function: firstly, to apply a property binding imperatively from JavaScript code:

.. code:: qml

    Item {
        property bool someCondition: true
        property int edgePosition
        Component.onCompleted: {
            if (someCondition == true) {
                // bind to the result of the binding expression passed to Qt.binding()
                edgePosition = Qt.binding(function() { return x + width })
            }
        }
    }

and secondly, to apply a property binding when initializing property values of dynamically constructed objects (via :ref:`Component.createObject() <sdk_qtqml_component_createObject>` or Loader.setSource()).

For example, assuming the existence of a DynamicText component:

.. code:: qml

    import QtQuick 2.0
    Text {
        id: textElement
        width: 200
        height: 200
        text: "Default text"
        property string dynamicText: "Dynamic text"
        onTextChanged: console.log(text)
    }

the output from:

.. code:: qml

    Item {
        id: root
        property string dynamicText: "Root text"
        Component.onCompleted: {
            var c = Qt.createComponent("DynamicText.qml")
            var obj1 = c.createObject(root, { 'text': Qt.binding(function() { return dynamicText + ' extra text' }) })
            root.dynamicText = "Modified root text"
            var obj2 = c.createObject(root, { 'text': Qt.binding(function() { return this.dynamicText + ' extra text' }) })
            obj2.dynamicText = "Modified text element text"
        }
    }

and from:

.. code:: qml

    Item {
        id: root
        property string dynamicText: "Root text"
        Loader {
            id: loaderOne
            onLoaded: root.dynamicText = "Modified root text"
        }
        Loader {
            id: loaderTwo
            onLoaded: item.dynamicText = "Modified dynamic text"
        }
        Component.onCompleted: {
            loaderOne.setSource("DynamicText.qml", { 'text': Qt.binding(function() { return dynamicText + ' extra text' }) })
            loaderTwo.setSource("DynamicText.qml", { 'text': Qt.binding(function() { return this.dynamicText + ' extra text' }) })
        }
    }

should both be:

.. code:: cpp

    Root text extra text
    Modified root text extra text
    Dynamic text extra text
    Modified dynamic text extra text

This function cannot be used in property binding declarations (see the documentation on `binding declarations and binding assignments </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/#qml-javascript-assignment>`_ ) except when the result is stored in an array bound to a var property.

.. code:: qml

    Item {
        width: 50
        property var storedBindings: [ Qt.binding(function() { return x + width }) ] // stored
        property int a: Qt.binding(function() { return x + width }) // error!
        property int b
        Component.onCompleted: {
            b = storedBindings[0] // causes binding assignment
        }
    }

**Note:** In Qt Quick 1, all function assignments were treated as binding assignments. The Qt.binding() function is new to Qt Quick 2.

This QML method was introduced in Qt 5.0.

.. _sdk_qtqml_qt_btoa:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string btoa(data)                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Binary to ASCII - this function returns a base64 encoding of ``data``.

.. _sdk_qtqml_qt_colorEqual:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color colorEqual(color *lhs*, string *rhs*)                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if both ``lhs`` and ``rhs`` yield equal color values. Both arguments may be either color values or string values. If a string value is supplied it must be convertible to a color, as described for the color basic type.

.. _sdk_qtqml_qt_createComponent:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object createComponent(url, mode, parent)                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Component object created using the QML file at the specified *url*, or ``null`` if an empty string was given.

The returned component's :ref:`Component::status <sdk_qtqml_component_status>` property indicates whether the component was successfully created. If the status is ``Component.Error``, see :ref:`Component::errorString() <sdk_qtqml_component_errorString>` for an error description.

If the optional *mode* parameter is set to ``Component.Asynchronous``, the component will be loaded in a background thread. The :ref:`Component::status <sdk_qtqml_component_status>` property will be ``Component.Loading`` while it is loading. The status will change to ``Component.Ready`` if the component loads successfully, or ``Component.Error`` if loading fails.

If the optional *parent* parameter is given, it should refer to the object that will become the parent for the created :ref:`Component <sdk_qtqml_component>` object.

Call :ref:`Component.createObject() <sdk_qtqml_component_createObject>` on the returned component to create an object instance of the component.

For example:

.. code:: qml

    import QtQuick 2.0
    Item {
        id: container
        width: 300; height: 300
        function loadButton() {
            var component = Qt.createComponent("Button.qml");
            if (component.status == Component.Ready) {
                var button = component.createObject(container);
                button.color = "red";
            }
        }
        Component.onCompleted: loadButton()
    }

See `Dynamic QML Object Creation from JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-dynamicobjectcreation/>`_  for more information on using this function.

To create a QML object from an arbitrary string of QML (instead of a file), use :ref:`Qt.createQmlObject() <sdk_qtqml_qt_createQmlObject>`.

.. _sdk_qtqml_qt_createQmlObject:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object createQmlObject(string *qml*, object *parent*, string *filepath*)                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a new object created from the given *string* of QML which will have the specified *parent*, or ``null`` if there was an error in creating the object.

If *filepath* is specified, it will be used for error reporting for the created object.

Example (where ``parentItem`` is the id of an existing QML item):

.. code:: qml

    var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
        parentItem, "dynamicSnippet1");

In the case of an error, a Qt Script Error object is thrown. This object has an additional property, ``qmlErrors``, which is an array of the errors encountered. Each object in this array has the members ``lineNumber``, ``columnNumber``, ``fileName`` and ``message``. For example, if the above snippet had misspelled color as 'colro' then the array would contain an object like the following: { "lineNumber" : 1, "columnNumber" : 32, "fileName" : "dynamicSnippet1", "message" : "Cannot assign to non-existent property "colro""}.

Note that this function returns immediately, and therefore may not work if the *qml* string loads new components (that is, external QML files that have not yet been loaded). If this is the case, consider using :ref:`Qt.createComponent() <sdk_qtqml_qt_createComponent>` instead.

See `Dynamic QML Object Creation from JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-dynamicobjectcreation/>`_  for more information on using this function.

.. _sdk_qtqml_qt_darker:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color darker(color *baseColor*, real *factor*)                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a color darker than ``baseColor`` by the ``factor`` provided.

If the factor is greater than 1.0, this function returns a darker color. Setting factor to 3.0 returns a color that has one-third the brightness. If the factor is less than 1.0, the return color is lighter, but we recommend using the Qt.\ :ref:`lighter() <sdk_qtqml_qt_lighter>` function for this purpose. If the factor is 0 or negative, the return value is unspecified.

The function converts the current RGB color to HSV, divides the value (V) component by factor and converts the color back to RGB.

If ``factor`` is not supplied, returns a color 50% darker than ``baseColor`` (factor 2.0).

.. _sdk_qtqml_qt_font:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font(object *fontSpecifier*)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Font with the properties specified in the ``fontSpecifier`` object or the nearest matching font. The ``fontSpecifier`` object should contain key-value pairs where valid keys are the font type's subproperty names, and the values are valid values for each subproperty. Invalid keys will be ignored.

.. _sdk_qtqml_qt_fontFamilies:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| list<string> fontFamilies()                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a list of the font families available to the application.

.. _sdk_qtqml_qt_formatDate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string formatDate(datetime *date*, variant *format*)                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a string representation of ``date``, optionally formatted according to ``format``.

The *date* parameter may be a JavaScript ``Date`` object, a date property, a QDate, or QDateTime value. The *format* parameter may be any of the possible format values as described for Qt.formatDateTime().

If *format* is not specified, *date* is formatted using Qt.DefaultLocaleShortDate.

**See also** :ref:`Locale <sdk_qtqml_locale>`.

.. _sdk_qtqml_qt_formatDateTime:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string formatDateTime(datetime *dateTime*, variant *format*)                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a string representation of ``datetime``, optionally formatted according to ``format``.

The *date* parameter may be a JavaScript ``Date`` object, a date property, a QDate, QTime, or QDateTime value.

If *format* is not provided, *dateTime* is formatted using Qt.DefaultLocaleShortDate. Otherwise, *format* should be either:

-  One of the Qt::DateFormat enumeration values, such as ``Qt.DefaultLocaleShortDate`` or ``Qt.ISODate``
-  A string that specifies the format of the returned string, as detailed below.

If *format* specifies a format string, it should use the following expressions to specify the date:

+--------------+----------------------------------------------------------------------------------------------+
| Expression   | Output                                                                                       |
+==============+==============================================================================================+
| d            | the day as number without a leading zero (1 to 31)                                           |
+--------------+----------------------------------------------------------------------------------------------+
| dd           | the day as number with a leading zero (01 to 31)                                             |
+--------------+----------------------------------------------------------------------------------------------+
| ddd          | the abbreviated localized day name (e.g. 'Mon' to 'Sun'). Uses QDate::shortDayName().        |
+--------------+----------------------------------------------------------------------------------------------+
| dddd         | the long localized day name (e.g. 'Monday' to 'Qt::Sunday'). Uses QDate::longDayName().      |
+--------------+----------------------------------------------------------------------------------------------+
| M            | the month as number without a leading zero (1-12)                                            |
+--------------+----------------------------------------------------------------------------------------------+
| MM           | the month as number with a leading zero (01-12)                                              |
+--------------+----------------------------------------------------------------------------------------------+
| MMM          | the abbreviated localized month name (e.g. 'Jan' to 'Dec'). Uses QDate::shortMonthName().    |
+--------------+----------------------------------------------------------------------------------------------+
| MMMM         | the long localized month name (e.g. 'January' to 'December'). Uses QDate::longMonthName().   |
+--------------+----------------------------------------------------------------------------------------------+
| yy           | the year as two digit number (00-99)                                                         |
+--------------+----------------------------------------------------------------------------------------------+
| yyyy         | the year as four digit number                                                                |
+--------------+----------------------------------------------------------------------------------------------+

In addition the following expressions can be used to specify the time:

+--------------+-------------------------------------------------------------------------+
| Expression   | Output                                                                  |
+==============+=========================================================================+
| h            | the hour without a leading zero (0 to 23 or 1 to 12 if AM/PM display)   |
+--------------+-------------------------------------------------------------------------+
| hh           | the hour with a leading zero (00 to 23 or 01 to 12 if AM/PM display)    |
+--------------+-------------------------------------------------------------------------+
| m            | the minute without a leading zero (0 to 59)                             |
+--------------+-------------------------------------------------------------------------+
| mm           | the minute with a leading zero (00 to 59)                               |
+--------------+-------------------------------------------------------------------------+
| s            | the second without a leading zero (0 to 59)                             |
+--------------+-------------------------------------------------------------------------+
| ss           | the second with a leading zero (00 to 59)                               |
+--------------+-------------------------------------------------------------------------+
| z            | the milliseconds without leading zeroes (0 to 999)                      |
+--------------+-------------------------------------------------------------------------+
| zzz          | the milliseconds with leading zeroes (000 to 999)                       |
+--------------+-------------------------------------------------------------------------+
| AP           | use AM/PM display. *AP* will be replaced by either "AM" or "PM".        |
+--------------+-------------------------------------------------------------------------+
| ap           | use am/pm display. *ap* will be replaced by either "am" or "pm".        |
+--------------+-------------------------------------------------------------------------+

All other input characters will be ignored. Any sequence of characters that are enclosed in single quotes will be treated as text and not be used as an expression. Two consecutive single quotes ("''") are replaced by a single quote in the output.

For example, if the following date/time value was specified:

.. code:: cpp

    // 21 May 2001 14:13:09
    var dateTime = new Date(2001, 5, 21, 14, 13, 09)

This *dateTime* value could be passed to ``Qt.formatDateTime()``, :ref:`Qt.formatDate() <sdk_qtqml_qt_formatDate>` or :ref:`Qt.formatTime() <sdk_qtqml_qt_formatTime>` with the *format* values below to produce the following results:

+-------------------+-----------------+
| Format            | Result          |
+===================+=================+
| "dd.MM.yyyy"      | 21.05.2001      |
+-------------------+-----------------+
| "ddd MMMM d yy"   | Tue May 21 01   |
+-------------------+-----------------+
| "hh:mm:ss.zzz"    | 14:13:09.042    |
+-------------------+-----------------+
| "h:m:s ap"        | 2:13:9 pm       |
+-------------------+-----------------+

**See also** :ref:`Locale <sdk_qtqml_locale>`.

.. _sdk_qtqml_qt_formatTime:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string formatTime(datetime *time*, variant *format*)                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a string representation of ``time``, optionally formatted according to ``format``.

The *time* parameter may be a JavaScript ``Date`` object, a QTime, or QDateTime value. The *format* parameter may be any of the possible format values as described for :ref:`Qt.formatDateTime() <sdk_qtqml_qt_formatDateTime>`.

If *format* is not specified, *time* is formatted using Qt.DefaultLocaleShortDate.

**See also** :ref:`Locale <sdk_qtqml_locale>`.

.. _sdk_qtqml_qt_hsla:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color hsla(real *hue*, real *saturation*, real *lightness*, real *alpha*)                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a color with the specified ``hue``, ``saturation``, ``lightness`` and ``alpha`` components. All components should be in the range 0-1 inclusive.

.. _sdk_qtqml_qt_include:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object include(string *url*, jsobject *callback*)                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Includes another JavaScript file. This method can only be used from within JavaScript files, and not regular QML files.

This imports all functions from *url* into the current script's namespace.

Qt.include() returns an object that describes the status of the operation. The object has a single property, ``status``, that is set to one of the following values:

+-------------------------+---------+-------------------------------------------------------------------------------------------------------------------------------------+
| Symbol                  | Value   | Description                                                                                                                         |
+=========================+=========+=====================================================================================================================================+
| result.OK               | 0       | The include completed successfully.                                                                                                 |
+-------------------------+---------+-------------------------------------------------------------------------------------------------------------------------------------+
| result.LOADING          | 1       | Data is being loaded from the network.                                                                                              |
+-------------------------+---------+-------------------------------------------------------------------------------------------------------------------------------------+
| result.NETWORK\_ERROR   | 2       | A network error occurred while fetching the url.                                                                                    |
+-------------------------+---------+-------------------------------------------------------------------------------------------------------------------------------------+
| result.EXCEPTION        | 3       | A JavaScript exception occurred while executing the included code. An additional ``exception`` property will be set in this case.   |
+-------------------------+---------+-------------------------------------------------------------------------------------------------------------------------------------+

The ``status`` property will be updated as the operation progresses.

If provided, *callback* is invoked when the operation completes. The callback is passed the same object as is returned from the Qt.include() call.

.. _sdk_qtqml_qt_isQtObject:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool isQtObject(object)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if ``object`` is a valid reference to a Qt or QML object, otherwise false.

.. _sdk_qtqml_qt_lighter:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color lighter(color *baseColor*, real *factor*)                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a color lighter than ``baseColor`` by the ``factor`` provided.

If the factor is greater than 1.0, this functions returns a lighter color. Setting factor to 1.5 returns a color that is 50% brighter. If the factor is less than 1.0, the return color is darker, but we recommend using the Qt.\ :ref:`darker() <sdk_qtqml_qt_darker>` function for this purpose. If the factor is 0 or negative, the return value is unspecified.

The function converts the current RGB color to HSV, multiplies the value (V) component by factor and converts the color back to RGB.

If ``factor`` is not supplied, returns a color 50% lighter than ``baseColor`` (factor 1.5).

.. _sdk_qtqml_qt_locale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| locale(name)                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a JS object representing the locale with the specified name, which has the format "language[\_territory][.codeset][@modifier]" or "C", where:

-  language is a lowercase, two-letter, ISO 639 language code,
-  territory is an uppercase, two-letter, ISO 3166 country code,
-  and codeset and modifier are ignored.

If the string violates the locale format, or language is not a valid ISO 369 code, the "C" locale is used instead. If country is not present, or is not a valid ISO 3166 code, the most appropriate country is chosen for the specified language.

**See also** :ref:`Locale <sdk_qtqml_locale>`.

.. _sdk_qtqml_qt_md5:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string md5(data)                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a hex string of the md5 hash of ``data``.

.. _sdk_qtqml_qt_matrix4x4:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| matrix4x4(real *m11*, real *m12*, real *m13*, real *m14*, real *m21*, real *m22*, real *m23*, real *m24*, real *m31*, real *m32*, real *m33*, real *m34*, real *m41*, real *m42*, real *m43*, real *m44*)                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Matrix4x4 with the specified values. Alternatively, the function may be called with a single argument where that argument is a JavaScript array which contains the sixteen matrix values.

.. _sdk_qtqml_qt_openUrlExternally:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool openUrlExternally(url *target*)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Attempts to open the specified ``target`` url in an external application, based on the user's desktop preferences. Returns true if it succeeds, and false otherwise.

.. _sdk_qtqml_qt_:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`point <sdk_qtqml_qt_point>` point(int *x*, int *y*)                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Point with the specified ``x`` and ``y`` coordinates.

.. _sdk_qtqml_qt_qsTr:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string qsTr(string *sourceText*, string *disambiguation*, int *n*)                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a translated version of *sourceText*, optionally based on a *disambiguation* string and value of *n* for strings containing plurals; otherwise returns *sourceText* itself if no appropriate translated string is available.

If the same *sourceText* is used in different roles within the same translation context, an additional identifying string may be passed in for *disambiguation*.

Example:

.. code:: qml

    Text { text: qsTr("hello") }

**See also** Internationalization and Localization with Qt Quick.

.. _sdk_qtqml_qt_qsTrId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string qsTrId(string *id*, int *n*)                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a translated string identified by *id*. If no matching string is found, the id itself is returned. This should not happen under normal conditions.

If *n* >= 0, all occurrences of ``%n`` in the resulting string are replaced with a decimal representation of *n*. In addition, depending on *n*'s value, the translation text may vary.

Example:

.. code:: qml

    Text { text: qsTrId("hello_id") }

It is possible to supply a source string template like:

``//% <string>``

or

``\begincomment% <string> \endcomment``

Example:

.. code:: qml

    Text {
        //% "hello"
        text: qsTrId("hello_id")
    }

Creating binary translation (QM) files suitable for use with this function requires passing the ``-idbased`` option to the ``lrelease`` tool.

**See also** QT\_TRID\_NOOP() and Internationalization and Localization with Qt Quick.

.. _sdk_qtqml_qt_qsTrIdNoOp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string qsTrIdNoOp(string *id*)                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Marks *id* for dynamic translation.

Returns the *id*.

QT\_TRID\_NOOP is used in conjunction with the dynamic translation function :ref:`qsTrId() <sdk_qtqml_qt_qsTrId>`. It identifies a string as requiring translation (so it can be identified by ``lupdate``), but leaves the actual translation to :ref:`qsTrId() <sdk_qtqml_qt_qsTrId>`.

Example:

.. code:: qml

    Item {
        property string greetingId: QT_TRID_NOOP("hello_id")
        Text { text: qsTrId(greetingId) }
    }

**See also** :ref:`qsTrId() <sdk_qtqml_qt_qsTrId>` and Internationalization and Localization with Qt Quick.

.. _sdk_qtqml_qt_qsTrNoOp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string qsTrNoOp(string *sourceText*, string *disambiguation*)                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Marks *sourceText* for dynamic translation; i.e, the stored *sourceText* will not be altered.

If the same *sourceText* is used in different roles within the same translation context, an additional identifying string may be passed in for *disambiguation*.

Returns the *sourceText*.

QT\_TR\_NOOP is used in conjunction with the dynamic translation functions :ref:`qsTr() <sdk_qtqml_qt_qsTr>` and :ref:`qsTranslate() <sdk_qtqml_qt_qsTranslate>`. It identifies a string as requiring translation (so it can be identified by ``lupdate``), but leaves the actual translation to the dynamic functions.

Example:

.. code:: qml

    Item {
        property string greeting: QT_TR_NOOP("hello")
        Text { text: qsTr(greeting) }
    }

**See also** Internationalization and Localization with Qt Quick.

.. _sdk_qtqml_qt_qsTranslate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string qsTranslate(string *context*, string *sourceText*, string *disambiguation*, int *n*)                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a translated version of *sourceText* within the given *context*, optionally based on a *disambiguation* string and value of *n* for strings containing plurals; otherwise returns *sourceText* itself if no appropriate translated string is available.

If the same *sourceText* is used in different roles within the same translation *context*, an additional identifying string may be passed in for *disambiguation*.

Example:

.. code:: qml

    Text { text: qsTranslate("CustomContext", "hello") }

**See also** Internationalization and Localization with Qt Quick.

.. _sdk_qtqml_qt_qsTranslateNoOp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string qsTranslateNoOp(string *context*, string *sourceText*, string *disambiguation*)                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Marks *sourceText* for dynamic translation in the given *context*; i.e, the stored *sourceText* will not be altered.

If the same *sourceText* is used in different roles within the same translation context, an additional identifying string may be passed in for *disambiguation*.

Returns the *sourceText*.

QT\_TRANSLATE\_NOOP is used in conjunction with the dynamic translation functions :ref:`qsTr() <sdk_qtqml_qt_qsTr>` and :ref:`qsTranslate() <sdk_qtqml_qt_qsTranslate>`. It identifies a string as requiring translation (so it can be identified by ``lupdate``), but leaves the actual translation to the dynamic functions.

Example:

.. code:: qml

    Item {
        property string greeting: QT_TRANSLATE_NOOP("CustomContext", "hello")
        Text { text: qsTranslate("CustomContext", greeting) }
    }

**See also** Internationalization and Localization with Qt Quick.

.. _sdk_qtqml_qt_quaternion:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| quaternion(real *scalar*, real *x*, real *y*, real *z*)                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Quaternion with the specified ``scalar``, ``x``, ``y``, and ``z``.

.. _sdk_qtqml_qt_quit:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| quit()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function causes the QQmlEngine::quit() signal to be emitted. Within the Prototyping with qmlscene, this causes the launcher application to exit; to quit a C++ application when this method is called, connect the QQmlEngine::quit() signal to the QCoreApplication::quit() slot.

.. _sdk_qtqml_qt_1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`rect <sdk_qtqml_qt_rect>` rect(int *x*, int *y*, int *width*, int *height*)                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a ``rect`` with the top-left corner at ``x``, ``y`` and the specified ``width`` and ``height``.

The returned object has ``x``, ``y``, ``width`` and ``height`` attributes with the given values.

.. _sdk_qtqml_qt_resolvedUrl:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| url resolvedUrl(url *url*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns *url* resolved relative to the URL of the caller.

.. _sdk_qtqml_qt_rgba:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color rgba(real *red*, real *green*, real *blue*, real *alpha*)                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a color with the specified ``red``, ``green``, ``blue`` and ``alpha`` components. All components should be in the range 0-1 inclusive.

.. _sdk_qtqml_qt_size:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| size(int *width*, int *height*)                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Size with the specified ``width`` and ``height``.

.. _sdk_qtqml_qt_tint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color tint(color *baseColor*, color *tintColor*)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function allows tinting one color with another.

The tint color should usually be mostly transparent, or you will not be able to see the underlying color. The below example provides a slight red tint by having the tint color be pure red which is only 1/16th opaque.

.. code:: qml

    Item {
        Rectangle {
            x: 0; width: 80; height: 80
            color: "lightsteelblue"
        }
        Rectangle {
            x: 100; width: 80; height: 80
            color: Qt.tint("lightsteelblue", "#10FF0000")
        }
    }

Tint is most useful when a subtle change is intended to be conveyed due to some event; you can then use tinting to more effectively tune the visible color.

.. _sdk_qtqml_qt_vector2d:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| vector2d(real *x*, real *y*)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Vector2D with the specified ``x`` and ``y``.

.. _sdk_qtqml_qt_vector3d:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| vector3d(real *x*, real *y*, real *z*)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Vector3D with the specified ``x``, ``y`` and ``z``.

.. _sdk_qtqml_qt_vector4d:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| vector4d(real *x*, real *y*, real *z*, real *w*)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a Vector4D with the specified ``x``, ``y``, ``z`` and ``w``.

