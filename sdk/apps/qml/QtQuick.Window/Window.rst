.. _sdk_qtquick_window_window:

QtQuick.Window Window
=====================

Creates a new top-level window

+---------------------+-----------------------------+
| Import Statement:   | import QtQuick.Window 2.2   |
+---------------------+-----------------------------+
| Instantiates:       | QQuickWindow                |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`activeFocusItem <sdk_qtquick_window_window_activeFocusItem>` : Item
-  :ref:`color <sdk_qtquick_window_window_color>` : color
-  :ref:`contentOrientation <sdk_qtquick_window_window_contentOrientation>` : Qt::ScreenOrientation
-  :ref:`data <sdk_qtquick_window_window_data>` : list<Object>
-  :ref:`flags <sdk_qtquick_window_window_flags>` : Qt::WindowFlags
-  :ref:`height <sdk_qtquick_window_window_height>` : int
-  :ref:`maximumHeight <sdk_qtquick_window_window_maximumHeight>` : int
-  :ref:`maximumWidth <sdk_qtquick_window_window_maximumWidth>` : int
-  :ref:`minimumHeight <sdk_qtquick_window_window_minimumHeight>` : int
-  :ref:`minimumWidth <sdk_qtquick_window_window_minimumWidth>` : int
-  :ref:`modality <sdk_qtquick_window_window_modality>` : Qt::WindowModality
-  :ref:`opacity <sdk_qtquick_window_window_opacity>` : real
-  :ref:`title <sdk_qtquick_window_window_title>` : string
-  :ref:`visibility <sdk_qtquick_window_window_visibility>` : QWindow::Visibility
-  :ref:`visible <sdk_qtquick_window_window_visible>` : bool
-  :ref:`width <sdk_qtquick_window_window_width>` : int
-  :ref:`x <sdk_qtquick_window_window_x>` : int
-  :ref:`y <sdk_qtquick_window_window_y>` : int

Attached Properties
-------------------

-  :ref:`active <sdk_qtquick_window_window_active>` : bool
-  :ref:`activeFocusItem <sdk_qtquick_window_window_activeFocusItem>` : Item
-  :ref:`contentItem <sdk_qtquick_window_window_contentItem>` : Item
-  :ref:`visibility <sdk_qtquick_window_window_visibility>` : QWindow::Visibility

Signals
-------

-  void :ref:`closing <sdk_qtquick_window_window_closing>`\ (CloseEvent *close*)

Methods
-------

-  :ref:`alert <sdk_qtquick_window_window_alert>`\ (int *msec*)
-  :ref:`close <sdk_qtquick_window_window_close>`\ ()
-  :ref:`hide <sdk_qtquick_window_window_hide>`\ ()
-  :ref:`lower <sdk_qtquick_window_window_lower>`\ ()
-  :ref:`raise <sdk_qtquick_window_window_raise>`\ ()
-  :ref:`requestActivate <sdk_qtquick_window_window_requestActivate>`\ ()
-  :ref:`show <sdk_qtquick_window_window_show>`\ ()
-  :ref:`showFullScreen <sdk_qtquick_window_window_showFullScreen>`\ ()
-  :ref:`showMaximized <sdk_qtquick_window_window_showMaximized>`\ ()
-  :ref:`showMinimized <sdk_qtquick_window_window_showMinimized>`\ ()
-  :ref:`showNormal <sdk_qtquick_window_window_showNormal>`\ ()

Detailed Description
--------------------

The Window object creates a new top-level window for a Qt Quick scene. It automatically sets up the window for use with ``QtQuick 2.x`` graphical types.

To use this type, you will need to import the module with the following line:

.. code:: cpp

    import QtQuick.Window 2.2

Omitting this import will allow you to have a QML environment without access to window system features.

A Window can be declared inside an Item or inside another Window; in that case the inner Window will automatically become "transient for" the outer Window: that is, most platforms will show it centered upon the outer window by default, and there may be other platform-dependent behaviors, depending also on the :ref:`flags <sdk_qtquick_window_window_flags>`. If the nested window is intended to be a dialog in your application, you should also set :ref:`flags <sdk_qtquick_window_window_flags>` to Qt.Dialog, because some window managers will not provide the centering behavior without that flag. You can also declare multiple windows inside a top-level QtObject, in which case the windows will have no transient relationship.

Alternatively you can set or bind :ref:`x <sdk_qtquick_window_window_x>` and :ref:`y <sdk_qtquick_window_window_y>` to position the Window explicitly on the screen.

When the user attempts to close a window, the :ref:`closing <sdk_qtquick_window_window_closing>` signal will be emitted. You can force the window to stay open (for example to prompt the user to save changes) by writing an ``onClosing`` handler and setting ``close.accepted = false``.

Property Documentation
----------------------

.. _sdk_qtquick_window_window_activeFocusItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activeFocusItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The item which currently has active focus or ``null`` if there is no item with active focus.

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The background color for the window.

