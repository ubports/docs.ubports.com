User metrics
============

What are user metrics?
----------------------

If you look on the lock screen, you will see a circle. Inside the circle is text. Look closer, and you’ll notice that the text contains data regarding the user’s activity. Double tap on the middle of the circle, and you will see more “metrics” about the user.

.. figure:: /_static/images/appdev/guides/usermetricsimages/met1.png

    This shows “7 text messages sent today.” How did it know?

.. figure:: /_static/images/appdev/guides/usermetricsimages/met2.png

    This is from a 3rd-party application (`nCounter <https://gitlab.com/joboticon/ncounter/>`_) that makes use of the User Metrics feature.

For the most part, these messages are quite clearly state what they are counting, and which app is related. But where do these metrics come from?

How can I use user metrics in my application?
---------------------------------------------

All of the following information will be based on the code for `nCounter`_

First, you will need to import the module in the QML file that will handle the User Metrics:

.. code:: qml

        import UserMetrics 0.1

(There may be updated versions of this above 0.1)

Next, the specific Metric must be defined in the code as an object:

.. code:: qml

            Metric { // Define the Metric object.
                property string circleMetric // Create a string-type variable called “circleMetric”. This is so you can update it later from somewhere else.
                id: metric // Give the metric a name/id. Here it’s called “metric”
                format: circleMetric // This is the metric/message that will display “today”. Again it uses the string variable that we defined above
                emptyFormat: i18n.tr(“Check nCounter”) // This is the metric/message for tomorrow. It will “activate” once the day roles over and replaces “format”. Here I have use a simple translatable string instead of a variable because I didn’t need it to change.
                domain: “ncounter.joe” // This is the appname, based on what you have in your app settings. Presumably this is how the system lists/ranks the metrics to show on the lock screen. 
            }

Now that the metric is created, we can update the “format” or “emptyFormat” when an event takes place by referencing the variables in the Metric object.

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
    
(note this takes some information stored in the settings of the app)

We then tell the lock screen to update the metric in ZERO milliseconds i.e. immediately
    
    Metric ID [dot] update (Number of milliseconds)

    ``metric.update(0)``

We have now updated the metric for today. When the time rolls over to tomorrow, the metric will be reset to whatever is in ``emptyFormat``. 

For most apps, this defaults to 0 counts for messages, calls, etc. 

How do user metrics work?
-------------------------

User metrics are made up of two “formats”

- metrics/messages for today (``format``)
- metrics/messages for tomorrow (``emptyFormat``)

This tells us that metrics are counted (and are reset) on a daily basis by the system itself.

Applications make use of this system, but setting and updating the user metric “formats” by running a certain code whenever a certain event takes place. e.g. When you press send in Telegram, or when you receive a phone call.
The application may store the data for manipulation, but generally the data is stored in the system (`/var/lib/usermetrics <https://github.com/ubports/libusermetrics/tree/xenial/doc/pages>`_).

Limitations and wonders
-----------------------

Based on how the “formats” are set up, it seems that it is difficult to maintain a running tally beyond one day. It also doesn’t seem to truly reset a counted variable. Instead it reverts to a default setting. This would not normally allow for long-term data interpretation without some kind of database logging.

In the case of the `nCounter`_ app. I wanted to count the number of days, but since the metric “resets” each day, that presents a problem. I create a workaround that updates the metric every time the application is opened. Thus, the ``emptyFormat`` (default) tells the user to open the application. This, however, nearly defeats the purpose of the user metric entirely, other than having a neat stat reminder for the day.

There must be a way for a process to run independently in the background (e.g. cron) to retrieve data from a specific app code. One lead is the Indicator Weather app. This runs a process every X minutes to update the weather indicator automatically without having to open the app. 
