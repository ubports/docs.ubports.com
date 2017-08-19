QtQml.Qt
========

.. raw:: html

   <p>

Provides a global object with useful enums and functions from Qt.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Qt -->

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

import QtQml 2.2

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

application : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

inputMethod : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

platform : object

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

string atob(data)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

binding(function)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string btoa(data)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color colorEqual(color lhs, string rhs)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object createComponent(url, mode, parent)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object createQmlObject(string qml, object parent, string filepath)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color darker(color baseColor, real factor)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font(object fontSpecifier)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<string> fontFamilies()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string formatDate(datetime date, variant format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string formatDateTime(datetime dateTime, variant format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string formatTime(datetime time, variant format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color hsla(real hue, real saturation, real lightness, real alpha)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object include(string url, jsobject callback)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool isQtObject(object)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color lighter(color baseColor, real factor)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locale(name)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string md5(data)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

matrix4x4(real m11, real m12, real m13, real m14, real m21, real m22,
real m23, real m24, real m31, real m32, real m33, real m34, real m41,
real m42, real m43, real m44)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool openUrlExternally(url target)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

point point(int x, int y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string qsTr(string sourceText, string disambiguation, int n)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string qsTrId(string id, int n)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string qsTrIdNoOp(string id)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string qsTrNoOp(string sourceText, string disambiguation)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string qsTranslate(string context, string sourceText, string
disambiguation, int n)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string qsTranslateNoOp(string context, string sourceText, string
disambiguation)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

quaternion(real scalar, real x, real y, real z)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

quit()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rect rect(int x, int y, int width, int height)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

url resolvedUrl(url url)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color rgba(real red, real green, real blue, real alpha)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

size(int width, int height)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color tint(color baseColor, color tintColor)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

vector2d(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

vector3d(real x, real y, real z)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

vector4d(real x, real y, real z, real w)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Qt-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Qt object is a global object with utility functions, properties and
enums.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is not instantiable; to use it, call the members of the global Qt
object directly. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Text</span> {
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">1</span>, <span class="number">0</span>, <span class="number">0</span>, <span class="number">1</span>)
   <span class="name">text</span>: <span class="name">Qt</span>.<span class="name">md5</span>(<span class="string">&quot;hello, world&quot;</span>)
   }</pre>

.. raw:: html

   <h2 id="enums">

Enums

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt object contains the enums available in the Qt Namespace. For
example, you can access the Qt::LeftButton and Qt::RightButton
enumeration values as Qt.LeftButton and Qt.RightButton.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="types">

Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt object also contains helper functions for creating objects of
specific data types. This is primarily useful when setting the
properties of an item when the property has one of the following types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

rect - use Qt.rect()

.. raw:: html

   </li>

.. raw:: html

   <li>

point - use Qt.point()

.. raw:: html

   </li>

.. raw:: html

   <li>

size - use Qt.size()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the QtQuick module has been imported, the following helper functions
for creating objects of specific data types are also available for
clients to use:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

color - use Qt.rgba(), Qt.hsla(), Qt.darker(), Qt.lighter() or Qt.tint()

.. raw:: html

   </li>

.. raw:: html

   <li>

font - use Qt.font()

.. raw:: html

   </li>

.. raw:: html

   <li>

vector2d - use Qt.vector2d()

.. raw:: html

   </li>

.. raw:: html

   <li>

vector3d - use Qt.vector3d()

.. raw:: html

   </li>

.. raw:: html

   <li>

vector4d - use Qt.vector4d()

.. raw:: html

   </li>

.. raw:: html

   <li>

quaternion - use Qt.quaternion()

.. raw:: html

   </li>

.. raw:: html

   <li>

matrix4x4 - use Qt.matrix4x4()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

There are also string based constructors for these types. See QML Basic
Types for more information.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="date-time-formatters">

Date/Time Formatters

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt object contains several functions for formatting QDateTime, QDate
and QTime values.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

string Qt.formatDateTime(datetime date, variant format)

.. raw:: html

   </li>

.. raw:: html

   <li>

string Qt.formatDate(datetime date, variant format)

.. raw:: html

   </li>

.. raw:: html

   <li>

string Qt.formatTime(datetime date, variant format)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The format specification is described at Qt.formatDateTime.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="dynamic-object-creation">

Dynamic Object Creation

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following functions on the global object allow you to dynamically
create QML items from files or strings. See Dynamic QML Object Creation
from JavaScript for an overview of their use.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

object Qt.createComponent(url)

.. raw:: html

   </li>

.. raw:: html

   <li>

object Qt.createQmlObject(string qml, object parent, string filepath)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="other-functions">

Other Functions

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following functions are also on the Qt object.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.quit()

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.md5(string)

.. raw:: html

   </li>

.. raw:: html

   <li>

string Qt.btoa(string)

.. raw:: html

   </li>

.. raw:: html

   <li>

string Qt.atob(string)

.. raw:: html

   </li>

.. raw:: html

   <li>

object Qt.binding(function)

.. raw:: html

   </li>

.. raw:: html

   <li>

object Qt.locale()

.. raw:: html

   </li>

.. raw:: html

   <li>

string Qt.resolvedUrl(string)

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.openUrlExternally(string)

.. raw:: html

   </li>

.. raw:: html

   <li>

list<string> Qt.fontFamilies()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@Qt -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$application -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="application-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

application : object

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

The application object provides access to global application state
properties shared by many QML components.

.. raw:: html

   </p>

.. raw:: html

   <p>

Its properties are:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.active

.. raw:: html

   </td>

.. raw:: html

   <td>

Deprecated, use Qt.application.state == Qt.ApplicationActive instead.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.state

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property indicates the current state of the application.

.. raw:: html

   <p>

Possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.ApplicationActive - The application is the top-most and focused
application, and the user is able to interact with the application.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ApplicationInactive - The application is visible or partially
visible, but not selected to be in front, the user cannot interact with
the application. On desktop platforms, this typically means that the
user activated another application. On mobile platforms, it is more
common to enter this state when the OS is interrupting the user with for
example incoming calls, SMS-messages or dialogs. This is usually a
transient state during which the application is paused. The user may
return focus to your application, but most of the time it will be the
first indication that the application is going to be suspended. While in
this state, consider pausing or stopping any activity that should not
continue when the user cannot interact with your application, such as a
video, a game, animations, or sensors. You should also avoid performing
CPU-intensive tasks which might slow down the application in front.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ApplicationSuspended - The application is suspended and not visible
to the user. On mobile platforms, the application typically enters this
state when the user returns to the home screen or switches to another
application. While in this state, the application should ensure that the
user perceives it as always alive and does not lose his progress, saving
any persistent data. The application should cease all activities and be
prepared for code execution to stop. While suspended, the application
can be killed at any time without further warnings (for example when low
memory forces the OS to purge suspended applications).

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ApplicationHidden - The application is hidden and runs in the
background. This is the normal state for applications that need to do
background processing, like playing music, while the user interacts with
other applications. The application should free up all graphical
resources when entering this state. A Qt Quick application should not
usually handle this state at the QML level. Instead, you should unload
the entire UI and reload the QML files whenever the application becomes
active again.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.layoutDirection

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property can be used to query the default layout
direction of the application. On system start-up, the default layout
direction depends on the application's language. The property has a
value of Qt.RightToLeft in locales where text and graphic elements are
read from right to left, and Qt.LeftToRight where the reading direction
flows from left to right. You can bind to this property to customize
your application layouts to support both layout directions.

.. raw:: html

   <p>

Possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.LeftToRight - Text and graphics elements should be positioned from
left to right.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightToLeft - Text and graphics elements should be positioned from
right to left.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.arguments

.. raw:: html

   </td>

.. raw:: html

   <td>

This is a string list of the arguments the executable was invoked with.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.name

.. raw:: html

   </td>

.. raw:: html

   <td>

This is the application name set on the QCoreApplication instance. This
property can be written to in order to set the application name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.version

.. raw:: html

   </td>

.. raw:: html

   <td>

This is the application version set on the QCoreApplication instance.
This property can be written to in order to set the application version.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.organization

.. raw:: html

   </td>

.. raw:: html

   <td>

This is the organization name set on the QCoreApplication instance. This
property can be written to in order to set the organization name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.domain

.. raw:: html

   </td>

.. raw:: html

   <td>

This is the organization domain set on the QCoreApplication instance.
This property can be written to in order to set the organization domain.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.supportsMultipleWindows

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property can be used to determine whether or not the
platform supports multiple windows. Some embedded platforms do not
support multiple windows, for example.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The object also has one signal, aboutToQuit(), which is the same as
QCoreApplication::aboutToQuit().

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example uses the application object to indicate whether
the application is currently active:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">55</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">application</span>.<span class="name">active</span> ? <span class="string">&quot;white&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Application &quot;</span> <span class="operator">+</span> (<span class="name">Qt</span>.<span class="name">application</span>.<span class="name">active</span> ? <span class="string">&quot;active&quot;</span> : <span class="string">&quot;inactive&quot;</span>)
   <span class="name">opacity</span>: <span class="name">Qt</span>.<span class="name">application</span>.<span class="name">active</span> ? <span class="number">1.0</span> : <span class="number">0.5</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   }
   }</pre>

.. raw:: html

   <p>

Note that when using QML without a QGuiApplication, the following
properties will be undefined:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

application.active

.. raw:: html

   </li>

.. raw:: html

   <li>

application.state

.. raw:: html

   </li>

.. raw:: html

   <li>

application.layoutDirection

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@application -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="inputMethod-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

inputMethod : object

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

The inputMethod object allows access to application's QInputMethod
object and all its properties and slots. See the QInputMethod
documentation for further details.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@inputMethod -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="platform-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

platform : object

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

The platform object provides info about the underlying platform.

.. raw:: html

   </p>

.. raw:: html

   <p>

Its properties are:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

platform.os

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property contains the name of the operating system.

.. raw:: html

   <p>

Possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

"android" - Android

.. raw:: html

   </li>

.. raw:: html

   <li>

"blackberry" - BlackBerry OS

.. raw:: html

   </li>

.. raw:: html

   <li>

"ios" - iOS

.. raw:: html

   </li>

.. raw:: html

   <li>

"linux" - Linux

.. raw:: html

   </li>

.. raw:: html

   <li>

"osx" - OS X

.. raw:: html

   </li>

.. raw:: html

   <li>

"unix" - Other Unix-based OS

.. raw:: html

   </li>

.. raw:: html

   <li>

"windows" - Windows

.. raw:: html

   </li>

.. raw:: html

   <li>

"wince" - Windows CE

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This QML property was introduced in Qt 4.8.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@platform -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$atob -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="atob-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string atob(data)

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

ASCII to binary - this function returns a base64 decoding of data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@atob -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="binding-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

binding(function)

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

Returns a JavaScript object representing a property binding.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two main use-cases for the function: firstly, to apply a
property binding imperatively from JavaScript code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   property <span class="type">bool</span> <span class="name">someCondition</span>: <span class="number">true</span>
   property <span class="type">int</span> <span class="name">edgePosition</span>
   <span class="name">Component</span>.onCompleted: {
   <span class="keyword">if</span> (<span class="name">someCondition</span> <span class="operator">==</span> <span class="number">true</span>) {
   <span class="comment">// bind to the result of the binding expression passed to Qt.binding()</span>
   <span class="name">edgePosition</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">x</span> <span class="operator">+</span> <span class="name">width</span> })
   }
   }
   }</pre>

.. raw:: html

   <p>

and secondly, to apply a property binding when initializing property
values of dynamically constructed objects (via Component.createObject()
or Loader.setSource()).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, assuming the existence of a DynamicText component:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">textElement</span>
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">200</span>
   <span class="name">text</span>: <span class="string">&quot;Default text&quot;</span>
   property <span class="type">string</span> <span class="name">dynamicText</span>: <span class="string">&quot;Dynamic text&quot;</span>
   <span class="name">onTextChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">text</span>)
   }</pre>

.. raw:: html

   <p>

the output from:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">root</span>
   property <span class="type">string</span> <span class="name">dynamicText</span>: <span class="string">&quot;Root text&quot;</span>
   <span class="name">Component</span>.onCompleted: {
   var <span class="name">c</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;DynamicText.qml&quot;</span>)
   var <span class="name">obj1</span> = <span class="name">c</span>.<span class="name">createObject</span>(<span class="name">root</span>, { 'text': <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">dynamicText</span> <span class="operator">+</span> <span class="string">' extra text'</span> }) })
   <span class="name">root</span>.<span class="name">dynamicText</span> <span class="operator">=</span> <span class="string">&quot;Modified root text&quot;</span>
   var <span class="name">obj2</span> = <span class="name">c</span>.<span class="name">createObject</span>(<span class="name">root</span>, { 'text': <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> this.<span class="name">dynamicText</span> <span class="operator">+</span> <span class="string">' extra text'</span> }) })
   <span class="name">obj2</span>.<span class="name">dynamicText</span> <span class="operator">=</span> <span class="string">&quot;Modified text element text&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

and from:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">root</span>
   property <span class="type">string</span> <span class="name">dynamicText</span>: <span class="string">&quot;Root text&quot;</span>
   <span class="type">Loader</span> {
   <span class="name">id</span>: <span class="name">loaderOne</span>
   <span class="name">onLoaded</span>: <span class="name">root</span>.<span class="name">dynamicText</span> <span class="operator">=</span> <span class="string">&quot;Modified root text&quot;</span>
   }
   <span class="type">Loader</span> {
   <span class="name">id</span>: <span class="name">loaderTwo</span>
   <span class="name">onLoaded</span>: <span class="name">item</span>.<span class="name">dynamicText</span> <span class="operator">=</span> <span class="string">&quot;Modified dynamic text&quot;</span>
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">loaderOne</span>.<span class="name">setSource</span>(<span class="string">&quot;DynamicText.qml&quot;</span>, { 'text': <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">dynamicText</span> <span class="operator">+</span> <span class="string">' extra text'</span> }) })
   <span class="name">loaderTwo</span>.<span class="name">setSource</span>(<span class="string">&quot;DynamicText.qml&quot;</span>, { 'text': <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> this.<span class="name">dynamicText</span> <span class="operator">+</span> <span class="string">' extra text'</span> }) })
   }
   }</pre>

