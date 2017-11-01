Enables introspection of signal emission

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtTest 1.1                    |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 4.8                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`count </sdk/apps/qml/QtTest/SignalSpy#count-prop>`__**** : int
-  ****`signalArguments </sdk/apps/qml/QtTest/SignalSpy#signalArguments-prop>`__****
   : list
-  ****`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__****
   : string
-  ****`target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__**** : var
-  ****`valid </sdk/apps/qml/QtTest/SignalSpy#valid-prop>`__**** : bool

Methods
-------

-  ****`clear </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__****\ ()
-  ****`wait </sdk/apps/qml/QtTest/SignalSpy#wait-method>`__****\ (*timeout*)

Detailed Description
--------------------

In the following example, a
`SignalSpy </sdk/apps/qml/QtTest/SignalSpy/>`__ is installed to watch
the "clicked" signal on a user-defined Button type. When the signal is
emitted, the `count </sdk/apps/qml/QtTest/SignalSpy#count-prop>`__
property on the spy will be increased.

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
`wait() </sdk/apps/qml/QtTest/SignalSpy#wait-method>`__ method can be
used to block the test until the signal occurs (or a timeout expires).

**See also** `TestCase </sdk/apps/qml/QtTest/TestCase/>`__ and Qt Quick
Test Reference Documentation.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] count : int                                         |
+--------------------------------------------------------------------------+

This property defines the number of times that
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__ has been
emitted from `target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__
since the last call to
`clear() </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__.

**See also** `target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__,
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__, and
`clear() </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] signalArguments : list                              |
+--------------------------------------------------------------------------+

This property holds a list of emitted signal arguments. Each emission of
the signal will append one item to the list, containing the arguments of
the signal. When connecting to a new
`target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__ or new
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__ or
calling the `clear() </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__
method, the signalArguments will be reset to empty.

**See also**
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__ and
`clear() </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ signalName : string                                             |
+--------------------------------------------------------------------------+

This property defines the name of the signal on
`target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__ to listen for.

**See also** `target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__ and
`count </sdk/apps/qml/QtTest/SignalSpy#count-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ target : var                                                    |
+--------------------------------------------------------------------------+

This property defines the target object that will be used to listen for
emissions of the
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__ signal.

**See also**
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__ and
`count </sdk/apps/qml/QtTest/SignalSpy#count-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] valid : bool                                        |
+--------------------------------------------------------------------------+

This property defines the current signal connection status. It will be
true when the
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__ of the
`target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__ is connected
successfully, otherwise it will be false.

**See also** `count </sdk/apps/qml/QtTest/SignalSpy#count-prop>`__,
`target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__,
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__, and
`clear() </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ clear()                                                         |
+--------------------------------------------------------------------------+

Clears `count </sdk/apps/qml/QtTest/SignalSpy#count-prop>`__ to 0,
resets `valid </sdk/apps/qml/QtTest/SignalSpy#valid-prop>`__ to false
and clears the
`signalArguments </sdk/apps/qml/QtTest/SignalSpy#signalArguments-prop>`__
to empty.

**See also** `count </sdk/apps/qml/QtTest/SignalSpy#count-prop>`__ and
`wait() </sdk/apps/qml/QtTest/SignalSpy#wait-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ wait( *timeout*)                                                |
+--------------------------------------------------------------------------+

Waits for the signal
`signalName </sdk/apps/qml/QtTest/SignalSpy#signalName-prop>`__ on
`target </sdk/apps/qml/QtTest/SignalSpy#target-prop>`__ to be emitted,
for up to *timeout* milliseconds. The test case will fail if the signal
is not emitted.

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

The `clear() </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__ method can
be used to discard information about signals that have already occurred
to synchronize wait() with future signal emissions.

**See also** `clear() </sdk/apps/qml/QtTest/SignalSpy#clear-method>`__
and
`TestCase::tryCompare() </sdk/apps/qml/QtTest/TestCase#tryCompare-method>`__.

| 
