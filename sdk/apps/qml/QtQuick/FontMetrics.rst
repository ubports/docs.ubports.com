Provides metrics for a given font

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.4               |
+---------------------+----------------------+

Properties
----------

-  ****`ascent </sdk/apps/qml/QtQuick/FontMetrics#ascent-prop>`__**** :
   real
-  ****`averageCharacterWidth </sdk/apps/qml/QtQuick/FontMetrics#averageCharacterWidth-prop>`__****
   : real
-  ****`descent </sdk/apps/qml/QtQuick/FontMetrics#descent-prop>`__****
   : real
-  ****`font </sdk/apps/qml/QtQuick/FontMetrics#font-prop>`__**** : font
-  ****`height </sdk/apps/qml/QtQuick/FontMetrics#height-prop>`__**** :
   real
-  ****`leading </sdk/apps/qml/QtQuick/FontMetrics#leading-prop>`__****
   : real
-  ****`lineSpacing </sdk/apps/qml/QtQuick/FontMetrics#lineSpacing-prop>`__****
   : real
-  ****`lineWidth </sdk/apps/qml/QtQuick/FontMetrics#lineWidth-prop>`__****
   : real
-  ****`maximumCharacterWidth </sdk/apps/qml/QtQuick/FontMetrics#maximumCharacterWidth-prop>`__****
   : real
-  ****`minimumLeftBearing </sdk/apps/qml/QtQuick/FontMetrics#minimumLeftBearing-prop>`__****
   : real
-  ****`minimumRightBearing </sdk/apps/qml/QtQuick/FontMetrics#minimumRightBearing-prop>`__****
   : real
-  ****`overlinePosition </sdk/apps/qml/QtQuick/FontMetrics#overlinePosition-prop>`__****
   : real
-  ****`strikeOutPosition </sdk/apps/qml/QtQuick/FontMetrics#strikeOutPosition-prop>`__****
   : real
-  ****`underlinePosition </sdk/apps/qml/QtQuick/FontMetrics#underlinePosition-prop>`__****
   : real
-  ****`xHeight </sdk/apps/qml/QtQuick/FontMetrics#xHeight-prop>`__****
   : real

Methods
-------

-  qreal
   ****`advanceWidth </sdk/apps/qml/QtQuick/FontMetrics#advanceWidth-method>`__****\ (string
   *text*)
-  rect
   ****`boundingRect </sdk/apps/qml/QtQuick/FontMetrics#boundingRect-method>`__****\ (string
   *text*)
-  string
   ****`elidedText </sdk/apps/qml/QtQuick/FontMetrics#elidedText-method>`__****\ (string
   *text*)
-  rect
   ****`tightBoundingRect </sdk/apps/qml/QtQuick/FontMetrics#tightBoundingRect-method>`__****\ (string
   *text*)

Detailed Description
--------------------

`FontMetrics </sdk/apps/qml/QtQuick/FontMetrics/>`__ calculates the size
of characters and strings for a given font.

It provides a subset of the C++ QFontMetricsF API, with the added
ability to change the font that is used for calculations via the
`font </sdk/apps/qml/QtQuick/FontMetrics#font-prop>`__ property.

.. code:: cpp

    FontMetrics {
        id: fontMetrics
        font.family: "Arial"
    }
    Rectangle {
        width: fontMetrics.height * 4
        height: fontMetrics.height * 2
    }

**See also** QFontMetricsF and
`TextMetrics </sdk/apps/qml/QtQuick/TextMetrics/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ ascent : real                                                   |
+--------------------------------------------------------------------------+

This property holds the ascent of the font.

**See also** QFontMetricsF::ascent(),
`descent </sdk/apps/qml/QtQuick/FontMetrics#descent-prop>`__, and
`height </sdk/apps/qml/QtQuick/FontMetrics#height-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ averageCharacterWidth : real                                    |
+--------------------------------------------------------------------------+

This property holds the average width of glyphs in the font.

**See also** QFontMetricsF::averageCharWidth().

| 

+--------------------------------------------------------------------------+
|        \ descent : real                                                  |
+--------------------------------------------------------------------------+

This property holds the descent of the font.

**See also** QFontMetricsF::descent(),
`ascent </sdk/apps/qml/QtQuick/FontMetrics#ascent-prop>`__, and
`height </sdk/apps/qml/QtQuick/FontMetrics#height-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ font : `font </sdk/apps/qml/QtQuick/FontMetrics#font-prop>`__   |
+--------------------------------------------------------------------------+

