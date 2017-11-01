Creates a new top-level window

+---------------------+-----------------------------+
| Import Statement:   | import QtQuick.Window 2.2   |
+---------------------+-----------------------------+
| Instantiates:       | QQuickWindow                |
+---------------------+-----------------------------+

Properties
----------

-  ****`activeFocusItem </sdk/apps/qml/QtQuick/Window.Window#activeFocusItem-prop>`__****
   : Item
-  ****`color </sdk/apps/qml/QtQuick/Window.Window#color-prop>`__**** :
   color
-  ****`contentOrientation </sdk/apps/qml/QtQuick/Window.Window#contentOrientation-prop>`__****
   : Qt::ScreenOrientation
-  ****`data </sdk/apps/qml/QtQuick/Window.Window#data-prop>`__**** :
   list<Object>
-  ****`flags </sdk/apps/qml/QtQuick/Window.Window#flags-prop>`__**** :
   Qt::WindowFlags
-  ****`height </sdk/apps/qml/QtQuick/Window.Window#height-prop>`__****
   : int
-  ****`maximumHeight </sdk/apps/qml/QtQuick/Window.Window#maximumHeight-prop>`__****
   : int
-  ****`maximumWidth </sdk/apps/qml/QtQuick/Window.Window#maximumWidth-prop>`__****
   : int
-  ****`minimumHeight </sdk/apps/qml/QtQuick/Window.Window#minimumHeight-prop>`__****
   : int
-  ****`minimumWidth </sdk/apps/qml/QtQuick/Window.Window#minimumWidth-prop>`__****
   : int
-  ****`modality </sdk/apps/qml/QtQuick/Window.Window#modality-prop>`__****
   : Qt::WindowModality
-  ****`opacity </sdk/apps/qml/QtQuick/Window.Window#opacity-prop>`__****
   : real
-  ****`title </sdk/apps/qml/QtQuick/Window.Window#title-prop>`__**** :
   string
-  ****`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-prop>`__****
   : QWindow::Visibility
-  ****`visible </sdk/apps/qml/QtQuick/Window.Window#visible-prop>`__****
   : bool
-  ****`width </sdk/apps/qml/QtQuick/Window.Window#width-prop>`__**** :
   int
-  ****`x </sdk/apps/qml/QtQuick/Window.Window#x-prop>`__**** : int
-  ****`y </sdk/apps/qml/QtQuick/Window.Window#y-prop>`__**** : int

Attached Properties
-------------------

-  ****`active </sdk/apps/qml/QtQuick/Window.Window#active-attached-prop>`__****
   : bool
-  ****`activeFocusItem </sdk/apps/qml/QtQuick/Window.Window#activeFocusItem-attached-prop>`__****
   : Item
-  ****`contentItem </sdk/apps/qml/QtQuick/Window.Window#contentItem-attached-prop>`__****
   : Item
-  ****`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__****
   : QWindow::Visibility

Signals
-------

-  void
   ****`closing </sdk/apps/qml/QtQuick/Window.Window#closing-signal>`__****\ (CloseEvent
   *close*)

Methods
-------

-  ****`alert </sdk/apps/qml/QtQuick/Window.Window#alert-method>`__****\ (int
   *msec*)
-  ****`close </sdk/apps/qml/QtQuick/Window.Window#close-method>`__****\ ()
-  ****`hide </sdk/apps/qml/QtQuick/Window.Window#hide-method>`__****\ ()
-  ****`lower </sdk/apps/qml/QtQuick/Window.Window#lower-method>`__****\ ()
-  ****`raise </sdk/apps/qml/QtQuick/Window.Window#raise-method>`__****\ ()
-  ****`requestActivate </sdk/apps/qml/QtQuick/Window.Window#requestActivate-method>`__****\ ()
-  ****`show </sdk/apps/qml/QtQuick/Window.Window#show-method>`__****\ ()
-  ****`showFullScreen </sdk/apps/qml/QtQuick/Window.Window#showFullScreen-method>`__****\ ()
-  ****`showMaximized </sdk/apps/qml/QtQuick/Window.Window#showMaximized-method>`__****\ ()
-  ****`showMinimized </sdk/apps/qml/QtQuick/Window.Window#showMinimized-method>`__****\ ()
-  ****`showNormal </sdk/apps/qml/QtQuick/Window.Window#showNormal-method>`__****\ ()

Detailed Description
--------------------

The Window object creates a new top-level window for a Qt Quick scene.
It automatically sets up the window for use with ``QtQuick 2.x``
graphical types.

