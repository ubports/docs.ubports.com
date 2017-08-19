QtQuick.TextMetrics
===================

.. raw:: html

   <p>

Provides metrics for a given font and text More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TextMetrics -->

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

import QtQuick 2.4

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

Qt 5.4

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

advanceWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

boundingRect : rect

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

elide : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

elideWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font : font

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

height : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tightBoundingRect : rect

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

width : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TextMetrics-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

TextMetrics calculates various properties of a given string of text for
a particular font.

.. raw:: html

   </p>

.. raw:: html

   <p>

It provides a declarative API for the functions in QFontMetricsF which
take arguments.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TextMetrics {
   id: textMetrics
   font<span class="operator">.</span>family: <span class="string">&quot;Arial&quot;</span>
   elide: Text<span class="operator">.</span>ElideMiddle
   elideWidth: <span class="number">100</span>
   text: <span class="string">&quot;Hello World&quot;</span>
   }
   MyItem {
   text: textMetrics<span class="operator">.</span>elidedText
   }</pre>

.. raw:: html

   <p>

See also QFontMetricsF and FontMetrics.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TextMetrics -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$advanceWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="advanceWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

advanceWidth : real

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

This property holds the advance in pixels of the characters in text.
This is the distance from the position of the string to where the next
string should be drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::width().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@advanceWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="boundingRect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

boundingRect : rect

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

This property holds the bounding rectangle of the characters in the
string specified by text.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::boundingRect() and tightBoundingRect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@boundingRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="elide-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

elide : enumeration

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

This property holds the elide mode of the text. This determines the
position in which the string is elided. The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt::ElideNone - No eliding; this is the default value.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt::ElideLeft - For example: "...World"

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt::ElideMiddle - For example: "He...ld"

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt::ElideRight - For example: "Hello..."

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also elideWidth and elidedText.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@elide -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="elideWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

elideWidth : real

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

This property holds the largest width the text can have (in pixels)
before eliding will occur.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also elide and elidedText.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@elideWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font : font

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

This property holds the font used for the metrics calculations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="height-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

height : real

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

This property holds the height of the bounding rectangle of the
characters in the string specified by text. It is equivalent to:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">textMetrics<span class="operator">.</span>boundingRect<span class="operator">.</span>height</pre>

.. raw:: html

   <p>

See also boundingRect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@height -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : string

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

This property holds the text used for the metrics calculations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tightBoundingRect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

tightBoundingRect : rect

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

This property holds a tight bounding rectangle around the characters in
the string specified by text.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::tightBoundingRect() and boundingRect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tightBoundingRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="width-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

width : real

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

This property holds the width of the bounding rectangle of the
characters in the string specified by text. It is equivalent to:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">textMetrics<span class="operator">.</span>boundingRect<span class="operator">.</span>width</pre>

.. raw:: html

   <p>

See also boundingRect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@width -->


