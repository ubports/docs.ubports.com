.. _sdk_qtquick_textmetrics:

QtQuick TextMetrics
===================

Provides metrics for a given font and text

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.4               |
+---------------------+----------------------+

Properties
----------

-  :ref:`advanceWidth <sdk_qtquick_textmetrics_advanceWidth>` : real
-  :ref:`boundingRect <sdk_qtquick_textmetrics_boundingRect>` : rect
-  :ref:`elide <sdk_qtquick_textmetrics_elide>` : enumeration
-  :ref:`elideWidth <sdk_qtquick_textmetrics_elideWidth>` : real
-  :ref:`font <sdk_qtquick_textmetrics_font>` : font
-  :ref:`height <sdk_qtquick_textmetrics_height>` : real
-  :ref:`text <sdk_qtquick_textmetrics_text>` : string
-  :ref:`tightBoundingRect <sdk_qtquick_textmetrics_tightBoundingRect>` : rect
-  :ref:`width <sdk_qtquick_textmetrics_width>` : real

Detailed Description
--------------------

:ref:`TextMetrics <sdk_qtquick_textmetrics>` calculates various properties of a given string of text for a particular font.

It provides a declarative API for the functions in QFontMetricsF which take arguments.

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

**See also** QFontMetricsF and :ref:`FontMetrics <sdk_qtquick_fontmetrics>`.

Property Documentation
----------------------

.. _sdk_qtquick_textmetrics_advanceWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| advanceWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the advance in pixels of the characters in `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ . This is the distance from the position of the string to where the next string should be drawn.

**See also** QFontMetricsF::width().

.. _sdk_qtquick_textmetrics_boundingRect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| boundingRect : rect                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the bounding rectangle of the characters in the string specified by `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ .

**See also** QFontMetricsF::boundingRect() and :ref:`tightBoundingRect <sdk_qtquick_textmetrics_tightBoundingRect>`.

.. _sdk_qtquick_textmetrics_elide:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| elide : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the elide mode of the text. This determines the position in which the string is elided. The possible values are:

-  ``Qt::ElideNone`` - No eliding; this is the default value.
-  ``Qt::ElideLeft`` - For example: "...World"
-  ``Qt::ElideMiddle`` - For example: "He...ld"
-  ``Qt::ElideRight`` - For example: "Hello..."

**See also** :ref:`elideWidth <sdk_qtquick_textmetrics_elideWidth>` and elidedText.

.. _sdk_qtquick_textmetrics_elideWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| elideWidth : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the largest width the text can have (in pixels) before eliding will occur.

**See also** :ref:`elide <sdk_qtquick_textmetrics_elide>` and elidedText.

.. _sdk_qtquick_textmetrics_font:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font : :ref:`font <sdk_qtquick_textmetrics_font>`                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the font used for the metrics calculations.

.. _sdk_qtquick_textmetrics_height:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| height : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the height of the bounding rectangle of the characters in the string specified by `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ . It is equivalent to:

.. code:: cpp

    textMetrics.boundingRect.height

**See also** :ref:`boundingRect <sdk_qtquick_textmetrics_boundingRect>`.

.. _sdk_qtquick_textmetrics_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the text used for the metrics calculations.

.. _sdk_qtquick_textmetrics_tightBoundingRect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| tightBoundingRect : rect                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a tight bounding rectangle around the characters in the string specified by `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ .

**See also** QFontMetricsF::tightBoundingRect() and :ref:`boundingRect <sdk_qtquick_textmetrics_boundingRect>`.

.. _sdk_qtquick_textmetrics_width:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| width : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the width of the bounding rectangle of the characters in the string specified by `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ . It is equivalent to:

.. code:: cpp

    textMetrics.boundingRect.width

**See also** :ref:`boundingRect <sdk_qtquick_textmetrics_boundingRect>`.