To use this type, you will need to import the module with the following
line:

.. code:: cpp

    import QtQuick.Window 2.2

Omitting this import will allow you to have a QML environment without
access to window system features.

A Window can be declared inside an Item or inside another Window; in
that case the inner Window will automatically become "transient for" the
outer Window: that is, most platforms will show it centered upon the
outer window by default, and there may be other platform-dependent
behaviors, depending also on the
`flags </sdk/apps/qml/QtQuick/Window.Window#flags-prop>`__. If the
nested window is intended to be a dialog in your application, you should
also set `flags </sdk/apps/qml/QtQuick/Window.Window#flags-prop>`__ to
Qt.Dialog, because some window managers will not provide the centering
behavior without that flag. You can also declare multiple windows inside
a top-level QtObject, in which case the windows will have no transient
relationship.

Alternatively you can set or bind
`x </sdk/apps/qml/QtQuick/Window.Window#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/Window.Window#y-prop>`__ to position the
Window explicitly on the screen.

When the user attempts to close a window, the
`closing </sdk/apps/qml/QtQuick/Window.Window#closing-signal>`__ signal
will be emitted. You can force the window to stay open (for example to
prompt the user to save changes) by writing an ``onClosing`` handler and
setting ``close.accepted = false``.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ activeFocusItem : `Item </sdk/apps/qml/QtQuick/Item/>`__        |
+--------------------------------------------------------------------------+

The item which currently has active focus or ``null`` if there is no
item with active focus.

This QML property was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The background color for the window.

Setting this property is more efficient than using a separate Rectangle.

| 

+--------------------------------------------------------------------------+
|        \ contentOrientation : Qt::ScreenOrientation                      |
+--------------------------------------------------------------------------+

This is a hint to the window manager in case it needs to display
additional content like popups, dialogs, status bars, or similar in
relation to the window.

The recommended orientation is
`Screen.orientation </sdk/apps/qml/QtQuick/Window.Screen#orientation-attached-prop>`__,
but an application doesn't have to support all possible orientations,
and thus can opt to ignore the current screen orientation.

The difference between the window and the content orientation determines
how much to rotate the content by.

The default value is Qt::PrimaryOrientation.

This QML property was introduced in Qt 5.1.

**See also** `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`__.

| 

+--------------------------------------------------------------------------+
|        \ [default] data : list<Object>                                   |
+--------------------------------------------------------------------------+

The data property allows you to freely mix visual children, resources
and other Windows in a Window.

If you assign another Window to the data list, the nested window will
become "transient for" the outer Window.

If you assign an `Item </sdk/apps/qml/QtQuick/Item/>`__ to the data
list, it becomes a child of the Window's
`contentItem </sdk/apps/qml/QtQuick/Window.Window#contentItem-attached-prop>`__,
so that it appears inside the window. The item's parent will be the
window's
`contentItem </sdk/apps/qml/QtQuick/Window.Window#contentItem-attached-prop>`__,
which is the root of the Item ownership tree within that Window.

If you assign any other object type, it is added as a resource.

It should not generally be necessary to refer to the ``data`` property,
as it is the default property for Window and thus all child items are
automatically assigned to this property.

**See also** QWindow::transientParent().

| 

+--------------------------------------------------------------------------+
|        \ flags : Qt::WindowFlags                                         |
+--------------------------------------------------------------------------+

The window flags of the window.

The window flags control the window's appearance in the windowing
system, whether it's a dialog, popup, or a regular window, and whether
it should have a title bar, etc.

The flags which you read from this property might differ from the ones
that you set if the requested flags could not be fulfilled.

| 

+--------------------------------------------------------------------------+
|        \ height : int                                                    |
+--------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the
`Screen </sdk/apps/qml/QtQuick/Window.Screen/>`__ if there is only one,
or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

|image0|

| 

+--------------------------------------------------------------------------+
|        \ maximumHeight : int                                             |
+--------------------------------------------------------------------------+

Defines the window's maximum size.

This is a hint to the window manager to prevent resizing above the
specified width and height.

This QML property was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ maximumWidth : int                                              |
+--------------------------------------------------------------------------+

Defines the window's maximum size.

This is a hint to the window manager to prevent resizing above the
specified width and height.

This QML property was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ minimumHeight : int                                             |
+--------------------------------------------------------------------------+

Defines the window's minimum size.

This is a hint to the window manager to prevent resizing below the
specified width and height.

