

|image0|

*MouseArea* example shows how to respond to clicks and drags with a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__. For more information,
visit `Important Concepts In Qt Quick - User
Input </sdk/apps/qml/QtQuick/qtquick-input-topic/>`__.

.. rubric:: Running the Example
   :name: running-the-example

To run the example from Qt Creator, open the **Welcome** mode and select
the example from **Examples**. For more information, visit Building and
Running an Example.

.. rubric:: MouseArea Behavior
   :name: mousearea-behavior

When you click inside the red square, the
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ type will
list several properties of that click which are available to QML. The
opacity of the red square will be reduced while the mouse is pressed and
remains inside the `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__.

Signals are emitted by the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ when clicks or other
discrete operations occur within it.

.. code:: qml

    onPressAndHold: btn.text = 'Press and hold'
    onClicked: btn.text = 'Clicked (wasHeld=' + mouse.wasHeld + ')'
    onDoubleClicked: btn.text = 'Double clicked'

`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ can also be used to
drag items around. By setting the parameters of the drag property, the
target item will be dragged around if the user starts to drag within the
mouse area boundary.

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

.. |image0| image:: /media/sdk/apps/qml/qtquick-mousearea-example/images/qml-mousearea-example.png

