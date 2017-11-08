.. _sdk_qtquick_qt_quick_states:

QtQuick Qt Quick States
=======================



Many user interface designs are *state driven*; interfaces have configurations that differ depending on the current state. For example, a traffic signal will configure its flags or lights depending on its state. While in the signal's ``stop`` state, a red light will turn on while the yellow and the green lights will turn off. In the ``caution`` state, the yellow light is on while the other lights are turned off.

In QML, *states* are a set of property configurations defined in a :ref:`State <sdk_qtquick_state>` type. Different configurations could, for example:

-  Show some UI components and hide others
-  Present different available actions to the user
-  Start, stop, or pause animations
-  Execute some script required in the new state
-  Change a property value for a particular item
-  Show a different view or screen

All :ref:`Item <sdk_qtquick_item>`-based objects have a ``state`` property, and can specify additional states by adding new ``State`` objects to the item's :ref:`states <sdk_qtquick_item_states>` property. Each state within a component has a unique ``name``, an empty string being the default. To change the current state of an item, set the :ref:`state <sdk_qtquick_item_state>` property to the name of the state.

Non-Item objects may use states through the :ref:`StateGroup <sdk_qtquick_stategroup>` type.

To create a state, add a :ref:`State <sdk_qtquick_state>` object to the item's :ref:`states <sdk_qtquick_item_states>` property, which holds a list of states for that item.

A warning ``signal`` component may have two states, the ``NORMAL`` and the ``CRITICAL`` state. Suppose that in the ``NORMAL`` state, the ``color`` of the signal should be ``green`` and the warning ``flag`` is down. Meanwhile, in the ``CRITICAL`` state, the ``color`` should be ``red`` and the flag is ``up``. We may model the states using the ``State`` type and the color and flag configurations with the ``PropertyChanges`` type.

.. code:: qml

    Rectangle {
        id: signal
        width: 200; height: 200
        state: "NORMAL"
        states: [
            State {
                name: "NORMAL"
                PropertyChanges { target: signal; color: "green"}
                PropertyChanges { target: flag; state: "FLAG_DOWN"}
            },
            State {
                name: "CRITICAL"
                PropertyChanges { target: signal; color: "red"}
                PropertyChanges { target: flag; state: "FLAG_UP"}
            }
        ]
    }

The :ref:`PropertyChanges <sdk_qtquick_propertychanges>` type will change the values of object properties. Objects are referenced through their id. Objects outside the component are also referenced using the ``id`` property, exemplified by the property change to the external ``flag`` object.

Further, the state may change by assigning the ``state`` property with the appropriate signal state. A state switch could be in a :ref:`MouseArea <sdk_qtquick_mousearea>` type, assigning a different state whenever the signal receives a mouse click.

.. code:: qml

    Rectangle {
        id: signalswitch
        width: 75; height: 75
        color: "blue"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (signal.state == "NORMAL")
                    signal.state = "CRITICAL"
                else
                    signal.state = "NORMAL"
            }
        }
    }

The State type is not limited to performing modifications on property values. It can also:

-  Run some script using :ref:`StateChangeScript <sdk_qtquick_statechangescript>`
-  Override an existing signal handler for an object using :ref:`PropertyChanges <sdk_qtquick_propertychanges>`
-  Re-parent an :ref:`Item <sdk_qtquick_item>` using :ref:`ParentChange <sdk_qtquick_parentchange>`
-  Modify anchor values using :ref:`AnchorChanges <sdk_qtquick_anchorchanges>`

Every :ref:`Item <sdk_qtquick_item>` based component has a ``state`` property and a *default state*. The default state is the empty string (``""``) and contains all of an item's initial property values. The default state is useful for managing property values before state changes. Setting the ``state`` property to an empty string will load the default state.

For convenience, the :ref:`State <sdk_qtquick_state>` type has a ``when`` property that can bind to expressions to change the state whenever the bound expression evaluates to ``true``. The ``when`` property will revert the state back to the `default state </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/#the-default-state>`_  when the expression evaluates to false.

.. code:: qml

    Rectangle {
        id: bell
        width: 75; height: 75
        color: "yellow"
        states: State {
                    name: "RINGING"
                    when: (signal.state == "CRITICAL")
                    PropertyChanges {target: speaker; play: "RING!"}
                }
    }

The ``bell`` component will change to the ``RINGING`` state whenever the ``signal.state`` is ``CRITICAL``.

State changes induce abrupt value changes. The `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  type allow smoother changes during state changes. In transitions, animations and interpolation behaviors are definable. The `Animation and Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  article has more information about creating state animations.

The States and Transitions example demonstrates how to declare a basic set of states and apply animated transitions between them.

`Using Qt Quick Behaviors with States </sdk/apps/qml/QtQuick/qtquick-statesanimations-behaviors/>`_  explains a common problem when using Behaviors to animate state changes.

In order for Transition to correctly animate state changes, it is sometimes necessary for the engine to fast forward and rewind a state (that is, internally set and unset the state) before it is finally applied. The process is as follows:

#. The state is fast forwarded to determine the complete set of end values.
#. The state is rewound.
#. The state is fully applied, with transitions.

In some cases this may cause unintended behavior. For example, a state that changes a view's *model* or a Loader's *sourceComponent* will set these properties multiple times (to apply, rewind, and then reapply), which can be relatively expensive.

State fast forwarding should be considered an implementation detail, and may change in later versions.