.. raw:: html

   <p>

should both be:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Root text extra text
   Modified root text extra text
   Dynamic text extra text
   Modified dynamic text extra text</pre>

.. raw:: html

   <p>

This function cannot be used in property binding declarations (see the
documentation on binding declarations and binding assignments) except
when the result is stored in an array bound to a var property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">50</span>
   property <span class="type">var</span> <span class="name">storedBindings</span>: [ <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">x</span> <span class="operator">+</span> <span class="name">width</span> }) ] <span class="comment">// stored</span>
   property <span class="type">int</span> <span class="name">a</span>: <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">x</span> <span class="operator">+</span> <span class="name">width</span> }) <span class="comment">// error!</span>
   property <span class="type">int</span> <span class="name">b</span>
   <span class="name">Component</span>.onCompleted: {
   <span class="name">b</span> <span class="operator">=</span> <span class="name">storedBindings</span>[<span class="number">0</span>] <span class="comment">// causes binding assignment</span>
   }
   }</pre>

.. raw:: html

   <p>

Note: In Qt Quick 1, all function assignments were treated as binding
assignments. The Qt.binding() function is new to Qt Quick 2.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@binding -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="btoa-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string btoa(data)

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

Binary to ASCII - this function returns a base64 encoding of data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@btoa -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="colorEqual-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

