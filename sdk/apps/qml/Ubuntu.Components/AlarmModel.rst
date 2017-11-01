AlarmModel holds the list of alarms defined.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`count </sdk/apps/qml/Ubuntu.Components/AlarmModel#count-prop>`__****
   : int

Methods
-------

-  Alarm
   ****`get </sdk/apps/qml/Ubuntu.Components/AlarmModel#get-method>`__****\ (int
   *index*)
-  ****`refresh </sdk/apps/qml/Ubuntu.Components/AlarmModel#refresh-method>`__****\ ()

Detailed Description
--------------------

The `AlarmModel </sdk/apps/qml/Ubuntu.Components/AlarmModel/>`__ is a
simple container of `Alarm </sdk/apps/qml/Ubuntu.Components/Alarm/>`__
definitions stored in the alarm collection. The data provided by the
model are read only, adding, modifying or removing data is only possible
through `Alarm </sdk/apps/qml/Ubuntu.Components/Alarm/>`__ functions.
Any modification on the alarms or any new alarm added to the collection
will refresh all the model instances. This also means that the delegates
visualizing the model elements will also be re-created.

Example usage:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    import Ubuntu.Components.ListItems 1.0
    ListView {
        model: AlarmModel {}
        width: units.gu(80)
        height: units.gu(100)
        delegate: Subtitled {
            text: message
            subText: Qt.formatDateTime(date)
        }
    }

The model defines the same roles as the
`Alarm </sdk/apps/qml/Ubuntu.Components/Alarm/>`__ properties. Note that
the use of *enabled* role in delegates may be ambiguous. Therefore the
model defines the additional role called *model*, which represents the
`Alarm </sdk/apps/qml/Ubuntu.Components/Alarm/>`__ object from the index
the delegate is showing the data, so the *enabled* role can then be
accessed by simply dereferencing the model i.e. model.enabled.

Example:

.. code:: qml

    ListView {
        model: AlarmModel{}
        delegate: Standard {
            text: message
            control: Switch {
                checked: model.enabled
            }
        }
    }

The number of alarm events can be obtained from the
`count </sdk/apps/qml/Ubuntu.Components/AlarmModel#count-prop>`__
property. To get a specific alarm event data from the model, use the
`get() </sdk/apps/qml/Ubuntu.Components/AlarmModel#get-method>`__
function.

As the `get() </sdk/apps/qml/Ubuntu.Components/AlarmModel#get-method>`__
function returns the alarm object from the given index. Combined with
the alarm functions the alarms can be updated in place.

Example:

.. code:: qml

    ListView {
        model: AlarmModel{
            id: alarmModel
        }
        delegate: Standard {
            text: message
            control: Switch {
                checked: model.enabled
                onCheckedChanged: {
                    if (checked != model.enabled) {
                        var data = alarmModel.get(index);
                        data.enabled = checked;
                        data.save();
                    }
                }
            }
        }
    }

In this kind of "in place" updates using the *model* role would give the
same result:

.. code:: qml

    ListView {
        model: AlarmModel{
            id: alarmModel
        }
        delegate: Standard {
            text: message
            control: Switch {
                checked: model.enabled
                onCheckedChanged: {
                    if (checked != model.enabled) {
                        model.enabled = checked;
                        model.save();
                    }
                }
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

The number of data entries in the model.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ `Alarm </sdk/apps/qml/Ubuntu.Components/Alarm/>`__ get(int      |
| *index*)                                                                 |
+--------------------------------------------------------------------------+

Returns the reference of the alarm event at *index* in the model. This
allows the alarm data to be modified and updated either through normal
component binding or in Javascript functions.

.. code:: cpp

    Component.onCompleted: {
        var alarm = alarmModel.get(0);
        alarm.message += " updated";
        alarm.save();
    }

This Javascript code returns the alarm properties from the first index
of the model, updates its message and updates the alarm. Note that the
alarm must be saved in order to have the changes visible. The follwoing
code will not update the alarm in the model/collection:

.. code:: cpp

    Component.onCompleted: {
        alarmModel.get(0).message += " updated";
        alarm.message += " updated";
    }

**Note:** The returned object is not guarantied to remain valid, it
should not be used in property bindings. Also,
`reset() </sdk/apps/qml/Ubuntu.Components/Alarm#reset-method>`__ should
not be called either as the call will clear the alarm data from the
cache.

**See also** `Alarm </sdk/apps/qml/Ubuntu.Components/Alarm/>`__.

| 

+--------------------------------------------------------------------------+
|        \ refresh()                                                       |
+--------------------------------------------------------------------------+

The function refreshes the model by invalidating the alarm cache. Use
this function only if the refresh is absolutely required, otherwise it
will cause performance problems.

| 
