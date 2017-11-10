.. _sdk_qtmultimedia_qtmultimedia:

QtMultimedia QtMultimedia
=========================

Provides a global object with useful functions from Qt Multimedia.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+
| Since:              | QtMultimedia 5.4          |
+---------------------+---------------------------+

Properties
----------

-  :ref:`availableCameras <sdk_qtmultimedia_qtmultimedia_availableCameras>` : list<object>
-  :ref:`defaultCamera <sdk_qtmultimedia_qtmultimedia_defaultCamera>` : object

Detailed Description
--------------------

The ``QtMultimedia`` object is a global object with utility functions and properties.

It is not instantiable; to use it, call the members of the global ``QtMultimedia`` object directly. For example:

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.4
    Camera {
        deviceId: QtMultimedia.defaultCamera.deviceId
    }

Property Documentation
----------------------

.. _sdk_qtmultimedia_qtmultimedia_availableCameras:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] availableCameras : list<object>                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property provides information about the cameras available on the system.

Each object in the list has the following properties:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``deviceId``                                                                                                                                           | This read-only property holds the unique identifier of the camera.                                                                                     |
|                                                                                                                                                        | You can choose which device to use with a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  object by setting its                         |
|                                                                                                                                                        | :ref:`deviceId <sdk_qtmultimedia_camera_deviceId>` property to this value.                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``displayName``                                                                                                                                        | This read-only property holds the human-readable name of the camera. You can use this property to display the name of the camera in a user interface.  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``position``                                                                                                                                           | This read-only property holds the physical position of the camera on the hardware system. Please see                                                   |
|                                                                                                                                                        | :ref:`Camera.position <sdk_qtmultimedia_camera_position>` for more information.                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``orientation``                                                                                                                                        | This read-only property holds the physical orientation of the camera sensor. Please see                                                                |
|                                                                                                                                                        | :ref:`Camera.orientation <sdk_qtmultimedia_camera_orientation>` for more information.                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**Note:** This property is static; it is not updated when cameras are added or removed from the system, like USB cameras on a desktop platform.

The following example shows how to display a list of available cameras. The user can change the active camera by selecting one of the items in the list.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.4
    Item {
        Camera {
            id: camera
        }
        VideoOutput {
            anchors.fill: parent
            source: camera
        }
        ListView {
            anchors.fill: parent
            model: QtMultimedia.availableCameras
            delegate: Text {
                text: modelData.displayName
                MouseArea {
                    anchors.fill: parent
                    onClicked: camera.deviceId = modelData.deviceId
                }
            }
        }
    }

.. _sdk_qtmultimedia_qtmultimedia_defaultCamera:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] defaultCamera : object                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``defaultCamera`` object provides information about the default camera on the system.

Its properties are ``deviceId``, ``displayName``, ``position`` and ``orientation``. See :ref:`availableCameras <sdk_qtmultimedia_qtmultimedia_availableCameras>` for a description of each of them.

If there is no default camera, ``defaultCamera.deviceId`` will contain an empty string.

**Note:** This property is static; it is not updated if the system's default camera changes after the application started.

