QtLocation.qtlocation-index
===========================

.. raw:: html

   <p>

The Qt Location API provides mapping, navigation, and place search via
QML and C++ interfaces.

.. raw:: html

   </p>

.. raw:: html

   <p>

The API has not been released yet but due to its platform-independent
nature is available on all Qt platforms.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt Location API gives developers the ability to determine a position
by using a variety of possible sources, including satellite, or wifi, or
text file, and so on. That information can then be used to determine a
position in a map context with appropriate navigation and to embed, in
the map, defined places with descriptive metadata. These three parts
allow a device to know where it is and its location with respect to
important features. Using features such as roads, destinations, routes,
and other navigation attributes, applications can specify beginning and
end-points for navigation and awareness of objects that may aid or
hinder a journey.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="getting-started">

Getting Started

.. raw:: html

   </h2>

.. raw:: html

   <p>

To load the Qt Location module, add the following statement to your .qml
files

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtLocation</span> <span class="number">5.3</span></pre>

.. raw:: html

   <p>

For C++ projects include the header appropriate for the current use
case, for example applications using routes may use

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &lt;QGeoRoute&gt; </span></pre>

.. raw:: html

   <p>

The .pro file should have the location keyword added

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> location</pre>

.. raw:: html

   <h3>

API Sub-Modules

.. raw:: html

   </h3>

.. raw:: html

   <p>

The API is split into sub-modules, which each have QML and C++ APIs. It
focuses on Map and Place information. The required position data can be
retrieved via the QtPositioning module.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Places

.. raw:: html

   </h4>

.. raw:: html

   <p>

Places is the natural complement to Positioning, providing a source of
geographic data about places of interest (POIs). As well as providing
the location, size and other vitals about a POI, the Places API can also
retrieve images, reviews and other rich content related to the place.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Places introduction:

.. raw:: html

   </td>

.. raw:: html

   <td>

for QML

.. raw:: html

   </td>

.. raw:: html

   <td>

for C++

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h4>

Maps and Navigation

.. raw:: html

   </h4>

.. raw:: html

   <p>

Maps and Navigation provides Qt Quick user interface components for
displaying geographic information on a map, as well as allowing user
interaction with map objects and the display itself. It also contains
utilities for geocoding (finding a geographic coordinate from a street
address) and navigation (including driving and walking directions).

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Maps and Navigation introduction:

.. raw:: html

   </td>

.. raw:: html

   <td>

for QML

.. raw:: html

   </td>

.. raw:: html

   <td>

for C++

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="api-references-and-examples">

API References and Examples

.. raw:: html

   </h2>

.. raw:: html

   <p>

Alphabetized lists of all classes and user interface components in the
API, as well as detailed example applications to demonstrate their
usage.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QML API Reference

.. raw:: html

   </td>

.. raw:: html

   <td>

Full list of QML components in the Qt Location API

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

C++ API Reference by domain

.. raw:: html

   </td>

.. raw:: html

   <td>

Full list of C++ classes and methods of the Qt Location APIs sorted by
domain

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

C++ API Reference

.. raw:: html

   </td>

.. raw:: html

   <td>

Full list of C++ classes and methods of the Qt Location APIs

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Example Apps

.. raw:: html

   </td>

.. raw:: html

   <td>

Examples demonstrating use of the Qt Location APIs

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Maps and Navigation Tutorial

.. raw:: html

   </td>

.. raw:: html

   <td>

Tutorial introducing the QML Maps Types

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="plugin-references-and-parameters">

Plugin References and Parameters

.. raw:: html

   </h2>

.. raw:: html

   <p>

Information about plugins, important notes on their usage, parameters
that can be provided to influence their behavior.

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

Qt Location Nokia Plugin

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Uses the relevant Nokia services provided by Nokia.

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

Qt Location Open Street Map Plugin

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Uses Open Street Map and related services.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Implementing New Back-Ends and Porting

.. raw:: html

   </h3>

.. raw:: html

   <p>

For systems integrators and distributors, information relating to making
Qt Location available for a new platform.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

GeoServices

.. raw:: html

   </td>

.. raw:: html

   <td>

Information about the Qt Location GeoServices plugins

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Places

.. raw:: html

   </td>

.. raw:: html

   <td>

Information for places backend implementors

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="new-since-qt-4">

New Since Qt 4

.. raw:: html

   </h2>

.. raw:: html

   <p>

In Qt 4 Qt Mobility provided some location functionality for Positioning
and Maps with Landmarks support. The new Qt Location API has had an
extensive reworking of Maps and Places (formerly Landmarks). Also both
C++ and QML APIs have been reworked to be simpler to use.

.. raw:: html

   </p>

.. raw:: html

   <p>

New features of Qt Location includes

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Maps are now part of the Qt Quick scenegraph, and rendered using
hardware-accelerated OpenGL

.. raw:: html

   </li>

.. raw:: html

   <li>

Arbitrary Qt Quick items on the map are supported using MapQuickItem

.. raw:: html

   </li>

.. raw:: html

   <li>

Now possible to create map overlays with a model

.. raw:: html

   </li>

.. raw:: html

   <li>

Built-in support for pinch-to-zoom gestures, flicking , and panning (see
MapGestureArea)

.. raw:: html

   </li>

.. raw:: html

   <li>

Vast performance improvements over Qt Mobility 1.2, especially for large
map polylines and objects in general

.. raw:: html

   </li>

.. raw:: html

   <li>

Full QML API now available for routing and geocoding -- compatible with
standard QML model-view design

.. raw:: html

   </li>

.. raw:: html

   <li>

Service provider feature detection without having to open all the
available plugins

.. raw:: html

   </li>

.. raw:: html

   <li>

Unified Plugin QML type used by routing/geocoding/maps etc with
easy-to-set PluginParameter

.. raw:: html

   </li>

.. raw:: html

   <li>

Two plugins are supplied with Qt (a Nokia and an OSM plugin for
GeoServices).

.. raw:: html

   </li>

.. raw:: html

   <li>

Landmarks API is replaced by the Places API

.. raw:: html

   </li>

.. raw:: html

   <li>

Place supports viewing of richer content such as reviews, images, and
editorials

.. raw:: html

   </li>

.. raw:: html

   <li>

Place supports locale handling, sponsored search results, and supplier
attribution

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qtlocation-index.html -->
