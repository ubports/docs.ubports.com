QtQuick.Window.Window
=====================

.. raw:: html

   <p>

Creates a new top-level window More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Window -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Instantiates:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

QQuickWindow

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

activeFocusItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentOrientation : Qt::ScreenOrientation

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

data : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flags : Qt::WindowFlags

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

height : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumHeight : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumWidth : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumHeight : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumWidth : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

modality : Qt::WindowModality

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

opacity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibility : QWindow::Visibility

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visible : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

width : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

x : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

y : int

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

active : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

activeFocusItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibility : QWindow::Visibility

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void closing(CloseEvent close)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

alert(int msec)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

close()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hide()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lower()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

raise()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

requestActivate()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

show()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showFullScreen()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showMaximized()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showMinimized()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showNormal()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Window-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Window object creates a new top-level window for a Qt Quick scene.
It automatically sets up the window for use with QtQuick 2.x graphical
types.

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

Omitting this import will allow you to have a QML environment without
access to window system features.

.. raw:: html

   </p>

.. raw:: html

   <p>

A Window can be declared inside an Item or inside another Window; in
that case the inner Window will automatically become "transient for" the
outer Window: that is, most platforms will show it centered upon the
outer window by default, and there may be other platform-dependent
behaviors, depending also on the flags. If the nested window is intended
to be a dialog in your application, you should also set flags to
Qt.Dialog, because some window managers will not provide the centering
behavior without that flag. You can also declare multiple windows inside
a top-level QtObject, in which case the windows will have no transient
relationship.

.. raw:: html

   </p>

.. raw:: html

   <p>

Alternatively you can set or bind x and y to position the Window
explicitly on the screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the user attempts to close a window, the closing signal will be
emitted. You can force the window to stay open (for example to prompt
the user to save changes) by writing an onClosing handler and setting
close.accepted = false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Window -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$activeFocusItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activeFocusItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

activeFocusItem : Item

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

The item which currently has active focus or null if there is no item
with active focus.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeFocusItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

The background color for the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting this property is more efficient than using a separate Rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentOrientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentOrientation : Qt::ScreenOrientation

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

This is a hint to the window manager in case it needs to display
additional content like popups, dialogs, status bars, or similar in
relation to the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

The recommended orientation is Screen.orientation, but an application
doesn't have to support all possible orientations, and thus can opt to
ignore the current screen orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The difference between the window and the content orientation determines
how much to rotate the content by.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is Qt::PrimaryOrientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Screen.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentOrientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="data-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] data : list<Object>

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

The data property allows you to freely mix visual children, resources
and other Windows in a Window.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you assign another Window to the data list, the nested window will
become "transient for" the outer Window.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you assign an Item to the data list, it becomes a child of the
Window's contentItem, so that it appears inside the window. The item's
parent will be the window's contentItem, which is the root of the Item
ownership tree within that Window.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you assign any other object type, it is added as a resource.

.. raw:: html

   </p>

.. raw:: html

   <p>

It should not generally be necessary to refer to the data property, as
it is the default property for Window and thus all child items are
automatically assigned to this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QWindow::transientParent().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@data -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flags-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flags : Qt::WindowFlags

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

The window flags of the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

The window flags control the window's appearance in the windowing
system, whether it's a dialog, popup, or a regular window, and whether
it should have a title bar, etc.

.. raw:: html

   </p>

.. raw:: html

   <p>

The flags which you read from this property might differ from the ones
that you set if the requested flags could not be fulfilled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flags -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="height-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

height : int

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

Defines the window's position and size.

.. raw:: html

   </p>

.. raw:: html

   <p>

The (x,y) position is relative to the Screen if there is only one, or to
the virtual desktop (arrangement of multiple screens).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@height -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumHeight : int

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

Defines the window's maximum size.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a hint to the window manager to prevent resizing above the
specified width and height.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumWidth : int

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

Defines the window's maximum size.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a hint to the window manager to prevent resizing above the
specified width and height.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumHeight : int

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

Defines the window's minimum size.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a hint to the window manager to prevent resizing below the
specified width and height.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumWidth : int

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

Defines the window's minimum size.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a hint to the window manager to prevent resizing below the
specified width and height.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="modality-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

modality : Qt::WindowModality

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

The modality of the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

A modal window prevents other windows from receiving input events.
Possible values are Qt.NonModal (the default), Qt.WindowModal, and
Qt.ApplicationModal.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@modality -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="opacity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

opacity : real

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

The opacity of the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the windowing system supports window opacity, this can be used to
fade the window in and out, or to make it semitransparent.

.. raw:: html

   </p>

.. raw:: html

   <p>

A value of 1.0 or above is treated as fully opaque, whereas a value of
0.0 or below is treated as fully transparent. Values inbetween represent
varying levels of translucency between the two extremes.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@opacity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="title-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

title : string

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

The window's title in the windowing system.

.. raw:: html

   </p>

.. raw:: html

   <p>

The window title might appear in the title area of the window
decorations, depending on the windowing system and the window flags. It
might also be used by the windowing system to identify the window in
other contexts, such as in the task switcher.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visibility-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visibility : QWindow::Visibility

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

