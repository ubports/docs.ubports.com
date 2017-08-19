QtQml.qmlstatemachine
=====================

.. raw:: html

   <p>

The Declarative State Machine Framework provides types for creating and
executing state graphs in QML. It is similar to the C++ State Machine
framework based on Harel's Statecharts: A visual formalism for complex
systems, which is also the basis for UML state diagrams. Like its C++
counterpart, the framework provides an API and execution model based on
State Chart XML (SCXML) to embed the elements and semantics of
statecharts in QML applications.

.. raw:: html

   </p>

.. raw:: html

   <p>

For user interfaces with multiple visual states, independent of the
application's logical state, consider using QML States and Transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

These following QML types are provided by framework to create
event-driven state machines:

.. raw:: html

   </p>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

FinalState

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Provides a final state

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

HistoryState

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a means of returning to a previously active substate

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

SignalTransition

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a transition based on a Qt signal

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

State

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Provides a general-purpose state for StateMachine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

StateMachine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Provides a hierarchical finite state machine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

TimeoutTransition

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a transition based on a timer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="using-both-qtquick-and-qtqml-statemachine-imports">

Using both QtQuick and QtQml.StateMachine imports

.. raw:: html

   </h2>

.. raw:: html

   <p>

Warning: If you're attempting to import both QtQuick and
QtQml.StateMachine in one single QML file, make sure to import
QtQml.StateMachine last. This way, the State type is provided by the
Declarative State Machine Framework and not by QtQuick:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtQml.StateMachine 1.0
   <span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="comment">// okay, is of type QtQml.StateMachine.State</span>
   }
   }</pre>

.. raw:: html

   <p>

Alternatively, you can import QtQml.StateMachine into a separate
namespace to avoid any ambiguity with QtQuick's State item:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtQml.StateMachine 1.0 as DSM
   <span class="type">DSM</span>.StateMachine {
   <span class="type">DSM</span>.State {
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <h2 id="a-simple-state-machine">

A Simple State Machine

.. raw:: html

   </h2>

.. raw:: html

   <p>

To demonstrate the core functionality of the State Machine API, let's
look at an example: A state machine with three states, s1, s2 and s3.
The state machine is controlled by a single Button; when the button is
clicked, the machine transitions to another state. Initially, the state
machine is in state s1. The following is a state chart showing the
different states in our example.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet shows the code needed to create such a state
machine.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Button</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">id</span>: <span class="name">button</span>
   <span class="comment">// change the button label to the active state id</span>
   <span class="name">text</span>: <span class="name">s1</span>.<span class="name">active</span> ? <span class="string">&quot;s1&quot;</span> : <span class="name">s2</span>.<span class="name">active</span> ? <span class="string">&quot;s2&quot;</span> : <span class="string">&quot;s3&quot;</span>
   }
   <span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="comment">// set the initial state</span>
   <span class="name">initialState</span>: <span class="name">s1</span>
   <span class="comment">// start the state machine</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s1</span>
   <span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s2</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 exited&quot;</span>)
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s2</span>
   <span class="comment">// create a transition from s2 to s3 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s3</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 exited&quot;</span>)
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s3</span>
   <span class="comment">// create a transition from s3 to s1 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s1</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 exited&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

The state machine runs asynchronously to become part of your
application's event loop.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="state-machines-that-finish">

State Machines That Finish

.. raw:: html

   </h2>

.. raw:: html

   <p>

The state machine defined in the previous section never finishes. In
order for a state machine to be able to finish, it needs to have a
top-level final state (FinalState object). When the state machine enters
the top-level final state, the machine emits the finished signal and
halts.

.. raw:: html

   </p>

.. raw:: html

   <p>

All you need to do to introduce a final state in the graph is create a
FinalState object and use it as the target of one or more transitions.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="sharing-transitions">

Sharing Transitions

.. raw:: html

   </h2>

.. raw:: html

   <p>

Assume we wanted the user to be able to quit the application at any time
by clicking a Quit button. In order to achieve this, we need to create a
final state and make it the target of a transition associated with the
Quit button's clicked() signal. We could add a transition for each
state; however, this seems redundant and one would also have to remember
to add such a transition from every new state that is added in the
future.

.. raw:: html

   </p>

.. raw:: html

   <p>

We can achieve the same behavior (namely that clicking the Quit button
quits the state machine, regardless of which state the state machine is
in) by grouping states s1, s2 and s3. This is done by creating a new
top-level state and making the three original states children of the new
state. The following diagram shows the new state machine.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The three original states have been renamed s11, s12 and s13 to reflect
that they are now childrens of the new top-level state, s1. Child states
implicitly inherit the transitions of their parent state. This means it
is now sufficient to add a single transition from s1 to the final state,
s2. New states added to s1 will automatically inherit this transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

