.. _sdk_ubuntu_components_styles_bottomedgestyle:
Ubuntu.Components.Styles BottomEdgeStyle
========================================

Style API for BottomEdge content holder panel.

+---------------------+---------------------------------------+
| Import Statement:   | import Ubuntu.Components.Styles 1.3   |
+---------------------+---------------------------------------+
| Since:              | Ubuntu.Components.Styles 1.3          |
+---------------------+---------------------------------------+

Properties
----------

-  `contentItem </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle/_contentItem-prop>`_ 
   : Item
-  `panel </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle/_panel-prop>`_ 
   : Item
-  `panelAnimation </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle/_panelAnimation-prop>`_ 
   : Animation
-  `revealThreshold </sdk/apps/qml/Ubuntu.Components/Styles.BottomEdgeStyle/_revealThreshold-prop>`_ 
   : real

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_ubuntu_components_styles_bottomedgestyle_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ contentItem : `Item <sdk_qtquick_item>`                    |
+--------------------------------------------------------------------------+

Holds the current content item created from
:ref:`BottomEdge::contentUrl <sdk_ubuntu_components_bottomedge#contentUrl-prop>`
or
:ref:`BottomEdge::contentComponent <sdk_ubuntu_components_bottomedge#contentComponent-prop>`.

| 

.. _sdk_ubuntu_components_styles_bottomedgestyle_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ panel : `Item <sdk_qtquick_item>`                          |
+--------------------------------------------------------------------------+

Represents the item holding the bottom edge content.

| 

.. _sdk_ubuntu_components_styles_bottomedgestyle_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ panelAnimation : `Animation <sdk_qtquick_animation>`       |
+--------------------------------------------------------------------------+

Holds the animation of the panel.
:ref:`BottomEdge <sdk_ubuntu_components_bottomedge>` requires this property
to know when the bottom edge is fully committed or collapsed.

| 

.. _sdk_ubuntu_components_styles_bottomedgestyle_revealThreshold-prop:

+--------------------------------------------------------------------------+
|        \ revealThreshold : real                                          |
+--------------------------------------------------------------------------+

Holds the style configured value which drives when the bottom edge
content should be exposed.

| 
