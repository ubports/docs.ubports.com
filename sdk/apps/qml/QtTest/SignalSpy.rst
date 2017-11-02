.. _sdk_qttest_signalspy:
QtTest SignalSpy
================

Enables introspection of signal emission

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtTest 1.1                    |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 4.8                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`count <sdk_qttest_signalspy_count-prop>` : int
-  :ref:`signalArguments <sdk_qttest_signalspy_signalArguments-prop>`
   : list
-  :ref:`signalName <sdk_qttest_signalspy_signalName-prop>` :
   string
-  :ref:`target <sdk_qttest_signalspy_target-prop>` : var
-  :ref:`valid <sdk_qttest_signalspy_valid-prop>` : bool

Methods
-------

-  :ref:`clear <sdk_qttest_signalspy_clear-method>`\ ()
-  :ref:`wait <sdk_qttest_signalspy_wait-method>`\ (*timeout*)

Detailed Description
--------------------

In the following example, a :ref:`SignalSpy <sdk_qttest_signalspy>` is
installed to watch the "clicked" signal on a user-defined Button type.
When the signal is emitted, the
:ref:`count <sdk_qttest_signalspy#count-prop>` property on the spy will be
increased.

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

The above style of test is suitable for signals that are emitted
synchronously. For asynchronous signals, the
:ref:`wait() <sdk_qttest_signalspy#wait-method>` method can be used to
block the test until the signal occurs (or a timeout expires).

**See also** :ref:`TestCase <sdk_qttest_testcase>` and Qt Quick Test
Reference Documentation.

Property Documentation
----------------------

.. _sdk_qttest_signalspy_[read-only] count-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] count : int                                         |
+--------------------------------------------------------------------------+

This property defines the number of times that
:ref:`signalName <sdk_qttest_signalspy#signalName-prop>` has been emitted
from :ref:`target <sdk_qttest_signalspy#target-prop>` since the last call
to :ref:`clear() <sdk_qttest_signalspy#clear-method>`.

**See also** :ref:`target <sdk_qttest_signalspy#target-prop>`,
:ref:`signalName <sdk_qttest_signalspy#signalName-prop>`, and
:ref:`clear() <sdk_qttest_signalspy#clear-method>`.

| 

.. _sdk_qttest_signalspy_[read-only] signalArguments-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] signalArguments : list                              |
+--------------------------------------------------------------------------+

This property holds a list of emitted signal arguments. Each emission of
the signal will append one item to the list, containing the arguments of
the signal. When connecting to a new
:ref:`target <sdk_qttest_signalspy#target-prop>` or new
:ref:`signalName <sdk_qttest_signalspy#signalName-prop>` or calling the
:ref:`clear() <sdk_qttest_signalspy#clear-method>` method, the
signalArguments will be reset to empty.

**See also** :ref:`signalName <sdk_qttest_signalspy#signalName-prop>` and
:ref:`clear() <sdk_qttest_signalspy#clear-method>`.

| 

.. _sdk_qttest_signalspy_signalName-prop:

+--------------------------------------------------------------------------+
|        \ signalName : string                                             |
+--------------------------------------------------------------------------+

This property defines the name of the signal on
:ref:`target <sdk_qttest_signalspy#target-prop>` to listen for.

**See also** :ref:`target <sdk_qttest_signalspy#target-prop>` and
:ref:`count <sdk_qttest_signalspy#count-prop>`.

| 

.. _sdk_qttest_signalspy_target-prop:

+--------------------------------------------------------------------------+
|        \ target : var                                                    |
+--------------------------------------------------------------------------+

This property defines the target object that will be used to listen for
emissions of the :ref:`signalName <sdk_qttest_signalspy#signalName-prop>`
signal.

**See also** :ref:`signalName <sdk_qttest_signalspy#signalName-prop>` and
:ref:`count <sdk_qttest_signalspy#count-prop>`.

| 

.. _sdk_qttest_signalspy_[read-only] valid-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] valid : bool                                        |
+--------------------------------------------------------------------------+

This property defines the current signal connection status. It will be
true when the :ref:`signalName <sdk_qttest_signalspy#signalName-prop>` of
the :ref:`target <sdk_qttest_signalspy#target-prop>` is connected
successfully, otherwise it will be false.

**See also** :ref:`count <sdk_qttest_signalspy#count-prop>`,
:ref:`target <sdk_qttest_signalspy#target-prop>`,
:ref:`signalName <sdk_qttest_signalspy#signalName-prop>`, and
:ref:`clear() <sdk_qttest_signalspy#clear-method>`.

| 

Method Documentation
--------------------

.. _sdk_qttest_signalspy_clear-method:

+--------------------------------------------------------------------------+
|        \ clear()                                                         |
+--------------------------------------------------------------------------+

Clears :ref:`count <sdk_qttest_signalspy#count-prop>` to 0, resets
:ref:`valid <sdk_qttest_signalspy#valid-prop>` to false and clears the
:ref:`signalArguments <sdk_qttest_signalspy#signalArguments-prop>` to
empty.

**See also** :ref:`count <sdk_qttest_signalspy#count-prop>` and
:ref:`wait() <sdk_qttest_signalspy#wait-method>`.

| 

.. _sdk_qttest_signalspy_wait-method:

+--------------------------------------------------------------------------+
|        \ wait( *timeout*)                                                |
+--------------------------------------------------------------------------+

Waits for the signal
:ref:`signalName <sdk_qttest_signalspy#signalName-prop>` on
:ref:`target <sdk_qttest_signalspy#target-prop>` to be emitted, for up to
*timeout* milliseconds. The test case will fail if the signal is not
emitted.

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

There are two possible scenarios: the signal has already been emitted
when wait() is called, or the signal has not yet been emitted. The
wait() function handles the first scenario by immediately returning if
the signal has already occurred.

The :ref:`clear() <sdk_qttest_signalspy#clear-method>` method can be used
to discard information about signals that have already occurred to
synchronize wait() with future signal emissions.

**See also** :ref:`clear() <sdk_qttest_signalspy#clear-method>` and
:ref:`TestCase::tryCompare() <sdk_qttest_testcase#tryCompare-method>`.

| 
