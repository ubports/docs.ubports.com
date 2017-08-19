Ubuntu.Components.Icon
======================

.. raw:: html

   <p>

The Icon component displays an icon from the icon theme. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Icon -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

ProgressionSlot.

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

asynchronous : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keyColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Icon-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The icon theme contains a set of standard icons referred to by their
name. Using icons whenever possible enhances consistency accross
applications. Each icon has a name and can have different visual
representations depending on the size requested.

.. raw:: html

   </p>

.. raw:: html

   <p>

Icons can also be colorized. Setting the color property will make all
pixels with the keyColor (by default #808080) colored.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Icon</a></span> {
   <span class="name">width</span>: <span class="number">64</span>
   <span class="name">height</span>: <span class="number">64</span>
   <span class="name">name</span>: <span class="string">&quot;search&quot;</span>
   }</pre>

.. raw:: html

   <p>

Example of colorization:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Icon</a></span> {
   <span class="name">width</span>: <span class="number">64</span>
   <span class="name">height</span>: <span class="number">64</span>
   <span class="name">name</span>: <span class="string">&quot;search&quot;</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
   }</pre>

.. raw:: html

   <p>

Icon themes are created following the Freedesktop Icon Theme
Specification.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Icon -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="asynchronous-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

asynchronous : bool

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

The property drives the image loading of the icon. Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

The color that all pixels that originally are of color keyColor should
take.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keyColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

keyColor : color

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

The color of the pixels that should be colorized. By default it is set
to #808080.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keyColor -->

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

The name of the icon to display.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both name and source are set, name will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The complete list of icons available in Ubuntu is not published
yet. For now please refer to the folders where the icon themes are
installed:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Ubuntu Touch: /usr/share/icons/suru

.. raw:: html

   </li>

.. raw:: html

   <li>

Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These 2 separate icon themes will be merged soon.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : url

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

The source url of the icon to display. It has precedence over name.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both name and source are set, name will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->


