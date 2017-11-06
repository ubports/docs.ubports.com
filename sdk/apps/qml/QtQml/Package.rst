.. _sdk_qtqml_package:

QtQml Package
=============

Specifies a collection of named items

+---------------------+--------------------+
| Import Statement:   | import QtQuick .   |
+---------------------+--------------------+

Attached Properties
-------------------

-  :ref:`name <sdk_qtqml_package_name>` : string

Detailed Description
--------------------

The Package class is used in conjunction with :ref:`VisualDataModel <sdk_qtqml_visualdatamodel>` to enable delegates with a shared context to be provided to multiple views.

Any item within a Package may be assigned a name via the :ref:`Package.name <sdk_qtqml_package_name>` attached property.

The example below creates a Package containing two named items; *list* and *grid*. The third item in the package (the Rectangle) is parented to whichever delegate it should appear in. This allows an item to move between views.

.. code:: qml

    Package {
        Text { id: listDelegate; width: parent.width; height: 25; text: 'Empty'; Package.name: 'list' }
        Text { id: gridDelegate; width: parent.width / 2; height: 50; text: 'Empty'; Package.name: 'grid' }
        Rectangle {
            id: wrapper
            width: parent.width; height: 25
            color: 'lightsteelblue'
            Text { text: display; anchors.centerIn: parent }
            state: root.upTo > index ? 'inGrid' : 'inList'
            states: [
                State {
                    name: 'inList'
                    ParentChange { target: wrapper; parent: listDelegate }
                },
                State {
                    name: 'inGrid'
                    ParentChange {
                        target: wrapper; parent: gridDelegate
                        x: 0; y: 0; width: gridDelegate.width; height: gridDelegate.height
                    }
                }
            ]
            transitions: [
                Transition {
                    ParentAnimation {
                        NumberAnimation { properties: 'x,y,width,height'; duration: 300 }
                    }
                }
            ]
        }
    }

These named items are used as the delegates by the two views who reference the special VisualDataModel::parts property to select a model which provides the chosen delegate.

.. code:: qml

    DelegateModel {
        id: visualModel
        delegate: Delegate {}
        model: myModel
    }
    ListView {
        id: lv
        height: parent.height/2
        width: parent.width
        model: visualModel.parts.list
    }
    GridView {
        y: parent.height/2
        height: parent.height/2
        width: parent.width
        cellWidth: width / 2
        cellHeight: 50
        model: visualModel.parts.grid
    }

**See also** Qt Quick Examples - Views, Qt Quick Demo - Photo Viewer, and `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_ .

Attached Property Documentation
-------------------------------

.. _sdk_qtqml_package_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Package.name : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the name of an item within a Package.

