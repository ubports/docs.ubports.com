.. _sdk_qtquick_fontmetrics:
QtQuick FontMetrics
===================

Provides metrics for a given font

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.4               |
+---------------------+----------------------+

Properties
----------

-  :ref:`ascent <sdk_qtquick_fontmetrics_ascent-prop>` : real
-  :ref:`averageCharacterWidth <sdk_qtquick_fontmetrics_averageCharacterWidth-prop>`
   : real
-  :ref:`descent <sdk_qtquick_fontmetrics_descent-prop>` : real
-  :ref:`font <sdk_qtquick_fontmetrics_font-prop>` : font
-  :ref:`height <sdk_qtquick_fontmetrics_height-prop>` : real
-  :ref:`leading <sdk_qtquick_fontmetrics_leading-prop>` : real
-  :ref:`lineSpacing <sdk_qtquick_fontmetrics_lineSpacing-prop>` :
   real
-  :ref:`lineWidth <sdk_qtquick_fontmetrics_lineWidth-prop>` : real
-  :ref:`maximumCharacterWidth <sdk_qtquick_fontmetrics_maximumCharacterWidth-prop>`
   : real
-  :ref:`minimumLeftBearing <sdk_qtquick_fontmetrics_minimumLeftBearing-prop>`
   : real
-  :ref:`minimumRightBearing <sdk_qtquick_fontmetrics_minimumRightBearing-prop>`
   : real
-  :ref:`overlinePosition <sdk_qtquick_fontmetrics_overlinePosition-prop>`
   : real
-  :ref:`strikeOutPosition <sdk_qtquick_fontmetrics_strikeOutPosition-prop>`
   : real
-  :ref:`underlinePosition <sdk_qtquick_fontmetrics_underlinePosition-prop>`
   : real
-  :ref:`xHeight <sdk_qtquick_fontmetrics_xHeight-prop>` : real

Methods
-------

-  qreal
   **:ref:`advanceWidth <sdk_qtquick_fontmetrics#advanceWidth-method>`**\ (string
   *text*)
-  rect
   **:ref:`boundingRect <sdk_qtquick_fontmetrics#boundingRect-method>`**\ (string
   *text*)
-  string
   **:ref:`elidedText <sdk_qtquick_fontmetrics#elidedText-method>`**\ (string
   *text*)
-  rect
   **:ref:`tightBoundingRect <sdk_qtquick_fontmetrics#tightBoundingRect-method>`**\ (string
   *text*)

Detailed Description
--------------------

:ref:`FontMetrics <sdk_qtquick_fontmetrics>` calculates the size of
characters and strings for a given font.

It provides a subset of the C++ QFontMetricsF API, with the added
ability to change the font that is used for calculations via the
:ref:`font <sdk_qtquick_fontmetrics#font-prop>` property.

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
:ref:`TextMetrics <sdk_qtquick_textmetrics>`.

Property Documentation
----------------------

.. _sdk_qtquick_fontmetrics_ascent-prop:

+--------------------------------------------------------------------------+
|        \ ascent : real                                                   |
+--------------------------------------------------------------------------+

This property holds the ascent of the font.

**See also** QFontMetricsF::ascent(),
:ref:`descent <sdk_qtquick_fontmetrics#descent-prop>`, and
:ref:`height <sdk_qtquick_fontmetrics#height-prop>`.

| 

.. _sdk_qtquick_fontmetrics_averageCharacterWidth-prop:

+--------------------------------------------------------------------------+
|        \ averageCharacterWidth : real                                    |
+--------------------------------------------------------------------------+

This property holds the average width of glyphs in the font.

**See also** QFontMetricsF::averageCharWidth().

| 

.. _sdk_qtquick_fontmetrics_descent-prop:

+--------------------------------------------------------------------------+
|        \ descent : real                                                  |
+--------------------------------------------------------------------------+

This property holds the descent of the font.

**See also** QFontMetricsF::descent(),
:ref:`ascent <sdk_qtquick_fontmetrics#ascent-prop>`, and
:ref:`height <sdk_qtquick_fontmetrics#height-prop>`.

| 

.. _sdk_qtquick_fontmetrics_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ font : `font <sdk_qtquick_fontmetrics#font-prop>`          |
+--------------------------------------------------------------------------+

This property holds the font used for the metrics calculations.

| 

.. _sdk_qtquick_fontmetrics_height-prop:

+--------------------------------------------------------------------------+
|        \ height : real                                                   |
+--------------------------------------------------------------------------+

This property holds the height of the font.

**See also** QFontMetricsF::height().

| 

.. _sdk_qtquick_fontmetrics_leading-prop:

+--------------------------------------------------------------------------+
|        \ leading : real                                                  |
+--------------------------------------------------------------------------+

This property holds the leading of the font.

**See also** QFontMetricsF::leading().

| 

.. _sdk_qtquick_fontmetrics_lineSpacing-prop:

+--------------------------------------------------------------------------+
|        \ lineSpacing : real                                              |
+--------------------------------------------------------------------------+

This property holds the distance from one base line to the next.

**See also** QFontMetricsF::lineSpacing().

| 

.. _sdk_qtquick_fontmetrics_lineWidth-prop:

+--------------------------------------------------------------------------+
|        \ lineWidth : real                                                |
+--------------------------------------------------------------------------+

This property holds the width of the underline and strikeout lines,
adjusted for the point size of the font.

**See also** QFontMetricsF::lineWidth().

| 

.. _sdk_qtquick_fontmetrics_maximumCharacterWidth-prop:

+--------------------------------------------------------------------------+
|        \ maximumCharacterWidth : real                                    |
+--------------------------------------------------------------------------+

This property holds the width of the widest character in the font.

**See also** QFontMetricsF::maxWidth().

| 

.. _sdk_qtquick_fontmetrics_minimumLeftBearing-prop:

+--------------------------------------------------------------------------+
|        \ minimumLeftBearing : real                                       |
+--------------------------------------------------------------------------+

This property holds the minimum left bearing of the font.

**See also** QFontMetricsF::minLeftBearing().

| 

.. _sdk_qtquick_fontmetrics_minimumRightBearing-prop:

+--------------------------------------------------------------------------+
|        \ minimumRightBearing : real                                      |
+--------------------------------------------------------------------------+

This property holds the minimum right bearing of the font.

**See also** QFontMetricsF::minRightBearing().

| 

.. _sdk_qtquick_fontmetrics_overlinePosition-prop:

+--------------------------------------------------------------------------+
|        \ overlinePosition : real                                         |
+--------------------------------------------------------------------------+

This property holds the distance from the base line to where an overline
should be drawn.

**See also** QFontMetricsF::overlinePos(),
:ref:`underlinePosition <sdk_qtquick_fontmetrics#underlinePosition-prop>`,
and
:ref:`strikeOutPosition <sdk_qtquick_fontmetrics#strikeOutPosition-prop>`.

| 

.. _sdk_qtquick_fontmetrics_strikeOutPosition-prop:

+--------------------------------------------------------------------------+
|        \ strikeOutPosition : real                                        |
+--------------------------------------------------------------------------+

This property holds the distance from the base line to where the
strikeout line should be drawn.

**See also** QFontMetricsF::strikeOutPos(),
:ref:`overlinePosition <sdk_qtquick_fontmetrics#overlinePosition-prop>`,
and
:ref:`underlinePosition <sdk_qtquick_fontmetrics#underlinePosition-prop>`.

| 

.. _sdk_qtquick_fontmetrics_underlinePosition-prop:

+--------------------------------------------------------------------------+
|        \ underlinePosition : real                                        |
+--------------------------------------------------------------------------+

This property holds the distance from the base line to where an
underscore should be drawn.

**See also** QFontMetricsF::underlinePos(),
:ref:`overlinePosition <sdk_qtquick_fontmetrics#overlinePosition-prop>`,
and
:ref:`strikeOutPosition <sdk_qtquick_fontmetrics#strikeOutPosition-prop>`.

| 

.. _sdk_qtquick_fontmetrics_xHeight-prop:

+--------------------------------------------------------------------------+
|        \ xHeight : real                                                  |
+--------------------------------------------------------------------------+

This property holds the 'x' height of the font.

**See also** QFontMetricsF::xHeight().

| 

Method Documentation
--------------------

.. _sdk_qtquick_fontmetrics_qreal advanceWidth-method:

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

.. _sdk_qtquick_fontmetrics_rect boundingRect-method:

+--------------------------------------------------------------------------+
|        \ rect boundingRect(string *text*)                                |
+--------------------------------------------------------------------------+

This method returns the bounding rectangle of the characters in the
string specified by *text*.

This method is offered as an imperative alternative to the boundingRect
property of TextMetrics.

**See also** QFontMetricsF::boundingRect() and
:ref:`tightBoundingRect() <sdk_qtquick_fontmetrics#tightBoundingRect-method>`.

| 

.. _sdk_qtquick_fontmetrics_string elidedText-method:

+--------------------------------------------------------------------------+
|        \ string elidedText(string *text*)                                |
+--------------------------------------------------------------------------+

| 

.. _sdk_qtquick_fontmetrics_rect tightBoundingRect-method:

+--------------------------------------------------------------------------+
|        \ rect tightBoundingRect(string *text*)                           |
+--------------------------------------------------------------------------+

This method returns a tight bounding rectangle around the characters in
the string specified by *text*.

This method is offered as an imperative alternative to the
tightBoundingRect property of TextMetrics.

**See also** QFontMetricsF::tightBoundingRect() and
:ref:`boundingRect() <sdk_qtquick_fontmetrics#boundingRect-method>`.

| 