This QML property was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ minimumWidth : int                                              |
+--------------------------------------------------------------------------+

Defines the window's minimum size.

This is a hint to the window manager to prevent resizing below the
specified width and height.

This QML property was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ modality : Qt::WindowModality                                   |
+--------------------------------------------------------------------------+

The modality of the window.

A modal window prevents other windows from receiving input events.
Possible values are Qt.NonModal (the default), Qt.WindowModal, and
Qt.ApplicationModal.

| 

+--------------------------------------------------------------------------+
|        \ opacity : real                                                  |
+--------------------------------------------------------------------------+

The opacity of the window.

If the windowing system supports window opacity, this can be used to
fade the window in and out, or to make it semitransparent.

A value of 1.0 or above is treated as fully opaque, whereas a value of
0.0 or below is treated as fully transparent. Values inbetween represent
varying levels of translucency between the two extremes.

The default value is 1.0.

This QML property was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ title : string                                                  |
+--------------------------------------------------------------------------+

The window's title in the windowing system.

The window title might appear in the title area of the window
decorations, depending on the windowing system and the window flags. It
might also be used by the windowing system to identify the window in
other contexts, such as in the task switcher.

| 

+--------------------------------------------------------------------------+
|        \ visibility : QWindow::Visibility                                |
+--------------------------------------------------------------------------+

The screen-occupation state of the window.

Visibility is whether the window should appear in the windowing system
as normal, minimized, maximized, fullscreen or hidden.

To set the visibility to AutomaticVisibility means to give the window a
default visible state, which might be FullScreen or Windowed depending
on the platform. However when reading the visibility property you will
always get the actual state, never ``AutomaticVisibility``.

When a window is not visible its visibility is Hidden, and setting
visibility to Hidden is the same as setting
`visible </sdk/apps/qml/QtQuick/Window.Window#visible-prop>`__ to
``false``.

This QML property was introduced in Qt 5.1.

**See also**
`visible </sdk/apps/qml/QtQuick/Window.Window#visible-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ visible : bool                                                  |
+--------------------------------------------------------------------------+

Whether the window is visible on the screen.

Setting visible to false is the same as setting
`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__
to Hidden.

