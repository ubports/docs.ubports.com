Defines an active region within the BottomEdge component.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import .                             |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `QtObject </sdk/apps/qml/QtQml/QtObj |
|                                      | ect/>`__                             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#contentComponent-prop>`__****
   : Component
-  ****`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#contentUrl-prop>`__****
   : url
-  ****`enabled </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#enabled-prop>`__****
   : bool
-  ****`from </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#from-prop>`__****
   : real
-  ****`to </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#to-prop>`__****
   : real

Signals
-------

-  void
   ****`dragEnded </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#dragEnded-signal>`__****\ ()
-  void
   ****`entered </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#entered-signal>`__****\ ()
-  void
   ****`exited </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#exited-signal>`__****\ ()

Detailed Description
--------------------

Bottom edge regions are portions within the bottom edge area which can
define different content or action whenever the drag enters in the area.
The area is defined by
`from </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#from-prop>`__
and `to </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#to-prop>`__
properties vertically, whereas horizontally is stretched across bottom
edge width. Custom content can be defined through
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#contentUrl-prop>`__
or
`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#contentComponent-prop>`__
properties, which will override the
`BottomEdge::contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
and
`BottomEdge::contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__
properties for the time the gesture is in the section area.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(70)
        Page {
            header: PageHeader {
                title: "BottomEdge regions"
            }
            BottomEdge {
                id: bottomEdge
                height: parent.height - units.gu(20)
                hint: BottomEdgeHint {
                    text: "My bottom edge"
                }
                // a fake content till we reach the committable area
                contentComponent: Rectangle {
                    width: bottomEdge.width
                    height: bottomEdge.height
                    color: UbuntuColors.green
                }
                // override bottom edge sections to switch to real content
                BottomEdgeRegion {
                    from: 0.33
                    contentComponent: Page {
                        width: bottomEdge.width
                        height: bottomEdge.height
                        header: PageHeader {
                            title: "BottomEdge Content"
                        }
                    }
                }
            }
        }
    }

Entering into the section area is signalled by the
`entered </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#entered-signal>`__
signal and when drag leaves the area the
`exited </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#exited-signal>`__
signal is emitted. If the drag ends within the section area, the
`dragEnded </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#dragEnded-signal>`__
signal is emitted. In case the section's
`to </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#to-prop>`__
property is less than 1.0, the bottom edge content will only be exposed
to that value, and the
`BottomEdge::status </sdk/apps/qml/Ubuntu.Components/BottomEdge#status-prop>`__
will get the *Committed* value. No further drag is possible after
reaching *Commited* state.

**Note:** Whereas there is no restriction on making overlapping
sections, beware that overlapping sections changing the content through
the
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#contentUrl-prop>`__
or
`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#contentComponent-prop>`__
properties will cause unpredictable results.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contentComponent :                                              |
| `Component </sdk/apps/qml/QtQml/Component/>`__                           |
+--------------------------------------------------------------------------+

Specifies the component defining the section specific content. This
propery will temporarily override the
`BottomEdge::contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__
property value when the drag gesture enters the section area. The
orginal value will be restored once the gesture leaves the section area.

| 

+--------------------------------------------------------------------------+
|        \ contentUrl : `url <http://doc.qt.io/qt-5/qml-url.html>`__       |
+--------------------------------------------------------------------------+

Specifies the url to the document defining the section specific content.
This propery will temporarily override the
`BottomEdge::contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
property value when the drag gesture enters the section area. The
orginal value will be restored once the gesture leaves the section area.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

Enables the section. Disabled sections do not trigger nor change the
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__ content.
Defaults to false.

| 

+--------------------------------------------------------------------------+
|        \ from : real                                                     |
+--------------------------------------------------------------------------+

Specifies the starting ratio of the bottom erge area. The value must be
bigger or equal to 0 but strictly smaller than
`to </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#to-prop>`__.
Defaults to 0.0.

| 

+--------------------------------------------------------------------------+
|        \ to : real                                                       |
+--------------------------------------------------------------------------+

Specifies the ending ratio of the bottom edge area. The value must be
bigger than
`from </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#from-prop>`__
and smaller or equal to 1.0.

**Note:** If the end point is less than 1.0, ending the drag within the
section will result in exposing the bottom edge content only till the
ration specified by this property.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void dragEnded()                                                |
+--------------------------------------------------------------------------+

Signal triggered when the drag ends within the active bottom edge
section area.

| 

+--------------------------------------------------------------------------+
|        \ void entered()                                                  |
+--------------------------------------------------------------------------+

Signal triggered when the drag enters into the area defined by the
bottom edge section.

| 

+--------------------------------------------------------------------------+
|        \ void exited()                                                   |
+--------------------------------------------------------------------------+

Signal triggered when the drag leaves the area defined by the bottom
edge section.

| 