All that's needed to group states is to specify the proper parent when
the state is created. You also need to specify which of the child states
is the initial one (the child state the state machine should enter when
the parent state is the target of a transition).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Row</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">spacing</span>: <span class="number">2</span>
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="comment">// change the button label to the active state id</span>
   <span class="name">text</span>: <span class="name">s11</span>.<span class="name">active</span> ? <span class="string">&quot;s11&quot;</span> : <span class="name">s12</span>.<span class="name">active</span> ? <span class="string">&quot;s12&quot;</span> : <span class="string">&quot;s13&quot;</span>
   }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">quitButton</span>
   <span class="name">text</span>: <span class="string">&quot;quit&quot;</span>
   }
   }
   <span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="comment">// set the initial state</span>
   <span class="name">initialState</span>: <span class="name">s1</span>
   <span class="comment">// start the state machine</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s1</span>
   <span class="comment">// set the initial state</span>
   <span class="name">initialState</span>: <span class="name">s11</span>
   <span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s2</span>
   <span class="name">signal</span>: <span class="name">quitButton</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 exited&quot;</span>)
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s11</span>
   <span class="comment">// create a transition from s11 to s12 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s12</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 exited&quot;</span>)
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s12</span>
   <span class="comment">// create a transition from s12 to s13 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s13</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 exited&quot;</span>)
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s13</span>
   <span class="comment">// create a transition from s13 to s11 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s11</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 exited&quot;</span>)
   }
   }
   <span class="type"><a href="QtQml.FinalState.md">FinalState</a></span> {
   <span class="name">id</span>: <span class="name">s2</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 exited&quot;</span>)
   }
   <span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
   }</pre>

.. raw:: html

   <p>

In this case we want the application to quit when the state machine is
finished, so the machine's finished() signal is connected to the
application's quit() slot.

.. raw:: html

   </p>

.. raw:: html

   <p>

A child state can override an inherited transition. For example, the
following code adds a transition that effectively causes the Quit button
to be ignored when the state machine is in state, s12.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s12</span>
   <span class="comment">// create a transition from s12 to s13 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s13</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// ignore Quit button when we are in state 12</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s12</span>
   <span class="name">signal</span>: <span class="name">quitButton</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 exited&quot;</span>)
   }</pre>

.. raw:: html

   <p>

A transition can have any state as its target irrespective of where the
target state is in the state hierarchy.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-history-states">

Using History States

.. raw:: html

   </h2>

.. raw:: html

   <p>

Imagine that we wanted to add an "interrupt" mechanism to the example
discussed in the previous section; the user should be able to click a
button to have the state machine perform some non-related task, after
which the state machine should resume whatever it was doing before (i.e.
return to the old state, which is one of the three states in this case).

.. raw:: html

   </p>

.. raw:: html

   <p>

Such behavior can easily be modeled using history states. A history
state (HistoryState object) is a pseudo-state that represents the child
state that the parent state was in before it exited last.

.. raw:: html

   </p>

.. raw:: html

   <p>

A history state is created as a child of the state for which we wish to
record the current child state; when the state machine detects the
presence of such a state at runtime, it automatically records the
current (real) child state when the parent state exits. A transition to
the history state is in fact a transition to the child state that the
state machine had previously saved; the state machine automatically
"forwards" the transition to the real child state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following diagram shows the state machine after the interrupt
mechanism has been added.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The following code shows how it can be implemented; in this example we
simply display a message box when s3 is entered, then immediately return
to the previous child state of s1 via the history state.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Row</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">spacing</span>: <span class="number">2</span>
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="comment">// change the button label to the active state id</span>
   <span class="name">text</span>: <span class="name">s11</span>.<span class="name">active</span> ? <span class="string">&quot;s11&quot;</span> : <span class="name">s12</span>.<span class="name">active</span> ? <span class="string">&quot;s12&quot;</span> :  <span class="name">s13</span>.<span class="name">active</span> ? <span class="string">&quot;s13&quot;</span> : <span class="string">&quot;s3&quot;</span>
   }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">interruptButton</span>
   <span class="name">text</span>: <span class="name">s1</span>.<span class="name">active</span> ? <span class="string">&quot;Interrupt&quot;</span> : <span class="string">&quot;Resume&quot;</span>
   }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">quitButton</span>
   <span class="name">text</span>: <span class="string">&quot;quit&quot;</span>
   }
   }
   <span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="comment">// set the initial state</span>
   <span class="name">initialState</span>: <span class="name">s1</span>
   <span class="comment">// start the state machine</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s1</span>
   <span class="comment">// set the initial state</span>
   <span class="name">initialState</span>: <span class="name">s11</span>
   <span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s2</span>
   <span class="name">signal</span>: <span class="name">quitButton</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 exited&quot;</span>)
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s11</span>
   <span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s12</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 exited&quot;</span>)
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s12</span>
   <span class="comment">// create a transition from s2 to s3 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s13</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 exited&quot;</span>)
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s13</span>
   <span class="comment">// create a transition from s3 to s1 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s1</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 exited&quot;</span>)
   }
   <span class="comment">// create a transition from s1 to s3 when the button is clicked</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s3</span>
   <span class="name">signal</span>: <span class="name">interruptButton</span>.<span class="name">clicked</span>
   }
   <span class="type"><a href="QtQml.HistoryState.md">HistoryState</a></span> {
   <span class="name">id</span>: <span class="name">s1h</span>
   }
   }
   <span class="type"><a href="QtQml.FinalState.md">FinalState</a></span> {
   <span class="name">id</span>: <span class="name">s2</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 exited&quot;</span>)
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s3</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s1h</span>
   <span class="name">signal</span>: <span class="name">interruptButton</span>.<span class="name">clicked</span>
   }
   <span class="comment">// do something when the state enters/exits</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 exited&quot;</span>)
   }
   <span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
   }</pre>

