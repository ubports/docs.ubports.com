.. _sdk_ubuntu_components_livetimer:

Ubuntu.Components LiveTimer
===========================

A live timing source providing peridioc updates.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.3          |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`frequency <sdk_ubuntu_components_livetimer_frequency>` : enumeration
-  :ref:`relativeTime <sdk_ubuntu_components_livetimer_relativeTime>` : datetime

Signals
-------

-  :ref:`trigger <sdk_ubuntu_components_livetimer_trigger>`\ ()

Detailed Description
--------------------

The :ref:`LiveTimer <sdk_ubuntu_components_livetimer>` is a source for periodic signals triggered on second/minute/hour boundaries. The timer can also be set up to provide signals with an increasing frequency the closer a given time is to current time.

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

.. _sdk_ubuntu_components_livetimer_frequency:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frequency : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This properties defines the frequency at which the :ref:`LiveTimer <sdk_ubuntu_components_livetimer>` signals notifications.

-  **LiveTimer.Disabled** - disable the :ref:`LiveTimer <sdk_ubuntu_components_livetimer>` :ref:`trigger <sdk_ubuntu_components_livetimer_trigger>` signal
-  **LiveTimer.Second** - emit the :ref:`trigger <sdk_ubuntu_components_livetimer_trigger>` signal on every change of second.
-  **LiveTimer.Minute** - emit the :ref:`trigger <sdk_ubuntu_components_livetimer_trigger>` signal on every change of minute.
-  **LiveTimer.Hour** - emit the :ref:`trigger <sdk_ubuntu_components_livetimer_trigger>` signal on every change of hour.
-  **LiveTimer.Relative** - emit the :ref:`trigger <sdk_ubuntu_components_livetimer_trigger>` signal periodically depending on how close current time is to to :ref:`relativeTime <sdk_ubuntu_components_livetimer_relativeTime>`. If :ref:`relativeTime <sdk_ubuntu_components_livetimer_relativeTime>` is within 30 seconds of the current time, trigger every 30 seconds. Within an hour, trigger every minute. Otherwise, trigger every hour until the relative time is more than a week past current time, after which updates are disabled.

   **Note:** Setting the frequency to :ref:`LiveTimer <sdk_ubuntu_components_livetimer>`.Relative will disable the timer until a :ref:`relativeTime <sdk_ubuntu_components_livetimer_relativeTime>` is set.

This QML property was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_livetimer_relativeTime:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeTime : datetime                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This properties defines the value used for proximity evaluation when using Relative mode.

**Note:** This property has no impact unless the :ref:`frequency <sdk_ubuntu_components_livetimer_frequency>` is set to :ref:`LiveTimer <sdk_ubuntu_components_livetimer>`.Relative

This QML property was introduced in Ubuntu.Components 1.3.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_livetimer_trigger:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| trigger()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal called when the timer is triggered

