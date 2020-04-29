User Metrics
============

What are User Metrics?
----------------------

If you look on the lock screen, you will see a circle. Inside the circle is text. Look closer, and you’ll notice that the text contains data regarding the user’s activity. Double tap on the middle of the circle, and you will see more "metrics" about the user.

.. figure:: /_static/images/appdev/guides/usermetricsimages/met1.png

    This shows "7 text messages sent today." How did it know?

.. figure:: /_static/images/appdev/guides/usermetricsimages/met2.png

    This is from a 3rd-party application (`nCounter <https://gitlab.com/joboticon/ncounter/>`_) that makes use of the User Metrics feature.

For the most part, these messages are quite clearly state what they are counting, and which app is related. But where do these metrics come from?

How can I use User Metrics in my application?
---------------------------------------------

All of the following information will be based on the code for `nCounter`_.

Your app's apparmor file must include ``usermetrics`` in the policy:

.. code:: qml

    {
        "policy_groups": [
            "usermetrics"
    	],
        "policy_version": 16.04
    }

Next, you will need to import the module in the QML file that will handle the User Metrics:

.. code:: qml

    import UserMetrics 0.1

(There may be updated versions of this above 0.1)

Next, the specific Metric must be defined in the code as an object:

.. code:: qml

    Metric { // Define the Metric object.
        property string circleMetric // Create a string-type variable called "circleMetric". This is so you can update it later from somewhere else.
        id: metric // A name to reference the metric elsewhere in the code. i.e. when updating format values below.
        name: "nCounter" // This is a unique ID for storing the user metric data
        format: circleMetric // This is the metric/message that will display "today". Again it uses the string variable that we defined above
        emptyFormat: i18n.tr("Check nCounter") // This is the metric/message for tomorrow. It will "activate" once the day roles over and replaces "format". Here I have use a simple translatable string instead of a variable because I didn’t need it to change.
        domain: "ncounter.joe" // This is the appname, based on what you have in your app settings. Presumably this is how the system lists/ranks the metrics to show on the lock screen.
    }

Now that the metric is created, we can update the "format" or "emptyFormat" when an event takes place by referencing the variables in the Metric object.

.. code:: qml

    onButtonPressed: {
        metric.circleMetric = "New Metric Message"
        metric.update(0)
        console.log("Metric updated")
    }

Here we assign a new value to the circleMetric string variable that’s inside the Metric object:

(Remember that circleMetric is the variable value assigned to format)

    Metric Id [dot] Variable Name [equals] New variable information

    ``metric.circleMetric = "New Metric Message"``

We then tell the lock screen to update the metric.

    Metric ID [dot] update (specific amount to set if included in the format)

    ``metric.update(0)`` 

(Note: In this example, ``0`` is arbitrary since the metric value doesn't include a counter)

We have now updated the metric for today. When the time rolls over to tomorrow, the metric will be reset to whatever is in ``emptyFormat``.

For most apps, this defaults to 0 counts for messages, calls, etc.

How do User Metrics work?
-------------------------

User Metrics are made up of two "formats":

- metrics/messages for today (``format``)
- metrics/messages for tomorrow (``emptyFormat``)

The value of ``emptyFormat`` is what displays on the lock screen when no value has been stored in ``format``. In order to display a new value of ``format`` the metric must be updated.

There are two options for updating the metric:

- Set the metric to a specific amount:

``metricID.update(x)`` (where x is a number of type `double` to set for a counter value). ``metricID`` is the ``id:`` specified in the Metric item. The counter value can be included in the ``format`` setting by using ``%1``. e.g. ``format: "%1 buttons pressed today"``

- Increment the metric:

``metricID.increment(x)`` (where x is the amount to add to the current counter)

The metric will reset back to the value stored in ``emptyFormat`` each day.

Applications make use of User Metrics by setting and updating the "formats" whenever a certain event takes place. e.g. When you press send in Telegram, or when you receive a phone call.
The application may store the data for manipulation, but generally the data is stored in the system (`/var/lib/usermetrics <https://github.com/ubports/libusermetrics/tree/xenial/doc/pages>`_).

(See this `blog post <https://daker.me/2013/11/adding-usermetrics-to-your-app-on-ubuntu-touch.html>`_ for a simple example)

Limitations and wonders
-----------------------
Once a metric is registered, it remains on the lock screen even after the app has been uninstalled. A database file (db) is stored in `/var/lib/usermetrics`, which can be deleted by root (but not with sudo). Deleting this file and rebooting will remove all stored metrics. Presumably, the db file could be edited instead of deleted.

Based on how the "formats" are set up, it seems that it is difficult to maintain a running tally beyond one day (though not impossible. See `FluffyChat <https://gitlab.com/ChristianPauly/fluffychat>`_).

In the case of the `nCounter`_ app. I wanted to count the number of days, but since the metric "resets" each day, that presents a problem. I created a workaround that updates the metric every time the application is opened. Thus, the ``emptyFormat`` (default) tells the user to open the application. This, however, nearly defeats the purpose of the metric entirely, other than having a neat stat reminder for the day.

There must be a way for a process to run independently in the background (e.g. cron) to retrieve data from a specific app code. One lead is the Indicator Weather app. This runs a process every X minutes to update the weather indicator automatically without having to open the app.
