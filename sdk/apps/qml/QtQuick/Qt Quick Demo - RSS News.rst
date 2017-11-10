.. _sdk_qtquick_qt_quick_demo_-_rss_news:

QtQuick Qt Quick Demo - RSS News
================================



*RSS News* demonstrates the following `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  features:

-  Using custom types to create screens and screen controls.
-  Using list models and list elements to represent data.
-  Using XML list models to download XML data.
-  Using list views to display data.
-  Using the Component type to create a footer for the news item list view.
-  Using the `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  type to create a button for closing the app.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

In the RSS News app, we use the following custom types that are each defined in a separate .qml file:

-  ``BusyIndicator.qml``
-  ``CategoryDelegate.qml``
-  ``NewsDelegate.qml``
-  ``RssFeeds.qml``
-  ``ScrollBar.qml``

To use the custom types, we add an import statement to the main QML file, rssnews.qml that imports the folder called ``content`` where the types are located:

.. code:: qml

    import "./content"

In rssnews.qml, we use a :ref:`Rectangle <sdk_qtquick_rectangle>` type with custom properties to create the app main window:

.. code:: qml

    Rectangle {
        id: window
        width: 800
        height: 480
        property string currentFeed: rssFeeds.get(0).feed
        property bool loading: feedModel.status === XmlListModel.Loading
        property bool isPortrait: Screen.primaryOrientation === Qt.PortraitOrientation

We will use the custom properties later for loading XML data and for adjusting the screen layout depending on its orientation.

In rssnews.qml, we use the RssFeeds custom type that we specify in RssFeeds.qml to create a list of feed categories:

.. code:: qml

        RssFeeds { id: rssFeeds }

In RssFeeds.qml, we use a `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  type with a ListElement type to create a category list where list elements represent feed categories:

.. code:: qml

    ListModel {
        ListElement { name: "Top Stories"; feed: "news.yahoo.com/rss/topstories"; image: "images/TopStories.jpg" }
        ListElement { name: "World"; feed: "news.yahoo.com/rss/world"; image: "images/World.jpg" }
        ListElement { name: "Europe"; feed: "news.yahoo.com/rss/europe"; image: "images/Europe.jpg" }
        ListElement { name: "Asia"; feed: "news.yahoo.com/rss/asia"; image: "images/Asia.jpg" }
        ListElement { name: "U.S. National"; feed: "news.yahoo.com/rss/us"; image: "images/USNational.jpg"  }
        ListElement { name: "Politics"; feed: "news.yahoo.com/rss/politics"; image: "images/Politics.jpg" }
        ListElement { name: "Business"; feed: "news.yahoo.com/rss/business"; image: "images/Business.jpg" }
        ListElement { name: "Technology"; feed: "news.yahoo.com/rss/tech"; image: "images/Technology.jpg" }
        ListElement { name: "Entertainment"; feed: "news.yahoo.com/rss/entertainment"; image: "images/Entertainment.jpg" }
        ListElement { name: "Health"; feed: "news.yahoo.com/rss/health"; image: "images/Health.jpg" }
        ListElement { name: "Science"; feed: "news.yahoo.com/rss/science"; image: "images/Science.jpg" }
        ListElement { name: "Sports"; feed: "news.yahoo.com/rss/sports"; image: "images/Sports.jpg" }
    }

List elements are defined like other QML types except that they contain a collection of *role* definitions instead of properties. Roles both define how the data is accessed and include the data itself.

For each list element, we use the ``name`` role to specify the category name, the ``feed`` role to specify the URL to load the data from, and the ``image`` role to display an image for the category.

In rssnews.qml, we use a :ref:`ListView <sdk_qtquick_listview>` type to display the category list:

.. code:: qml

        ListView {
            id: categories
            property int itemWidth: 190
            width: isPortrait ? parent.width : itemWidth
            height: isPortrait ? itemWidth : parent.height
            orientation: isPortrait ? ListView.Horizontal : ListView.Vertical
            anchors.top: parent.top
            model: rssFeeds
            delegate: CategoryDelegate { itemSize: categories.itemWidth }
            spacing: 3
        }

To lay out the category list horizontally at the top of the window in portrait orientation and vertically on the left side in landscape orientation, we use the ``orientation`` property. Based on the orientation, we bind either the width or the height of the list to a fixed value (``itemWidth``).

We use the ``anchors.top`` property to position the list view at the top of the screen in both orientations.

We use the ``model`` property to load XML data from the ``rssFeeds`` model, and ``CategoryDelegate`` as the delegate to instantiate each item in the list.

In CategoryDelegate.qml, we use the :ref:`Rectangle <sdk_qtquick_rectangle>` type with custom properties to create list elements:

.. code:: qml

    Rectangle {
        id: delegate
        property bool selected: ListView.isCurrentItem

We set the ``selected`` property to the ``ListView.isCurrentItem`` attached property to specify that ``selected`` is ``true`` if ``delegate`` is the current item.

We use the `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  type ``source`` property to display the image, centered in the delegate, specified for the list element by the ``image`` role in the ``rssFeeds`` list model:

.. code:: qml

        Image {
            anchors.centerIn: parent
            source: image
        }

We use a `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  type to add titles to list elements:

.. code:: qml

        Text {
            id: titleText
            anchors {
                left: parent.left; leftMargin: 20
                right: parent.right; rightMargin: 20
                top: parent.top; topMargin: 20
            }
            font { pixelSize: 18; bold: true }
            text: name
            color: selected ? "#ffffff" : "#ebebdd"
            scale: selected ? 1.15 : 1.0
            Behavior on color { ColorAnimation { duration: 150 } }
            Behavior on scale { PropertyAnimation { duration: 300 } }

We use the ``anchors`` property to position the title at the top of the list element, with a 20-pixel margin. We use ``font`` properties to adjust font size and text formatting.

We use the ``color`` property to brighten the text and to scale it slightly larger when the list item is the current item. By applying a :ref:`Behavior <sdk_qtquick_behavior>` to the property, we animate the actions of selecting and deselecting list items.

We use a :ref:`MouseArea <sdk_qtquick_mousearea>` type to download XML data when users tap a category list element:

.. code:: qml

        MouseArea {
            anchors.fill: delegate
            onClicked: {
                delegate.ListView.view.currentIndex = index
                if (window.currentFeed == feed)
                    feedModel.reload()
                else
                    window.currentFeed = feed
            }
        }

The ``anchors.fill`` property is set to ``delegate`` to enable users to tap anywhere within the list element.

We use the ``onClicked`` signal handler to load the XML data for the category list. If the tapped category is already current, the ``reload()`` function is called to reload the data.

In rssnews.qml, we use an `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  type as a data source for :ref:`ListView <sdk_qtquick_listview>` elements to display news items in the selected category:

.. code:: qml

        XmlListModel {
            id: feedModel
            source: "http://" + window.currentFeed
            query: "/rss/channel/item[child::media:content]"
            namespaceDeclarations: "declare namespace media = 'http://search.yahoo.com/mrss/';"

We use the ``source`` property and the ``window.currentFeed`` custom property to fetch news items for the selected category.

The ``query`` property specifies that the `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  generates a model item for each ``<item>`` in the XML document.

We use the `XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_  type to specify the model item attributes. Each model item has the ``title``, ``description``, ``image``, ``link``, and ``pubDate`` attributes that match the values of the corresponding ``<item>`` in the XML document:

.. code:: qml

            XmlRole { name: "title"; query: "title/string()" }
            // Remove any links from the description
            XmlRole { name: "description"; query: "fn:replace(description/string(), '\&lt;a href=.*\/a\&gt;', '')" }
            XmlRole { name: "image"; query: "media:content/@url/string()" }
            XmlRole { name: "link"; query: "link/string()" }
            XmlRole { name: "pubDate"; query: "pubDate/string()" }
        }

We use the ``feedModel`` model in a :ref:`ListView <sdk_qtquick_listview>` type to display the data:

.. code:: qml

        ListView {
            id: list
            anchors.left: isPortrait ? window.left : categories.right
            anchors.right: closeButton.left
            anchors.top: isPortrait ? categories.bottom : window.top
            anchors.bottom: window.bottom
            anchors.leftMargin: 30
            anchors.rightMargin: 4
            clip: isPortrait
            model: feedModel
            footer: footerText
            delegate: NewsDelegate {}
        }

To list the news items below the category list in portrait orientation and to its right in landscape orientation, we use the ``isPortrait`` custom property to anchor the top of the news items list to the left of ``window`` and bottom of ``categories`` in portrait orientation and to the right of ``categories`` and bottom of ``window`` in landscape orientation.

We use the ``anchors.bottom`` property to anchor the bottom of the list view to the bottom of the window in both orientations.

In portrait orientation, we clip the painting of the news items to the bounding rectangle of the list view to avoid graphical artifacts when news items are scrolled over other items. In landscape, this is not required, because the list spans the entire screen vertically.

We use the ``model`` property to load XML data from the ``feedModel`` model, and use ``NewsDelegate`` as the delegate to instantiate each item in the list.

In NewsDelegate.qml, we use a `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_  type to lay out the XML data:

.. code:: qml

    Column {
        id: delegate
        width: delegate.ListView.view.width
        spacing: 8

Within the column, we use a `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  and another column to position images and title text:

.. code:: qml

        Row {
            width: parent.width
            spacing: 8
            Column {
                Item {
                    width: 4
                    height: titleText.font.pixelSize / 4
                }
                Image {
                    id: titleImage
                    source: image
                }
            }
            Text {
                id: titleText
                text: title
                width: delegate.width - titleImage.width
                wrapMode: Text.WordWrap
                font.pixelSize: 26
                font.bold: true
            }
        }

We generate a textual representation of how long ago the item was posted using the ``timeSinceEvent()`` JavaScript function:

.. code:: qml

        Text {
            width: delegate.width
            font.pixelSize: 12
            textFormat: Text.RichText
            font.italic: true
            text: timeSinceEvent(pubDate) + " (<a href=\"" + link + "\">Link</a>)"
            onLinkActivated: {
                Qt.openUrlExternally(link)
            }
        }

We use the ``onLinkActivated`` signal handler to open the URL in an external browser when users select the link.

In CategoryDelegate.qml, we use the ``BusyIndicator`` custom type to indicate activity while the XML data is being loaded:

.. code:: qml

        BusyIndicator {
            scale: 0.8
            visible: delegate.ListView.isCurrentItem && window.loading
            anchors.centerIn: parent
        }

We use the ``scale`` property to reduce the indicator size to ``0.8``. We bind the ``visible`` property to the ``isCurrentItem`` attached property of the ``delegate`` list view and ``loading`` property of the main window to display the indicator image when a category list item is the current item and XML data is being loaded.

We define the ``BusyIndicator`` type in ``BusyIndicator.qml``. We use an `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  type to display an image and apply a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` to its ``rotation`` property to rotate the image in an infinite loop:

.. code:: qml

    Image {
        id: container
        source: "images/busy.png";
        NumberAnimation on rotation {
            running: container.visible
            from: 0; to: 360;
            loops: Animation.Infinite;
            duration: 1200
        }
    }

In your apps, you can also use the BusyIndicator type from the Qt Quick Controls module.

In rssnews.qml, we use our own custom ``ScrollBar`` type to create scroll bars in the category and news item list views. In your apps, you can also use the ScrollView type from the Qt Quick Controls module.

First, we create a scroll bar in the category list view. We bind the ``orientation`` property to the ``isPortrait`` property and to the ``Horizontal`` value of the ``Qt::Orientation`` enum type to display a horizontal scroll bar in portrait orientation and to the ``Vertical`` value to display a vertical scroll bar in landscape orientation:

.. code:: qml

        ScrollBar {
            id: listScrollBar
            orientation: isPortrait ? Qt.Horizontal : Qt.Vertical
            height: isPortrait ? 8 : categories.height;
            width: isPortrait ? categories.width : 8
            scrollArea: categories;
            anchors.right: categories.right
        }

Same as with the ``categories`` list view, we adjust the width and height of the scroll bar based on the ``isPortrait`` property.

We use the ``scrollArea`` property to display the scroll bar in the ``categories`` list view.

We use the ``anchors.right`` property to anchor the scroll bar to the right side of the category list.

.. code:: qml

        ScrollBar {
            scrollArea: list
            width: 8
            anchors.right: window.right
            anchors.top: isPortrait ? categories.bottom : window.top
            anchors.bottom: window.bottom
        }

Second, we create another scroll bar in the news item list view. We want a vertical scroll bar to appear on the right side of the view regardless of screen orientation, so we can set the ``width`` property to ``8`` and bind the ``anchors.right`` property to the ``window.right`` property. We use the ``anchors.top`` property to anchor the scroll bar top to the bottom of the category list in portrait orientation and to the top of the news item list in landscape orientation. We use the ``anchors.bottom`` property to anchor the scroll bar bottom to the list view bottom in both orientations.

We define the ``ScrollBar`` type in ``ScrollBar.qml``. We use an :ref:`Item <sdk_qtquick_item>` type with custom properties to create a container for the scroll bar:

.. code:: qml

    Item {
        id: container
        property variant scrollArea
        property int orientation: Qt.Vertical
        opacity: 0

We use a `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  type to display the scroll bar thumb at the x and y position that we calculate by using the ``position()`` function:

.. code:: qml

        BorderImage {
            source: "images/scrollbar.png"
            border { left: 1; right: 1; top: 1; bottom: 1 }
            x: container.orientation == Qt.Vertical ? 2 : position()
            y: container.orientation == Qt.Vertical ? position() : 2
            width: container.orientation == Qt.Vertical ? container.width - 4 : size()
            height: container.orientation == Qt.Vertical ? size() : container.height - 4
        }

We use the ``size`` function to calculate the thumb width and height depending on the screen orientation.

We use ``states`` to make the scroll bar visible when the users move the scroll area:

.. code:: qml

        states: State {
            name: "visible"
            when: container.orientation == Qt.Vertical ?
                      scrollArea.movingVertically :
                      scrollArea.movingHorizontally
            PropertyChanges { target: container; opacity: 1.0 }
        }

We use ``transitions`` to apply a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` to the ``"opacity"`` property when the state changes from "visible" to the default state:

.. code:: qml

        transitions: Transition {
            from: "visible"; to: ""
            NumberAnimation { properties: "opacity"; duration: 600 }
        }
    }

In rssnews.qml, we use a Component type with a :ref:`Rectangle <sdk_qtquick_rectangle>` type to create a footer for the news list view:

.. code:: qml

        Component {
            id: footerText
            Rectangle {
                width: parent.width
                height: closeButton.height
                color: "lightgray"
                Text {
                    text: "RSS Feed from Yahoo News"
                    anchors.centerIn: parent
                    font.pixelSize: 14
                }
            }
        }

We bind the ``width`` of the footer to the width of the component and the ``height`` to the of close button to align them when no news items are displayed.

In rssnews.qml, we use an `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  type to create a simple push button that users can tap to close the app:

.. code:: qml

        Image {
            id: closeButton
            source: "content/images/btn_close.png"
            scale: 0.8
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.margins: 4
            opacity: (isPortrait && categories.moving) ? 0.2 : 1.0
            Behavior on opacity {
                NumberAnimation { duration: 300; easing.type: Easing.OutSine }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.quit()
                }
            }
        }

We use ``anchors`` to position the close button in the top right corner of the news list view, with 4-pixel margins. Because the close button overlaps the category list in portrait orientation, we animate the ``opacity`` property to make the button almost fully transparent when users are scrolling the category list.

We use the ``onClicked`` signal handler within a :ref:`MouseArea <sdk_qtquick_mousearea>` to call the ``quit()`` function when users select the close button.

Files:

-  demos/rssnews/rssnews.qml
-  demos/rssnews/content/BusyIndicator.qml
-  demos/rssnews/content/CategoryDelegate.qml
-  demos/rssnews/content/NewsDelegate.qml
-  demos/rssnews/content/RssFeeds.qml
-  demos/rssnews/content/ScrollBar.qml
-  demos/rssnews/main.cpp
-  demos/rssnews/rssnews.pro
-  demos/rssnews/rssnews.qmlproject
-  demos/rssnews/rssnews.qrc

**See also** QML Applications.

