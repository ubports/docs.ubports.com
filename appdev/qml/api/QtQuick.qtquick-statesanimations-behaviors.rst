QtQuick.qtquick-statesanimations-behaviors
==========================================

.. raw:: html

   <h2 id="using-behaviors-with-states">

Using Behaviors with States

.. raw:: html

   </h2>

.. raw:: html

   <p>

In some cases you may choose to use a Behavior to animate a property
change caused by a state change. While this works well for some
situations, in other situations it may lead to unexpected behavior.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here's an example that shows the problem:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">400</span>
   <span class="name">height</span>: <span class="number">400</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">coloredRect</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   Behavior on <span class="name">color</span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> {}
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouser</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">hoverEnabled</span>: <span class="number">true</span>
   }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;GreenState&quot;</span>
   <span class="name">when</span>: <span class="name">mouser</span>.<span class="name">containsMouse</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
   <span class="name">target</span>: <span class="name">coloredRect</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Testing the example by quickly and repeatedly moving the mouse in to and
out of the colored rectangle shows that the colored rectangle will
settle into a green color over time, never returning to full red. This
is not what we wanted! The problem occurs because we have used a
Behavior to animate the change in color, and our state change is trigged
by the mouse entering or exiting the MouseArea, which is easily
interrupted.

.. raw:: html

   </p>

.. raw:: html

   <p>

To state the problem more formally, using States and Behaviors together
can cause unexpected behavior when:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

a Behavior is used to animate a property change, specifically when
moving from an explicitly defined state back to the implicit base state;
and

.. raw:: html

   </li>

.. raw:: html

   <li>

this Behavior can be interrupted to (re-)enter an explicitly defined
state.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The problem occurs because of the way the base state is defined for QML:
as the "snapshot" state of the application just prior to entering an
explicitly defined state. In this case, if we are in the process of
animating from green back to red, and interrupt the animation to return
to "GreenState", the base state will include the color in its
intermediate, mid-animation form.

.. raw:: html

   </p>

.. raw:: html

   <p>

While future versions of QML should be able to handle this situation
more gracefully, there are currently several ways to rework your
application to avoid this problem.

.. raw:: html

   </p>

.. raw:: html

   <p>

1. Use a transition to animate the change, rather than a Behavior.

   .. raw:: html

      </p>

   .. raw:: html

      <pre class="qml">import QtQuick 2.0
      <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
      <span class="name">width</span>: <span class="number">400</span>
      <span class="name">height</span>: <span class="number">400</span>
      <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
      <span class="name">id</span>: <span class="name">coloredRect</span>
      <span class="name">width</span>: <span class="number">100</span>
      <span class="name">height</span>: <span class="number">100</span>
      <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
      <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
      <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
      <span class="name">id</span>: <span class="name">mouser</span>
      <span class="name">anchors</span>.fill: <span class="name">parent</span>
      <span class="name">hoverEnabled</span>: <span class="number">true</span>
      }
      <span class="name">states</span>: <span class="name">State</span> {
      <span class="name">name</span>: <span class="string">&quot;GreenState&quot;</span>
      <span class="name">when</span>: <span class="name">mouser</span>.<span class="name">containsMouse</span>
      <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
      <span class="name">target</span>: <span class="name">coloredRect</span>
      <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
      }
      }
      <span class="name">transitions</span>: <span class="name">Transition</span> {
      <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> {}
      }
      }
      }</pre>

   .. raw:: html

      <p>

   2. Use a conditional binding to change the property value, rather
      than a state

      .. raw:: html

         </p>

      .. raw:: html

         <pre class="qml">import QtQuick 2.0
         <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
         <span class="name">width</span>: <span class="number">400</span>
         <span class="name">height</span>: <span class="number">400</span>
         <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
         <span class="name">id</span>: <span class="name">coloredRect</span>
         <span class="name">width</span>: <span class="number">100</span>
         <span class="name">height</span>: <span class="number">100</span>
         <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
         <span class="name">color</span>: <span class="name">mouser</span>.<span class="name">containsMouse</span> ? <span class="string">&quot;green&quot;</span> : <span class="string">&quot;red&quot;</span>
         Behavior on <span class="name">color</span> {
         <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> {}
         }
         <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
         <span class="name">id</span>: <span class="name">mouser</span>
         <span class="name">anchors</span>.fill: <span class="name">parent</span>
         <span class="name">hoverEnabled</span>: <span class="number">true</span>
         }
         }
         }</pre>

      .. raw:: html

         <p>

      3. Use only explicitly defined states, rather than an implicit
         base state

         .. raw:: html

            </p>

         .. raw:: html

            <pre class="qml">import QtQuick 2.0
            <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
            <span class="name">width</span>: <span class="number">400</span>
            <span class="name">height</span>: <span class="number">400</span>
            <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
            <span class="name">id</span>: <span class="name">coloredRect</span>
            <span class="name">width</span>: <span class="number">100</span>
            <span class="name">height</span>: <span class="number">100</span>
            <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
            Behavior on <span class="name">color</span> {
            <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> {}
            }
            <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
            <span class="name">id</span>: <span class="name">mouser</span>
            <span class="name">anchors</span>.fill: <span class="name">parent</span>
            <span class="name">hoverEnabled</span>: <span class="number">true</span>
            }
            <span class="name">states</span>: [
            <span class="type"><a href="QtQuick.State.md">State</a></span> {
            <span class="name">name</span>: <span class="string">&quot;GreenState&quot;</span>
            <span class="name">when</span>: <span class="name">mouser</span>.<span class="name">containsMouse</span>
            <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
            <span class="name">target</span>: <span class="name">coloredRect</span>
            <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
            }
            },
            <span class="type"><a href="QtQuick.State.md">State</a></span> {
            <span class="name">name</span>: <span class="string">&quot;RedState&quot;</span>
            <span class="name">when</span>: !<span class="name">mouser</span>.<span class="name">containsMouse</span>
            <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
            <span class="name">target</span>: <span class="name">coloredRect</span>
            <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
            }
            }]
            }
            }</pre>

         .. raw:: html

            <!-- @@@qtquick-statesanimations-behaviors.html -->
