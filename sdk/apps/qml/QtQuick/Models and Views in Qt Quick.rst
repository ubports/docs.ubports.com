.. _sdk_qtquick_models_and_views_in_qt_quick:

QtQuick Models and Views in Qt Quick
====================================


Simply put, applications need to form data and display the data. Qt Quick has the notion of *models*, *views*, and *delegates* to display data. They modularize the visualization of data in order to give the developer or designer control over the different aspects of the data. A developer can swap a list view with a grid view with little changes to the data. Similarly, encapsulating an instance of the data in a delegate allows the developer to dictate how to present or handle the data.

-  **Model** - contains the data and its structure. There are several QML types for creating models.
-  **View** - a container that displays the data. The view might display the data in a list or a grid.
-  **Delegate** - dictates how the data should appear in the view. The delegate takes each data in the model and encapsulates it. The data is accessible through the delegate.

To visualize data, bind the view's ``model`` property to a model and the ``delegate`` property to a component or another compatible type.

Views are containers for collections of items. They are feature-rich and can be customizable to meet style or behavior requirements.

A set of standard views are provided in the basic set of Qt Quick graphical types:

-  :ref:`ListView <sdk_qtquick_listview>` - arranges items in a horizontal or vertical list
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  - arranges items in a grid within the available space
-  :ref:`PathView <sdk_qtquick_pathview>` - arranges items on a path

These types have properties and behaviors exclusive to each type. Visit their respective documentation for more information.

Views allow visual customization through *decoration* properties such as the ``header``, ``footer``, and ``section`` properties. By binding an object, usually another visual object, to these properties, the views are decoratable. A footer may include a :ref:`Rectangle <sdk_qtquick_rectangle>` type showcasing borders or a header that displays a logo on top of the list.

Suppose that a specific club wants to decorate its members list with its brand colors. A member list is in a ``model`` and the ``delegate`` will display the model's content.

.. code:: qml

    ListModel {
        id: nameModel
        ListElement { name: "Alice" }
        ListElement { name: "Bob" }
        ListElement { name: "Jane" }
        ListElement { name: "Harry" }
        ListElement { name: "Wendy" }
    }
    Component {
        id: nameDelegate
        Text {
            text: name;
            font.pixelSize: 24
        }
    }

The club may decorate the members list by binding visual objects to the ``header`` and ``footer`` properties. The visual object may be defined inline, in another file, or in a Component type.

.. code:: qml

    ListView {
        anchors.fill: parent
        clip: true
        model: nameModel
        delegate: nameDelegate
        header: bannercomponent
        footer: Rectangle {
            width: parent.width; height: 30;
            gradient: clubcolors
        }
        highlight: Rectangle {
            width: parent.width
            color: "lightgray"
        }
    }
    Component {     //instantiated when header is processed
        id: bannercomponent
        Rectangle {
            id: banner
            width: parent.width; height: 50
            gradient: clubcolors
            border {color: "#9EDDF2"; width: 2}
            Text {
                anchors.centerIn: parent
                text: "Club Members"
                font.pixelSize: 32
            }
        }
    }
    Gradient {
        id: clubcolors
        GradientStop { position: 0.0; color: "#8EE2FE"}
        GradientStop { position: 0.66; color: "#7ED2EE"}
    }

The views handle dragging and flicking of their content, however they do not handle touch interaction with the individual delegates. In order for the delegates to react to touch input, e.g. to set the ``currentIndex``, a :ref:`MouseArea <sdk_qtquick_mousearea>` with the appropriate touch handling logic must be provided by the delegate.

Note that if ``highlightRangeMode`` is set to ``StrictlyEnforceRange`` the currentIndex will be affected by dragging/flicking the view, since the view will always ensure that the ``currentIndex`` is within the highlight range specified.

:ref:`ListView <sdk_qtquick_listview>` contents may be grouped into *sections*, where related list items are labeled according to their sections. Further, the sections may be decorated with `delegates </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-view-delegate>`_ .

A list may contain a list indicating people's names and the team on which team the person belongs.

.. code:: qml

    ListModel {
        id: nameModel
        ListElement { name: "Alice"; team: "Crypto" }
        ListElement { name: "Bob"; team: "Crypto" }
        ListElement { name: "Jane"; team: "QA" }
        ListElement { name: "Victor"; team: "QA" }
        ListElement { name: "Wendy"; team: "Graphics" }
    }
    Component {
        id: nameDelegate
        Text {
            text: name;
            font.pixelSize: 24
            anchors.left: parent.left
            anchors.leftMargin: 2
        }
    }

The :ref:`ListView <sdk_qtquick_listview>` type has the ``section`` attached property that can combine adjacent and related types into a section. The ``section.property`` determines which list type property to use as sections. The ``section.criteria`` can dictate how the section names are displayed and the ``section.delegate`` is similar to the views' `delegate </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-view-delegate>`_  property.

