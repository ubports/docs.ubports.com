The Scrollbar component provides scrolling functionality for scrollable
views (i.e. Flickable, ListView).

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `StyledItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/StyledItem/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`align </sdk/apps/qml/Ubuntu.Components/Scrollbar#align-prop>`__****
   : int
-  ****`flickableItem </sdk/apps/qml/Ubuntu.Components/Scrollbar#flickableItem-prop>`__****
   : Flickable

Detailed Description
--------------------

**NOTE**: the Scrollbar component was revamped for OTA9 and used for the
implementation of
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__. Apps
targeting system version OTA9 (or newer) should use
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__ instead of
Scrollbar, as it features convergent-ready features, such as (but not
limited to) keyboard input handling.

The Scrollbar can be set to any flickable and has built-in anchoring
setup to the attached flickable's front, rear, top or bottom. The
scrollbar can also be aligned using anchors, however the built-in align
functionality makes sure to have the proper alignemt applied based on
theme and layout direction (RTL or LTR).

The content position is driven through the attached Flickable. Therefore
every style implementation should drive the position through
contentX/contentY properties, depending on whether the orientation is
vertical or horizontal.

Example:

.. code:: qml

    Item {
        ListView {
            id: list
            width: units.gu(37)
            height: units.gu(37)
            model: 30
            delegate: Rectangle {
                width: ListView.view.width
                height: units.gu(5)
                Text {
                    anchors.fill: parent
                    text: "Item " + modelData
                }
            }
        }
        Scrollbar {
            flickableItem: list
            align: Qt.AlignTrailing
        }
    }

Vertical Scrollbar and Flickable behaviour
------------------------------------------

Since Flickable's topMargin and bottomMargin are modified by Ubuntu
components such as
`BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__ and
`Header </sdk/apps/qml/Ubuntu.Components/Header/>`__ in their
positioning logic, the Scrollbar component uses the value of those
properties to its top and bottom anchors margins, by default. This is to
prevent any overlap with
`BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__ or
Header (see `Vertical Scrollbar and Header
behaviour </sdk/apps/qml/Ubuntu.Components/Scrollbar#vertical-scrollbar-and-header-behaviour>`__
for more info about that). In case you need to specify custom Flickable
content margins (note: we're talking about content margins, not anchors
ones), you will also have to override the top and bottom anchors margins
of the Scrollbar accordingly.

Vertical Scrollbar and Header behaviour
---------------------------------------

The thumb of the Scrollbar should not move or resize unexpectedly. It
would be confusing, for instance, if it moved under the user's finger
(or pointer) while he's dragging it.

Because the size and position of the thumb in a scrollbar is related to
the size of the trough (or track) it slides in, it is important that the
trough does not resize or move while the user is interacting with the
component.

In the context of a `Page </sdk/apps/qml/Ubuntu.Components/Page/>`__
with a `Header </sdk/apps/qml/Ubuntu.Components/Header/>`__ that slides
in and out dynamically when the user flicks the surface (see
`Header::flickable </sdk/apps/qml/Ubuntu.Components/Header#flickable-prop>`__),
a vertical Scrollbar that is linked to the same flickable surface as the
Header behaves as described below:

-  - when the Header is exposed, the Scrollbar component sits right
   below it, thus avoiding overlaps;
-  - when the Header hides due to the user either flicking the surface
   or dragging the thumb, the trough of the Scrollbar does not resize or
   move, thus avoiding unexpected changes in thumb's position or size.
   As a side effect, the space above the Scrollbar, previously occupied
   by Header, stays empty until the Header is exposed again.

| 
| This behaviour is intended and makes for a less confusing User
  Experience.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ align : int                                                     |
+--------------------------------------------------------------------------+

The property defines the alignment of the scrollbar to the
`flickableItem </sdk/apps/qml/Ubuntu.Components/Scrollbar#flickableItem-prop>`__.
The implementation handles the alignment as follows:

-  Qt.AlignLeading anchors to the left on LTR and to the right on RTL
   layouts
-  Qt.AlignTrailing anchors to the right on LTR and to the left on RTL
   layouts
-  Qt.AlignTop anchors to the top
-  Qt.AlignBottom anchors to the bottom

The default value is **Qt.AlignTrailing**.

| 

+--------------------------------------------------------------------------+
|        \ flickableItem :                                                 |
| `Flickable </sdk/apps/qml/QtQuick/Flickable/>`__                         |
+--------------------------------------------------------------------------+

This property holds the flickable item (Flickable,
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ or
`GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example#gridview>`__)
the Scrollbar is attached to.

| 
