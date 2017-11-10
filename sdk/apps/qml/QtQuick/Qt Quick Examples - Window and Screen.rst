.. _sdk_qtquick_qt_quick_examples_-_window_and_screen:

QtQuick Qt Quick Examples - Window and Screen
=============================================



*Window and Screen* shows how to:

-  create a window in QML
-  control its visibility
-  present a splash screen during application startup
-  access the properties of the `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_ 

It also demonstrates how to package QML into resources and provide an icon to create a standalone QML desktop application.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

A splash screen can be created with the Qt.SplashScreen flag, and should be ApplicationModal to prevent interaction with the main window. If the splash window is also transparent, and showing a partially transparent image, then it will look like a shaped window.

.. code:: qml

    Window {
        id: splash
        color: "transparent"
        title: "Splash Window"
        modality: Qt.ApplicationModal
        flags: Qt.SplashScreen
        property int timeoutInterval: 2000
        signal timeout

In this example a Timer will automatically dismiss the splash screen, but in a real application you might want to connect to a signal from the application logic to hide the splash when initialization is complete.

.. code:: qml

    Timer {
        interval: timeoutInterval; running: true; repeat: false
        onTriggered: {
            visible = false
            splash.timeout()
        }
    }

The main window in this example is the control window, with some buttons and checkboxes to control and provide feedback on the state of a secondary window. Each checkbox has a binding to the property whose state it is displaying, and also an onClicked handler to change the state. This is the typical pattern to create a two-way binding while avoiding binding loops.

.. code:: qml

    Shared.CheckBox {
        text: "Windowed"
        height: showButton.height
        width: col.cellWidth
        Binding on checked { value: testWindow.visibility === Window.Windowed }
        onClicked: testWindow.visibility = Window.Windowed
    }

`Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_  has several properties which are generally useful to applications which need to rotate some content when the screen orientation changes, to position windows on the screen or to convert real units to logical pixel units. ScreenInfo.qml (which is displayed inline in window.qml, or can be run by itself with qmlscene) simply displays the property values, while the splash screen uses them to center the window on the screen.

.. code:: qml

        x: (Screen.width - splashImage.width) / 2
        y: (Screen.height - splashImage.height) / 2

If a :ref:`Window <sdk_qtquick_window_window>` is nested inside an :ref:`Item <sdk_qtquick_item>` or another Window, the inner window becomes *transient for* the outer one (see :ref:`Window <sdk_qtquick_window_window>` for more explanation). But if you want to create multiple top-level windows as unrelated peers, you can create them inside a non-visual QtObject root item, as this example does.

Files:

-  window/ScreenInfo.qml
-  window/Splash.qml
-  window/window.qml
-  window/resources/icon.svg
-  window/main.cpp
-  window/window.pro
-  window/window.qrc

