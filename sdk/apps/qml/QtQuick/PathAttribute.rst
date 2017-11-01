Specifies how to set an attribute at a given position in a Path

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`name </sdk/apps/qml/QtQuick/PathAttribute#name-prop>`__**** :
   string
-  ****`value </sdk/apps/qml/QtQuick/PathAttribute#value-prop>`__**** :
   real

Detailed Description
--------------------

The `PathAttribute </sdk/apps/qml/QtQuick/PathAttribute/>`__ object
allows attributes consisting of a name and a value to be specified for
various points along a path. The attributes are exposed to the delegate
as Attached Properties. The value of an attribute at any particular
point along the path is interpolated from the PathAttributes bounding
that point.

The example below shows a path with the items scaled to 30% with opacity
50% at the top of the path and scaled 100% with opacity 100% at the
bottom. Note the use of the
`PathView </sdk/apps/qml/QtQuick/PathView/>`__.iconScale and
`PathView </sdk/apps/qml/QtQuick/PathView/>`__.iconOpacity attached
properties to set the scale and opacity of the delegate.

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     import QtQuick 2.0               |
|                                      |     Rectangle {                      |
|                                      |         width: 240; height: 200      |
|                                      |         Component {                  |
|                                      |             id: delegate             |
|                                      |             Item {                   |
|                                      |                 width: 80; height: 8 |
|                                      | 0                                    |
|                                      |                 scale: PathView.icon |
|                                      | Scale                                |
|                                      |                 opacity: PathView.ic |
|                                      | onOpacity                            |
|                                      |                 Column {             |
|                                      |                     Image { anchors. |
|                                      | horizontalCenter: nameText.horizonta |
|                                      | lCenter; width: 64; height: 64; sour |
|                                      | ce: icon }                           |
|                                      |                     Text { id: nameT |
|                                      | ext; text: name; font.pointSize: 16  |
|                                      | }                                    |
|                                      |                 }                    |
|                                      |             }                        |
|                                      |         }                            |
|                                      |         PathView {                   |
|                                      |             anchors.fill: parent     |
|                                      |             model: ContactModel {}   |
|                                      |             delegate: delegate       |
|                                      |             path: Path {             |
|                                      |                 startX: 120; startY: |
|                                      |  100                                 |
|                                      |                 PathAttribute { name |
|                                      | : "iconScale"; value: 1.0 }          |
|                                      |                 PathAttribute { name |
|                                      | : "iconOpacity"; value: 1.0 }        |
|                                      |                 PathQuad { x: 120; y |
|                                      | : 25; controlX: 260; controlY: 75 }  |
|                                      |                 PathAttribute { name |
|                                      | : "iconScale"; value: 0.3 }          |
|                                      |                 PathAttribute { name |
|                                      | : "iconOpacity"; value: 0.5 }        |
|                                      |                 PathQuad { x: 120; y |
|                                      | : 100; controlX: -20; controlY: 75 } |
|                                      |             }                        |
|                                      |         }                            |
|                                      |     }                                |
|                                      |                                      |
|                                      | (see the                             |
|                                      | `PathView </sdk/apps/qml/QtQuick/Pat |
|                                      | hView/>`__                           |
|                                      | documentation for the specification  |
|                                      | of ContactModel.qml used for         |
|                                      | ContactModel above.)                 |
+--------------------------------------+--------------------------------------+

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the attribute to change.

This attribute will be available to the delegate as
`PathView </sdk/apps/qml/QtQuick/PathView/>`__.<name>

Note that using an existing Item property name such as "opacity" as an
attribute is allowed. This is because path attributes add a new Attached
Property which in no way clashes with existing properties.

| 

+--------------------------------------------------------------------------+
|        \ value : real                                                    |
+--------------------------------------------------------------------------+

This property holds the value for the attribute.

The value specified can be used to influence the visual appearance of an
item along the path. For example, the following Path specifies an
attribute named *itemRotation*, which has the value *0* at the beginning
of the path, and the value 90 at the end of the path.

.. code:: qml

    Path {
        startX: 0
        startY: 0
        PathAttribute { name: "itemRotation"; value: 0 }
        PathLine { x: 100; y: 100 }
        PathAttribute { name: "itemRotation"; value: 90 }
    }

In our delegate, we can then bind the *rotation* property to the
Attached Property *PathView.itemRotation* created for this attribute.

.. code:: qml

    Rectangle {
        width: 10; height: 10
        rotation: PathView.itemRotation
    }

As each item is positioned along the path, it will be rotated
accordingly: an item at the beginning of the path with be not be
rotated, an item at the end of the path will be rotated 90 degrees, and
an item mid-way along the path will be rotated 45 degrees.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathAttribute/images/declarative-pathattribute.png