color colorEqual(color lhs, string rhs)

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

Returns true if both lhs and rhs yield equal color values. Both
arguments may be either color values or string values. If a string value
is supplied it must be convertible to a color, as described for the
color basic type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@colorEqual -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createComponent-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object createComponent(url, mode, parent)

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

Returns a Component object created using the QML file at the specified
url, or null if an empty string was given.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned component's Component::status property indicates whether
the component was successfully created. If the status is
Component.Error, see Component::errorString() for an error description.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the optional mode parameter is set to Component.Asynchronous, the
component will be loaded in a background thread. The Component::status
property will be Component.Loading while it is loading. The status will
change to Component.Ready if the component loads successfully, or
Component.Error if loading fails.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the optional parent parameter is given, it should refer to the object
that will become the parent for the created Component object.

.. raw:: html

   </p>

.. raw:: html

   <p>

Call Component.createObject() on the returned component to create an
object instance of the component.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">container</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="keyword">function</span> <span class="name">loadButton</span>() {
   var <span class="name">component</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Button.qml&quot;</span>);
   <span class="keyword">if</span> (<span class="name">component</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
   var <span class="name">button</span> = <span class="name">component</span>.<span class="name">createObject</span>(<span class="name">container</span>);
   <span class="name">button</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;red&quot;</span>;
   }
   }
   <span class="name">Component</span>.onCompleted: <span class="name">loadButton</span>()
   }</pre>

