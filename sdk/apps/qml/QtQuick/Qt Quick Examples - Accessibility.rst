.. _sdk_qtquick_qt_quick_examples_-_accessibility:

QtQuick Qt Quick Examples - Accessibility
=========================================


*Accessibility* demonstrates QML types that are augmented with meta-data for accessibility systems. For more information, visit the Accessibility page.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

The button identifies itself and its functionality to the accessibility system:

.. code:: qml

    Accessible.name: text
    Accessible.description: "This button does " + text
    Accessible.role: Accessible.Button
    Accessible.onPressAction: {
        button.clicked()
    }

Similarly, `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  types inside the example also identify themselves:

.. code:: qml

    Accessible.role: Accessible.StaticText
    Accessible.name: text

Files:

-  quick-accessibility/accessibility.qml
-  quick-accessibility/content/Button.qml
-  quick-accessibility/content/Checkbox.qml
-  quick-accessibility/content/Slider.qml
-  quick-accessibility/main.cpp
-  quick-accessibility/accessibility.qmlproject
-  quick-accessibility/accessibility.qrc
-  quick-accessibility/quick-accessibility.pro

