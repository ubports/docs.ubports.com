Ubuntu.Components.Panel
=======================

.. raw:: html

   <p>

A panel that can be swiped in and out from an edge of the window by the
user. For most applications, it is highly recommended to use the
MainView instead which includes a toolbar at its bottom that can be
swiped in or out. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Panel -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

align : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

animate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

animating : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contents : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hideTimeout : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hintSize : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locked : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

opened : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

position : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

triggerSize : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

close()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

open()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Panel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Unless your application has very specific needs for a Panel, use a
MainView with the default toolbar.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using a Panel, do not theme it directly, but theme its contents,
because the Panel itself should not have visible elements, since it is
in the view (to detect mouse events) even when its contents should be
invisible.

.. raw:: html

   </p>

.. raw:: html

   <p>

Set the anchors and/or width/height of the Panel to specify the area
that the Panel covers when opened.

.. raw:: html

   </p>

.. raw:: html

   <p>

A black panel that can be swiped in from the lower-right of the window
can be created like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="type"><a href="index.html">Panel</a></span> {
   <span class="name">id</span>: <span class="name">panel</span>
   <span class="type">anchors</span> {
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">overlay</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Click&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

A panel that looks like the standard (bottom-aligned) toolbar, but with
custom contents, can be created like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="type"><a href="index.html">Panel</a></span> {
   <span class="name">id</span>: <span class="name">panel</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="comment">// two properties used by the toolbar delegate:</span>
   property <span class="type">bool</span> <span class="name">opened</span>: <span class="name">panel</span>.<span class="name">opened</span>
   property <span class="type">bool</span> <span class="name">animating</span>: <span class="name">panel</span>.<span class="name">animating</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Click&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Any Items can be placed inside the Panel, but MouseAreas can block mouse
events from reaching the panel and thus obstruct the swiping behavior
for hiding the panel. As a result, the user cannot start swiping on the
buttons in the examples above in order to hide the panel. To remedy
this, clicked() signals are forwarded from the panel by calling the
child's trigger() function. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">background</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="type"><a href="index.html">Panel</a></span> {
   <span class="name">id</span>: <span class="name">panel</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">overlay</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">4</span>)
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="keyword">function</span> <span class="name">trigger</span>() {
   <span class="name">print</span>(<span class="string">&quot;The red rectangle was clicked&quot;</span>);
   }
   }
   }
   }
   <span class="name">Component</span>.onCompleted: <span class="name">panel</span>.<span class="name">open</span>();
   }</pre>

.. raw:: html

   <p>

Like this, the red rectangle accepts click events, but the user can
still swipe down on top of the rectangle in order to hide the panel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Panel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$align -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="align-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

align : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property defines the alignment of the panel. The implementation
supports the following values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.AlignBottom to swipe in the panel from the bottom (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.AlignTop to swipe in the panel from the top

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.AlignLeft to swipe in the panel from the left

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.AlignRight to swipe in the panel from the right

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.AlignLeading left when layout mirrorring is disabled, right otherwise

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.AlignTrailing right when layout mirroring is disabled, left otherwise

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is Qt.AlignBottom, and it is not recommended to change
the default value because the left, right and top edge are already used
for system functions, while the bottom edge is reserved for app-specific
functionality such as a default toolbar. The use of Qt.AlignLeading and
Qt.AlignTrailing is preferred over Qt.AlignLeft and Qt.AlignRight in
order to more easily support right-to-left user interfaces that use
LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@align -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="animate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

animate : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Animate transitions between the different panel states.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@animate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="animating-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] animating : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The toolbar is currently not in a stable hidden or visible state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@animating -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] contents : list<Object>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Default property, holds the content which will be swiped in and out.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hideTimeout-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hideTimeout : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The time in milliseconds before the panel automatically hides after
inactivity when it is not locked. Interacting with the panel resets the
timer. Note that adding contents to the panel that accepts mouse events
will prevent the panel from detecting interaction and the timer will not
be reset. Setting a negative value will disable automatic hiding.
Default value: -1 (automatic hiding is disabled).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hideTimeout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hintSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hintSize : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

How much of the panel to show when the user touches the panel's edge.
This gives the user a hint that there is a panel hiding at that edge and
invites him/her to swipe to show the panel completely. Default value:
units.gu(2).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hintSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="locked-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

locked : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Disable edge swipe to open/close the panel. False by default.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@locked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="opened-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

opened : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When opened, the panel is visible, otherwise it is hidden. Use edge
swipes to open/close the panel. The opened property is not updated until
the swipe gesture is completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@opened -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="position-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] position : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The current position of the edge of the panel. The value is 0 when the
panel is opened, and has its maximum value when the panel is closed. The
maximum value is the width of the Panel for a left or right-aligned
panel, and the height of the panel for top or bottom-aligned panels.
When the user drags the Panel from the edge to open it, the position
will change from the maximum size (closed) to 0 (fully expanded).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@position -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressed : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The user presses on the opened toolbar, or when the toolbar is closed
but not locked, the user presses in the toolbar trigger area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="triggerSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

triggerSize : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The size (height for top or bottom-aligned panels, width for left or
right-aligned panels) of the mouse area used to detect edge swipes to
open the panel, when the panel is not opened. Default value:
units.gu(2).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@triggerSize -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$close -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="close-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

close()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Close the panel

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@close -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="open-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

open()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Open the panel

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@open -->