.. raw:: html

   <p>

See Dynamic QML Object Creation from JavaScript for more information on
using this function.

.. raw:: html

   </p>

.. raw:: html

   <p>

To create a QML object from an arbitrary string of QML (instead of a
file), use Qt.createQmlObject().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createComponent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createQmlObject-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object createQmlObject(string qml, object parent, string filepath)

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

Returns a new object created from the given string of QML which will
have the specified parent, or null if there was an error in creating the
object.

.. raw:: html

   </p>

.. raw:: html

   <p>

If filepath is specified, it will be used for error reporting for the
created object.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example (where parentItem is the id of an existing QML item):

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">var <span class="name">newObject</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtQuick 2.0; Rectangle {color: &quot;red&quot;; width: 20; height: 20}'</span>,
   <span class="name">parentItem</span>, <span class="string">&quot;dynamicSnippet1&quot;</span>);</pre>

.. raw:: html

   <p>

In the case of an error, a Qt Script Error object is thrown. This object
has an additional property, qmlErrors, which is an array of the errors
encountered. Each object in this array has the members lineNumber,
columnNumber, fileName and message. For example, if the above snippet
had misspelled color as 'colro' then the array would contain an object
like the following: { "lineNumber" : 1, "columnNumber" : 32, "fileName"
: "dynamicSnippet1", "message" : "Cannot assign to non-existent property
"colro""}.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that this function returns immediately, and therefore may not work
if the qml string loads new components (that is, external QML files that
have not yet been loaded). If this is the case, consider using
Qt.createComponent() instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Dynamic QML Object Creation from JavaScript for more information on
using this function.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createQmlObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="darker-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

color darker(color baseColor, real factor)

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

Returns a color darker than baseColor by the factor provided.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the factor is greater than 1.0, this function returns a darker color.
Setting factor to 3.0 returns a color that has one-third the brightness.
If the factor is less than 1.0, the return color is lighter, but we
recommend using the Qt.lighter() function for this purpose. If the
factor is 0 or negative, the return value is unspecified.

.. raw:: html

   </p>

.. raw:: html

   <p>

The function converts the current RGB color to HSV, divides the value
(V) component by factor and converts the color back to RGB.

.. raw:: html

   </p>

.. raw:: html

   <p>

If factor is not supplied, returns a color 50% darker than baseColor
(factor 2.0).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@darker -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

font(object fontSpecifier)

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

Returns a Font with the properties specified in the fontSpecifier object
or the nearest matching font. The fontSpecifier object should contain
key-value pairs where valid keys are the font type's subproperty names,
and the values are valid values for each subproperty. Invalid keys will
be ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fontFamilies-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<string> fontFamilies()

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

Returns a list of the font families available to the application.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fontFamilies -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="formatDate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string formatDate(datetime date, variant format)

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

Returns a string representation of date, optionally formatted according
to format.

.. raw:: html

   </p>

.. raw:: html

   <p>

The date parameter may be a JavaScript Date object, a date property, a
QDate, or QDateTime value. The format parameter may be any of the
possible format values as described for Qt.formatDateTime().

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, date is formatted using
Qt.DefaultLocaleShortDate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@formatDate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="formatDateTime-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string formatDateTime(datetime dateTime, variant format)

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

Returns a string representation of datetime, optionally formatted
according to format.

.. raw:: html

   </p>

.. raw:: html

   <p>

The date parameter may be a JavaScript Date object, a date property, a
QDate, QTime, or QDateTime value.

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not provided, dateTime is formatted using
Qt.DefaultLocaleShortDate. Otherwise, format should be either:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

One of the Qt::DateFormat enumeration values, such as
Qt.DefaultLocaleShortDate or Qt.ISODate

.. raw:: html

   </li>

.. raw:: html

   <li>

A string that specifies the format of the returned string, as detailed
below.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If format specifies a format string, it should use the following
expressions to specify the date:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Expression

.. raw:: html

   </th>

.. raw:: html

   <th>

Output

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

d

.. raw:: html

   </td>

.. raw:: html

   <td>

the day as number without a leading zero (1 to 31)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

dd

.. raw:: html

   </td>

.. raw:: html

   <td>

the day as number with a leading zero (01 to 31)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ddd

.. raw:: html

   </td>

.. raw:: html

   <td>

the abbreviated localized day name (e.g. 'Mon' to 'Sun'). Uses
QDate::shortDayName().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

dddd

.. raw:: html

   </td>

.. raw:: html

   <td>

the long localized day name (e.g. 'Monday' to 'Qt::Sunday'). Uses
QDate::longDayName().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

M

.. raw:: html

   </td>

.. raw:: html

   <td>

the month as number without a leading zero (1-12)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MM

.. raw:: html

   </td>

.. raw:: html

   <td>

the month as number with a leading zero (01-12)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MMM

.. raw:: html

   </td>

.. raw:: html

   <td>

the abbreviated localized month name (e.g. 'Jan' to 'Dec'). Uses
QDate::shortMonthName().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MMMM

.. raw:: html

   </td>

.. raw:: html

   <td>

the long localized month name (e.g. 'January' to 'December'). Uses
QDate::longMonthName().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

yy

.. raw:: html

   </td>

.. raw:: html

   <td>

the year as two digit number (00-99)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

yyyy

.. raw:: html

   </td>

.. raw:: html

   <td>

the year as four digit number

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

In addition the following expressions can be used to specify the time:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Expression

.. raw:: html

   </th>

.. raw:: html

   <th>

Output

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

h

.. raw:: html

   </td>

.. raw:: html

   <td>

the hour without a leading zero (0 to 23 or 1 to 12 if AM/PM display)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

hh

.. raw:: html

   </td>

.. raw:: html

   <td>

the hour with a leading zero (00 to 23 or 01 to 12 if AM/PM display)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

m

.. raw:: html

   </td>

.. raw:: html

   <td>

the minute without a leading zero (0 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mm

.. raw:: html

   </td>

.. raw:: html

   <td>

the minute with a leading zero (00 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

s

.. raw:: html

   </td>

.. raw:: html

   <td>

the second without a leading zero (0 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ss

.. raw:: html

   </td>

.. raw:: html

   <td>

the second with a leading zero (00 to 59)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

z

.. raw:: html

   </td>

.. raw:: html

   <td>

the milliseconds without leading zeroes (0 to 999)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

zzz

.. raw:: html

   </td>

.. raw:: html

   <td>

the milliseconds with leading zeroes (000 to 999)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AP

.. raw:: html

   </td>

.. raw:: html

   <td>

use AM/PM display. AP will be replaced by either "AM" or "PM".

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ap

.. raw:: html

   </td>

.. raw:: html

   <td>

use am/pm display. ap will be replaced by either "am" or "pm".

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

All other input characters will be ignored. Any sequence of characters
that are enclosed in single quotes will be treated as text and not be
used as an expression. Two consecutive single quotes ("''") are replaced
by a single quote in the output.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if the following date/time value was specified:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// 21 May 2001 14:13:09</span>
   var dateTime <span class="operator">=</span> <span class="keyword">new</span> Date(<span class="number">2001</span><span class="operator">,</span> <span class="number">5</span><span class="operator">,</span> <span class="number">21</span><span class="operator">,</span> <span class="number">14</span><span class="operator">,</span> <span class="number">13</span><span class="operator">,</span> <span class="number">09</span>)</pre>

.. raw:: html

   <p>

This dateTime value could be passed to Qt.formatDateTime(),
Qt.formatDate() or Qt.formatTime() with the format values below to
produce the following results:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Format

.. raw:: html

   </th>

.. raw:: html

   <th>

Result

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

"dd.MM.yyyy"

.. raw:: html

   </td>

.. raw:: html

   <td>

21.05.2001

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

"ddd MMMM d yy"

.. raw:: html

   </td>

.. raw:: html

   <td>

Tue May 21 01

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

"hh:mm:ss.zzz"

.. raw:: html

   </td>

.. raw:: html

   <td>

14:13:09.042

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

"h:m:s ap"

.. raw:: html

   </td>

.. raw:: html

   <td>

2:13:9 pm

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See also Locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@formatDateTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="formatTime-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string formatTime(datetime time, variant format)

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

Returns a string representation of time, optionally formatted according
to format.

.. raw:: html

   </p>

.. raw:: html

   <p>

The time parameter may be a JavaScript Date object, a QTime, or
QDateTime value. The format parameter may be any of the possible format
values as described for Qt.formatDateTime().

.. raw:: html

   </p>

.. raw:: html

   <p>

If format is not specified, time is formatted using
Qt.DefaultLocaleShortDate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@formatTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hsla-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

color hsla(real hue, real saturation, real lightness, real alpha)

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

Returns a color with the specified hue, saturation, lightness and alpha
components. All components should be in the range 0-1 inclusive.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hsla -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="include-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object include(string url, jsobject callback)

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

Includes another JavaScript file. This method can only be used from
within JavaScript files, and not regular QML files.

.. raw:: html

   </p>

.. raw:: html

   <p>

This imports all functions from url into the current script's namespace.

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt.include() returns an object that describes the status of the
operation. The object has a single property, status, that is set to one
of the following values:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Symbol

.. raw:: html

   </th>

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

result.OK

.. raw:: html

   </td>

.. raw:: html

   <td>

0

.. raw:: html

   </td>

.. raw:: html

   <td>

The include completed successfully.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

result.LOADING

.. raw:: html

   </td>

.. raw:: html

   <td>

1

.. raw:: html

   </td>

.. raw:: html

   <td>

Data is being loaded from the network.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

result.NETWORK\_ERROR

.. raw:: html

   </td>

.. raw:: html

   <td>

2

.. raw:: html

   </td>

.. raw:: html

   <td>

A network error occurred while fetching the url.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

result.EXCEPTION

.. raw:: html

   </td>

.. raw:: html

   <td>

3

.. raw:: html

   </td>

.. raw:: html

   <td>

A JavaScript exception occurred while executing the included code. An
additional exception property will be set in this case.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The status property will be updated as the operation progresses.

.. raw:: html

   </p>

.. raw:: html

   <p>

If provided, callback is invoked when the operation completes. The
callback is passed the same object as is returned from the Qt.include()
call.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@include -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isQtObject-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool isQtObject(object)

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

Returns true if object is a valid reference to a Qt or QML object,
otherwise false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isQtObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lighter-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

color lighter(color baseColor, real factor)

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

Returns a color lighter than baseColor by the factor provided.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the factor is greater than 1.0, this functions returns a lighter
color. Setting factor to 1.5 returns a color that is 50% brighter. If
the factor is less than 1.0, the return color is darker, but we
recommend using the Qt.darker() function for this purpose. If the factor
is 0 or negative, the return value is unspecified.

.. raw:: html

   </p>

.. raw:: html

   <p>

The function converts the current RGB color to HSV, multiplies the value
(V) component by factor and converts the color back to RGB.

.. raw:: html

   </p>

.. raw:: html

   <p>

If factor is not supplied, returns a color 50% lighter than baseColor
(factor 1.5).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lighter -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="locale-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

locale(name)

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

Returns a JS object representing the locale with the specified name,
which has the format "language[\_territory][.codeset][@modifier]" or
"C", where:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

language is a lowercase, two-letter, ISO 639 language code,

.. raw:: html

   </li>

.. raw:: html

   <li>

territory is an uppercase, two-letter, ISO 3166 country code,

.. raw:: html

   </li>

.. raw:: html

   <li>

and codeset and modifier are ignored.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the string violates the locale format, or language is not a valid ISO
369 code, the "C" locale is used instead. If country is not present, or
is not a valid ISO 3166 code, the most appropriate country is chosen for
the specified language.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@locale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="md5-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string md5(data)

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

Returns a hex string of the md5 hash of data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@md5 -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="matrix4x4-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

matrix4x4(real m11, real m12, real m13, real m14, real m21, real m22,
real m23, real m24, real m31, real m32, real m33, real m34, real m41,
real m42, real m43, real m44)

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

Returns a Matrix4x4 with the specified values. Alternatively, the
function may be called with a single argument where that argument is a
JavaScript array which contains the sixteen matrix values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@matrix4x4 -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="openUrlExternally-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool openUrlExternally(url target)

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

Attempts to open the specified target url in an external application,
based on the user's desktop preferences. Returns true if it succeeds,
and false otherwise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@openUrlExternally -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="point-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

point point(int x, int y)

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

Returns a Point with the specified x and y coordinates.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@point -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="qsTr-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string qsTr(string sourceText, string disambiguation, int n)

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

Returns a translated version of sourceText, optionally based on a
disambiguation string and value of n for strings containing plurals;
otherwise returns sourceText itself if no appropriate translated string
is available.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the same sourceText is used in different roles within the same
translation context, an additional identifying string may be passed in
for disambiguation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> { <span class="name">text</span>: <span class="name">qsTr</span>(<span class="string">&quot;hello&quot;</span>) }</pre>

.. raw:: html

   <p>

See also Internationalization and Localization with Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qsTr -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="qsTrId-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string qsTrId(string id, int n)

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

Returns a translated string identified by id. If no matching string is
found, the id itself is returned. This should not happen under normal
conditions.

.. raw:: html

   </p>

.. raw:: html

   <p>

If n >= 0, all occurrences of %n in the resulting string are replaced
with a decimal representation of n. In addition, depending on n's value,
the translation text may vary.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> { <span class="name">text</span>: <span class="name">qsTrId</span>(<span class="string">&quot;hello_id&quot;</span>) }</pre>

.. raw:: html

   <p>

It is possible to supply a source string template like:

.. raw:: html

   </p>

.. raw:: html

   <p>

//% <string>

.. raw:: html

   </p>

.. raw:: html

   <p>

or

.. raw:: html

   </p>

.. raw:: html

   <p>

:raw-latex:`\begincomment`% <string> :raw-latex:`\endcomment`

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> {
   <span class="comment">//% &quot;hello&quot;</span>
   <span class="name">text</span>: <span class="name">qsTrId</span>(<span class="string">&quot;hello_id&quot;</span>)
   }</pre>

.. raw:: html

   <p>

Creating binary translation (QM) files suitable for use with this
function requires passing the -idbased option to the lrelease tool.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QT\_TRID\_NOOP() and Internationalization and Localization with
Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qsTrId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="qsTrIdNoOp-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string qsTrIdNoOp(string id)

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

Marks id for dynamic translation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns the id.

.. raw:: html

   </p>

.. raw:: html

   <p>

QT\_TRID\_NOOP is used in conjunction with the dynamic translation
function qsTrId(). It identifies a string as requiring translation (so
it can be identified by lupdate), but leaves the actual translation to
qsTrId().

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   property <span class="type">string</span> <span class="name">greetingId</span>: <span class="name">QT_TRID_NOOP</span>(<span class="string">&quot;hello_id&quot;</span>)
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">qsTrId</span>(<span class="name">greetingId</span>) }
   }</pre>

.. raw:: html

   <p>

See also qsTrId() and Internationalization and Localization with Qt
Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qsTrIdNoOp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="qsTrNoOp-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string qsTrNoOp(string sourceText, string disambiguation)

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

Marks sourceText for dynamic translation; i.e, the stored sourceText
will not be altered.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the same sourceText is used in different roles within the same
translation context, an additional identifying string may be passed in
for disambiguation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns the sourceText.

.. raw:: html

   </p>

.. raw:: html

   <p>

QT\_TR\_NOOP is used in conjunction with the dynamic translation
functions qsTr() and qsTranslate(). It identifies a string as requiring
translation (so it can be identified by lupdate), but leaves the actual
translation to the dynamic functions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   property <span class="type">string</span> <span class="name">greeting</span>: <span class="name">QT_TR_NOOP</span>(<span class="string">&quot;hello&quot;</span>)
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">qsTr</span>(<span class="name">greeting</span>) }
   }</pre>

.. raw:: html

   <p>

See also Internationalization and Localization with Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qsTrNoOp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="qsTranslate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string qsTranslate(string context, string sourceText, string
disambiguation, int n)

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

Returns a translated version of sourceText within the given context,
optionally based on a disambiguation string and value of n for strings
containing plurals; otherwise returns sourceText itself if no
appropriate translated string is available.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the same sourceText is used in different roles within the same
translation context, an additional identifying string may be passed in
for disambiguation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> { <span class="name">text</span>: <span class="name">qsTranslate</span>(<span class="string">&quot;CustomContext&quot;</span>, <span class="string">&quot;hello&quot;</span>) }</pre>

.. raw:: html

   <p>

See also Internationalization and Localization with Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qsTranslate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="qsTranslateNoOp-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string qsTranslateNoOp(string context, string sourceText, string
disambiguation)

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

