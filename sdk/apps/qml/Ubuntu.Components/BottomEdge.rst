A component to handle bottom edge gesture and content.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `StyledItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/StyledItem/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`activeRegion </sdk/apps/qml/Ubuntu.Components/BottomEdge#activeRegion-prop>`__****
   : BottomEdgeRegion
-  ****`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__****
   : Component
-  ****`contentItem </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentItem-prop>`__****
   : Item
-  ****`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__****
   : url
-  ****`dragDirection </sdk/apps/qml/Ubuntu.Components/BottomEdge#dragDirection-prop>`__****
   : DragDirection
-  ****`dragProgress </sdk/apps/qml/Ubuntu.Components/BottomEdge#dragProgress-prop>`__****
   : real
-  ****`hint </sdk/apps/qml/Ubuntu.Components/BottomEdge#hint-prop>`__****
   : BottomEdgeHint
-  ****`preloadContent </sdk/apps/qml/Ubuntu.Components/BottomEdge#preloadContent-prop>`__****
   : bool
-  ****`regions </sdk/apps/qml/Ubuntu.Components/BottomEdge#regions-prop>`__****
   : list<BottomEdgeRegion>
-  ****`status </sdk/apps/qml/Ubuntu.Components/BottomEdge#status-prop>`__****
   : Status

Signals
-------

-  ****`collapseCompleted </sdk/apps/qml/Ubuntu.Components/BottomEdge#collapseCompleted-signal>`__****\ ()
-  ****`collapseStarted </sdk/apps/qml/Ubuntu.Components/BottomEdge#collapseStarted-signal>`__****\ ()
-  ****`commitCompleted </sdk/apps/qml/Ubuntu.Components/BottomEdge#commitCompleted-signal>`__****\ ()
-  ****`commitStarted </sdk/apps/qml/Ubuntu.Components/BottomEdge#commitStarted-signal>`__****\ ()

Methods
-------

-  void
   ****`collapse </sdk/apps/qml/Ubuntu.Components/BottomEdge#collapse-method>`__****\ ()
-  void
   ****`commit </sdk/apps/qml/Ubuntu.Components/BottomEdge#commit-method>`__****\ ()

Detailed Description
--------------------

The component provides bottom edge content handling. The bottom egde
feature is typically composed of a hint and some content. The
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
is committed (i.e. fully shown) when the drag is completed after it has
been dragged for a certain amount, that is 30% of the height of the
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__. The
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
can be anything, defined by
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
or
`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__.

As the name suggests, the component automatically anchors to the bottom
of its parent and takes the width of the parent. The drag is detected
within the parent area, and the height drives till what extent the
bottom edge content should be exposed on
`commit </sdk/apps/qml/Ubuntu.Components/BottomEdge#commit-method>`__
call. The content is centered into a panel which is dragged from the
bottom of the
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__. The
content must specify its width and height.

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

**Note:** The content is specified either through
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
or
`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__,
where
`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__
has precedence over
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__.

There can be situations when the content depends on the progress of the
drag. There are two possibilities to follow this, depending on the use
case. The
`dragProgress </sdk/apps/qml/Ubuntu.Components/BottomEdge#dragProgress-prop>`__
provides live updates about the fraction of the drag.

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

The other use case is when the content needs to be completely different
in certain regions of the area. These regions can be defined through
`BottomEdgeRegion </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion/>`__
elements listed in the
`regions </sdk/apps/qml/Ubuntu.Components/BottomEdge#regions-prop>`__
property.

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

**Note:** Custom regions override the default declared ones. Therefore
there must be one region which has its
`to </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion#to-prop>`__ limit
set to 1.0 otherwise the content will not be committed at all.

**Note:** Regions can also be declared as child elements the same way as
resources.

The `BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__ takes
ownership over the custom BottomEdgeRegions, therefore we cannot 'reuse'
regions declared in other
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__ components,
as those will be destroyed together with the reusing
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__ component.
The following scenario only works if the *customRegion* is not used in
any other regions.

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

`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__ accepts any
component to be set as content. Also it can detect whether the content
has a `PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__
component declared, and will inject a collapse navigation action
automatically. In case the content has no header, the collapse must be
provided by the content itself by calling the
`collapse </sdk/apps/qml/Ubuntu.Components/BottomEdge#collapse-method>`__
function.

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

Alternatively you can put a
`PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__ component
in your custom content as follows:

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

Similar to the other components the default style is expected to be
defined in the theme's *BottomEdgeStyle*. However the style is not
parented to the
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__ itself, but
to the `BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__'s
parent item. When loaded, the style does not fill the parent but its
bottom anchor is set to the bottom of the
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__. Beside
this the hint is also parented to the style instance. Custom styles are
expected to implement the BottomEgdeStyle API.

