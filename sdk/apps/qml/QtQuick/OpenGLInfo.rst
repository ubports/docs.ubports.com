Provides information about the used OpenGL version

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.4               |
+---------------------+----------------------+

Properties
----------

-  ****`majorVersion </sdk/apps/qml/QtQuick/OpenGLInfo#majorVersion-prop>`__****
   : int
-  ****`minorVersion </sdk/apps/qml/QtQuick/OpenGLInfo#minorVersion-prop>`__****
   : int
-  ****`profile </sdk/apps/qml/QtQuick/OpenGLInfo#profile-prop>`__**** :
   enumeration
-  ****`renderableType </sdk/apps/qml/QtQuick/OpenGLInfo#renderableType-prop>`__****
   : enumeration

Detailed Description
--------------------

The `OpenGLInfo </sdk/apps/qml/QtQuick/OpenGLInfo/>`__ attached type
provides information about the OpenGL version being used to render the
surface of the attachee item.

If the attachee item is not currently associated with any graphical
surface, the properties are set to the values of the default surface
format. When it becomes associated with a surface, all properties will
update.

**See also** `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ majorVersion : int                                              |
+--------------------------------------------------------------------------+

This property holds the major OpenGL version.

The default version is ``2.0``.

**See also**
`minorVersion </sdk/apps/qml/QtQuick/OpenGLInfo#minorVersion-prop>`__
and `profile </sdk/apps/qml/QtQuick/OpenGLInfo#profile-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ minorVersion : int                                              |
+--------------------------------------------------------------------------+

This property holds the minor OpenGL version.

The default version is ``2.0``.

**See also**
`majorVersion </sdk/apps/qml/QtQuick/OpenGLInfo#majorVersion-prop>`__
and `profile </sdk/apps/qml/QtQuick/OpenGLInfo#profile-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ profile : enumeration                                           |
+--------------------------------------------------------------------------+

This property holds the configured OpenGL context profile.

The possible values are:

-  `OpenGLInfo </sdk/apps/qml/QtQuick/OpenGLInfo/>`__.NoProfile
   (default) - OpenGL version is lower than 3.2.
-  `OpenGLInfo </sdk/apps/qml/QtQuick/OpenGLInfo/>`__.CoreProfile -
   Functionality deprecated in OpenGL version 3.0 is not available.
-  `OpenGLInfo </sdk/apps/qml/QtQuick/OpenGLInfo/>`__.CompatibilityProfile
   - Functionality from earlier OpenGL versions is available.

Reusable QML components will typically use this property in bindings in
order to choose between core and non core profile compatible shader
sources.

**See also**
`majorVersion </sdk/apps/qml/QtQuick/OpenGLInfo#majorVersion-prop>`__
and
`minorVersion </sdk/apps/qml/QtQuick/OpenGLInfo#minorVersion-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ renderableType : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the renderable type.

The possible values are:

-  `OpenGLInfo </sdk/apps/qml/QtQuick/OpenGLInfo/>`__.Unspecified
   (default) - Unspecified rendering method
-  `OpenGLInfo </sdk/apps/qml/QtQuick/OpenGLInfo/>`__.OpenGL - Desktop
   OpenGL rendering
-  `OpenGLInfo </sdk/apps/qml/QtQuick/OpenGLInfo/>`__.OpenGLES - OpenGL
   ES rendering

| 
