.. _sdk_qtquick_anchorchanges:

QtQuick AnchorChanges
=====================

Specifies how to change the anchors of an item in a state

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`anchors <sdk_qtquick_anchorchanges_anchors>`

   -  :ref:`anchors.left <sdk_qtquick_anchorchanges_anchors_left>` : AnchorLine
   -  :ref:`anchors.right <sdk_qtquick_anchorchanges_anchors_right>` : AnchorLine
   -  :ref:`anchors.horizontalCenter <sdk_qtquick_anchorchanges_anchors_horizontalCenter>` : AnchorLine
   -  :ref:`anchors.top <sdk_qtquick_anchorchanges_anchors_top>` : AnchorLine
   -  :ref:`anchors.bottom <sdk_qtquick_anchorchanges_anchors_bottom>` : AnchorLine
   -  :ref:`anchors.verticalCenter <sdk_qtquick_anchorchanges_anchors_verticalCenter>` : AnchorLine
   -  :ref:`anchors.baseline <sdk_qtquick_anchorchanges_anchors_baseline>` : AnchorLine

-  :ref:`target <sdk_qtquick_anchorchanges_target>` : Item

Detailed Description
--------------------

The :ref:`AnchorChanges <sdk_qtquick_anchorchanges>` type is used to modify the anchors of an item in a :ref:`State <sdk_qtquick_state>`.

:ref:`AnchorChanges <sdk_qtquick_anchorchanges>` cannot be used to modify the margins on an item. For this, use :ref:`PropertyChanges <sdk_qtquick_propertychanges>` intead.

In the following example we change the top and bottom anchors of an item using :ref:`AnchorChanges <sdk_qtquick_anchorchanges>`, and the top and bottom anchor margins using :ref:`PropertyChanges <sdk_qtquick_propertychanges>`:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: window
        width: 120; height: 120
        color: "black"
        Rectangle { id: myRect; width: 50; height: 50; color: "red" }
        states: State {
            name: "reanchored"
            AnchorChanges {
                target: myRect
                anchors.top: window.top
                anchors.bottom: window.bottom
            }
            PropertyChanges {
                target: myRect
                anchors.topMargin: 10
                anchors.bottomMargin: 10
            }
        }
        MouseArea { anchors.fill: parent; onClicked: window.state = "reanchored" }
    }

:ref:`AnchorChanges <sdk_qtquick_anchorchanges>` can be animated using :ref:`AnchorAnimation <sdk_qtquick_anchoranimation>`.

.. code:: qml

    //animate our anchor changes
    Transition {
        AnchorAnimation {}
    }

Changes to anchor margins can be animated using :ref:`NumberAnimation <sdk_qtquick_numberanimation>`.

For more information on anchors see `Anchor Layouts </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/#anchor-layout>`_ .

Property Documentation
----------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **anchors group**                                                                                                                                                                                                                                                                                            |
+==============================================================================================================================================================================================================================================================================================================+
| anchors.left : AnchorLine                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.right : AnchorLine                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.horizontalCenter : AnchorLine                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.top : AnchorLine                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.bottom : AnchorLine                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.verticalCenter : AnchorLine                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.baseline : AnchorLine                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties change the respective anchors of the item.

To reset an anchor you can assign ``undefined``:

.. code:: qml

    AnchorChanges {
        target: myItem
        anchors.left: undefined          //remove myItem's left anchor
        anchors.right: otherItem.right
    }

.. _sdk_qtquick_anchorchanges_target:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the :ref:`Item <sdk_qtquick_item>` for which the anchor changes will be applied.