.. code:: qml

    ListView {
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        focus: true
        highlight: Rectangle {
            color: "lightblue"
            width: parent.width
        }
        section {
            property: "team"
            criteria: ViewSection.FullString
            delegate: Rectangle {
                color: "#b0dfb0"
                width: parent.width
                height: childrenRect.height + 4
                Text { anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 16
                    font.bold: true
                    text: section
                }
            }
        }
    }

Views need a *delegate* to visually represent an item in a list. A view will visualize each item list according to the template defined by the delegate. Items in a model are accessible through the ``index`` property as well as the item's properties.

.. code:: qml

    Component {
        id: petdelegate
        Text {
            id: label
            font.pixelSize: 24
            text: if (index == 0)
                label.text = type + " (default)"
            else
                text: type
        }
    }

The list view to which the delegate is bound is accessible from the delegate through the ``ListView.view`` property. Likewise, the `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  ``GridView.view`` is available to delegates. The corresponding model and its properties, therefore, are available through ``ListView.view.model``. In addition, any defined signals or methods in the model are also accessible.

This mechanism is useful when you want to use the same delegate for a number of views, for example, but you want decorations or other features to be different for each view, and you would like these different settings to be properties of each of the views. Similarly, it might be of interest to access or show some properties of the model.

In the following example, the delegate shows the property *language* of the model, and the color of one of the fields depends on the property *fruit\_color* of the view.

.. code:: qml

    Rectangle {
         width: 200; height: 200
        ListModel {
            id: fruitModel
            property string language: "en"
            ListElement {
                name: "Apple"
                cost: 2.45
            }
            ListElement {
                name: "Orange"
                cost: 3.25
            }
            ListElement {
                name: "Banana"
                cost: 1.95
            }
        }
        Component {
            id: fruitDelegate
            Row {
                    id: fruit
                    Text { text: " Fruit: " + name; color: fruit.ListView.view.fruit_color }
                    Text { text: " Cost: $" + cost }
                    Text { text: " Language: " + fruit.ListView.view.model.language }
            }
        }
        ListView {
            property color fruit_color: "green"
            model: fruitModel
            delegate: fruitDelegate
            anchors.fill: parent
        }
    }

Data is provided to the delegate via named data roles which the delegate may bind to. Here is a `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  with two roles, *type* and *age*, and a :ref:`ListView <sdk_qtquick_listview>` with a delegate that binds to these roles to display their values:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 200; height: 250
        ListModel {
            id: myModel
            ListElement { type: "Dog"; age: 8 }
            ListElement { type: "Cat"; age: 5 }
        }
        Component {
            id: myDelegate
            Text { text: type + ", " + age }
        }
        ListView {
            anchors.fill: parent
            model: myModel
            delegate: myDelegate
        }
    }

If there is a naming clash between the model's properties and the delegate's properties, the roles can be accessed with the qualified *model* name instead. For example, if a `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  type had *type* or *age* properties, the text in the above example would display those property values instead of the *type* and *age* values from the model item. In this case, the properties could have been referenced as ``model.type`` and ``model.age`` instead to ensure the delegate displays the property values from the model item.

A special *index* role containing the index of the item in the model is also available to the delegate. Note this index is set to -1 if the item is removed from the model. If you bind to the index role, be sure that the logic accounts for the possibility of index being -1, i.e. that the item is no longer valid. (Usually the item will shortly be destroyed, but it is possible to delay delegate destruction in some views via a ``delayRemove`` attached property.)

Models that do not have named roles (such as the `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  shown below) will have the data provided via the *modelData* role. The *modelData* role is also provided for models that have only one role. In this case the *modelData* role contains the same data as the named role.

QML provides several types of data models among the built-in set of QML types. In addition, models can be created with Qt C++ and then made available to the QMLEngine for use by QML components. For information about creating these models, visit the `Using C++ Models with Qt Quick Views </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/>`_  and creating QML types articles.

Positioning of items from a model can be achieved using a :ref:`Repeater <sdk_qtquick_repeater>`.

`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  is a simple hierarchy of types specified in QML. The available roles are specified by the ListElement properties.

.. code:: qml

    ListModel {
        id: fruitModel
        ListElement {
            name: "Apple"
            cost: 2.45
        }
        ListElement {
            name: "Orange"
            cost: 3.25
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
    }

The above model has two roles, *name* and *cost*. These can be bound to by a :ref:`ListView <sdk_qtquick_listview>` delegate, for example:

.. code:: qml

    ListView {
        anchors.fill: parent
        model: fruitModel
        delegate: Row {
            Text { text: "Fruit: " + name }
            Text { text: "Cost: $" + cost }
        }
    }

`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  provides methods to manipulate the `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  directly via JavaScript. In this case, the first item inserted determines the roles available to any views that are using the model. For example, if an empty `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  is created and populated via JavaScript, the roles provided by the first insertion are the only roles that will be shown in the view:

