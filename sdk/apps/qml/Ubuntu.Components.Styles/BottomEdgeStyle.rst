Style API for BottomEdge content holder panel.

+---------------------+---------------------------------------+
| Import Statement:   | import Ubuntu.Components.Styles 1.3   |
+---------------------+---------------------------------------+
| Since:              | Ubuntu.Components.Styles 1.3          |
+---------------------+---------------------------------------+

Properties
----------

-  ****`contentItem </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle#contentItem-prop>`__****
   : Item
-  ****`panel </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle#panel-prop>`__****
   : Item
-  ****`panelAnimation </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle#panelAnimation-prop>`__****
   : Animation
-  ****`revealThreshold </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle#revealThreshold-prop>`__****
   : real

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contentItem : `Item </sdk/apps/qml/QtQuick/Item/>`__            |
+--------------------------------------------------------------------------+

Holds the current content item created from
`BottomEdge::contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
or
`BottomEdge::contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ panel : `Item </sdk/apps/qml/QtQuick/Item/>`__                  |
+--------------------------------------------------------------------------+

Represents the item holding the bottom edge content.

| 

+--------------------------------------------------------------------------+
|        \ panelAnimation :                                                |
| `Animation </sdk/apps/qml/QtQuick/Animation/>`__                         |
+--------------------------------------------------------------------------+

Holds the animation of the panel.
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__ requires
this property to know when the bottom edge is fully committed or
collapsed.

| 

+--------------------------------------------------------------------------+
|        \ revealThreshold : real                                          |
+--------------------------------------------------------------------------+

Holds the style configured value which drives when the bottom edge
content should be exposed.

| 
