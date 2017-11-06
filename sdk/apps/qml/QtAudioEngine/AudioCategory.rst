.. _sdk_qtaudioengine_audiocategory:

QtAudioEngine AudioCategory
===========================

Control all active sound instances by group.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`name <sdk_qtaudioengine_audiocategory_name>` : string
-  :ref:`volume <sdk_qtaudioengine_audiocategory_volume>` : real

Methods
-------

-  :ref:`pause <sdk_qtaudioengine_audiocategory_pause>`\ ()
-  :ref:`pause <sdk_qtaudioengine_audiocategory_pause>`\ ()
-  :ref:`stop <sdk_qtaudioengine_audiocategory_stop>`\ ()

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

An instance of :ref:`AudioCategory <sdk_qtaudioengine_audiocategory>` can be accessed through :ref:`AudioEngine.categories <sdk_qtaudioengine_audioengine_categories>` with its unique name and must be defined inside :ref:`AudioEngine <sdk_qtaudioengine_audioengine>`.

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

:ref:`Sound <sdk_qtaudioengine_sound>` instances can be grouped together by specifying the category property. When you change the volume of a category, all audio output from related instances will be affected as well.

Note: there will always be an :ref:`AudioCategory <sdk_qtaudioengine_audiocategory>` named ``default`` whether you explicitly define it or not. If you do not specify any category for a :ref:`Sound <sdk_qtaudioengine_sound>`, it will be grouped into the ``default`` category.

Property Documentation
----------------------

.. _sdk_qtaudioengine_audiocategory_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of :ref:`AudioCategory <sdk_qtaudioengine_audiocategory>`. The name must be unique among all categories and only defined once. The name cannot be changed after the instance has been initialized.

.. _sdk_qtaudioengine_audiocategory_volume:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| volume : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the volume of the category and will modulate all audio output from the instances which belong to this category.

Method Documentation
--------------------

.. _sdk_qtaudioengine_audiocategory_pause:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pause()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Resumes all active sound instances from paused state which belong to this category.

.. _sdk_qtaudioengine_audiocategory_pause1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pause()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Pauses all active sound instances which belong to this category.

.. _sdk_qtaudioengine_audiocategory_stop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stop()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stops all active sound instances which belong to this category.

