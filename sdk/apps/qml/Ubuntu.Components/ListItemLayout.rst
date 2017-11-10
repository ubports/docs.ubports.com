.. _sdk_ubuntu_components_listitemlayout:

Ubuntu.Components ListItemLayout
================================

ListItemLayout provides an easy way to create list items which follow Ubuntu design standards, thus making them visually appealing and consistent with the rest of the platform without effort.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`subtitle <sdk_ubuntu_components_listitemlayout_subtitle>` : Label
-  :ref:`summary <sdk_ubuntu_components_listitemlayout_summary>` : Label
-  :ref:`title <sdk_ubuntu_components_listitemlayout_title>` : Label

Detailed Description
--------------------

:ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` is essentially a :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` with a predefined :ref:`SlotsLayout::mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` that provides (up to) 3 Labels automatically laid out according to our UI guidelines.

**Note**: those labels may have properties whose default value is different from what is used by the standard Label component. The default wrapMode, for instance, is different. Have a look at :ref:`Labels' properties <sdk_ubuntu_components_listitemlayout_labels>` section.

This main slot has been optimized to cover most of the usecases without compromising performance (read more in :ref:`Optimizing memory consumption <sdk_ubuntu_components_listitemlayout_optimizing>`).

We're aware there could be usecases which the :ref:`SlotsLayout::mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` provided by :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` doesn't cover. If that is the case, please use :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` instead of :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` and provide your own :ref:`SlotsLayout::mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>`.

:ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` works similarly to `QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`_ 's Row, but while Row just positions its children in a horizontal formation, :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` also tweaks their vertical position to ensure a clean layout.

We will call :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`'s visual children "slots". :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` positions its slots automatically, following the visual rules specified by the Ubuntu Design team. Because we think flexibility is an important value of our UI components, we made it possible to tweak the position of each slot by modifying its attached properties (see :ref:`Advanced layout tweaks <sdk_ubuntu_components_slotslayout_advanced>`).

**Note** that if you're wrapping the :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` in a container such as :ref:`ListItem <sdk_ubuntu_components_listitem>`, **you will have to specify the height of the container so that it follows :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`'s height**, otherwise the layout content may appear clipped or not vertically centered.

See **:ref:`here <sdk_ubuntu_components_slotslayout_resizing>`** for more details. Here's an example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Component 1.3
    ListItem {
        //CORRECT, ListItem will be tall enough to accomodate all the content
        height: layout.height + (divider.visible ? divider.height : 0)
        ListItemLayout {
            id: layout
            title.text: "Hello developers!"
            subtitle.text: "I am a ListItemLayout"
            summary.text: "I resize automatically to accomodate all the elements I hold. My parents should track my height property!"
        }
    }

If you need a progression symbol in your list item, just add :ref:`ProgressionSlot <sdk_ubuntu_components_progressionslot>` as a child of your :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`. No manual positioning is needed, the layout will handle it for you.

To read more about advanced slots positioning or how to handle input (mouse or touch) in :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`, see :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` documentation.

If you don't need the features provided by :ref:`ListItem <sdk_ubuntu_components_listitem>` (such as the swiping actions), you can also use :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` directly as root of your list view delegate or inside a :ref:`MouseArea <sdk_qtquick_mousearea>`, as explained in :ref:`Input handling <sdk_ubuntu_components_slotslayout_input>`.

The following code example shows how easy it is to create even non trivial list items using :ref:`ListItem <sdk_ubuntu_components_listitem>` and :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`:

.. code:: qml

    ListItem {
        height: layout.height + (divider.visible ? divider.height : 0)
        ListItemLayout {
            id: layout
            title.text: "Hello developers!"
            subtitle.text: "I'm a subtitle, I'm tiny!"
            summary.text: "Ubuntu!"
            CheckBox { SlotsLayout.position: SlotsLayout.Leading }
            Icon {
                name: "message"
                SlotsLayout.position: SlotsLayout.Trailing;
                width: units.gu(2)
            }
        }
    }

Although :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` covers most of the usecases, there might be times where you might want to tweak the position of one or more slots. The following example shows one way to implement a list item with a trailing slot holding two labels. What is special about this example is that we want the baseline of one label inside the trailing slot to align to :ref:`title <sdk_ubuntu_components_listitemlayout_title>`'s baseline and the baseline of the other label to align to :ref:`subtitle <sdk_ubuntu_components_listitemlayout_subtitle>`'s baseline.

