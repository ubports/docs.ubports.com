Ubuntu.Components.MainView
==========================

.. raw:: html

   <p>

MainView is the root Item that should be used for all applications.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MainView -->

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

   </table>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Obsolete members

.. raw:: html

   </li>

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

actionContext : ActionContext

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anchorToKeyboard : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

applicationName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

backgroundColor : color

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MainView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The simplest way to use a MainView is to include a single Page object
inside the MainView:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">id</span>: <span class="name">pageHeader</span>
   <span class="name">title</span>: <span class="string">&quot;Simple page&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="type">anchors</span> {
   <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">top</span>: <span class="name">pageHeader</span>.<span class="name">bottom</span>
   <span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   }
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
   <span class="name">text</span>: <span class="string">&quot;Push me&quot;</span>
   <span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;Click!&quot;</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

It is not required to set the anchors of the Page as it will
automatically fill its parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

Do not include multiple Pages directly inside the MainView, but use
AdaptivePageLayout inside MainView to navigate between several Pages.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the Page inside the MainView includes a Flickable, set the flickable
property of the PageHeader to automatically hide and show the header
when the user scrolls up or down:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;Page with Flickable&quot;</span>
   <span class="name">flickable</span>: <span class="name">myFlickable</span>
   }
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">id</span>: <span class="name">myFlickable</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">100</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;line &quot;</span><span class="operator">+</span><span class="name">index</span>
   }
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

The same header behavior is automatic when using a ListView instead of a
Flickable in the above example.

.. raw:: html

   </p>

.. raw:: html

   <p>

The examples above show how to include a single Page inside a MainView,
but more advanced application structures are possible using
AdaptivePageLayout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MainView -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actionContext -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actionContext-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] actionContext : ActionContext

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

The action context of the MainView.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actionContext -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="anchorToKeyboard-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchorToKeyboard : bool

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

The property holds if the application should automatically resize the
contents when the input method appears

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@anchorToKeyboard -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="applicationName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

applicationName : string

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

The property holds the application's name, which must be the same as the
desktop file's name. The name also sets the name of the QCoreApplication
and defaults for data and cache folders that work on the desktop and
under confinement, as well as the default gettext domain. C++ code that
writes files may use QStandardPaths::writableLocation with
QStandardPaths::DataLocation or QStandardPaths::CacheLocation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@applicationName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backgroundColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

backgroundColor : color

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

Color of the background.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="name">backgroundColor</span>: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
   }</pre>

.. raw:: html

   <!-- @@@backgroundColor -->


