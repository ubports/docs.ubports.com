Control global listener parameters.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`direction </sdk/apps/qml/QtAudioEngine/AudioListener#direction-prop>`__****
   : vector3d
-  ****`engine </sdk/apps/qml/QtAudioEngine/AudioListener#engine-prop>`__****
   : QtAudioEngine::AudioEngine
-  ****`gain </sdk/apps/qml/QtAudioEngine/AudioListener#gain-prop>`__****
   : real
-  ****`position </sdk/apps/qml/QtAudioEngine/AudioListener#position-prop>`__****
   : vector3d
-  ****`up </sdk/apps/qml/QtAudioEngine/AudioListener#up-prop>`__**** :
   vector3d
-  ****`velocity </sdk/apps/qml/QtAudioEngine/AudioListener#velocity-prop>`__****
   : vector3d

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

`AudioListener </sdk/apps/qml/QtAudioEngine/AudioListener/>`__ will have
only one global instance and you can either access it through the
listener property of
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__:

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            listener.up:"0,0,1"
            listener.velocity:"0,0,0"
            listener.direction:"0,1,0"
            listener.position:Qt.vector3d(observer.x, observer.y, 0);
        }
        Item {
            id: observer
            x: 10 + observer.percent * 100
            y: 20 + observer.percent * 80
            property real percent: 0
            SequentialAnimation on percent {
                loops: Animation.Infinite
                running: true
                NumberAnimation {
                    duration: 8000
                    from: 0
                    to: 1
                }
            }
        }
    }

or alternatively, by defining an
`AudioListener </sdk/apps/qml/QtAudioEngine/AudioListener/>`__ outside
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__:

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            listener.up:"0,0,1"
            listener.velocity:"0,0,0"
            listener.direction:"0,1,0"
        }
        AudioListener {
            engine:audioengine
            position: Qt.vector3d(observer.x, observer.y, 0);
        }
        Item {
            id: observer
            x: 10 + observer.percent * 100
            y: 20 + observer.percent * 80
            property real percent: 0
            SequentialAnimation on percent {
                loops: Animation.Infinite
                running: true
                NumberAnimation {
                    duration: 8000
                    from: 0
                    to: 1
                }
            }
        }
    }

This separate
`AudioListener </sdk/apps/qml/QtAudioEngine/AudioListener/>`__
definition is allowed to make QML bindings easier in some cases.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ direction : vector3d                                            |
+--------------------------------------------------------------------------+

This property holds the normalized 3D direction vector of the listener.

| 

+--------------------------------------------------------------------------+
|        \ engine :                                                        |
| `QtAudioEngine::AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

This property holds the reference to
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__, and must
only be set once.

| 

+--------------------------------------------------------------------------+
|        \ gain : real                                                     |
+--------------------------------------------------------------------------+

This property will modulate all audio output from audio engine
instances.

| 

+--------------------------------------------------------------------------+
|        \ position : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the 3D position of the listener.

| 

+--------------------------------------------------------------------------+
|        \ up : vector3d                                                   |
+--------------------------------------------------------------------------+

This property holds the normalized 3D up vector of the listener.

| 

+--------------------------------------------------------------------------+
|        \ velocity : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the 3D velocity vector of the listener.

| 
