.. _sdk_ubuntu_components_bottomedge:

Ubuntu.Components BottomEdge
============================

A component to handle bottom edge gesture and content.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`activeRegion <sdk_ubuntu_components_bottomedge_activeRegion>` : BottomEdgeRegion
-  :ref:`contentComponent <sdk_ubuntu_components_bottomedge_contentComponent>` : Component
-  :ref:`contentItem <sdk_ubuntu_components_bottomedge_contentItem>` : Item
-  :ref:`contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` : url
-  :ref:`dragDirection <sdk_ubuntu_components_bottomedge_dragDirection>` : DragDirection
-  :ref:`dragProgress <sdk_ubuntu_components_bottomedge_dragProgress>` : real
-  :ref:`hint <sdk_ubuntu_components_bottomedge_hint>` : BottomEdgeHint
-  :ref:`preloadContent <sdk_ubuntu_components_bottomedge_preloadContent>` : bool
-  :ref:`regions <sdk_ubuntu_components_bottomedge_regions>` : list<BottomEdgeRegion>
-  :ref:`status <sdk_ubuntu_components_bottomedge_status>` : Status

Signals
-------

-  :ref:`collapseCompleted <sdk_ubuntu_components_bottomedge_collapseCompleted>`\ ()
-  :ref:`collapseStarted <sdk_ubuntu_components_bottomedge_collapseStarted>`\ ()
-  :ref:`commitCompleted <sdk_ubuntu_components_bottomedge_commitCompleted>`\ ()
-  :ref:`commitStarted <sdk_ubuntu_components_bottomedge_commitStarted>`\ ()

Methods
-------

-  void :ref:`collapse <sdk_ubuntu_components_bottomedge_collapse>`\ ()
-  void :ref:`commit <sdk_ubuntu_components_bottomedge_commit>`\ ()

Detailed Description
--------------------

The component provides bottom edge content handling. The bottom egde feature is typically composed of a hint and some content. The :ref:`contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` is committed (i.e. fully shown) when the drag is completed after it has been dragged for a certain amount, that is 30% of the height of the :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>`. The :ref:`contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` can be anything, defined by :ref:`contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` or :ref:`contentComponent <sdk_ubuntu_components_bottomedge_contentComponent>`.

As the name suggests, the component automatically anchors to the bottom of its parent and takes the width of the parent. The drag is detected within the parent area, and the height drives till what extent the bottom edge content should be exposed on :ref:`commit <sdk_ubuntu_components_bottomedge_commit>` call. The content is centered into a panel which is dragged from the bottom of the :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>`. The content must specify its width and height.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(70)
        Page {
            id: page
            title: "BottomEdge"
            BottomEdge {
                height: parent.height - units.gu(20)
                hint.text: "My bottom edge"
                contentComponent: Rectangle {
                    width: page.width
                    height: page.height
                    color: UbuntuColors.green
                }
            }
        }
    }

**Note:** The content is specified either through :ref:`contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` or :ref:`contentComponent <sdk_ubuntu_components_bottomedge_contentComponent>`, where :ref:`contentComponent <sdk_ubuntu_components_bottomedge_contentComponent>` has precedence over :ref:`contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>`.

There can be situations when the content depends on the progress of the drag. There are two possibilities to follow this, depending on the use case. The :ref:`dragProgress <sdk_ubuntu_components_bottomedge_dragProgress>` provides live updates about the fraction of the drag.

.. code:: qml

    BottomEdge {
        id: bottomEdge
        height: parent.height
        hint.text: "progression"
        contentComponent: Rectangle {
            width: bottomEdge.width
            height: bottomEdge.height
            color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
        }
    }

