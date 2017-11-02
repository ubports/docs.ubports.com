.. _sdk_ubuntuuserinterfacetoolkit_automatic_state_saving:
UbuntuUserInterfaceToolkit Automatic State Saving
=================================================



During application development it is often required to start an
application from a view which depends on the previous application runs.
Like a web browser should remember the number of opened tabs, their
content or the browsing history, or a news reader application should
continue from the last news the application was opened on, preferably
from the same position.

Ubuntu UI toolkit provides a simple way to save the state of any
component within an application, by using the attached component
:ref:`StateSaver <sdk_ubuntu_components_statesaver>`. By simply attaching
this component to any
`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`_  component and
specifying the
:ref:`properties <sdk_ubuntu_components_statesaver#properties-prop>` to be
saved, applications can be restored to any previous state they were
before being closed.

Consider the following simple
`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`_  application,
which on button press randomly changes its background.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Rectangle {
        id: root
        width: units.gu(40)
        height: units.gu(71)
        color: "green"
        StateSaver.properties: "color"
        Button {
            text: "Change color"
            anchors.centerIn: parent
            onClicked: {
                root.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
            }
        }
    }

But let's see what else is neded to properly save an application's
components proeprties.

`Application name,
IDs </sdk/apps/qml/UbuntuUserInterfaceToolkit/statesaving1/>`_ 
