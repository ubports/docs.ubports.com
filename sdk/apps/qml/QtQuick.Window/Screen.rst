.. _sdk_qtquick_window_screen:

QtQuick.Window Screen
=====================

The Screen attached object provides information about the Screen an Item or Window is displayed on.

+---------------------+-----------------------------+
| Import Statement:   | import QtQuick.Window 2.2   |
+---------------------+-----------------------------+

-  Obsolete members

Attached Properties
-------------------

-  `desktopAvailableHeight </sdk/apps/qml/QtQuick/Window.Screen/#desktopAvailableHeight-attached-prop>`_  : int
-  `desktopAvailableWidth </sdk/apps/qml/QtQuick/Window.Screen/#desktopAvailableWidth-attached-prop>`_  : int
-  `devicePixelRatio </sdk/apps/qml/QtQuick/Window.Screen/#devicePixelRatio-attached-prop>`_  : real
-  `height </sdk/apps/qml/QtQuick/Window.Screen/#height-attached-prop>`_  : int
-  `name </sdk/apps/qml/QtQuick/Window.Screen/#name-attached-prop>`_  : string
-  `orientation </sdk/apps/qml/QtQuick/Window.Screen/#orientation-attached-prop>`_  : Qt::ScreenOrientation
-  `orientationUpdateMask </sdk/apps/qml/QtQuick/Window.Screen/#orientationUpdateMask-attached-prop>`_  : Qt::ScreenOrientations
-  `pixelDensity </sdk/apps/qml/QtQuick/Window.Screen/#pixelDensity-attached-prop>`_  : real
-  `primaryOrientation </sdk/apps/qml/QtQuick/Window.Screen/#primaryOrientation-attached-prop>`_  : Qt::ScreenOrientation
-  `width </sdk/apps/qml/QtQuick/Window.Screen/#width-attached-prop>`_  : int

Detailed Description
--------------------

The Screen attached object is valid inside Item or Item derived types, after component completion. Inside these items it refers to the screen that the item is currently being displayed on.

The attached object is also valid inside Window or Window derived types, after component completion. In that case it refers to the screen where the Window was created. It is generally better to access the Screen from the relevant Item instead, because on a multi-screen desktop computer, the user can drag a Window into a position where it spans across multiple screens. In that case some Items will be on one screen, and others on a different screen.

To use this type, you will need to import the module with the following line:

.. code:: cpp

    import QtQuick.Window 2.2

It is a separate import in order to allow you to have a QML environment without access to window system features.

Note that the Screen type is not valid at Component.onCompleted, because the Item or Window has not been displayed on a screen by this time.

Attached Property Documentation
-------------------------------

.. _sdk_qtquick_window_screen_desktopAvailableHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.desktopAvailableHeight : int                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This contains the available height of the collection of screens which make up the virtual desktop, in pixels, excluding window manager reserved areas such as task bars and system menus. If you want to position a Window at the bottom of the desktop, you can bind to it like this:

.. code:: cpp

    y: Screen.desktopAvailableHeight - height

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_screen_desktopAvailableWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.desktopAvailableWidth : int                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This contains the available width of the collection of screens which make up the virtual desktop, in pixels, excluding window manager reserved areas such as task bars and system menus. If you want to position a Window at the right of the desktop, you can bind to it like this:

.. code:: cpp

    x: Screen.desktopAvailableWidth - width

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_screen_devicePixelRatio:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.devicePixelRatio : real                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ratio between physical pixels and device-independent pixels for the screen.

Common values are 1.0 on normal displays and 2.0 on Apple "retina" displays.

This QML property was introduced in Qt 5.4.

.. _sdk_qtquick_window_screen_height:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.height : int                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This contains the height of the screen in pixels.

.. _sdk_qtquick_window_screen_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.name : string                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The name of the screen.

This QML property was introduced in Qt 5.1.

.. _sdk_qtquick_window_screen_orientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.orientation : Qt::ScreenOrientation                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This contains the current orientation of the screen, from the accelerometer (if any). On a desktop computer, this value typically does not change.

If `primaryOrientation </sdk/apps/qml/QtQuick/Window.Screen/#primaryOrientation-attached-prop>`_  == orientation, it means that the screen automatically rotates all content which is displayed, depending on how you hold it. But if orientation changes while `primaryOrientation </sdk/apps/qml/QtQuick/Window.Screen/#primaryOrientation-attached-prop>`_  does NOT change, then probably you are using a device which does not rotate its own display. In that case you may need to use :ref:`Item.rotation <sdk_qtquick_item_rotation>` or :ref:`Item.transform <sdk_qtquick_item_transform>` to rotate your content.

**Note:** This property does not update unless a `Screen::orientationUpdateMask </sdk/apps/qml/QtQuick/Window.Screen/#orientationUpdateMask-attached-prop>`_  is set to a value other than ``0``.

.. _sdk_qtquick_window_screen_orientationUpdateMask:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Screen.orientationUpdateMask : Qt::ScreenOrientations                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This contains the update mask for the orientation. `Screen::orientation </sdk/apps/qml/QtQuick/Window.Screen/#orientation-attached-prop>`_  only emits changes for the screen orientations matching this mask.

By default it is set to the value of the QScreen that the window uses.

This QML property was introduced in Qt 5.4.

.. _sdk_qtquick_window_screen_pixelDensity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.pixelDensity : real                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The number of physical pixels per millimeter.

This QML property was introduced in Qt 5.2.

.. _sdk_qtquick_window_screen_primaryOrientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.primaryOrientation : Qt::ScreenOrientation                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This contains the primary orientation of the screen. If the screen's height is greater than its width, then the orientation is Qt.PortraitOrientation; otherwise it is Qt.LandscapeOrientation.

If you are designing an application which changes its layout depending on device orientation, you probably want to use primaryOrientation to determine the layout. That is because on a desktop computer, you can expect primaryOrientation to change when the user rotates the screen via the operating system's control panel, even if the computer does not contain an accelerometer. Likewise on most handheld computers which do have accelerometers, the operating system will rotate the whole screen automatically, so again you will see the primaryOrientation change.

.. _sdk_qtquick_window_screen_width:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] Screen.width : int                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This contains the width of the screen in pixels.

