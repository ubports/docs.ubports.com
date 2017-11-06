.. _sdk_qtquick_qt_quick_examples_-_positioners:

QtQuick Qt Quick Examples - Positioners
=======================================



*Positioners* is a collection of small QML examples relating to positioners. Each example is a small QML file emphasizing a particular type or feature. For more information, visit `Important Concepts In Qt Quick - Positioning </sdk/apps/qml/QtQuick/qtquick-positioning-topic/>`_ .

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

*Transitions* shows animated transitions when showing or hiding items in a positioner. It consists of a scene populated with items in a variety of positioners: `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_ , `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ , `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_ , and `Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_ . Each positioner has animations described as Transitions.

.. code:: qml

    move: Transition {
        NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
    }

The move transition specifies how items inside a positioner will animate when they are displaced by the appearance or disappearance of other items.

.. code:: qml

    add: Transition {
        NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
    }

The add transition specifies how items will appear when they are added to a positioner.

.. code:: qml

    populate: Transition {
        NumberAnimation { properties: "x,y"; from: 200; duration: 100; easing.type: Easing.OutBounce }
    }

The populate transition specifies how items will appear when their parent positioner is first created.

*Attached Properties* shows how the Positioner attached property can be used to determine where an item is within a positioner.

.. code:: qml

    Rectangle {
        id: green
        color: "#80c342"
        width: 100 * ratio
        height: 100 * ratio
        Text {
          anchors.left: parent.right
          anchors.leftMargin: 20
          anchors.verticalCenter: parent.verticalCenter
          text: "Index: " + parent.Positioner.index
          + (parent.Positioner.isFirstItem ? " (First)" : "")
          + (parent.Positioner.isLastItem ? " (Last)" : "")
        }
        // When mouse is clicked, display the values of the positioner
        MouseArea {
        anchors.fill: parent
        onClicked: column.showInfo(green.Positioner)
        }
    }

Files:

-  positioners/positioners-attachedproperties.qml
-  positioners/positioners-transitions.qml
-  positioners/positioners.qml
-  positioners/main.cpp
-  positioners/positioners.pro
-  positioners/positioners.qmlproject
-  positioners/positioners.qrc