The screen-occupation state of the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

Visibility is whether the window should appear in the windowing system
as normal, minimized, maximized, fullscreen or hidden.

.. raw:: html

   </p>

.. raw:: html

   <p>

To set the visibility to AutomaticVisibility means to give the window a
default visible state, which might be FullScreen or Windowed depending
on the platform. However when reading the visibility property you will
always get the actual state, never AutomaticVisibility.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a window is not visible its visibility is Hidden, and setting
visibility to Hidden is the same as setting visible to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also visible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@visibility -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visible-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visible : bool

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

Whether the window is visible on the screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting visible to false is the same as setting visibility to Hidden.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also visibility.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@visible -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="width-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

width : int

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

Defines the window's position and size.

.. raw:: html

   </p>

.. raw:: html

   <p>

The (x,y) position is relative to the Screen if there is only one, or to
the virtual desktop (arrangement of multiple screens).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@width -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

x : int

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

Defines the window's position and size.

.. raw:: html

   </p>

.. raw:: html

   <p>

The (x,y) position is relative to the Screen if there is only one, or to
the virtual desktop (arrangement of multiple screens).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@x -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

y : int

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

Defines the window's position and size.

.. raw:: html

   </p>

.. raw:: html

   <p>

The (x,y) position is relative to the Screen if there is only one, or to
the virtual desktop (arrangement of multiple screens).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="active-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Window.active : bool

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

This attached property tells whether the window is active. The Window
attached property can be attached to any Item.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is an example which changes a label to show the active state of the
window in which it is shown:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import QtQuick.Window 2.2
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">Window</span>.<span class="name">active</span> ? <span class="string">&quot;active&quot;</span> : <span class="string">&quot;inactive&quot;</span>
   }</pre>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activeFocusItem-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Window.activeFocusItem : Item

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

This attached property holds the item which currently has active focus
or null if there is no item with active focus. The Window attached
property can be attached to any Item.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeFocusItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentItem-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Window.contentItem : Item

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

This attached property holds the invisible root item of the scene or
null if the item is not in a window. The Window attached property can be
attached to any Item.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visibility-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Window.visibility : QWindow::Visibility

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

This attached property holds whether the window is currently shown in
the windowing system as normal, minimized, maximized, fullscreen or
hidden. The Window attached property can be attached to any Item. If the
item is not shown in any window, the value will be Hidden.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also visible and visibility.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@visibility -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$closing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="closing-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void closing(CloseEvent close)

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

This signal is emitted when the user tries to close the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

This signal includes a close parameter. The close accepted property is
true by default so that the window is allowed to close; but you can
implement an onClosing handler and set close.accepted = false if you
need to do something else before the window can be closed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onClosing.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@closing -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$alert -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alert-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

alert(int msec)

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

Causes an alert to be shown for msec milliseconds. If msec is 0 (the
default), then the alert is shown indefinitely until the window becomes
active again.

.. raw:: html

   </p>

.. raw:: html

   <p>

In alert state, the window indicates that it demands attention, for
example by flashing or bouncing the taskbar entry.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alert -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="close-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

close()

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

Closes the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

When this method is called, or when the user tries to close the window
by its title bar button, the closing signal will be emitted. If there is
no handler, or the handler does not revoke permission to close, the
window will subsequently close. If the
QGuiApplication::quitOnLastWindowClosed property is true, and there are
no other windows open, the application will quit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@close -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hide-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

hide()

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

Hides the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

Equivalent to setting visible to false or visibility to Hidden.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also show().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hide -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lower-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

lower()

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

Lowers the window in the windowing system.

.. raw:: html

   </p>

.. raw:: html

   <p>

Requests that the window be lowered to appear below other windows.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lower -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="raise-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

raise()

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

Raises the window in the windowing system.

.. raw:: html

   </p>

.. raw:: html

   <p>

Requests that the window be raised to appear above other windows.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@raise -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="requestActivate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

requestActivate()

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

Requests the window to be activated, i.e. receive keyboard focus.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@requestActivate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="show-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

show()

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

Shows the window.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is equivalent to calling showFullScreen(), showMaximized(), or
showNormal(), depending on the platform's default behavior for the
window type and flags.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also showFullScreen(), showMaximized(), showNormal(), hide(), and
flags().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@show -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showFullScreen-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

showFullScreen()

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

Shows the window as fullscreen.

.. raw:: html

   </p>

.. raw:: html

   <p>

Equivalent to setting visibility to FullScreen.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showFullScreen -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showMaximized-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

showMaximized()

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

Shows the window as maximized.

.. raw:: html

   </p>

.. raw:: html

   <p>

Equivalent to setting visibility to Maximized.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showMaximized -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showMinimized-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

showMinimized()

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

Shows the window as minimized.

.. raw:: html

   </p>

.. raw:: html

   <p>

Equivalent to setting visibility to Minimized.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showMinimized -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showNormal-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

showNormal()

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

Shows the window as normal, i.e. neither maximized, minimized, nor
fullscreen.

.. raw:: html

   </p>

.. raw:: html

   <p>

Equivalent to setting visibility to Windowed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showNormal -->


