QtQuick.FontMetrics
===================

.. raw:: html

   <p>

Provides metrics for a given font More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FontMetrics -->

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

ascent : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

averageCharacterWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

descent : real

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

leading : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineSpacing : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumCharacterWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumLeftBearing : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumRightBearing : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

overlinePosition : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

strikeOutPosition : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

underlinePosition : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

xHeight : real

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

qreal advanceWidth(string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rect boundingRect(string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string elidedText(string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rect tightBoundingRect(string text)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$FontMetrics-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

FontMetrics calculates the size of characters and strings for a given
font.

.. raw:: html

   </p>

.. raw:: html

   <p>

It provides a subset of the C++ QFontMetricsF API, with the added
ability to change the font that is used for calculations via the font
property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">FontMetrics {
   id: fontMetrics
   font<span class="operator">.</span>family: <span class="string">&quot;Arial&quot;</span>
   }
   Rectangle {
   width: fontMetrics<span class="operator">.</span>height <span class="operator">*</span> <span class="number">4</span>
   height: fontMetrics<span class="operator">.</span>height <span class="operator">*</span> <span class="number">2</span>
   }</pre>

.. raw:: html

   <p>

See also QFontMetricsF and TextMetrics.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FontMetrics -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$ascent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ascent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ascent : real

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

This property holds the ascent of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::ascent(), descent, and height.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ascent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="averageCharacterWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

averageCharacterWidth : real

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

This property holds the average width of glyphs in the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::averageCharWidth().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@averageCharacterWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="descent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

descent : real

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

This property holds the descent of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::descent(), ascent, and height.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@descent -->

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

This property holds the height of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::height().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@height -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="leading-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

leading : real

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

This property holds the leading of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::leading().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@leading -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineSpacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineSpacing : real

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

This property holds the distance from one base line to the next.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::lineSpacing().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineSpacing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineWidth : real

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

This property holds the width of the underline and strikeout lines,
adjusted for the point size of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::lineWidth().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumCharacterWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumCharacterWidth : real

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

This property holds the width of the widest character in the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::maxWidth().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumCharacterWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumLeftBearing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumLeftBearing : real

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

This property holds the minimum left bearing of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::minLeftBearing().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumLeftBearing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumRightBearing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumRightBearing : real

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

This property holds the minimum right bearing of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::minRightBearing().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumRightBearing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="overlinePosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

overlinePosition : real

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

This property holds the distance from the base line to where an overline
should be drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::overlinePos(), underlinePosition, and
strikeOutPosition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@overlinePosition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="strikeOutPosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

strikeOutPosition : real

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

This property holds the distance from the base line to where the
strikeout line should be drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::strikeOutPos(), overlinePosition, and
underlinePosition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@strikeOutPosition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="underlinePosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

underlinePosition : real

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

This property holds the distance from the base line to where an
underscore should be drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::underlinePos(), overlinePosition, and
strikeOutPosition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@underlinePosition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="xHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

xHeight : real

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

This property holds the 'x' height of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::xHeight().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@xHeight -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$advanceWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="advanceWidth-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

qreal advanceWidth(string text)

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

This method returns the advance in pixels of the characters in text.
This is the distance from the position of the string to where the next
string should be drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is offered as an imperative alternative to the advanceWidth
property of TextMetrics.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::width() and height().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@advanceWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="boundingRect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

rect boundingRect(string text)

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

This method returns the bounding rectangle of the characters in the
string specified by text.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is offered as an imperative alternative to the boundingRect
property of TextMetrics.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::boundingRect() and tightBoundingRect().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@boundingRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="elidedText-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string elidedText(string text)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@elidedText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tightBoundingRect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

rect tightBoundingRect(string text)

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

This method returns a tight bounding rectangle around the characters in
the string specified by text.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is offered as an imperative alternative to the
tightBoundingRect property of TextMetrics.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFontMetricsF::tightBoundingRect() and boundingRect().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tightBoundingRect -->


