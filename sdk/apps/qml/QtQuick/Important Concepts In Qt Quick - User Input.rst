.. _sdk_qtquick_important_concepts_in_qt_quick_-_user_input:

QtQuick Important Concepts In Qt Quick - User Input
===================================================


Being able to respond to user-input is a fundamental part of user-interface design. Depending on the use-case that an application solves, and the form-factor of the device that the application runs on, the best way to receive user-input may be different.

Allowing users to physically touch a screen to interact with an application is a popular user-interface paradigm on portable devices like smartphones and tablets.

Qt Quick was designed specifically with touch-driven user-interfaces in mind, and thus touch events are supported in various visual object types, from `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_  lists to the generic :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` type, as well as in the :ref:`MouseArea <sdk_qtquick_mousearea>` type (which will be documented thoroughly in a proceeding section).

Mouse input is another important user input for user interfaces. Detecting and reacting to clicks and presses according to the mouse cursor position is a fundamental concept in user-interface design.

Qt Quick provides the :ref:`MouseArea <sdk_qtquick_mousearea>` visual object type which automatically receives mouse events (including clicks and wheel events) which allows developers to create custom user-interface objects to handle mouse input. Please see the documentation about `mouse events in Qt Quick </sdk/apps/qml/QtQuick/qtquick-input-mouseevents/>`_  for more information on the topic.

Supporting input from a keyboard is a vital component of the user interface of many applications.

Any visual item can receive keyboard input through the :ref:`Keys <sdk_qtquick_keys>` attached type. Additionally, the issue of *keyboard focus* arises when multiple items are required to receive key events, as these events must be passed to the correct item. See the documentation about `Keyboard focus in Qt Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_  for more information on this topic.

Qt Quick also provides visual text items which automatically receive keyboard events and key-presses, and displays the appropriate text. See the documentation about `text input </sdk/apps/qml/QtQuick/qtquick-input-textinput/>`_  for in-depth information on the topic.

Detecting device gestures with an accelerometer, or through camera-based gesture recognition, can allow users to interact with an application without requiring their full and undevided attention. It can also provide a more interactive and engaging experience.

Qt Quick itself does not offer first-class support for physical device motion gestures; however, the Qt Sensors module provides QML types with support for such gestures. See the Qt Sensors module documentation for more information on the topic.