Setting this property is more efficient than using a separate Rectangle.

.. _sdk_qtquick_window_window_contentOrientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentOrientation : Qt::ScreenOrientation                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This is a hint to the window manager in case it needs to display additional content like popups, dialogs, status bars, or similar in relation to the window.

The recommended orientation is `Screen.orientation </sdk/apps/qml/QtQuick/Window.Screen/#orientation-attached-prop>`_ , but an application doesn't have to support all possible orientations, and thus can opt to ignore the current screen orientation.

The difference between the window and the content orientation determines how much to rotate the content by.

The default value is Qt::PrimaryOrientation.

This QML property was introduced in Qt 5.1.

**See also** `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_ .

.. _sdk_qtquick_window_window_data:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] data : list<Object>                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The data property allows you to freely mix visual children, resources and other Windows in a Window.

If you assign another Window to the data list, the nested window will become "transient for" the outer Window.

If you assign an :ref:`Item <sdk_qtquick_item>` to the data list, it becomes a child of the Window's :ref:`contentItem <sdk_qtquick_window_window_contentItem>`, so that it appears inside the window. The item's parent will be the window's :ref:`contentItem <sdk_qtquick_window_window_contentItem>`, which is the root of the Item ownership tree within that Window.

If you assign any other object type, it is added as a resource.

It should not generally be necessary to refer to the ``data`` property, as it is the default property for Window and thus all child items are automatically assigned to this property.

**See also** QWindow::transientParent().

.. _sdk_qtquick_window_window_flags:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flags : Qt::WindowFlags                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The window flags of the window.

The window flags control the window's appearance in the windowing system, whether it's a dialog, popup, or a regular window, and whether it should have a title bar, etc.

The flags which you read from this property might differ from the ones that you set if the requested flags could not be fulfilled.

.. _sdk_qtquick_window_window_height:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| height : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_  if there is only one, or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

.. _sdk_qtquick_window_window_maximumHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumHeight : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's maximum size.

This is a hint to the window manager to prevent resizing above the specified width and height.

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_maximumWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumWidth : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's maximum size.

This is a hint to the window manager to prevent resizing above the specified width and height.

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_minimumHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimumHeight : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's minimum size.

This is a hint to the window manager to prevent resizing below the specified width and height.

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_minimumWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimumWidth : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's minimum size.

This is a hint to the window manager to prevent resizing below the specified width and height.

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_modality:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| modality : Qt::WindowModality                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The modality of the window.

A modal window prevents other windows from receiving input events. Possible values are Qt.NonModal (the default), Qt.WindowModal, and Qt.ApplicationModal.

.. _sdk_qtquick_window_window_opacity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| opacity : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The opacity of the window.

If the windowing system supports window opacity, this can be used to fade the window in and out, or to make it semitransparent.

A value of 1.0 or above is treated as fully opaque, whereas a value of 0.0 or below is treated as fully transparent. Values inbetween represent varying levels of translucency between the two extremes.

The default value is 1.0.

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_title:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| title : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The window's title in the windowing system.

The window title might appear in the title area of the window decorations, depending on the windowing system and the window flags. It might also be used by the windowing system to identify the window in other contexts, such as in the task switcher.

.. _sdk_qtquick_window_window_visibility:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibility : QWindow::Visibility                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The screen-occupation state of the window.

Visibility is whether the window should appear in the windowing system as normal, minimized, maximized, fullscreen or hidden.

To set the visibility to AutomaticVisibility means to give the window a default visible state, which might be FullScreen or Windowed depending on the platform. However when reading the visibility property you will always get the actual state, never ``AutomaticVisibility``.

When a window is not visible its visibility is Hidden, and setting visibility to Hidden is the same as setting :ref:`visible <sdk_qtquick_window_window_visible>` to ``false``.

This QML property was introduced in Qt 5.1.

**See also** :ref:`visible <sdk_qtquick_window_window_visible>`.

.. _sdk_qtquick_window_window_visible:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visible : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the window is visible on the screen.

Setting visible to false is the same as setting :ref:`visibility <sdk_qtquick_window_window_visibility>` to Hidden.

**See also** :ref:`visibility <sdk_qtquick_window_window_visibility>`.

.. _sdk_qtquick_window_window_width:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| width : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_  if there is only one, or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

.. _sdk_qtquick_window_window_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : int                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_  if there is only one, or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

.. _sdk_qtquick_window_window_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : int                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the window's position and size.

The (x,y) position is relative to the `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_  if there is only one, or to the virtual desktop (arrangement of multiple screens).

.. code:: qml

    Window { x: 100; y: 100; width: 100; height: 100 }

Attached Property Documentation
-------------------------------

.. _sdk_qtquick_window_window_active:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Window.active : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property tells whether the window is active. The Window attached property can be attached to any Item.

