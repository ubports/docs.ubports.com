UbuntuUserInterfaceToolkit.ubuntu-theming
=========================================

.. raw:: html

   <p>

Table of contents:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Introduction

.. raw:: html

   </li>

.. raw:: html

   <li>

Styles

.. raw:: html

   </li>

.. raw:: html

   <li>

Themes

.. raw:: html

   </li>

.. raw:: html

   <li>

Sub-theming

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Introduction

.. raw:: html

   </h3>

.. raw:: html

   <p>

The style defines the visuals, the implicit size of the component and
may provide additional logic for a given component. Some components have
fixed style API the component relies on, and yet some others do not have
any restriction on what the style contains or does. Components relying
on a well defined API provide these interfaces through
Ubuntu.Components.Styles module, and styles must implement these
interfaces.

.. raw:: html

   </p>

.. raw:: html

   <p>

The implicit size of a component is driven by the style as well, but it
is not mandatory for a style to provide those values, and components can
override these values at any time. However each style component is
anchor filled to the styled component and positioned to be under child
components declared within the component itself.

.. raw:: html

   </p>

.. raw:: html

   <p>

Styles can be declared as Components (like delegates), in a separate
document loaded dynamically using a Loader or Qt.createComponent(), or
can be grouped in themes. When declared in themes, with some exceptions,
each component's style document name is compound of the component name
having the Style word as postfix, followed by the typical QML file name
extension. In this way the Button component's style is ButtonStyle. In
addition to styles, themes can also provide custom palette values. There
are two themes in Ubuntu, Ambiance and SuruDark themes, Ambiance being
the default theme. Both themes are declared in separate modules, in
Ubuntu.Components.Themes.Ambiance as well as
Ubuntu.Components.Themes.SuruDark. Application should define the theme
name using this dotted name format.

.. raw:: html

   </p>

.. raw:: html

   <p>

Applications can decide which theme they want to use or they can provide
their own themes. Also, applications can use multiple themes or set
custom palette values.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>,<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">theme</span>.name: <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>
   }</pre>

.. raw:: html

   <!-- @@@ubuntu-theming.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Styles

.. raw:: html

   </li>

.. raw:: html

   </p>
