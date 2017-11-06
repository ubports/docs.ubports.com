.. _sdk_qtquick_qt_quick_examples_-_mousearea:

QtQuick Qt Quick Examples - MouseArea
=====================================



*MouseArea* example shows how to respond to clicks and drags with a :ref:`MouseArea <sdk_qtquick_mousearea>`. For more information, visit `Important Concepts In Qt Quick - User Input </sdk/apps/qml/QtQuick/qtquick-input-topic/>`_ .

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

When you click inside the red square, the `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  type will list several properties of that click which are available to QML. The opacity of the red square will be reduced while the mouse is pressed and remains inside the :ref:`MouseArea <sdk_qtquick_mousearea>`.

Signals are emitted by the :ref:`MouseArea <sdk_qtquick_mousearea>` when clicks or other discrete operations occur within it.

.. code:: qml

    onPressAndHold: btn.text = 'Press and hold'
    onClicked: btn.text = 'Clicked (wasHeld=' + mouse.wasHeld + ')'
    onDoubleClicked: btn.text = 'Double clicked'

:ref:`MouseArea <sdk_qtquick_mousearea>` can also be used to drag items around. By setting the parameters of the drag property, the target item will be dragged around if the user starts to drag within the mouse area boundary.

.. code:: qml

    drag.target: blueSquare
    drag.axis: Drag.XAndYAxis
    drag.minimumX: 0
    drag.maximumX: box.width - parent.width
    drag.minimumY: 0
    drag.maximumY: box.height - parent.width

Files:

-  mousearea/mousearea-wheel-example.qml
-  mousearea/mousearea.qml
-  mousearea/main.cpp
-  mousearea/mousearea.pro
-  mousearea/mousearea.qmlproject
-  mousearea/mousearea.qrc

