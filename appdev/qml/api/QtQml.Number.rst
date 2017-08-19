QtQml.Number
============

.. raw:: html

   <p>

The Number object provides represents a number value More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Number -->

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

string fromLocaleString(locale, number)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string toLocaleCurrencyString(locale, symbol)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string toLocaleString(locale, format, precision)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Number-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML Number object extends the JS Number object with locale aware
functions.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Number -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$fromLocaleString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fromLocaleString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string fromLocaleString(locale, number)

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

Returns a Number by parsing number using the conventions of the supplied
locale.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not supplied the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, using the German locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var german <span class="operator">=</span> <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>);
   var d;
   d <span class="operator">=</span> Number<span class="operator">.</span>fromLocaleString(german<span class="operator">,</span> <span class="string">&quot;1234,56)   // d == 1234.56
   d = Number.fromLocaleString(german, &quot;</span><span class="number">1.234</span><span class="operator">,</span><span class="number">56</span><span class="string">&quot;) // d == 1234.56
   d = Number.fromLocaleString(german, &quot;</span><span class="number">1234.56</span><span class="string">&quot;)  // throws exception
   d = Number.fromLocaleString(german, &quot;</span><span class="number">1.234</span><span class="string">&quot;)    // d == 1234.0
   </span></pre>

.. raw:: html

   <!-- @@@fromLocaleString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toLocaleCurrencyString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string toLocaleCurrencyString(locale, symbol)

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

Converts the Number to a currency using the currency and conventions of
the specified locale. If symbol is specified it will be used as the
currency symbol.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Locale::currencySymbol().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@toLocaleCurrencyString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toLocaleString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string toLocaleString(locale, format, precision)

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

Converts the Number to a string suitable for the specified locale in the
specified format, with the specified precision.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid formats are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

'f' Decimal floating point, e.g. 248.65

.. raw:: html

   </li>

.. raw:: html

   <li>

'e' Scientific notation using e character, e.g. 2.4865e+2

.. raw:: html

   </li>

.. raw:: html

   <li>

'E' Scientific notation using E character, e.g. 2.4865E+2

.. raw:: html

   </li>

.. raw:: html

   <li>

'g' Use the shorter of e or f

.. raw:: html

   </li>

.. raw:: html

   <li>

'G' Use the shorter of E or f

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If precision is not specified, the precision will be 2.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the format is not specified 'f' will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If locale is not specified, the default locale will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows a number formatted for the German locale:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Text {
   text: <span class="string">&quot;The value is: &quot;</span> <span class="operator">+</span>  Number(<span class="number">4742378.423</span>)<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
   }</pre>

.. raw:: html

   <p>

You can apply toLocaleString() directly to constants, provided the
decimal is included in the constant, e.g.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="number">123.0.toLocaleString</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>)) <span class="comment">// OK</span>
   <span class="number">123..toLocaleString</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))  <span class="comment">// OK</span>
   <span class="number">123.toLocaleString</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))   <span class="comment">// fails</span></pre>

.. raw:: html

   <!-- @@@toLocaleString -->


