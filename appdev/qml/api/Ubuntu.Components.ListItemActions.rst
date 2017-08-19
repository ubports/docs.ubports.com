Ubuntu.Components.ListItemActions
=================================

.. raw:: html

   <p>

Provides configuration for actions to be added to a ListItem. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemActions -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.2

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

actions : list<Action>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ListItemActions-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItem accepts actions that can be configured to appear when swiped to
left or right. The API does not limit the number of actions to be
assigned for leading or trailing actions, however the design constraints
are allowing a maximum of 1 action on leading- and a maximum of 3
actions on trailing side of the ListItem.

.. raw:: html

   </p>

.. raw:: html

   <p>

The actions are Action instances or elements derived from Action. The
default visualization of the actions can be overridden using the
delegate property, and the default implementation uses the name property
of the Action.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Using with ListViews

.. raw:: html

   </h4>

.. raw:: html

   <p>

ListItemActions instances can be shared between ListItem instances
within the same view. When shared, the memory footprint of the view will
be lot smaller, as there will be no individual action container created
for each list's actions. Having individual ListItemActions instances
increases the memory footprint, and also has performance impact on
kinetic scrolling.

.. raw:: html

   </p>

.. raw:: html

   <p>

The examples below illustrate the worst and best practice when used in a
ListView. The worst case:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">10000</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
   }
   ]
   }
   <span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;edit&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;copy&quot;</span>
   }
   ]
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

This example can be optimized by sharing the action arrays between the
items:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="index.html">ListItemActions</a></span> {
   <span class="name">id</span>: <span class="name">leading</span>
   <span class="name">actions</span>: <span class="name">Action</span> {
   <span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
   }
   }
   <span class="type"><a href="index.html">ListItemActions</a></span> {
   <span class="name">id</span>: <span class="name">trailing</span>
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;edit&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;copy&quot;</span>
   }
   ]
   }
   <span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">10000</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="name">leadingActions</span>: <span class="name">leading</span>
   <span class="name">trailingActions</span>: <span class="name">trailing</span>
   }
   }
   }</pre>

.. raw:: html

   <h4>

Action parameter types

.. raw:: html

   </h4>

.. raw:: html

   <p>

Actions handled by the ListItem are all triggered with the ListItem's
index as parameter. This index can either be the model index when used
with ListView, or the child index from the parentItem's childItems list.
Actions can use this parameter to identify the instance of the ListItem
on which it was executed, in which case ListItem will change the type
from Actions.None to Actions.Integer when it is triggered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemActions -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

actions : list<Action>

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

The property holds the actions to be displayed. It can hold instances
cached or declared in place. An example of cached actions:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItemActions</a></span> {
   <span class="name">id</span>: <span class="name">cachedActions</span>
   <span class="name">actions</span>: [
   <span class="name">copyAction</span>, <span class="name">searchAction</span>, <span class="name">cutAction</span>
   ]
   }</pre>

.. raw:: html

   <!-- @@@actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

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

The property holds the custom delegate to visualize the actions listed
in the ListItemActions. When set to null, the default delegate specified
by the ListItemStyle will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItemActions provides the action context property which contains the
Action instance currently visualized. Using this property delegates can
access the information to be visualized. The action is triggered by the
panel item holding the visualized action, therefore only visualization
is needed by the custom delegate. The other context property exposed to
delegates is the index, which specifies the index of the action
visualized.

.. raw:: html

   </p>

.. raw:: html

   <p>

Specifying a custom delegate will not override the triggering logic of
the action, that will be still handled by the panel itself. However
custom delegates may still need to distinguish the pressed/released
state visually. This can be achieved using the pressed context property,
which informs the delegate about the pressed state of the action.

.. raw:: html

   </p>

.. raw:: html

   <p>

The delegate height is set automatically by the panel item, only the
width must be specified which will be clamped between height and the
maximum width of the list item divided by the number of actions in the
list.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">50</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="name">trailingActions</span>: <span class="name">actionsList</span>
   }
   <span class="type"><a href="index.html">ListItemActions</a></span> {
   <span class="name">id</span>: <span class="name">actionsList</span>
   <span class="name">delegate</span>: <span class="name">Column</span> {
   <span class="name">width</span>: <span class="name">height</span> <span class="operator">+</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
   <span class="name">name</span>: <span class="name">action</span>.<span class="name">iconName</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
   <span class="name">height</span>: <span class="name">width</span>
   <span class="name">color</span>: <span class="name">pressed</span> ? <span class="string">&quot;blue&quot;</span> : <span class="string">&quot;lightblue&quot;</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   }
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="name">action</span>.<span class="name">text</span> <span class="operator">+</span> <span class="string">&quot;#&quot;</span> <span class="operator">+</span> <span class="name">index</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
   }
   }
   <span class="name">actions</span>: <span class="name">Action</span> {
   <span class="name">iconName</span>: <span class="string">&quot;starred&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Star&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: Putting a Rectangle in the delegate can be used to override the
color of the panel. Also all ListItem attached properties can be used in
the delegates.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defaults to null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->