Here is an example which changes a label to show the active state of the window in which it is shown:

.. code:: qml

    import QtQuick 2.4
    import QtQuick.Window 2.2
    Text {
        text: Window.active ? "active" : "inactive"
    }

This QML property was introduced in Qt 5.4.

.. _sdk_qtquick_window_window_activeFocusItem1:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Window.activeFocusItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the item which currently has active focus or ``null`` if there is no item with active focus. The Window attached property can be attached to any Item.

This QML property was introduced in Qt 5.4.

.. _sdk_qtquick_window_window_contentItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Window.contentItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the invisible root item of the scene or ``null`` if the item is not in a window. The Window attached property can be attached to any Item.

This QML property was introduced in Qt 5.4.

.. _sdk_qtquick_window_window_visibility1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Window.visibility : QWindow::Visibility                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds whether the window is currently shown in the windowing system as normal, minimized, maximized, fullscreen or hidden. The ``Window`` attached property can be attached to any Item. If the item is not shown in any window, the value will be Hidden.

This QML property was introduced in Qt 5.4.

**See also** :ref:`visible <sdk_qtquick_window_window_visible>` and visibility.

Signal Documentation
--------------------

.. _sdk_qtquick_window_window_closing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void closing(`CloseEvent </sdk/apps/qml/QtQuick/Window.CloseEvent/>`_  *close*)                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the user tries to close the window.

This signal includes a *close* parameter. The *close* accepted property is true by default so that the window is allowed to close; but you can implement an ``onClosing`` handler and set ``close.accepted = false`` if you need to do something else before the window can be closed.

The corresponding handler is ``onClosing``.

This QML signal was introduced in Qt 5.1.

Method Documentation
--------------------

.. _sdk_qtquick_window_window_alert:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| alert(int *msec*)                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Causes an alert to be shown for *msec* milliseconds. If *msec* is ``0`` (the default), then the alert is shown indefinitely until the window becomes active again.

In alert state, the window indicates that it demands attention, for example by flashing or bouncing the taskbar entry.

This QML method was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_close:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| close()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Closes the window.

When this method is called, or when the user tries to close the window by its title bar button, the :ref:`closing <sdk_qtquick_window_window_closing>` signal will be emitted. If there is no handler, or the handler does not revoke permission to close, the window will subsequently close. If the QGuiApplication::quitOnLastWindowClosed property is ``true``, and there are no other windows open, the application will quit.

.. _sdk_qtquick_window_window_hide:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hide()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Hides the window.

Equivalent to setting :ref:`visible <sdk_qtquick_window_window_visible>` to ``false`` or :ref:`visibility <sdk_qtquick_window_window_visibility>` to Hidden.

**See also** :ref:`show() <sdk_qtquick_window_window_show>`.

.. _sdk_qtquick_window_window_lower:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lower()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Lowers the window in the windowing system.

Requests that the window be lowered to appear below other windows.

.. _sdk_qtquick_window_window_raise:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| raise()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Raises the window in the windowing system.

Requests that the window be raised to appear above other windows.

.. _sdk_qtquick_window_window_requestActivate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| requestActivate()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Requests the window to be activated, i.e. receive keyboard focus.

This QML method was introduced in Qt 5.1.

.. _sdk_qtquick_window_window_show:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| show()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Shows the window.

This is equivalent to calling :ref:`showFullScreen() <sdk_qtquick_window_window_showFullScreen>`, :ref:`showMaximized() <sdk_qtquick_window_window_showMaximized>`, or :ref:`showNormal() <sdk_qtquick_window_window_showNormal>`, depending on the platform's default behavior for the window type and flags.

**See also** :ref:`showFullScreen() <sdk_qtquick_window_window_showFullScreen>`, :ref:`showMaximized() <sdk_qtquick_window_window_showMaximized>`, :ref:`showNormal() <sdk_qtquick_window_window_showNormal>`, :ref:`hide() <sdk_qtquick_window_window_hide>`, and flags().

.. _sdk_qtquick_window_window_showFullScreen:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showFullScreen()                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Shows the window as fullscreen.

Equivalent to setting :ref:`visibility <sdk_qtquick_window_window_visibility>` to FullScreen.

.. _sdk_qtquick_window_window_showMaximized:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showMaximized()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Shows the window as maximized.

Equivalent to setting :ref:`visibility <sdk_qtquick_window_window_visibility>` to Maximized.

.. _sdk_qtquick_window_window_showMinimized:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showMinimized()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Shows the window as minimized.

Equivalent to setting :ref:`visibility <sdk_qtquick_window_window_visibility>` to Minimized.

.. _sdk_qtquick_window_window_showNormal:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showNormal()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Shows the window as normal, i.e. neither maximized, minimized, nor fullscreen.

Equivalent to setting :ref:`visibility <sdk_qtquick_window_window_visibility>` to Windowed.