.. code:: qml

    ListItem {
        id: listItem
        height: layout.height + (divider.visible ? divider.height : 0)
        ListItemLayout {
            id: layout
            title.text: "Hello..."
            title.color: UbuntuColors.Orange
            subtitle.text: "...world!"
            Rectangle {
                SlotsLayout.position: SlotsLayout.Leading
                color: "pink"
                height: units.gu(6)
                width: height
            }
            Item {
                id: slot
                width: secondLabel.width
                height: parent.height
                //as we want to position labels to align with title and subtitle
                SlotsLayout.overrideVerticalPositioning: true
                Label {
                    id: firstLabel
                    anchors.right: secondLabel.right
                    text: "19:17"
                    fontSize: "small"
                    y: layout.mainSlot.y + layout.title.y
                       + layout.title.baselineOffset - baselineOffset
                }
                Label {
                    id: secondLabel
                    text: "Outgoing"
                    fontSize: "small"
                    y: layout.mainSlot.y + layout.subtitle.y
                       + layout.subtitle.baselineOffset - baselineOffset
                }
            }
        }
    }

Labels layout
-------------

The labels in :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`'s default :ref:`SlotsLayout::mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` are laid out in a column. The :ref:`title <sdk_ubuntu_components_listitemlayout_title>` is positioned at the top, followed by :ref:`subtitle <sdk_ubuntu_components_listitemlayout_subtitle>` and :ref:`summary <sdk_ubuntu_components_listitemlayout_summary>`, respectively.

The :ref:`subtitle <sdk_ubuntu_components_listitemlayout_subtitle>` has its top anchored to :ref:`title <sdk_ubuntu_components_listitemlayout_title>`'s bottom, with a margin of 2 DPs.

The :ref:`summary <sdk_ubuntu_components_listitemlayout_summary>` has its top tightly anchored to :ref:`subtitle <sdk_ubuntu_components_listitemlayout_subtitle>`'s bottom.

The height of the default :ref:`SlotsLayout::mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` provided with :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` is the minimum height required to accomodate the **visible** and **non-empty** labels it holds. If only :ref:`title <sdk_ubuntu_components_listitemlayout_title>` is visible and has a non-empty text set, for instance, the height of the main slot will be ``title.height``.

If you wish to have the layout process accomodate a label which doesn't have a defined text yet, you should set its text property to " ", as shown in the following example:

.. code:: qml

    ListItemLayout {
        title.text: "Hello developers!"
        //NOTE: the whitespace
        subtitle.text: " "
    }

That will make sure :ref:`SlotsLayout::mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` is resized to accomodate the (currently empty) subtitle.

This is useful, for instance, if you want all list items in a list view to have the same height even without having to fill :ref:`subtitle <sdk_ubuntu_components_listitemlayout_subtitle>`'s (or summary's) text with dummy content.

Labels' properties
------------------

:ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`'s labels are the same component as :ref:`Label <sdk_ubuntu_components_label>`, but with slightly different default properties. Moreover, :ref:`Label <sdk_ubuntu_components_label>` derives from `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ . As a consequence, you can access and override all the properties provided by `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  and :ref:`Label <sdk_ubuntu_components_label>`, if needed. Please refer to `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ 's and :ref:`Label <sdk_ubuntu_components_label>`'s documentation to see the list of all the properties.

