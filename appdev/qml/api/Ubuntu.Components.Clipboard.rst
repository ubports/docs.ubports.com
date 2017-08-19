Ubuntu.Components.Clipboard
===========================

.. raw:: html

   <p>

This is a singleton type providing access to the system clipboard.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Clipboard -->

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

data : MimeData

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

dataChanged()

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

clear()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

MimeData newData()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

push(var data)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Clipboard-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Clipboard data can be retrieved through data property, which returns an
object of MimeData type. The actual content of the clipboard can be
accessed through this object. Data can be pushed to the clipboard using
push() function.

.. raw:: html

   </p>

.. raw:: html

   <p>

The clipboard data cannot be modified through the type returned by the
data property, for this a new instance of MimeData type must be used.
This instance can be either a standalone MimeDala component or an object
created using newData() function. Remember that standalone MimeData
types duplicate the clipboard data which may cause extensive memory use.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples of use:

.. raw:: html

   </p>

.. raw:: html

   <p>

1. Using standard MimeType component - the following example copies the
   selected text from the text area into the clipboard pushing also a
   color

   .. raw:: html

      </p>

   .. raw:: html

      <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
      <span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
      <span class="name">id</span>: <span class="name">editor</span>
      }
      <span class="type"><a href="Ubuntu.Components.MimeData.md">MimeData</a></span> {
      <span class="name">id</span>: <span class="name">mimeData</span>
      <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
      <span class="name">text</span>: <span class="name">editor</span>.<span class="name">text</span>
      }
      <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
      <span class="name">text</span>: <span class="string">&quot;Copy&quot;</span>
      <span class="name">onClicked</span>: <span class="name">Clipboard</span>.<span class="name">push</span>(<span class="name">mimeData</span>)
      }
      }</pre>

   .. raw:: html

      <p>

   2. Pushing data straight to clipboard

      .. raw:: html

         </p>

      .. raw:: html

         <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
         <span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
         <span class="name">id</span>: <span class="name">editor</span>
         }
         <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
         <span class="name">text</span>: <span class="string">&quot;Copy&quot;</span>
         <span class="name">onClicked</span>: {
         <span class="name">Clipboard</span>.<span class="name">push</span>(<span class="name">editor</span>.<span class="name">text</span>);
         <span class="name">Clipboard</span>.<span class="name">push</span>([<span class="string">&quot;application/x-color&quot;</span>, <span class="string">&quot;green&quot;</span>]);
         }
         }
         }</pre>

      .. raw:: html

         <p>

      3. Pushing data using MimeData object

         .. raw:: html

            </p>

         .. raw:: html

            <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
            <span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
            <span class="name">id</span>: <span class="name">editor</span>
            }
            <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
            <span class="name">text</span>: <span class="string">&quot;Copy&quot;</span>
            <span class="name">onClicked</span>: {
            var <span class="name">mimeData</span> = <span class="name">Clipboard</span>.<span class="name">newData</span>();
            <span class="name">mimeData</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">editor</span>.<span class="name">text</span>;
            <span class="name">mimeData</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;green&quot;</span>;
            <span class="name">Clipboard</span>.<span class="name">push</span>(<span class="name">mimeData</span>);
            }
            }
            }</pre>

         .. raw:: html

            <!-- @@@Clipboard -->

         .. raw:: html

            <h2>

         Property Documentation

         .. raw:: html

            </h2>

         .. raw:: html

            <!-- $$$data -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="data-prop">

         .. raw:: html

            <td class="tblQmlPropNode">

         .. raw:: html

            <p>

         data : MimeData

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

         Provides access to the Clipboard's current data.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@data -->

         .. raw:: html

            <h2>

         Signal Documentation

         .. raw:: html

            </h2>

         .. raw:: html

            <!-- $$$dataChanged -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="dataChanged-signal">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         dataChanged()

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

         The signal is triggered when clipboard content gets changed.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@dataChanged -->

         .. raw:: html

            <h2>

         Method Documentation

         .. raw:: html

            </h2>

         .. raw:: html

            <!-- $$$clear -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="clear-method">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         clear()

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

         The function clears the clipboard content.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@clear -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="newData-method">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         MimeData newData()

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

         The function returns a new MimeData object that can be used in
         Java script code to push pultiple MIME types at the same time.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@newData -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="push-method">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         push(var data)

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

         The function copies data provided as parameter to the
         clipboard. The parameter can be a MimeData instance or object
         created using newData() beside the ones listed at
         MimeData::data.

         .. raw:: html

            </p>

         .. raw:: html

            <p>

         When MimeData instance or object is given, the entire object
         content will be pushed to the clipboard.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@push -->