**See also**
`BottomEdgeRegion </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] activeRegion :                                      |
| `BottomEdgeRegion </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion/>`__ |
+--------------------------------------------------------------------------+

Specifies the current active region.

| 

+--------------------------------------------------------------------------+
|        \ contentComponent :                                              |
| `Component </sdk/apps/qml/QtQml/Component/>`__                           |
+--------------------------------------------------------------------------+

The property holds the component defining the content of the bottom
edge. The property behaves the same way as Loader's *sourceComponent*
property.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] contentItem :                                       |
| `Item </sdk/apps/qml/QtQuick/Item/>`__                                   |
+--------------------------------------------------------------------------+

The property holds the item created either from
`contentUrl </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentUrl-prop>`__
or
`contentComponent </sdk/apps/qml/Ubuntu.Components/BottomEdge#contentComponent-prop>`__
properties.

| 

+--------------------------------------------------------------------------+
|        \ contentUrl : `url <http://doc.qt.io/qt-5/qml-url.html>`__       |
+--------------------------------------------------------------------------+

The property holds the url to the document defining the content of the
bottom edge. The property behaves the same way as Loader's *source*
property.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] dragDirection : DragDirection                       |
+--------------------------------------------------------------------------+

The property reports the current direction of the drag. The direction is
flipped when the drag passes the drag threshold.

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

| 

+--------------------------------------------------------------------------+
|        \ [read-only] dragProgress : real                                 |
+--------------------------------------------------------------------------+

The property specifies the proggress of the drag within [0..1] interval.

| 

+--------------------------------------------------------------------------+
|        \ hint :                                                          |
| `BottomEdgeHint </sdk/apps/qml/Ubuntu.Components/BottomEdgeHint/>`__     |
+--------------------------------------------------------------------------+

The property holds the component to display the hint for the bottom edge
element.

| 

+--------------------------------------------------------------------------+
|        \ preloadContent : bool                                           |
+--------------------------------------------------------------------------+

If set, all the contents set in the component and in regions will be
loaded in the background, so it will be available before it is revealed.

| 

+--------------------------------------------------------------------------+
|        \ regions :                                                       |
| list<`BottomEdgeRegion </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion |
| />`__>                                                                   |
+--------------------------------------------------------------------------+

The property holds the custom regions configured for the
`BottomEdge </sdk/apps/qml/Ubuntu.Components/BottomEdge/>`__. The
default configuration contains one region, which commits the content
when reached. The defaults can be restored by setting an empty list to
the property or by calling regions.clear(). See
`BottomEdgeRegion </sdk/apps/qml/Ubuntu.Components/BottomEdgeRegion/>`__.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] status : Status                                     |
+--------------------------------------------------------------------------+

The property reports the actual state of the bottom edge. It can have
the following values:

+-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status      | Description                                                                                                                                                       |
+=============+===================================================================================================================================================================+
| Hidden      | The bottom edge is hidden. This does not contain the hint states.                                                                                                 |
+-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Revealed    | The Bottom edge content is revealed. The state can be reached only if the `hint </sdk/apps/qml/Ubuntu.Components/BottomEdge#hint-prop>`__ is in "Active" state.   |
+-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Committed   | The bottom edge content is fully exposed.                                                                                                                         |
+-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**Note:** Once *Commited* status is set, no further draging is possible
on the content.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ collapseCompleted()                                             |
+--------------------------------------------------------------------------+

Signal emitted when the content collapse is completed.

| 

+--------------------------------------------------------------------------+
|        \ collapseStarted()                                               |
+--------------------------------------------------------------------------+

Signal emitted when the content collapse is started.

| 

+--------------------------------------------------------------------------+
|        \ commitCompleted()                                               |
+--------------------------------------------------------------------------+

Signal emitted when the content commit is completed.

| 

+--------------------------------------------------------------------------+
|        \ commitStarted()                                                 |
+--------------------------------------------------------------------------+

Signal emitted when the content commit is started.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void collapse()                                                 |
+--------------------------------------------------------------------------+

The function forces the bottom edge content to be hidden. Emits
`collapseStarted </sdk/apps/qml/Ubuntu.Components/BottomEdge#collapseStarted-signal>`__
and
`collapseCompleted </sdk/apps/qml/Ubuntu.Components/BottomEdge#collapseCompleted-signal>`__
signals to notify the start and the completion of the collapse
operation.

| 

+--------------------------------------------------------------------------+
|        \ void commit()                                                   |
+--------------------------------------------------------------------------+

The function forces the bottom edge content to be fully exposed. Emits
`commitStarted </sdk/apps/qml/Ubuntu.Components/BottomEdge#commitStarted-signal>`__
and
`commitCompleted </sdk/apps/qml/Ubuntu.Components/BottomEdge#commitCompleted-signal>`__
signals to notify the start and the completion of the commit operation.
It is safe to call commit() multiple times.

| 