.. raw:: html

   <h2 id="using-parallel-states">

Using Parallel States

.. raw:: html

   </h2>

.. raw:: html

   <p>

Assume that you wanted to model a set of mutually exclusive properties
of a car in a single state machine. Let's say the properties we are
interested in are Clean vs Dirty, and Moving vs Not moving. It would
take four mutually exclusive states and eight transitions to represent
the states and freely move between all possible combinations as shown in
the following state chart.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

If we added a third property (say, Red vs Blue), the total number of
states would double, to eight; and if we added a fourth property (say,
Enclosed vs Convertible), the total number of states would double again,
to 16.

.. raw:: html

   </p>

.. raw:: html

   <p>

This exponential increase can be reduced using parallel states, which
enables linear growth in the number of states and transitions as we add
more properties. Furthermore, states can be added to or removed from the
parallel state without affecting any of their sibling states. The
following state chart shows the different paralles states for the car
example.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

To create a parallel state group, set childMode to
QState.ParallelStates.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s1</span>
   <span class="name">childMode</span>: <span class="name">QState</span>.<span class="name">ParallelStates</span>
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s11</span>
   }
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s12</span>
   }
   }</pre>

.. raw:: html

   <p>

When a parallel state group is entered, all its child states will be
simultaneously entered. Transitions within the individual child states
operate normally. However, any of the child states may take a transition
which exits the parent state. When this happens, the parent state and
all of its child states are exited.

.. raw:: html

   </p>

.. raw:: html

   <p>

The parallelism in the State Machine framework follows an interleaved
semantics. All parallel operations will be executed in a single, atomic
step of the event processing, so no event can interrupt the parallel
operations. However, events will still be processed sequentially, as the
machine itself is single threaded. For example, consider the situation
where there are two transitions that exit the same parallel state group,
and their conditions become true simultaneously. In this case, the event
that is processed last of the two will not have any effect.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="exiting-a-composite-state">

Exiting a Composite State

.. raw:: html

   </h2>

.. raw:: html

   <p>

A child state can be final (a FinalState object); when a final child
state is entered, the parent state emits the State::finished signal. The
following diagram shows a composite state s1 which does some processing
before entering a final state:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

When s1 's final state is entered, s1 will automatically emit finished.
We use a signal transition to cause this event to trigger a state
change:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s1</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">targetState</span>: <span class="name">s2</span>
   <span class="name">signal</span>: <span class="name">s1</span>.<span class="name">finished</span>
   }
   }</pre>

.. raw:: html

   <p>

Using final states in composite states is useful when you want to hide
the internal details of a composite state. The outside world should be
able to enter the state and get a notification when the state has
completed its work, without the need to know the internal details. This
is a very powerful abstraction and encapsulation mechanism when building
complex (deeply nested) state machines. (In the above example, you could
of course create a transition directly from s1 's done state rather than
relying on s1 's finished() signal, but with the consequence that
implementation details of s1 are exposed and depended on).

.. raw:: html

   </p>

.. raw:: html

   <p>

For parallel state groups, the State::finished signal is emitted when
all the child states have entered final states.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="targetless-transitions">

Targetless Transitions

.. raw:: html

   </h2>

.. raw:: html

   <p>

A transition need not have a target state. A transition without a target
can be triggered the same way as any other transition; the difference is
that it doesn't cause any state changes. This allows you to react to a
signal or event when your machine is in a certain state, without having
to leave that state. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">text</span>: <span class="string">&quot;button&quot;</span>
   <span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="name">initialState</span>: <span class="name">s1</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">id</span>: <span class="name">s1</span>
   <span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   <span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;button pressed&quot;</span>)
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

The "button pressed" message will be displayed each time the button is
clicked, but the state machine will remain in its current state (s1). If
the target state were explicitly set to s1, s1 would be exited and
re-entered each time (the QAbstractState::entered and
QAbstractState::exited signals would be emitted).

.. raw:: html

   </p>

.. raw:: html

   <h2 id="related-information">

Related Information

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Declarative State Machine QML Types

.. raw:: html

   </li>

.. raw:: html

   <li>

The State Machine Framework

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qmlstatemachine.html -->