The other use case is when the content needs to be completely different in certain regions of the area. These regions can be defined through :ref:`BottomEdgeRegion <sdk_ubuntu_components_bottomedgeregion>` elements listed in the :ref:`regions <sdk_ubuntu_components_bottomedge_regions>` property.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(70)
        Page {
            title: "BottomEdge"
            BottomEdge {
                id: bottomEdge
                height: parent.height - units.gu(20)
                hint.text: "My bottom edge"
                contentComponent: Rectangle {
                    width: bottomEdge.width
                    height: bottomEdge.height
                    color: bottomEdge.activeRegion ?
                             bottomEdge.activeRegion.color : UbuntuColors.green
                }
                regions: [
                    BottomEdgeRegion {
                        from: 0.4
                        to: 0.6
                        property color color: UbuntuColors.red
                    },
                    BottomEdgeRegion {
                        from: 0.6
                        to: 1.0
                        property color color: UbuntuColors.silk
                    }
                ]
            }
        }
    }

**Note:** Custom regions override the default declared ones. Therefore there must be one region which has its :ref:`to <sdk_ubuntu_components_bottomedgeregion_to>` limit set to 1.0 otherwise the content will not be committed at all.

**Note:** Regions can also be declared as child elements the same way as resources.

The :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>` takes ownership over the custom BottomEdgeRegions, therefore we cannot 'reuse' regions declared in other :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>` components, as those will be destroyed together with the reusing :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>` component. The following scenario only works if the *customRegion* is not used in any other regions.

.. code:: qml

    Page {
        BottomEdge {
            id: bottomEdge
            hint.text: "reusing regions"
            // put your content and setup here
            regions: [customRegion]
        }
        BottomEdgeRegion {
            id: customRegion
            from: 0.2
        }
    }

Page As Content
~~~~~~~~~~~~~~~

:ref:`BottomEdge <sdk_ubuntu_components_bottomedge>` accepts any component to be set as content. Also it can detect whether the content has a :ref:`PageHeader <sdk_ubuntu_components_pageheader>` component declared, and will inject a collapse navigation action automatically. In case the content has no header, the collapse must be provided by the content itself by calling the :ref:`collapse <sdk_ubuntu_components_bottomedge_collapse>` function.

.. code:: qml

    BottomEdge {
        id: bottomEdge
        height: parent.height
        hint.text: "Sample collapse"
        contentComponent: Rectangle {
            width: bottomEdge.width
            height: bottomEdge.height
            color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
            Button {
                text: "Collapse"
                onClicked: bottomEdge.collapse()
            }
        }
    }

Alternatively you can put a :ref:`PageHeader <sdk_ubuntu_components_pageheader>` component in your custom content as follows:

.. code:: qml

    BottomEdge {
        id: bottomEdge
        height: parent.height
        hint.text: "Injected collapse"
        contentComponent: Rectangle {
            width: bottomEdge.width
            height: bottomEdge.height
            color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
            PageHeader {
                title: "Fancy content"
            }
        }
    }

Styling
~~~~~~~

Similar to the other components the default style is expected to be defined in the theme's *BottomEdgeStyle*. However the style is not parented to the :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>` itself, but to the :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>`'s parent item. When loaded, the style does not fill the parent but its bottom anchor is set to the bottom of the :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>`. Beside this the hint is also parented to the style instance. Custom styles are expected to implement the BottomEgdeStyle API.

**See also** :ref:`BottomEdgeRegion <sdk_ubuntu_components_bottomedgeregion>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_bottomedge_activeRegion:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] activeRegion : :ref:`BottomEdgeRegion <sdk_ubuntu_components_bottomedgeregion>`                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the current active region.

.. _sdk_ubuntu_components_bottomedge_contentComponent:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentComponent : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the component defining the content of the bottom edge. The property behaves the same way as Loader's *sourceComponent* property.

.. _sdk_ubuntu_components_bottomedge_contentItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] contentItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the item created either from :ref:`contentUrl <sdk_ubuntu_components_bottomedge_contentUrl>` or :ref:`contentComponent <sdk_ubuntu_components_bottomedge_contentComponent>` properties.

.. _sdk_ubuntu_components_bottomedge_contentUrl:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentUrl : `url <http://doc.qt.io/qt-5/qml-url.html>`_                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the url to the document defining the content of the bottom edge. The property behaves the same way as Loader's *source* property.

