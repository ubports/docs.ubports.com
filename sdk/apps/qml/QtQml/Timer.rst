.. _sdk_qtqml_timer:

QtQml Timer
===========

Triggers a handler at a specified interval

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  :ref:`interval <sdk_qtqml_timer_interval>` : int
-  :ref:`repeat <sdk_qtqml_timer_repeat>` : bool
-  :ref:`running <sdk_qtqml_timer_running>` : bool
-  :ref:`triggeredOnStart <sdk_qtqml_timer_triggeredOnStart>` : bool

Signals
-------

-  :ref:`triggered <sdk_qtqml_timer_triggered>`\ ()

Methods
-------

-  :ref:`restart <sdk_qtqml_timer_restart>`\ ()
-  :ref:`start <sdk_qtqml_timer_start>`\ ()
-  :ref:`stop <sdk_qtqml_timer_stop>`\ ()

Detailed Description
--------------------

A Timer can be used to trigger an action either once, or repeatedly at a given interval.

Here is a Timer that shows the current date and time, and updates the text every 500 milliseconds. It uses the JavaScript ``Date`` object to access the current time.

.. code:: qml

    import QtQuick 2.0
    Item {
        Timer {
            interval: 500; running: true; repeat: true
            onTriggered: time.text = Date().toString()
        }
        Text { id: time }
    }

The Timer type is synchronized with the animation timer. Since the animation timer is usually set to 60fps, the resolution of Timer will be at best 16ms.

If the Timer is running and one of its properties is changed, the elapsed time will be reset. For example, if a Timer with interval of 1000ms has its *repeat* property changed 500ms after starting, the elapsed time will be reset to 0, and the Timer will be triggered 1000ms later.

**See also** Qt Quick Demo - Clocks.

Property Documentation
----------------------

.. _sdk_qtqml_timer_interval:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| interval : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the *interval* between triggers, in milliseconds.

The default interval is 1000 milliseconds.

.. _sdk_qtqml_timer_repeat:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| repeat : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If *repeat* is true the timer is triggered repeatedly at the specified interval; otherwise, the timer will trigger once at the specified interval and then stop (i.e. running will be set to false).

*repeat* defaults to false.

**See also** :ref:`running <sdk_qtqml_timer_running>`.

.. _sdk_qtqml_timer_running:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| running : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to true, starts the timer; otherwise stops the timer. For a non-repeating timer, *running* is set to false after the timer has been triggered.

*running* defaults to false.

**See also** :ref:`repeat <sdk_qtqml_timer_repeat>`.

.. _sdk_qtqml_timer_triggeredOnStart:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| triggeredOnStart : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When a timer is started, the first trigger is usually after the specified interval has elapsed. It is sometimes desirable to trigger immediately when the timer is started; for example, to establish an initial state.

If *triggeredOnStart* is true, the timer is triggered immediately when started, and subsequently at the specified interval. Note that if *repeat* is set to false, the timer is triggered twice; once on start, and again at the interval.

*triggeredOnStart* defaults to false.

**See also** :ref:`running <sdk_qtqml_timer_running>`.

Signal Documentation
--------------------

.. _sdk_qtqml_timer_triggered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| triggered()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Timer times out.

The corresponding handler is ``onTriggered``.

Method Documentation
--------------------

.. _sdk_qtqml_timer_restart:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| restart()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Restarts the timer

If the Timer is not running it will be started, otherwise it will be stopped, reset to initial state and started. The ``running`` property will be true following a call to ``restart()``.

.. _sdk_qtqml_timer_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| start()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts the timer

If the timer is already running, calling this method has no effect. The ``running`` property will be true following a call to ``start()``.

.. _sdk_qtqml_timer_stop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stop()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stops the timer

If the timer is not running, calling this method has no effect. The ``running`` property will be false following a call to ``stop()``.

