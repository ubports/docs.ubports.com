.. _sdk_qttest_signalspy:

QtTest SignalSpy
================

Enables introspection of signal emission

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtTest 1.1                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 4.8                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`count <sdk_qttest_signalspy_count>` : int
-  :ref:`signalArguments <sdk_qttest_signalspy_signalArguments>` : list
-  :ref:`signalName <sdk_qttest_signalspy_signalName>` : string
-  :ref:`target <sdk_qttest_signalspy_target>` : var
-  :ref:`valid <sdk_qttest_signalspy_valid>` : bool

Methods
-------

-  :ref:`clear <sdk_qttest_signalspy_clear>`\ ()
-  :ref:`wait <sdk_qttest_signalspy_wait>`\ (*timeout*)

Detailed Description
--------------------

In the following example, a :ref:`SignalSpy <sdk_qttest_signalspy>` is installed to watch the "clicked" signal on a user-defined Button type. When the signal is emitted, the :ref:`count <sdk_qttest_signalspy_count>` property on the spy will be increased.

.. code:: cpp

    Button {
        id: button
        SignalSpy {
            id: spy
            target: button
            signalName: "clicked"
        }
        TestCase {
            name: "ButtonClick"
            function test_click() {
                compare(spy.count, 0)
                button.clicked();
                compare(spy.count, 1)
            }
        }
    }

The above style of test is suitable for signals that are emitted synchronously. For asynchronous signals, the :ref:`wait() <sdk_qttest_signalspy_wait>` method can be used to block the test until the signal occurs (or a timeout expires).

**See also** :ref:`TestCase <sdk_qttest_testcase>` and Qt Quick Test Reference Documentation.

Property Documentation
----------------------

.. _sdk_qttest_signalspy_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] count : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the number of times that :ref:`signalName <sdk_qttest_signalspy_signalName>` has been emitted from :ref:`target <sdk_qttest_signalspy_target>` since the last call to :ref:`clear() <sdk_qttest_signalspy_clear>`.

**See also** :ref:`target <sdk_qttest_signalspy_target>`, :ref:`signalName <sdk_qttest_signalspy_signalName>`, and :ref:`clear() <sdk_qttest_signalspy_clear>`.

.. _sdk_qttest_signalspy_signalArguments:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] signalArguments : list                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of emitted signal arguments. Each emission of the signal will append one item to the list, containing the arguments of the signal. When connecting to a new :ref:`target <sdk_qttest_signalspy_target>` or new :ref:`signalName <sdk_qttest_signalspy_signalName>` or calling the :ref:`clear() <sdk_qttest_signalspy_clear>` method, the signalArguments will be reset to empty.

**See also** :ref:`signalName <sdk_qttest_signalspy_signalName>` and :ref:`clear() <sdk_qttest_signalspy_clear>`.

.. _sdk_qttest_signalspy_signalName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| signalName : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the name of the signal on :ref:`target <sdk_qttest_signalspy_target>` to listen for.

**See also** :ref:`target <sdk_qttest_signalspy_target>` and :ref:`count <sdk_qttest_signalspy_count>`.

.. _sdk_qttest_signalspy_target:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : var                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the target object that will be used to listen for emissions of the :ref:`signalName <sdk_qttest_signalspy_signalName>` signal.

**See also** :ref:`signalName <sdk_qttest_signalspy_signalName>` and :ref:`count <sdk_qttest_signalspy_count>`.

.. _sdk_qttest_signalspy_valid:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] valid : bool                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the current signal connection status. It will be true when the :ref:`signalName <sdk_qttest_signalspy_signalName>` of the :ref:`target <sdk_qttest_signalspy_target>` is connected successfully, otherwise it will be false.

**See also** :ref:`count <sdk_qttest_signalspy_count>`, :ref:`target <sdk_qttest_signalspy_target>`, :ref:`signalName <sdk_qttest_signalspy_signalName>`, and :ref:`clear() <sdk_qttest_signalspy_clear>`.

Method Documentation
--------------------

.. _sdk_qttest_signalspy_clear:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clear()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Clears :ref:`count <sdk_qttest_signalspy_count>` to 0, resets :ref:`valid <sdk_qttest_signalspy_valid>` to false and clears the :ref:`signalArguments <sdk_qttest_signalspy_signalArguments>` to empty.

**See also** :ref:`count <sdk_qttest_signalspy_count>` and :ref:`wait() <sdk_qttest_signalspy_wait>`.

.. _sdk_qttest_signalspy_wait:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| wait( *timeout*)                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Waits for the signal :ref:`signalName <sdk_qttest_signalspy_signalName>` on :ref:`target <sdk_qttest_signalspy_target>` to be emitted, for up to *timeout* milliseconds. The test case will fail if the signal is not emitted.

.. code:: cpp

    SignalSpy {
        id: spy
        target: button
        signalName: "clicked"
    }
    function test_async_click() {
        ...
        // do something that will cause clicked() to be emitted
        ...
        spy.wait()
        compare(spy.count, 1)
    }

There are two possible scenarios: the signal has already been emitted when wait() is called, or the signal has not yet been emitted. The wait() function handles the first scenario by immediately returning if the signal has already occurred.

The :ref:`clear() <sdk_qttest_signalspy_clear>` method can be used to discard information about signals that have already occurred to synchronize wait() with future signal emissions.

**See also** :ref:`clear() <sdk_qttest_signalspy_clear>` and :ref:`TestCase::tryCompare() <sdk_qttest_testcase_tryCompare>`.

