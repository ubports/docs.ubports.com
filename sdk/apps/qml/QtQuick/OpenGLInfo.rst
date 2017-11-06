.. _sdk_qtquick_openglinfo:

QtQuick OpenGLInfo
==================

Provides information about the used OpenGL version

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.4               |
+---------------------+----------------------+

Properties
----------

-  :ref:`majorVersion <sdk_qtquick_openglinfo_majorVersion>` : int
-  :ref:`minorVersion <sdk_qtquick_openglinfo_minorVersion>` : int
-  :ref:`profile <sdk_qtquick_openglinfo_profile>` : enumeration
-  :ref:`renderableType <sdk_qtquick_openglinfo_renderableType>` : enumeration

Detailed Description
--------------------

The :ref:`OpenGLInfo <sdk_qtquick_openglinfo>` attached type provides information about the OpenGL version being used to render the surface of the attachee item.

If the attachee item is not currently associated with any graphical surface, the properties are set to the values of the default surface format. When it becomes associated with a surface, all properties will update.

**See also** :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.

Property Documentation
----------------------

.. _sdk_qtquick_openglinfo_majorVersion:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| majorVersion : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the major OpenGL version.

The default version is ``2.0``.

**See also** :ref:`minorVersion <sdk_qtquick_openglinfo_minorVersion>` and :ref:`profile <sdk_qtquick_openglinfo_profile>`.

.. _sdk_qtquick_openglinfo_minorVersion:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minorVersion : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the minor OpenGL version.

The default version is ``2.0``.

**See also** :ref:`majorVersion <sdk_qtquick_openglinfo_majorVersion>` and :ref:`profile <sdk_qtquick_openglinfo_profile>`.

.. _sdk_qtquick_openglinfo_profile:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| profile : enumeration                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the configured OpenGL context profile.

The possible values are:

-  :ref:`OpenGLInfo <sdk_qtquick_openglinfo>`.NoProfile (default) - OpenGL version is lower than 3.2.
-  :ref:`OpenGLInfo <sdk_qtquick_openglinfo>`.CoreProfile - Functionality deprecated in OpenGL version 3.0 is not available.
-  :ref:`OpenGLInfo <sdk_qtquick_openglinfo>`.CompatibilityProfile - Functionality from earlier OpenGL versions is available.

Reusable QML components will typically use this property in bindings in order to choose between core and non core profile compatible shader sources.

**See also** :ref:`majorVersion <sdk_qtquick_openglinfo_majorVersion>` and :ref:`minorVersion <sdk_qtquick_openglinfo_minorVersion>`.

.. _sdk_qtquick_openglinfo_renderableType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| renderableType : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the renderable type.

The possible values are:

-  :ref:`OpenGLInfo <sdk_qtquick_openglinfo>`.Unspecified (default) - Unspecified rendering method
-  :ref:`OpenGLInfo <sdk_qtquick_openglinfo>`.OpenGL - Desktop OpenGL rendering
-  :ref:`OpenGLInfo <sdk_qtquick_openglinfo>`.OpenGLES - OpenGL ES rendering

