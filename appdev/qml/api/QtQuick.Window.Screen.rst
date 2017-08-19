QtQuick.Window.Screen
=====================

.. raw:: html

   <p>

The Screen attached object provides information about the Screen an Item
or Window is displayed on. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Screen -->

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

import QtQuick.Window 2.2

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Obsolete members

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

desktopAvailableHeight : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

desktopAvailableWidth : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

devicePixelRatio : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

height : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientation : Qt::ScreenOrientation

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientationUpdateMask : Qt::ScreenOrientations

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pixelDensity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

primaryOrientation : Qt::ScreenOrientation

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

width : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Screen-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Screen attached object is valid inside Item or Item derived types,
after component completion. Inside these items it refers to the screen
that the item is currently being displayed on.

.. raw:: html

   </p>

.. raw:: html

   <p>

The attached object is also valid inside Window or Window derived types,
after component completion. In that case it refers to the screen where
the Window was created. It is generally better to access the Screen from
the relevant Item instead, because on a multi-screen desktop computer,
the user can drag a Window into a position where it spans across
multiple screens. In that case some Items will be on one screen, and
others on a different screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

To use this type, you will need to import the module with the following
line:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Window <span class="number">2.2</span></pre>

.. raw:: html

   <p>

It is a separate import in order to allow you to have a QML environment
without access to window system features.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the Screen type is not valid at Component.onCompleted, because
the Item or Window has not been displayed on a screen by this time.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Screen -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$desktopAvailableHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="desktopAvailableHeight-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.desktopAvailableHeight : int

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

This contains the available height of the collection of screens which
make up the virtual desktop, in pixels, excluding window manager
reserved areas such as task bars and system menus. If you want to
position a Window at the bottom of the desktop, you can bind to it like
this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">y: Screen<span class="operator">.</span>desktopAvailableHeight <span class="operator">-</span> height</pre>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@desktopAvailableHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="desktopAvailableWidth-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.desktopAvailableWidth : int

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

This contains the available width of the collection of screens which
make up the virtual desktop, in pixels, excluding window manager
reserved areas such as task bars and system menus. If you want to
position a Window at the right of the desktop, you can bind to it like
this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">x: Screen<span class="operator">.</span>desktopAvailableWidth <span class="operator">-</span> width</pre>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@desktopAvailableWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="devicePixelRatio-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.devicePixelRatio : real

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

The ratio between physical pixels and device-independent pixels for the
screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

Common values are 1.0 on normal displays and 2.0 on Apple "retina"
displays.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@devicePixelRatio -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="height-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.height : int

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

This contains the height of the screen in pixels.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@height -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.name : string

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

The name of the screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientation-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.orientation : Qt::ScreenOrientation

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

This contains the current orientation of the screen, from the
accelerometer (if any). On a desktop computer, this value typically does
not change.

.. raw:: html

   </p>

.. raw:: html

   <p>

If primaryOrientation == orientation, it means that the screen
automatically rotates all content which is displayed, depending on how
you hold it. But if orientation changes while primaryOrientation does
NOT change, then probably you are using a device which does not rotate
its own display. In that case you may need to use Item.rotation or
Item.transform to rotate your content.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This property does not update unless a
Screen::orientationUpdateMask is set to a value other than 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientationUpdateMask-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Screen.orientationUpdateMask : Qt::ScreenOrientations

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

This contains the update mask for the orientation. Screen::orientation
only emits changes for the screen orientations matching this mask.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default it is set to the value of the QScreen that the window uses.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientationUpdateMask -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pixelDensity-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.pixelDensity : real

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

The number of physical pixels per millimeter.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pixelDensity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="primaryOrientation-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.primaryOrientation : Qt::ScreenOrientation

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

This contains the primary orientation of the screen. If the screen's
height is greater than its width, then the orientation is
Qt.PortraitOrientation; otherwise it is Qt.LandscapeOrientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you are designing an application which changes its layout depending
on device orientation, you probably want to use primaryOrientation to
determine the layout. That is because on a desktop computer, you can
expect primaryOrientation to change when the user rotates the screen via
the operating system's control panel, even if the computer does not
contain an accelerometer. Likewise on most handheld computers which do
have accelerometers, the operating system will rotate the whole screen
automatically, so again you will see the primaryOrientation change.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@primaryOrientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="width-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] Screen.width : int

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

This contains the width of the screen in pixels.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@width -->


