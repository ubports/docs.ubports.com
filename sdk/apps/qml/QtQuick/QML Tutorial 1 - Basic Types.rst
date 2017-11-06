.. _sdk_qtquick_qml_tutorial_1_-_basic_types:

QtQuick QML Tutorial 1 - Basic Types
====================================


This first program is a very simple "Hello world" example that introduces some basic QML concepts. The picture below is a screenshot of this program.

Here is the QML code for the application:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: page
        width: 320; height: 480
        color: "lightgray"
        Text {
            id: helloText
            text: "Hello world!"
            y: 30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
        }
    }

First, we need to import the types that we need for this example. Most QML files will import the built-in QML types (like :ref:`Rectangle <sdk_qtquick_rectangle>`, `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ , ...) that come with Qt, using:

.. code:: qml

    import QtQuick 2.0

.. code:: qml

    Rectangle {
        id: page
        width: 320; height: 480
        color: "lightgray"

We declare a root object of type :ref:`Rectangle <sdk_qtquick_rectangle>`. It is one of the basic building blocks you can use to create an application in QML. We give it an ``id`` to be able to refer to it later. In this case, we call it "page". We also set the ``width``, ``height`` and ``color`` properties. The :ref:`Rectangle <sdk_qtquick_rectangle>` type contains many other properties (such as ``x`` and ``y``), but these are left at their default values.

.. code:: qml

        Text {
            id: helloText
            text: "Hello world!"
            y: 30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
        }

We add a `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  type as a child of the root Rectangle type that displays the text 'Hello world!'.

The ``y`` property is used to position the text vertically at 30 pixels from the top of its parent.

The ``anchors.horizontalCenter`` property refers to the horizontal center of an type. In this case, we specify that our text type should be horizontally centered in the *page* element (see `Anchor-Based Layout </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/#anchor-layout>`_ ).

The ``font.pointSize`` and ``font.bold`` properties are related to fonts and use the dot notation.

To view what you have created, run the qmlscene tool (located in the ``bin`` directory) with your filename as the first argument. For example, to run the provided completed Tutorial 1 example from the install location, you would type:

.. code:: cpp

    qmlscene tutorials/helloworld/tutorial1.qml

`QML Tutorial </sdk/apps/qml/QtQuick/qml-tutorial/>`_  `QML Tutorial 2 - QML Components </sdk/apps/qml/QtQuick/qml-tutorial2/>`_ 

