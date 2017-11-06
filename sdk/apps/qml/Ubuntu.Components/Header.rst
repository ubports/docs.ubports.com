.. _sdk_ubuntu_components_header:

Ubuntu.Components Header
========================

Header bar that can contain the title and controls for the current view.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`PageHeader <sdk_ubuntu_components_pageheader>`.                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`automaticHeight <sdk_ubuntu_components_header_automaticHeight>` : bool
-  :ref:`exposed <sdk_ubuntu_components_header_exposed>` : bool
-  :ref:`flickable <sdk_ubuntu_components_header_flickable>` : Flickable
-  :ref:`moving <sdk_ubuntu_components_header_moving>` : bool

Detailed Description
--------------------

The Header can be exposed and hidden by setting the :ref:`exposed <sdk_ubuntu_components_header_exposed>` property, and when a :ref:`flickable <sdk_ubuntu_components_header_flickable>` is set, the header will scroll together with the flickable and expose or hide when the Flickable movement ends.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Page {
        width: units.gu(50)
        height: units.gu(70)
        header: Header {
            width: parent.width
            height: units.gu(6)
            flickable: scrollableContent
            Rectangle {
                // to visualize the header
                anchors.fill: parent
                color: UbuntuColors.blue
            }
        }
        Flickable {
            id: scrollableContent
            anchors.fill: parent
            contentHeight: height * 2
            Label {
                text: "Flick me"
            }
        }
    }

The initial y-value is 0, but scrolling the flickable or setting :ref:`exposed <sdk_ubuntu_components_header_exposed>` to false will change the y-value in the range from -height to 0.

Property Documentation
----------------------

.. _sdk_ubuntu_components_header_automaticHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| automaticHeight : bool                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The heights of the :ref:`Page <sdk_ubuntu_components_page>` headers in an :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` are synchronized by the :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` so that they all get the height of the largest implicitHeight of the visible Page headers to give a uniform look to the headers. To opt-out of this height synchronization, set automaticHeight to false. This will prevent the :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` from taking the Header's implicitHeight into account for computing the maximum header height, and it will also not update the height of the header that has automaticHeight set to false to match the other header heights. Default value: true.

.. _sdk_ubuntu_components_header_exposed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exposed : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Exposes and hides the header by animating its y-value between -height and 0 to move it in or out of its parent Item. The value of exposed can be set directly, or it will be automatically updated when the user exposes or hides the Header by scrolling the Header's :ref:`flickable <sdk_ubuntu_components_header_flickable>`.

.. _sdk_ubuntu_components_header_flickable:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickable : :ref:`Flickable <sdk_qtquick_flickable>`                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When flickable is set, scrolling vertically in the flickable, or setting the Flickable's y-value will move the header y-position by the same amount as the flickable content movement. When scrolling the flickable, upon release, the header will animate to fully exposed or fully hidden state, depending on whether it was more or less than half exposed when the user stopped moving the flickable.

When flickable is null, the header can be exposed or hidden by setting the :ref:`exposed <sdk_ubuntu_components_header_exposed>` property. Note that :ref:`exposed <sdk_ubuntu_components_header_exposed>` is not automatically updated when the value of flickable changes, so if the header must be exposed when the flickable changes (or is set to null), this must be done explicitly. Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(60)
        height: units.gu(80)
        AdaptivePageLayout {
            id: layout
            anchors.fill: parent
            primaryPage: Page {
                id: page
                Flickable {
                    id: contentFlick
                    anchors.fill: parent
                    topMargin: page.header.flickable ? 0 : page.header.height
                    contentHeight: units.gu(200)
                    // Scrolling here can hide the header.
                }
                header: PageHeader {
                    title: i18n.tr("Navigation")
                    flickable: layout.columns === 1 ? contentFlick : null
                    // Show header when it gets locked in a two-column layout:
                    onFlickableChanged: exposed = true
                }
            }
        }
    }

The topMargin of the flickable will automatically be updated by adding the height of the header to the current topMargin. When changing the flickable, the topMargin of the previous flickable is restored by subtracting the header height from it. Making the header invisible has the same effect on the topMargin as unsetting the flickable.

It is permitted to use a :ref:`ListView <sdk_qtquick_listview>` as the value of flickable, but this works well only if the :ref:`ListView <sdk_qtquick_listview>`.header property is not set. Alternatively, a Header component may be used for :ref:`ListView <sdk_qtquick_listview>`.header, but in that case the flickable of the Header must be null.

.. _sdk_ubuntu_components_header_moving:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] moving : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Indicates whether the header is currently moving, either because contentY of the :ref:`flickable <sdk_ubuntu_components_header_flickable>` changes (due to user interaction or by setting it directly), or because the header is animating in or out because the value of :ref:`exposed <sdk_ubuntu_components_header_exposed>` was updated.