.. _sdk_ubuntu_components_bottomedge_dragDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] dragDirection : DragDirection                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property reports the current direction of the drag. The direction is flipped when the drag passes the drag threshold.

+-----------------+--------------------------------------------------------------------------------------------------------------------------------+
| DragDirection   | Description                                                                                                                    |
+=================+================================================================================================================================+
| Undefined       | Default. The drag is not performed or the direction is not detected.                                                           |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------+
| Upwards         | The drag is performed from bottom up or it passed the drag threshold from from the last point the drag was going downwards.    |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------+
| Downwards       | The drag is performed from up to bottom or it passed the drag threshold from from the last point the drag was going upwards.   |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------+

Defaults to *Undefined*

.. _sdk_ubuntu_components_bottomedge_dragProgress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] dragProgress : real                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property specifies the proggress of the drag within [0..1] interval.

.. _sdk_ubuntu_components_bottomedge_hint:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hint : :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>`                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the component to display the hint for the bottom edge element.

.. _sdk_ubuntu_components_bottomedge_preloadContent:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preloadContent : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set, all the contents set in the component and in regions will be loaded in the background, so it will be available before it is revealed.

.. _sdk_ubuntu_components_bottomedge_regions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| regions : list<:ref:`BottomEdgeRegion <sdk_ubuntu_components_bottomedgeregion>`>                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the custom regions configured for the :ref:`BottomEdge <sdk_ubuntu_components_bottomedge>`. The default configuration contains one region, which commits the content when reached. The defaults can be restored by setting an empty list to the property or by calling regions.clear(). See :ref:`BottomEdgeRegion <sdk_ubuntu_components_bottomedgeregion>`.

.. _sdk_ubuntu_components_bottomedge_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] status : Status                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property reports the actual state of the bottom edge. It can have the following values:

+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status      | Description                                                                                                                                             |
+=============+=========================================================================================================================================================+
| Hidden      | The bottom edge is hidden. This does not contain the hint states.                                                                                       |
+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
| Revealed    | The Bottom edge content is revealed. The state can be reached only if the :ref:`hint <sdk_ubuntu_components_bottomedge_hint>` is in "Active" state.     |
+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
| Committed   | The bottom edge content is fully exposed.                                                                                                               |
+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

**Note:** Once *Commited* status is set, no further draging is possible on the content.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_bottomedge_collapseCompleted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| collapseCompleted()                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal emitted when the content collapse is completed.

.. _sdk_ubuntu_components_bottomedge_collapseStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| collapseStarted()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal emitted when the content collapse is started.

.. _sdk_ubuntu_components_bottomedge_commitCompleted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| commitCompleted()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal emitted when the content commit is completed.

.. _sdk_ubuntu_components_bottomedge_commitStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| commitStarted()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal emitted when the content commit is started.

Method Documentation
--------------------

.. _sdk_ubuntu_components_bottomedge_collapse:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void collapse()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function forces the bottom edge content to be hidden. Emits :ref:`collapseStarted <sdk_ubuntu_components_bottomedge_collapseStarted>` and :ref:`collapseCompleted <sdk_ubuntu_components_bottomedge_collapseCompleted>` signals to notify the start and the completion of the collapse operation.

.. _sdk_ubuntu_components_bottomedge_commit:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void commit()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function forces the bottom edge content to be fully exposed. Emits :ref:`commitStarted <sdk_ubuntu_components_bottomedge_commitStarted>` and :ref:`commitCompleted <sdk_ubuntu_components_bottomedge_commitCompleted>` signals to notify the start and the completion of the commit operation. It is safe to call commit() multiple times.

