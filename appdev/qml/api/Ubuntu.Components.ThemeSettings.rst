Ubuntu.Components.ThemeSettings
===============================

.. raw:: html

   <p>

The ThemeSettings class provides facilities to define the theme of a
StyledItem. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ThemeSettings -->

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

Ubuntu.Components 1.3

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

palette : Palette

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parentTheme : ThemeSettings

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ThemeSettings-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A global instance is exposed as the theme context property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The theme defines the visual aspect of the Ubuntu components. An
application can use one or more theme the same time. The ThemeSettings
component provides abilities to change the theme used by the component
and all its child components.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing the theme of the entire application can be achieved by changing
the name of the root StyledItem's, i.e. MainView's current theme.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">theme</span>.name: <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
   }</pre>

.. raw:: html

   <p>

By default, styled items inherit the theme they use from their closest
styled item ancestor. In case the application uses MainView, all
components will inherit the theme from the MainView.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Style test&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">==</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span> ?
   <span class="string">&quot;SuruDark&quot;</span> : <span class="string">&quot;Ambiance&quot;</span>
   <span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> (<span class="name">text</span> <span class="operator">==</span> <span class="string">&quot;Ambiance&quot;</span> ?
   <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span> :
   <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: In the example above the Button inherits the theme from Page,
which inherits it from MainView. Therefore changing the theme name in
this way will result in a change of the inherited theme. In case a
different theme is desired, a new instance of the ThemeSettings must be
created on the styled item desired.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Style test&quot;</span>
   <span class="name">theme</span>: <span class="name">ThemeSettings</span>{}
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">==</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span> ?
   <span class="string">&quot;SuruDark&quot;</span> : <span class="string">&quot;Ambiance&quot;</span>
   <span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> (<span class="name">text</span> <span class="operator">==</span> <span class="string">&quot;Ambiance&quot;</span> ?
   <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span> :
   <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

The style can be set on a StyledItem either using StyledItem::styleName
or StyledItem::style properties. When set through StyledItem::styleName,
the component will load the style from the current theme set, and must
be a QML document. The StyledItem::style property is a Component which
can be declared local, or loaded with a Loader or created using
Qt.createComponent() function. The following example will create the
style with the inherited theme.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
   <span class="name">styleName</span>: <span class="string">&quot;MyItemStyle&quot;</span>
   }</pre>

.. raw:: html

   <p>

All styled toolkit components such as Button, CheckBox, Switch, etc.
create their style in this way. Note that the style component must be
part of the theme, otherwise the style creation will fail.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also StyledItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ThemeSettings -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

The name of the current theme in dotted format i.e.
"Ubuntu.Components.Themes.Ambiance".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="palette-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

palette : Palette

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

The palette of the current theme. When set, only the valid palette
values will be taken into account, which will override the theme defined
palette values. The following example will set the system's default
theme palette normal background color to Ubuntu blue. All other palette
values will be untouched.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Themes 1.0
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="comment">// your code</span>
   <span class="name">theme</span>.palette: <span class="name">Palette</span> {
   <span class="name">normal</span>.background: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
   }
   }</pre>

.. raw:: html

   <p>

Note: Palette values applied on inherited themes will be rolled back
once the component declaring the palette is unloaded. This can be
demonstracted using a Loader element:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Themes 1.0
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="QtQuick.Loader.md">Loader</a></span> {
   <span class="name">id</span>: <span class="name">loader</span>
   <span class="name">onItemChanged</span>: <span class="keyword">if</span> (<span class="name">item</span>) <span class="name">button</span>.<span class="name">theme</span>.<span class="name">palette</span> <span class="operator">=</span> <span class="name">item</span>
   }
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">dynamicPalette</span>
   <span class="type">Palette</span> {
   <span class="name">normal</span>.background: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">text</span>: <span class="string">&quot;Toggle palette&quot;</span>
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">item</span>) {
   <span class="name">loader</span>.<span class="name">sourceComponent</span> <span class="operator">=</span> <span class="name">undefined</span>;
   } <span class="keyword">else</span> {
   <span class="name">loader</span>.<span class="name">sourceComponent</span> <span class="operator">=</span> <span class="name">dynamicPalette</span>;
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

The palette doesn't need to be reset as it automatically resets when the
palette used for configuration is destroyed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@palette -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parentTheme-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] parentTheme : ThemeSettings

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

The property specifies the parent ThemeSettings instance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parentTheme -->


