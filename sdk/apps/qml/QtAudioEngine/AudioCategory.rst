Control all active sound instances by group.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`name </sdk/apps/qml/QtAudioEngine/AudioCategory#name-prop>`__****
   : string
-  ****`volume </sdk/apps/qml/QtAudioEngine/AudioCategory#volume-prop>`__****
   : real

Methods
-------

-  ****`pause </sdk/apps/qml/QtAudioEngine/AudioCategory#pause-method-2>`__****\ ()
-  ****`pause </sdk/apps/qml/QtAudioEngine/AudioCategory#pause-method>`__****\ ()
-  ****`stop </sdk/apps/qml/QtAudioEngine/AudioCategory#stop-method>`__****\ ()

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

An instance of
`AudioCategory </sdk/apps/qml/QtAudioEngine/AudioCategory/>`__ can be
accessed through
`AudioEngine.categories </sdk/apps/qml/QtAudioEngine/AudioEngine#categories-prop>`__
with its unique name and must be defined inside
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__.

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            AudioCategory {
                name: "sfx"
                volume: 0.8
            }
            AudioSample {
                name:"explosion"
                source: "explosion-02.wav"
            }
            Sound {
                name:"explosion"
                category: "sfx"
                PlayVariation {
                    sample:"explosion"
                }
            }
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                audioengine.categories["sfx"].volume = 0.5;
            }
        }
    }

`Sound </sdk/apps/qml/QtAudioEngine/Sound/>`__ instances can be grouped
together by specifying the category property. When you change the volume
of a category, all audio output from related instances will be affected
as well.

Note: there will always be an
`AudioCategory </sdk/apps/qml/QtAudioEngine/AudioCategory/>`__ named
``default`` whether you explicitly define it or not. If you do not
specify any category for a
`Sound </sdk/apps/qml/QtAudioEngine/Sound/>`__, it will be grouped into
the ``default`` category.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of
`AudioCategory </sdk/apps/qml/QtAudioEngine/AudioCategory/>`__. The name
must be unique among all categories and only defined once. The name
cannot be changed after the instance has been initialized.

| 

+--------------------------------------------------------------------------+
|        \ volume : real                                                   |
+--------------------------------------------------------------------------+

This property holds the volume of the category and will modulate all
audio output from the instances which belong to this category.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ pause()                                                         |
+--------------------------------------------------------------------------+

Resumes all active sound instances from paused state which belong to
this category.

| 

+--------------------------------------------------------------------------+
|        \ pause()                                                         |
+--------------------------------------------------------------------------+

Pauses all active sound instances which belong to this category.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops all active sound instances which belong to this category.

| 