**See also**
`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ width : int                                                     |
+--------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the
`Screen </sdk/apps/qml/QtQuick/Window.Screen/>`__ if there is only one,
or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

|image1|

| 

+--------------------------------------------------------------------------+
|        \ x : int                                                         |
+--------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the
`Screen </sdk/apps/qml/QtQuick/Window.Screen/>`__ if there is only one,
or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

|image2|

| 

+--------------------------------------------------------------------------+
|        \ y : int                                                         |
+--------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the
`Screen </sdk/apps/qml/QtQuick/Window.Screen/>`__ if there is only one,
or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

|image3|

| 

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ Window.active : bool                                            |
+--------------------------------------------------------------------------+

This attached property tells whether the window is active. The Window
attached property can be attached to any Item.

Here is an example which changes a label to show the active state of the
window in which it is shown:

.. code:: qml

    import QtQuick 2.4
    import QtQuick.Window 2.2
    Text {
        text: Window.active ? "active" : "inactive"
    }

This QML property was introduced in Qt 5.4.

| 

+--------------------------------------------------------------------------+
|        \ Window.activeFocusItem : `Item </sdk/apps/qml/QtQuick/Item/>`__ |
+--------------------------------------------------------------------------+

This attached property holds the item which currently has active focus
or ``null`` if there is no item with active focus. The Window attached
property can be attached to any Item.

This QML property was introduced in Qt 5.4.

| 

+--------------------------------------------------------------------------+
|        \ Window.contentItem : `Item </sdk/apps/qml/QtQuick/Item/>`__     |
+--------------------------------------------------------------------------+

This attached property holds the invisible root item of the scene or
``null`` if the item is not in a window. The Window attached property
can be attached to any Item.

This QML property was introduced in Qt 5.4.

| 

+--------------------------------------------------------------------------+
|        \ Window.visibility : QWindow::Visibility                         |
+--------------------------------------------------------------------------+

This attached property holds whether the window is currently shown in
the windowing system as normal, minimized, maximized, fullscreen or
hidden. The ``Window`` attached property can be attached to any Item. If
the item is not shown in any window, the value will be Hidden.

This QML property was introduced in Qt 5.4.

**See also**
`visible </sdk/apps/qml/QtQuick/Window.Window#visible-prop>`__ and
visibility.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void                                                            |
| closing(`CloseEvent </sdk/apps/qml/QtQuick/Window.CloseEvent/>`__        |
| *close*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the user tries to close the window.

This signal includes a *close* parameter. The *close* accepted property
is true by default so that the window is allowed to close; but you can
implement an ``onClosing`` handler and set ``close.accepted = false`` if
you need to do something else before the window can be closed.

The corresponding handler is ``onClosing``.

This QML signal was introduced in Qt 5.1.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ alert(int *msec*)                                               |
+--------------------------------------------------------------------------+

Causes an alert to be shown for *msec* milliseconds. If *msec* is ``0``
(the default), then the alert is shown indefinitely until the window
becomes active again.

In alert state, the window indicates that it demands attention, for
example by flashing or bouncing the taskbar entry.

This QML method was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ close()                                                         |
+--------------------------------------------------------------------------+

Closes the window.

When this method is called, or when the user tries to close the window
by its title bar button, the
`closing </sdk/apps/qml/QtQuick/Window.Window#closing-signal>`__ signal
will be emitted. If there is no handler, or the handler does not revoke
permission to close, the window will subsequently close. If the
QGuiApplication::quitOnLastWindowClosed property is ``true``, and there
are no other windows open, the application will quit.

| 

+--------------------------------------------------------------------------+
|        \ hide()                                                          |
+--------------------------------------------------------------------------+

Hides the window.

Equivalent to setting
`visible </sdk/apps/qml/QtQuick/Window.Window#visible-prop>`__ to
``false`` or
`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__
to Hidden.

**See also**
`show() </sdk/apps/qml/QtQuick/Window.Window#show-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ lower()                                                         |
+--------------------------------------------------------------------------+

Lowers the window in the windowing system.

Requests that the window be lowered to appear below other windows.

| 

+--------------------------------------------------------------------------+
|        \ raise()                                                         |
+--------------------------------------------------------------------------+

Raises the window in the windowing system.

Requests that the window be raised to appear above other windows.

| 

+--------------------------------------------------------------------------+
|        \ requestActivate()                                               |
+--------------------------------------------------------------------------+

Requests the window to be activated, i.e. receive keyboard focus.

This QML method was introduced in Qt 5.1.

| 

+--------------------------------------------------------------------------+
|        \ show()                                                          |
+--------------------------------------------------------------------------+

Shows the window.

This is equivalent to calling
`showFullScreen() </sdk/apps/qml/QtQuick/Window.Window#showFullScreen-method>`__,
`showMaximized() </sdk/apps/qml/QtQuick/Window.Window#showMaximized-method>`__,
or
`showNormal() </sdk/apps/qml/QtQuick/Window.Window#showNormal-method>`__,
depending on the platform's default behavior for the window type and
flags.

**See also**
`showFullScreen() </sdk/apps/qml/QtQuick/Window.Window#showFullScreen-method>`__,
`showMaximized() </sdk/apps/qml/QtQuick/Window.Window#showMaximized-method>`__,
`showNormal() </sdk/apps/qml/QtQuick/Window.Window#showNormal-method>`__,
`hide() </sdk/apps/qml/QtQuick/Window.Window#hide-method>`__, and
flags().

| 

+--------------------------------------------------------------------------+
|        \ showFullScreen()                                                |
+--------------------------------------------------------------------------+

Shows the window as fullscreen.

Equivalent to setting
`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__
to FullScreen.

| 

+--------------------------------------------------------------------------+
|        \ showMaximized()                                                 |
+--------------------------------------------------------------------------+

Shows the window as maximized.

Equivalent to setting
`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__
to Maximized.

| 

+--------------------------------------------------------------------------+
|        \ showMinimized()                                                 |
+--------------------------------------------------------------------------+

Shows the window as minimized.

Equivalent to setting
`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__
to Minimized.

| 

+--------------------------------------------------------------------------+
|        \ showNormal()                                                    |
+--------------------------------------------------------------------------+

Shows the window as normal, i.e. neither maximized, minimized, nor
fullscreen.

Equivalent to setting
`visibility </sdk/apps/qml/QtQuick/Window.Window#visibility-attached-prop>`__
to Windowed.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Window.Window/images/screen-and-window-dimensions.jpg
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Window.Window/images/screen-and-window-dimensions.jpg
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Window.Window/images/screen-and-window-dimensions.jpg
.. |image3| image:: /media/sdk/apps/qml/QtQuick/Window.Window/images/screen-and-window-dimensions.jpg

