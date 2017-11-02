.. _sdk_qtaudioengine_audiolistener:
QtAudioEngine AudioListener
===========================

Control global listener parameters.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`direction <sdk_qtaudioengine_audiolistener_direction-prop>`
   : vector3d
-  :ref:`engine <sdk_qtaudioengine_audiolistener_engine-prop>` :
   QtAudioEngine::AudioEngine
-  :ref:`gain <sdk_qtaudioengine_audiolistener_gain-prop>` : real
-  :ref:`position <sdk_qtaudioengine_audiolistener_position-prop>`
   : vector3d
-  :ref:`up <sdk_qtaudioengine_audiolistener_up-prop>` : vector3d
-  :ref:`velocity <sdk_qtaudioengine_audiolistener_velocity-prop>`
   : vector3d

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

:ref:`AudioListener <sdk_qtaudioengine_audiolistener>` will have only one
global instance and you can either access it through the listener
property of :ref:`AudioEngine <sdk_qtaudioengine_audioengine>`:

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
:ref:`AudioListener <sdk_qtaudioengine_audiolistener>` outside
:ref:`AudioEngine <sdk_qtaudioengine_audioengine>`:

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

This separate :ref:`AudioListener <sdk_qtaudioengine_audiolistener>`
definition is allowed to make QML bindings easier in some cases.

Property Documentation
----------------------

.. _sdk_qtaudioengine_audiolistener_direction-prop:

+--------------------------------------------------------------------------+
|        \ direction : vector3d                                            |
+--------------------------------------------------------------------------+

This property holds the normalized 3D direction vector of the listener.

| 

.. _sdk_qtaudioengine_audiolistener_engine-prop:

+--------------------------------------------------------------------------+
|        \ engine :                                                        |
| :ref:`QtAudioEngine::AudioEngine <sdk_qtaudioengine_audioengine>`           |
+--------------------------------------------------------------------------+

This property holds the reference to
:ref:`AudioEngine <sdk_qtaudioengine_audioengine>`, and must only be set
once.

| 

.. _sdk_qtaudioengine_audiolistener_gain-prop:

+--------------------------------------------------------------------------+
|        \ gain : real                                                     |
+--------------------------------------------------------------------------+

This property will modulate all audio output from audio engine
instances.

| 

.. _sdk_qtaudioengine_audiolistener_position-prop:

+--------------------------------------------------------------------------+
|        \ position : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the 3D position of the listener.

| 

.. _sdk_qtaudioengine_audiolistener_up-prop:

+--------------------------------------------------------------------------+
|        \ up : vector3d                                                   |
+--------------------------------------------------------------------------+

This property holds the normalized 3D up vector of the listener.

| 

.. _sdk_qtaudioengine_audiolistener_velocity-prop:

+--------------------------------------------------------------------------+
|        \ velocity : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the 3D velocity vector of the listener.

| 
