.. _sdk_ubuntu_components_bottomedgeregion:

Ubuntu.Components BottomEdgeRegion
==================================

Defines an active region within the BottomEdge component.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import .                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`QtObject <sdk_qtqml_qtobject>`                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`contentComponent <sdk_ubuntu_components_bottomedgeregion_contentComponent>` : Component
-  :ref:`contentUrl <sdk_ubuntu_components_bottomedgeregion_contentUrl>` : url
-  :ref:`enabled <sdk_ubuntu_components_bottomedgeregion_enabled>` : bool
-  :ref:`from <sdk_ubuntu_components_bottomedgeregion_from>` : real
-  :ref:`to <sdk_ubuntu_components_bottomedgeregion_to>` : real

Signals
-------

-  void :ref:`dragEnded <sdk_ubuntu_components_bottomedgeregion_dragEnded>`\ ()
-  void :ref:`entered <sdk_ubuntu_components_bottomedgeregion_entered>`\ ()
-  void :ref:`exited <sdk_ubuntu_components_bottomedgeregion_exited>`\ ()

Detailed Description
--------------------

Bottom edge regions are portions within the bottom edge area which can define different content or action whenever the drag enters in the area. The area is defined by :ref:`from <sdk_ubuntu_components_bottomedgeregion_from>` and :ref:`to <sdk_ubuntu_components_bottomedgeregion_to>` properties vertically, whereas horizontally is stretched across bottom edge width. Custom content can be defined through :ref:`contentUrl <sdk_ubuntu_components_bottomedgeregion_contentUrl>` or :ref:`contentComponent <sdk_ubuntu_components_bottomedgeregion_contentComponent>` properties, which will override the :ref:`BottomEdge::contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` and :ref:`BottomEdge::contentComponent <sdk_ubuntu_components_bottomedge_contentComponent>` properties for the time the gesture is in the section area.

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

Entering into the section area is signalled by the :ref:`entered <sdk_ubuntu_components_bottomedgeregion_entered>` signal and when drag leaves the area the :ref:`exited <sdk_ubuntu_components_bottomedgeregion_exited>` signal is emitted. If the drag ends within the section area, the :ref:`dragEnded <sdk_ubuntu_components_bottomedgeregion_dragEnded>` signal is emitted. In case the section's :ref:`to <sdk_ubuntu_components_bottomedgeregion_to>` property is less than 1.0, the bottom edge content will only be exposed to that value, and the :ref:`BottomEdge::status <sdk_ubuntu_components_bottomedge_status>` will get the *Committed* value. No further drag is possible after reaching *Commited* state.

**Note:** Whereas there is no restriction on making overlapping sections, beware that overlapping sections changing the content through the :ref:`contentUrl <sdk_ubuntu_components_bottomedgeregion_contentUrl>` or :ref:`contentComponent <sdk_ubuntu_components_bottomedgeregion_contentComponent>` properties will cause unpredictable results.

Property Documentation
----------------------

.. _sdk_ubuntu_components_bottomedgeregion_contentComponent:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentComponent : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the component defining the section specific content. This propery will temporarily override the :ref:`BottomEdge::contentComponent <sdk_ubuntu_components_bottomedge_contentComponent>` property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.

.. _sdk_ubuntu_components_bottomedgeregion_contentUrl:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentUrl : `url <http://doc.qt.io/qt-5/qml-url.html>`_                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the url to the document defining the section specific content. This propery will temporarily override the :ref:`BottomEdge::contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.

.. _sdk_ubuntu_components_bottomedgeregion_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Enables the section. Disabled sections do not trigger nor change the :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>` content. Defaults to false.

.. _sdk_ubuntu_components_bottomedgeregion_from:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| from : real                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the starting ratio of the bottom erge area. The value must be bigger or equal to 0 but strictly smaller than :ref:`to <sdk_ubuntu_components_bottomedgeregion_to>`. Defaults to 0.0.

.. _sdk_ubuntu_components_bottomedgeregion_to:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| to : real                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the ending ratio of the bottom edge area. The value must be bigger than :ref:`from <sdk_ubuntu_components_bottomedgeregion_from>` and smaller or equal to 1.0.

**Note:** If the end point is less than 1.0, ending the drag within the section will result in exposing the bottom edge content only till the ration specified by this property.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_bottomedgeregion_dragEnded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void dragEnded()                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal triggered when the drag ends within the active bottom edge section area.

.. _sdk_ubuntu_components_bottomedgeregion_entered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void entered()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal triggered when the drag enters into the area defined by the bottom edge section.

.. _sdk_ubuntu_components_bottomedgeregion_exited:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void exited()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal triggered when the drag leaves the area defined by the bottom edge section.

