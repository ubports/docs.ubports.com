Provides metrics for a given font and text

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.4               |
+---------------------+----------------------+

Properties
----------

-  ****`advanceWidth </sdk/apps/qml/QtQuick/TextMetrics#advanceWidth-prop>`__****
   : real
-  ****`boundingRect </sdk/apps/qml/QtQuick/TextMetrics#boundingRect-prop>`__****
   : rect
-  ****`elide </sdk/apps/qml/QtQuick/TextMetrics#elide-prop>`__**** :
   enumeration
-  ****`elideWidth </sdk/apps/qml/QtQuick/TextMetrics#elideWidth-prop>`__****
   : real
-  ****`font </sdk/apps/qml/QtQuick/TextMetrics#font-prop>`__**** : font
-  ****`height </sdk/apps/qml/QtQuick/TextMetrics#height-prop>`__**** :
   real
-  ****`text </sdk/apps/qml/QtQuick/TextMetrics#text-prop>`__**** :
   string
-  ****`tightBoundingRect </sdk/apps/qml/QtQuick/TextMetrics#tightBoundingRect-prop>`__****
   : rect
-  ****`width </sdk/apps/qml/QtQuick/TextMetrics#width-prop>`__**** :
   real

Detailed Description
--------------------

`TextMetrics </sdk/apps/qml/QtQuick/TextMetrics/>`__ calculates various
properties of a given string of text for a particular font.

It provides a declarative API for the functions in QFontMetricsF which
take arguments.

.. code:: cpp

    TextMetrics {
        id: textMetrics
        font.family: "Arial"
        elide: Text.ElideMiddle
        elideWidth: 100
        text: "Hello World"
    }
    MyItem {
        text: textMetrics.elidedText
    }

**See also** QFontMetricsF and
`FontMetrics </sdk/apps/qml/QtQuick/FontMetrics/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ advanceWidth : real                                             |
+--------------------------------------------------------------------------+

This property holds the advance in pixels of the characters in
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__. This is the
distance from the position of the string to where the next string should
be drawn.

**See also** QFontMetricsF::width().

| 

+--------------------------------------------------------------------------+
|        \ boundingRect : rect                                             |
+--------------------------------------------------------------------------+

This property holds the bounding rectangle of the characters in the
string specified by
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__.

**See also** QFontMetricsF::boundingRect() and
`tightBoundingRect </sdk/apps/qml/QtQuick/TextMetrics#tightBoundingRect-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ elide : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the elide mode of the text. This determines the
position in which the string is elided. The possible values are:

-  ``Qt::ElideNone`` - No eliding; this is the default value.
-  ``Qt::ElideLeft`` - For example: "...World"
-  ``Qt::ElideMiddle`` - For example: "He...ld"
-  ``Qt::ElideRight`` - For example: "Hello..."

**See also**
`elideWidth </sdk/apps/qml/QtQuick/TextMetrics#elideWidth-prop>`__ and
elidedText.

| 

+--------------------------------------------------------------------------+
|        \ elideWidth : real                                               |
+--------------------------------------------------------------------------+

This property holds the largest width the text can have (in pixels)
before eliding will occur.

**See also** `elide </sdk/apps/qml/QtQuick/TextMetrics#elide-prop>`__
and elidedText.

| 

+--------------------------------------------------------------------------+
|        \ font : `font </sdk/apps/qml/QtQuick/TextMetrics#font-prop>`__   |
+--------------------------------------------------------------------------+

This property holds the font used for the metrics calculations.

| 

+--------------------------------------------------------------------------+
|        \ height : real                                                   |
+--------------------------------------------------------------------------+

This property holds the height of the bounding rectangle of the
characters in the string specified by
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__. It is
equivalent to:

.. code:: cpp

    textMetrics.boundingRect.height

**See also**
`boundingRect </sdk/apps/qml/QtQuick/TextMetrics#boundingRect-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

This property holds the text used for the metrics calculations.

| 

+--------------------------------------------------------------------------+
|        \ tightBoundingRect : rect                                        |
+--------------------------------------------------------------------------+

This property holds a tight bounding rectangle around the characters in
the string specified by
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__.

**See also** QFontMetricsF::tightBoundingRect() and
`boundingRect </sdk/apps/qml/QtQuick/TextMetrics#boundingRect-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ width : real                                                    |
+--------------------------------------------------------------------------+

This property holds the width of the bounding rectangle of the
characters in the string specified by
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__. It is
equivalent to:

.. code:: cpp

    textMetrics.boundingRect.width

**See also**
`boundingRect </sdk/apps/qml/QtQuick/TextMetrics#boundingRect-prop>`__.

| 
