QtQuick.OpenGLInfo
==================

.. raw:: html

   <p>

Provides information about the used OpenGL version More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OpenGLInfo -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

majorVersion : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minorVersion : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

profile : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

renderableType : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$OpenGLInfo-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The OpenGLInfo attached type provides information about the OpenGL
version being used to render the surface of the attachee item.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the attachee item is not currently associated with any graphical
surface, the properties are set to the values of the default surface
format. When it becomes associated with a surface, all properties will
update.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ShaderEffect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OpenGLInfo -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$majorVersion -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="majorVersion-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

majorVersion : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the major OpenGL version.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default version is 2.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also minorVersion and profile.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@majorVersion -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minorVersion-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minorVersion : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the minor OpenGL version.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default version is 2.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also majorVersion and profile.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minorVersion -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="profile-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

profile : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the configured OpenGL context profile.

.. raw:: html

   </p>

.. raw:: html

   <p>

The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

OpenGLInfo.NoProfile (default) - OpenGL version is lower than 3.2.

.. raw:: html

   </li>

.. raw:: html

   <li>

OpenGLInfo.CoreProfile - Functionality deprecated in OpenGL version 3.0
is not available.

.. raw:: html

   </li>

.. raw:: html

   <li>

OpenGLInfo.CompatibilityProfile - Functionality from earlier OpenGL
versions is available.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Reusable QML components will typically use this property in bindings in
order to choose between core and non core profile compatible shader
sources.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also majorVersion and minorVersion.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@profile -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="renderableType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

renderableType : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the renderable type.

.. raw:: html

   </p>

.. raw:: html

   <p>

The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

OpenGLInfo.Unspecified (default) - Unspecified rendering method

.. raw:: html

   </li>

.. raw:: html

   <li>

OpenGLInfo.OpenGL - Desktop OpenGL rendering

.. raw:: html

   </li>

.. raw:: html

   <li>

OpenGLInfo.OpenGLES - OpenGL ES rendering

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@renderableType -->


