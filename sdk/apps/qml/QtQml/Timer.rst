Triggers a handler at a specified interval

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  ****`interval </sdk/apps/qml/QtQml/Timer#interval-prop>`__**** : int
-  ****`repeat </sdk/apps/qml/QtQml/Timer#repeat-prop>`__**** : bool
-  ****`running </sdk/apps/qml/QtQml/Timer#running-prop>`__**** : bool
-  ****`triggeredOnStart </sdk/apps/qml/QtQml/Timer#triggeredOnStart-prop>`__****
   : bool

Signals
-------

-  ****`triggered </sdk/apps/qml/QtQml/Timer#triggered-signal>`__****\ ()

Methods
-------

-  ****`restart </sdk/apps/qml/QtQml/Timer#restart-method>`__****\ ()
-  ****`start </sdk/apps/qml/QtQml/Timer#start-method>`__****\ ()
-  ****`stop </sdk/apps/qml/QtQml/Timer#stop-method>`__****\ ()

Detailed Description
--------------------

A Timer can be used to trigger an action either once, or repeatedly at a
given interval.

Here is a Timer that shows the current date and time, and updates the
text every 500 milliseconds. It uses the JavaScript ``Date`` object to
access the current time.

.. code:: qml

    import QtQuick 2.0
    Item {
        Timer {
            interval: 500; running: true; repeat: true
            onTriggered: time.text = Date().toString()
        }
        Text { id: time }
    }

The Timer type is synchronized with the animation timer. Since the
animation timer is usually set to 60fps, the resolution of Timer will be
at best 16ms.

If the Timer is running and one of its properties is changed, the
elapsed time will be reset. For example, if a Timer with interval of
1000ms has its *repeat* property changed 500ms after starting, the
elapsed time will be reset to 0, and the Timer will be triggered 1000ms
later.

**See also** Qt Quick Demo - Clocks.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ interval : int                                                  |
+--------------------------------------------------------------------------+

Sets the *interval* between triggers, in milliseconds.

The default interval is 1000 milliseconds.

| 

+--------------------------------------------------------------------------+
|        \ repeat : bool                                                   |
+--------------------------------------------------------------------------+

If *repeat* is true the timer is triggered repeatedly at the specified
interval; otherwise, the timer will trigger once at the specified
interval and then stop (i.e. running will be set to false).

*repeat* defaults to false.

**See also** `running </sdk/apps/qml/QtQml/Timer#running-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

If set to true, starts the timer; otherwise stops the timer. For a
non-repeating timer, *running* is set to false after the timer has been
triggered.

*running* defaults to false.

**See also** `repeat </sdk/apps/qml/QtQml/Timer#repeat-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ triggeredOnStart : bool                                         |
+--------------------------------------------------------------------------+

When a timer is started, the first trigger is usually after the
specified interval has elapsed. It is sometimes desirable to trigger
immediately when the timer is started; for example, to establish an
initial state.

If *triggeredOnStart* is true, the timer is triggered immediately when
started, and subsequently at the specified interval. Note that if
*repeat* is set to false, the timer is triggered twice; once on start,
and again at the interval.

*triggeredOnStart* defaults to false.

**See also** `running </sdk/apps/qml/QtQml/Timer#running-prop>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ triggered()                                                     |
+--------------------------------------------------------------------------+

This signal is emitted when the Timer times out.

The corresponding handler is ``onTriggered``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ restart()                                                       |
+--------------------------------------------------------------------------+

Restarts the timer

If the Timer is not running it will be started, otherwise it will be
stopped, reset to initial state and started. The ``running`` property
will be true following a call to ``restart()``.

| 

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Starts the timer

If the timer is already running, calling this method has no effect. The
``running`` property will be true following a call to ``start()``.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops the timer

If the timer is not running, calling this method has no effect. The
``running`` property will be false following a call to ``stop()``.

| 