The default values for :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`'s labels are defined in the documentation of each label. See :ref:`title <sdk_ubuntu_components_listitemlayout_title>`, :ref:`subtitle <sdk_ubuntu_components_listitemlayout_subtitle>` and :ref:`summary <sdk_ubuntu_components_listitemlayout_summary>`.

**Note**: if you want to change the elide mode of a label to something other than ``Text.ElideRight``, make sure its ``wrapMode`` is set to ``Text.NoWrap``. See :ref:`Text::wrapMode <sdk_qtquick_text_wrapMode>` for more details.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Item {
        width: units.gu(30)
        height: units.gu(50)
        ListItem {
            height: layout.height + (divider.visible ? divider.height : 0)
            ListItemLayout {
                id: fileLayout
                //Let's change the default elide mode to Text.ElideMiddle
                title.elide: Text.ElideMiddle
                //ElideMiddle only works if there is no wrapping (see Text::wrapMode doc)
                title.wrapMode: Text.NoWrap
                title.text: "Red Roses run no risk, sir, on nurses order."
            }
        }
    }

Optimizing memory consumption
-----------------------------

In order to minimize memory consumption, the Labels in the :ref:`SlotsLayout::mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` are only allocated in memory on demand, i.e. the first time one of their properties is queried.

.. code:: qml

    ListItemLayout {
        //NOTE: querying subtitle.text triggers allocation of subtitle Label
        Component.onCompleted: console.log(subtitle.text)
        title.text: "Hello developers!"
    }

In the example above, querying subtitle.text will trigger the allocation in memory of the subtitle Label, which we don't actually use. We **recommend** avoiding querying properties of labels that we don't plan to use in the layout, in order to minimize memory consumption and maximize the scrolling performance of our list views.

.. code:: qml

    ListItemLayout {
        //no extra labels created
        title.text: "Hello developers!"
    }

About aliasing labels properties
--------------------------------

Due to the way ListItemsLayout's labels are created (see :ref:`Optimizing memory consumption <sdk_ubuntu_components_listitemlayout_optimizing>`) it is not possible to directly alias their properties. It is still possible, however, to expose an API that gives indirect read-write access to those properties. The following code:

.. code:: qml

    ListItem {
        height: layout.height + (divider.visible ? divider.height : 0)
        property alias titleText: layout.title.text
        ListItemLayout {
            id: layout
        }
    }

will return the error "Invalid alias location", because the title object does not yet exist at time when the alias is created.

If you need to expose an API for your component that allows changing the properties of the labels, we recommend aliasing the labels themselves. Let's assume you want to create a QML component to use as a delegate of many list views inside your application: you will probably have a qml file holding the definition of the that delegate, and the content of that file will be similar to:

.. code:: qml

    //Content of CustomListItem.qml
    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListItem {
        id: listitem
        property alias title: layout.title
        property alias iconName: icon.name
        height: layout.height + (divider.visible ? divider.height : 0)
        ListItemLayout {
            id: layout
            Icon {
                id: icon
                width: units.gu(2)
            }
        }
    }

As you can see, we alias the label item itself instead of its properties. This also has the advantage of only exposing one alias instead of one for each property, thus making your QML app a bit more performant. Once your delegate is defined, you can use it in your ListViews like usual.

.. code:: qml

    //other UI code...
    ListView {
        anchors.fill: parent
        model: ListModel {
            id: listViewModel
            ListElement { titleText: "Hello1"; icon: "message" }
            ListElement { titleText: "Hello2"; icon: "email" }
            ListElement { titleText: "Hello3"; icon: "email" }
            ListElement { titleText: "Hello4"; icon: "message" }
        }
        delegate: CustomListItem {
            title.text: model.titleText
            iconName: model.icon
        }
    }

Note how title's properties are all accessible via the "title" identifier.

**See also** :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` and :ref:`ProgressionSlot <sdk_ubuntu_components_progressionslot>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitemlayout_subtitle:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| subtitle : :ref:`Label <sdk_ubuntu_components_label>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix ``subtitle.`` in a similar way as shown in :ref:`title <sdk_ubuntu_components_listitemlayout_title>`.

The default :ref:`Text::elide <sdk_qtquick_text_elide>` value for subtitle is ``Text.ElideRight``.

The default :ref:`Text::wrapMode <sdk_qtquick_text_wrapMode>` is ``Text.WrapAnywhere``.

The default :ref:`Label::textSize <sdk_ubuntu_components_label_textSize>` is ``Label.Small``.

The rest of the properties have the same default values as :ref:`Label <sdk_ubuntu_components_label>`.

.. _sdk_ubuntu_components_listitemlayout_summary:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| summary : :ref:`Label <sdk_ubuntu_components_label>`                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix ``summary.`` in a similar way as shown in :ref:`title <sdk_ubuntu_components_listitemlayout_title>`.

The default :ref:`Text::elide <sdk_qtquick_text_elide>` value for summary is ``Text.ElideRight``.

The default :ref:`Text::wrapMode <sdk_qtquick_text_wrapMode>` is ``Text.WrapAnywhere``.

The default :ref:`Label::textSize <sdk_ubuntu_components_label_textSize>` is ``Label.Small``.

The rest of the properties have the same default values as :ref:`Label <sdk_ubuntu_components_label>`.

.. _sdk_ubuntu_components_listitemlayout_title:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| title : :ref:`Label <sdk_ubuntu_components_label>`                                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the title label and its properties. Styling and font properties can be set just like on any other Text component, as shown in the following example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListItemLayout {
        height: units.gu(10)
        width: units.gu(30)
        title.color: UbuntuColors.orange
        title.maximumLineCount: 3
        title.text: "Red Roses\nrun no risk,\nsir, on nurses order."
    }

The default :ref:`Text::elide <sdk_qtquick_text_elide>` value for title is ``Text.ElideRight``.

The default :ref:`Text::wrapMode <sdk_qtquick_text_wrapMode>` is ``Text.WrapAnywhere``.

That means, for instance, that if you want to use a different elide mode, you also have to set wrapMode to ``Text.NoWrap``. Refer to the official `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  documentation for further details.

The default :ref:`Label::textSize <sdk_ubuntu_components_label_textSize>` is ``Label.Medium``.

The rest of the properties have the same default values as :ref:`Label <sdk_ubuntu_components_label>`.