This property holds the font used for the metrics calculations.

| 

+--------------------------------------------------------------------------+
|        \ height : real                                                   |
+--------------------------------------------------------------------------+

This property holds the height of the font.

**See also** QFontMetricsF::height().

| 

+--------------------------------------------------------------------------+
|        \ leading : real                                                  |
+--------------------------------------------------------------------------+

This property holds the leading of the font.

**See also** QFontMetricsF::leading().

| 

+--------------------------------------------------------------------------+
|        \ lineSpacing : real                                              |
+--------------------------------------------------------------------------+

This property holds the distance from one base line to the next.

**See also** QFontMetricsF::lineSpacing().

| 

+--------------------------------------------------------------------------+
|        \ lineWidth : real                                                |
+--------------------------------------------------------------------------+

This property holds the width of the underline and strikeout lines,
adjusted for the point size of the font.

**See also** QFontMetricsF::lineWidth().

| 

+--------------------------------------------------------------------------+
|        \ maximumCharacterWidth : real                                    |
+--------------------------------------------------------------------------+

This property holds the width of the widest character in the font.

**See also** QFontMetricsF::maxWidth().

| 

+--------------------------------------------------------------------------+
|        \ minimumLeftBearing : real                                       |
+--------------------------------------------------------------------------+

This property holds the minimum left bearing of the font.

**See also** QFontMetricsF::minLeftBearing().

| 

+--------------------------------------------------------------------------+
|        \ minimumRightBearing : real                                      |
+--------------------------------------------------------------------------+

This property holds the minimum right bearing of the font.

**See also** QFontMetricsF::minRightBearing().

| 

+--------------------------------------------------------------------------+
|        \ overlinePosition : real                                         |
+--------------------------------------------------------------------------+

This property holds the distance from the base line to where an overline
should be drawn.

**See also** QFontMetricsF::overlinePos(),
`underlinePosition </sdk/apps/qml/QtQuick/FontMetrics#underlinePosition-prop>`__,
and
`strikeOutPosition </sdk/apps/qml/QtQuick/FontMetrics#strikeOutPosition-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ strikeOutPosition : real                                        |
+--------------------------------------------------------------------------+

This property holds the distance from the base line to where the
strikeout line should be drawn.

**See also** QFontMetricsF::strikeOutPos(),
`overlinePosition </sdk/apps/qml/QtQuick/FontMetrics#overlinePosition-prop>`__,
and
`underlinePosition </sdk/apps/qml/QtQuick/FontMetrics#underlinePosition-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ underlinePosition : real                                        |
+--------------------------------------------------------------------------+

This property holds the distance from the base line to where an
underscore should be drawn.

**See also** QFontMetricsF::underlinePos(),
`overlinePosition </sdk/apps/qml/QtQuick/FontMetrics#overlinePosition-prop>`__,
and
`strikeOutPosition </sdk/apps/qml/QtQuick/FontMetrics#strikeOutPosition-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ xHeight : real                                                  |
+--------------------------------------------------------------------------+

This property holds the 'x' height of the font.

**See also** QFontMetricsF::xHeight().

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ qreal advanceWidth(string *text*)                               |
+--------------------------------------------------------------------------+

This method returns the advance in pixels of the characters in *text*.
This is the distance from the position of the string to where the next
string should be drawn.

This method is offered as an imperative alternative to the advanceWidth
property of TextMetrics.

**See also** QFontMetricsF::width() and height().

| 

+--------------------------------------------------------------------------+
|        \ rect boundingRect(string *text*)                                |
+--------------------------------------------------------------------------+

This method returns the bounding rectangle of the characters in the
string specified by *text*.

This method is offered as an imperative alternative to the boundingRect
property of TextMetrics.

**See also** QFontMetricsF::boundingRect() and
`tightBoundingRect() </sdk/apps/qml/QtQuick/FontMetrics#tightBoundingRect-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ string elidedText(string *text*)                                |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ rect tightBoundingRect(string *text*)                           |
+--------------------------------------------------------------------------+

This method returns a tight bounding rectangle around the characters in
the string specified by *text*.

This method is offered as an imperative alternative to the
tightBoundingRect property of TextMetrics.

**See also** QFontMetricsF::tightBoundingRect() and
`boundingRect() </sdk/apps/qml/QtQuick/FontMetrics#boundingRect-method>`__.

| 
