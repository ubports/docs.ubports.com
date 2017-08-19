Ubuntu.Components.PickerPanel
=============================

.. raw:: html

   <p>

Provides a panel for opening a DatePicker in place of the input panel or
as Popover, depending on the form factor. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PickerPanel -->

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

openDatePicker(caller, property, mode)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PickerPanel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PickerPanel is a singleton component designed to open a DatePicker in
the input panel area or in a Popover, depending on the form factor,
following the design guides on date pickers.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type">MainWindow</span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;PickerPanel&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">dateButton</span>
   property <span class="type"><a href="http://doc.qt.io/qt-5/qml-date.html">date</a></span> <span class="name">date</span>: new <span class="name">Date</span>()
   <span class="name">text</span>: <span class="name">Qt</span>.<span class="name">formatDateTime</span>(<span class="name">date</span>, <span class="string">&quot;yyyy/MMMM&quot;</span>)
   <span class="name">onClicked</span>: <span class="name">PickerPanel</span>.<span class="name">openDatePicker</span>(<span class="name">dateButton</span>, <span class="string">&quot;date&quot;</span>, <span class="string">&quot;Years|Months&quot;</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

The opened panel is closed automatically when the user taps/presses
outside of the panel or Popover area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PickerPanel -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$openDatePicker -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="openDatePicker-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

openDatePicker( caller, property, mode)

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

The function opens a DatePicker component in the input method area or in
a popover, depending on the availability of an input method provider in
the system and whether the size of the main screen width/height defines
a phone form factor. The picked date will be read from and reported to
the property of the caller as date type. This implies that the caller
must have defined the given property of type date.

.. raw:: html

   </p>

.. raw:: html

   <p>

On failure, the function returns null. On success, the returned object
has the following properties:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Object {
   property DatePicker picker
   property string pickerMode
   property date date
   property Item caller
   property string callerProperty
   signal closed()
   }</pre>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Property

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

picker

.. raw:: html

   </td>

.. raw:: html

   <td>

instance of the DatePicker component shown in the panel/popup

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

pickerMode

.. raw:: html

   </td>

.. raw:: html

   <td>

represents the DatePicker::mode to be used. This is an optional
parameter and if not defined, the default mode will be used.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

date

.. raw:: html

   </td>

.. raw:: html

   <td>

represents the date selected

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

caller

.. raw:: html

   </td>

.. raw:: html

   <td>

the instance of the component opening the panel

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

callerProperty

.. raw:: html

   </td>

.. raw:: html

   <td>

the property of the caller holding the date value which will be updated
by the picker.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Signal

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

closed()

.. raw:: html

   </td>

.. raw:: html

   <td>

the signal is emitted when the panel or popover gets closed. The signal
is handy when actions are performed upon panel close.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@openDatePicker -->


