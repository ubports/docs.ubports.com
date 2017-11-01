Specifies how to change the anchors of an item in a state

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`anchors </sdk/apps/qml/QtQuick/AnchorChanges#anchors-prop>`__****

   -  ****`anchors.left </sdk/apps/qml/QtQuick/AnchorChanges#anchors.left-prop>`__****
      : AnchorLine
   -  ****`anchors.right </sdk/apps/qml/QtQuick/AnchorChanges#anchors.right-prop>`__****
      : AnchorLine
   -  ****`anchors.horizontalCenter </sdk/apps/qml/QtQuick/AnchorChanges#anchors.horizontalCenter-prop>`__****
      : AnchorLine
   -  ****`anchors.top </sdk/apps/qml/QtQuick/AnchorChanges#anchors.top-prop>`__****
      : AnchorLine
   -  ****`anchors.bottom </sdk/apps/qml/QtQuick/AnchorChanges#anchors.bottom-prop>`__****
      : AnchorLine
   -  ****`anchors.verticalCenter </sdk/apps/qml/QtQuick/AnchorChanges#anchors.verticalCenter-prop>`__****
      : AnchorLine
   -  ****`anchors.baseline </sdk/apps/qml/QtQuick/AnchorChanges#anchors.baseline-prop>`__****
      : AnchorLine

-  ****`target </sdk/apps/qml/QtQuick/AnchorChanges#target-prop>`__****
   : Item

Detailed Description
--------------------

The `AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ type is
used to modify the anchors of an item in a
`State </sdk/apps/qml/QtQuick/State/>`__.

`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ cannot be used
to modify the margins on an item. For this, use
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ intead.

In the following example we change the top and bottom anchors of an item
using `AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__, and the
top and bottom anchor margins using
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__:

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

|image0|

`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ can be animated
using `AnchorAnimation </sdk/apps/qml/QtQuick/AnchorAnimation/>`__.

.. code:: qml

    //animate our anchor changes
    Transition {
        AnchorAnimation {}
    }

Changes to anchor margins can be animated using
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__.

For more information on anchors see `Anchor
Layouts </sdk/apps/qml/QtQuick/qtquick-positioning-anchors#anchor-layout>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ **anchors group**                                               |
+==========================================================================+
|        \ anchors.left : AnchorLine                                       |
+--------------------------------------------------------------------------+
|        \ anchors.right : AnchorLine                                      |
+--------------------------------------------------------------------------+
|        \ anchors.horizontalCenter : AnchorLine                           |
+--------------------------------------------------------------------------+
|        \ anchors.top : AnchorLine                                        |
+--------------------------------------------------------------------------+
|        \ anchors.bottom : AnchorLine                                     |
+--------------------------------------------------------------------------+
|        \ anchors.verticalCenter : AnchorLine                             |
+--------------------------------------------------------------------------+
|        \ anchors.baseline : AnchorLine                                   |
+--------------------------------------------------------------------------+

These properties change the respective anchors of the item.

To reset an anchor you can assign ``undefined``:

.. code:: qml

    AnchorChanges {
        target: myItem
        anchors.left: undefined          //remove myItem's left anchor
        anchors.right: otherItem.right
    }

| 

+--------------------------------------------------------------------------+
|        \ target : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

This property holds the `Item </sdk/apps/qml/QtQuick/Item/>`__ for which
the anchor changes will be applied.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/AnchorChanges/images/anchorchanges.png

