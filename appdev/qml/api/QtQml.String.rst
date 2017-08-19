QtQml.String
============

.. raw:: html

   <p>

The String object represents a string value More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@String -->

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

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

string arg(value)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$String-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML String object extends the JS String object with the arg()
function.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ECMAScript Language Specification.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@String -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$arg -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="arg-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string arg(value)

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

Returns a copy of this string with the lowest numbered place marker
replaced by value, i.e., %1, %2, ..., %99. The following example prints
"There are 20 items"

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var message <span class="operator">=</span> <span class="string">&quot;There are %1 items&quot;</span>
   var count <span class="operator">=</span> <span class="number">20</span>
   console<span class="operator">.</span>log(message<span class="operator">.</span>arg(count))</pre>

.. raw:: html

   <!-- @@@arg -->


