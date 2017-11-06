.. _sdk_qtquick_pauseanimation:

QtQuick PauseAnimation
======================

Provides a pause for an animation

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`duration <sdk_qtquick_pauseanimation_duration>` : int

Detailed Description
--------------------

When used in a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>`, :ref:`PauseAnimation <sdk_qtquick_pauseanimation>` is a step when nothing happens, for a specified duration.

A 500ms animation sequence, with a 100ms pause between two animations:

.. code:: cpp

    SequentialAnimation {
        NumberAnimation { ... duration: 200 }
        PauseAnimation { duration: 100 }
        NumberAnimation { ... duration: 200 }
    }

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_pauseanimation_duration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| duration : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the duration of the pause in milliseconds

The default value is 250.