Marks sourceText for dynamic translation in the given context; i.e, the
stored sourceText will not be altered.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the same sourceText is used in different roles within the same
translation context, an additional identifying string may be passed in
for disambiguation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns the sourceText.

.. raw:: html

   </p>

.. raw:: html

   <p>

QT\_TRANSLATE\_NOOP is used in conjunction with the dynamic translation
functions qsTr() and qsTranslate(). It identifies a string as requiring
translation (so it can be identified by lupdate), but leaves the actual
translation to the dynamic functions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   property <span class="type">string</span> <span class="name">greeting</span>: <span class="name">QT_TRANSLATE_NOOP</span>(<span class="string">&quot;CustomContext&quot;</span>, <span class="string">&quot;hello&quot;</span>)
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">qsTranslate</span>(<span class="string">&quot;CustomContext&quot;</span>, <span class="name">greeting</span>) }
   }</pre>

.. raw:: html

   <p>

See also Internationalization and Localization with Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qsTranslateNoOp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="quaternion-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

quaternion(real scalar, real x, real y, real z)

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

Returns a Quaternion with the specified scalar, x, y, and z.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@quaternion -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="quit-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

quit()

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

This function causes the QQmlEngine::quit() signal to be emitted. Within
the Prototyping with qmlscene, this causes the launcher application to
exit; to quit a C++ application when this method is called, connect the
QQmlEngine::quit() signal to the QCoreApplication::quit() slot.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@quit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

