.. _sdk_ubuntu_components_captions:

Ubuntu.Components Captions
==========================

Container providing captionStyles for a twin-label column that can be used in RowLayout or GridLayout.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`captionStyle <sdk_ubuntu_components_captions_captionStyle>` : int
-  :ref:`subtitle <sdk_ubuntu_components_captions_subtitle>` : Label
-  :ref:`title <sdk_ubuntu_components_captions_title>` : Label

Detailed Description
--------------------

The labels are placed in a column and can be accessed through :ref:`title <sdk_ubuntu_components_captions_title>` and :ref:`subtitle <sdk_ubuntu_components_captions_subtitle>` properties. The default spacing between the labels is 0.5 grid units.

The container only shows the labels which has its text property set to a valid string. The labels not having any text set are not occupying the space. When embedded in a positioner or in a RowLayout, the container is aligned vertically centered. It is recommended to be used in context with RowLayout or GridLayout, however can be used with any component.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListItem {
        RowLayout {
             Captions {
                 title.text: "Caption"
                 subtitle.text: "Subtitle text"
                 // attached properties of an Item type property
                 // can be changed only with assignment
                 Component.onCompleted: subtitle.Layout.alignment = Qt.AlignRight
             }
             Captions {
                 captionStyle: Ubuntu.SummaryCaptionStyle
                 title.text: "Text"
                 subtitle.text: "Text"
             }
        }
    }

Additional items can also be added to the layout after the two labels.

.. code:: qml

    Captions {
        title.text: "Caption"
        subtitle.text: "Subtitle"
        Label {
            text: "third line"
            textSize: Label.XxSmall
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_captions_captionStyle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| captionStyle : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property configures the arrangement and font sizes of the Labels in the component. It can take the following values:

-  **Ubuntu.TitleCaptionStyle** - (default) typical configuration for a left aligned twin-label setup, where the text covers the remaining area on a list layout.
-  **Ubuntu.SummaryCaptionStyle** - configuration for a right-aligned twin label setup, with 6 grid units width.

.. _sdk_ubuntu_components_captions_subtitle:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] subtitle : :ref:`Label <sdk_ubuntu_components_label>`                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Label occupying the bottom area of the container.

.. _sdk_ubuntu_components_captions_title:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] title : :ref:`Label <sdk_ubuntu_components_label>`                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Label occupying the top area of the container.