.. code:: qml

    ListModel { id: fruitModel }
        ...
    MouseArea {
        anchors.fill: parent
        onClicked: fruitModel.append({"cost": 5.95, "name":"Pizza"})
    }

When the :ref:`MouseArea <sdk_qtquick_mousearea>` is clicked, ``fruitModel`` will have two roles, *cost* and *name*. Even if subsequent roles are added, only the first two will be handled by views using the model. To reset the roles available in the model, call ListModel::clear().

`XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  allows construction of a model from an XML data source. The roles are specified via the `XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_  type. The type needs to be imported.

.. code:: cpp

    import QtQuick.XmlListModel 2.0

The following model has three roles, *title*, *link* and *description*:

.. code:: qml

    XmlListModel {
         id: feedModel
         source: "http://rss.news.yahoo.com/rss/oceania"
         query: "/rss/channel/item"
         XmlRole { name: "title"; query: "title/string()" }
         XmlRole { name: "link"; query: "link/string()" }
         XmlRole { name: "description"; query: "description/string()" }
    }

The `RSS News demo </sdk/apps/qml/QtQuick/demos-rssnews/>`_  shows how `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  can be used to display an RSS feed.

`VisualItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#visualitemmodel>`_  allows QML items to be provided as a model.

This model contains both the data and delegate; the child items of a `VisualItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#visualitemmodel>`_  provide the contents of the delegate. The model does not provide any roles.

.. code:: qml

    VisualItemModel {
        id: itemModel
        Rectangle { height: 30; width: 80; color: "red" }
        Rectangle { height: 30; width: 80; color: "green" }
        Rectangle { height: 30; width: 80; color: "blue" }
    }
    ListView {
        anchors.fill: parent
        model: itemModel
    }

Note that in the above example there is no delegate required. The items of the model itself provide the visual types that will be positioned by the view.

An integer can be used as a model that contains a certain number of types. In this case, the model does not have any data roles.

The following example creates a :ref:`ListView <sdk_qtquick_listview>` with five elements:

.. code:: qml

    Item {
        width: 200; height: 250
        Component {
            id: itemDelegate
            Text { text: "I am item number: " + index }
        }
        ListView {
            anchors.fill: parent
            model: 5
            delegate: itemDelegate
        }
    }

An object instance can be used to specify a model with a single object type. The properties of the object are provided as roles.

The example below creates a list with one item, showing the color of the *myText* text. Note the use of the fully qualified *model.color* property to avoid clashing with *color* property of the Text type in the delegate.

.. code:: qml

    Rectangle {
        width: 200; height: 250
        Text {
            id: myText
            text: "Hello"
            color: "#dd44ee"
        }
        Component {
            id: myDelegate
            Text { text: model.color }
        }
        ListView {
            anchors.fill: parent
            anchors.topMargin: 30
            model: myText
            delegate: myDelegate
        }
    }

Models can be defined in C++ and then made available to QML. This mechanism is useful for exposing existing C++ data models or otherwise complex datasets to QML.

For information, visit the `Using C++ Models with Qt Quick Views </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/>`_  article.

Repeaters create items from a template for use with positioners, using data from a model. Combining repeaters and positioners is an easy way to lay out lots of items. A :ref:`Repeater <sdk_qtquick_repeater>` item is placed inside a positioner, and generates items that the enclosing positioner arranges.

Each Repeater creates a number of items by combining each element of data from a model, specified using the :ref:`model <sdk_qtquick_repeater_model>` property, with the template item, defined as a child item within the Repeater. The total number of items is determined by the amount of data in the model.

The following example shows a repeater used with a Grid item to arrange a set of Rectangle items. The Repeater item creates a series of 24 rectangles for the Grid item to position in a 5 by 5 arrangement.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 400; height: 400; color: "black"
        Grid {
            x: 5; y: 5
            rows: 5; columns: 5; spacing: 10
            Repeater { model: 24
                       Rectangle { width: 70; height: 70
                                   color: "lightgreen"
                                   Text { text: index
                                          font.pointSize: 30
                                          anchors.centerIn: parent } }
            }
        }
    }

The number of items created by a Repeater is held by its :ref:`count <sdk_qtquick_repeater_count>` property. It is not possible to set this property to determine the number of items to be created. Instead, as in the above example, we use an integer as the model. This is explained in the `QML Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#integers-as-models>`_  document.

It is also possible to use a delegate as the template for the items created by a Repeater. This is specified using the :ref:`delegate <sdk_qtquick_repeater_delegate>` property.

Transitions can be used to animate items that are added to, moved within, or removed from a positioner.

Transitions for adding items apply to items that are created as part of a positioner, as well as those that are reparented to become children of a positioner. Transitions for removing items apply to items within a positioner that are deleted, as well as those that are removed from a positioner and given new parents in a document.

Additionally, changing the opacity of items to zero will cause them to disappear using the remove transition, and making the opacity non-zero will cause them to appear using the add transition.