rect rect(int x, int y, int width, int height)

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

Returns a rect with the top-left corner at x, y and the specified width
and height.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned object has x, y, width and height attributes with the given
values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resolvedUrl-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

url resolvedUrl(url url)

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

Returns url resolved relative to the URL of the caller.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resolvedUrl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rgba-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

color rgba(real red, real green, real blue, real alpha)

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

Returns a color with the specified red, green, blue and alpha
components. All components should be in the range 0-1 inclusive.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rgba -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="size-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

size(int width, int height)

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

Returns a Size with the specified width and height.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@size -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tint-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

color tint(color baseColor, color tintColor)

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

This function allows tinting one color with another.

.. raw:: html

   </p>

.. raw:: html

   <p>

The tint color should usually be mostly transparent, or you will not be
able to see the underlying color. The below example provides a slight
red tint by having the tint color be pure red which is only 1/16th
opaque.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="type">Rectangle</span> {
   <span class="name">x</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   }
   <span class="type">Rectangle</span> {
   <span class="name">x</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">tint</span>(<span class="string">&quot;lightsteelblue&quot;</span>, <span class="string">&quot;#10FF0000&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Tint is most useful when a subtle change is intended to be conveyed due
to some event; you can then use tinting to more effectively tune the
visible color.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="vector2d-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

vector2d(real x, real y)

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

Returns a Vector2D with the specified x and y.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@vector2d -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="vector3d-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

vector3d(real x, real y, real z)

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

Returns a Vector3D with the specified x, y and z.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@vector3d -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="vector4d-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

vector4d(real x, real y, real z, real w)

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

Returns a Vector4D with the specified x, y, z and w.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@vector4d -->


