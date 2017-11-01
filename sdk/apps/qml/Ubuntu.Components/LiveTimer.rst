A live timing source providing peridioc updates.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.3          |
+---------------------+--------------------------------+

Properties
----------

-  ****`frequency </sdk/apps/qml/Ubuntu.Components/LiveTimer#frequency-prop>`__****
   : enumeration
-  ****`relativeTime </sdk/apps/qml/Ubuntu.Components/LiveTimer#relativeTime-prop>`__****
   : datetime

Signals
-------

-  ****`trigger </sdk/apps/qml/Ubuntu.Components/LiveTimer#trigger-signal>`__****\ ()

Detailed Description
--------------------

The `LiveTimer </sdk/apps/qml/Ubuntu.Components/LiveTimer/>`__ is a
source for periodic signals triggered on second/minute/hour boundaries.
The timer can also be set up to provide signals with an increasing
frequency the closer a given time is to current time.

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    LiveTimer {
        frequency: LiveTimer.Second
        onTrigger: console.log("The time is now", new Date().toString());
    }

.. code:: qml

    import Ubuntu.Components 1.3
    LiveTimer {
        frequency: LiveTimer.Relative
        relativeTime: new Date()
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ frequency : enumeration                                         |
+--------------------------------------------------------------------------+

This properties defines the frequency at which the
`LiveTimer </sdk/apps/qml/Ubuntu.Components/LiveTimer/>`__ signals
notifications.

-  **LiveTimer.Disabled** - disable the
   `LiveTimer </sdk/apps/qml/Ubuntu.Components/LiveTimer/>`__
   `trigger </sdk/apps/qml/Ubuntu.Components/LiveTimer#trigger-signal>`__
   signal
-  **LiveTimer.Second** - emit the
   `trigger </sdk/apps/qml/Ubuntu.Components/LiveTimer#trigger-signal>`__
   signal on every change of second.
-  **LiveTimer.Minute** - emit the
   `trigger </sdk/apps/qml/Ubuntu.Components/LiveTimer#trigger-signal>`__
   signal on every change of minute.
-  **LiveTimer.Hour** - emit the
   `trigger </sdk/apps/qml/Ubuntu.Components/LiveTimer#trigger-signal>`__
   signal on every change of hour.
-  **LiveTimer.Relative** - emit the
   `trigger </sdk/apps/qml/Ubuntu.Components/LiveTimer#trigger-signal>`__
   signal periodically depending on how close current time is to to
   `relativeTime </sdk/apps/qml/Ubuntu.Components/LiveTimer#relativeTime-prop>`__.
   If
   `relativeTime </sdk/apps/qml/Ubuntu.Components/LiveTimer#relativeTime-prop>`__
   is within 30 seconds of the current time, trigger every 30 seconds.
   Within an hour, trigger every minute. Otherwise, trigger every hour
   until the relative time is more than a week past current time, after
   which updates are disabled.

   **Note:** Setting the frequency to
   `LiveTimer </sdk/apps/qml/Ubuntu.Components/LiveTimer/>`__.Relative
   will disable the timer until a
   `relativeTime </sdk/apps/qml/Ubuntu.Components/LiveTimer#relativeTime-prop>`__
   is set.

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ relativeTime : datetime                                         |
+--------------------------------------------------------------------------+

This properties defines the value used for proximity evaluation when
using Relative mode.

**Note:** This property has no impact unless the
`frequency </sdk/apps/qml/Ubuntu.Components/LiveTimer#frequency-prop>`__
is set to
`LiveTimer </sdk/apps/qml/Ubuntu.Components/LiveTimer/>`__.Relative

This QML property was introduced in Ubuntu.Components 1.3.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ trigger()                                                       |
+--------------------------------------------------------------------------+

Signal called when the timer is triggered

| 
