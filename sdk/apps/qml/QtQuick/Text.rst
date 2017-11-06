.. _sdk_qtquick_text:

QtQuick Text
============

Specifies how to add formatted text to a scene

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`baseUrl <sdk_qtquick_text_baseUrl>` : url
-  :ref:`clip <sdk_qtquick_text_clip>` : bool
-  :ref:`color <sdk_qtquick_text_color>` : color
-  :ref:`contentHeight <sdk_qtquick_text_contentHeight>` : real
-  :ref:`contentWidth <sdk_qtquick_text_contentWidth>` : real
-  :ref:`effectiveHorizontalAlignment <sdk_qtquick_text_effectiveHorizontalAlignment>` : enumeration
-  :ref:`elide <sdk_qtquick_text_elide>` : enumeration
-  :ref:`font.bold <sdk_qtquick_text_font_bold>` : bool
-  :ref:`font.capitalization <sdk_qtquick_text_font_capitalization>` : enumeration
-  :ref:`font.family <sdk_qtquick_text_font_family>` : string
-  :ref:`font.italic <sdk_qtquick_text_font_italic>` : bool
-  :ref:`font.letterSpacing <sdk_qtquick_text_font_letterSpacing>` : real
-  :ref:`font.pixelSize <sdk_qtquick_text_font_pixelSize>` : int
-  :ref:`font.pointSize <sdk_qtquick_text_font_pointSize>` : real
-  :ref:`font.strikeout <sdk_qtquick_text_font_strikeout>` : bool
-  :ref:`font.underline <sdk_qtquick_text_font_underline>` : bool
-  :ref:`font.weight <sdk_qtquick_text_font_weight>` : enumeration
-  :ref:`font.wordSpacing <sdk_qtquick_text_font_wordSpacing>` : real
-  :ref:`fontSizeMode <sdk_qtquick_text_fontSizeMode>` : enumeration
-  :ref:`horizontalAlignment <sdk_qtquick_text_horizontalAlignment>` : enumeration
-  :ref:`hoveredLink <sdk_qtquick_text_hoveredLink>` : string
-  :ref:`lineCount <sdk_qtquick_text_lineCount>` : int
-  :ref:`lineHeight <sdk_qtquick_text_lineHeight>` : real
-  :ref:`lineHeightMode <sdk_qtquick_text_lineHeightMode>` : enumeration
-  :ref:`linkColor <sdk_qtquick_text_linkColor>` : color
-  :ref:`maximumLineCount <sdk_qtquick_text_maximumLineCount>` : int
-  :ref:`minimumPixelSize <sdk_qtquick_text_minimumPixelSize>` : int
-  :ref:`minimumPointSize <sdk_qtquick_text_minimumPointSize>` : int
-  :ref:`renderType <sdk_qtquick_text_renderType>` : enumeration
-  :ref:`style <sdk_qtquick_text_style>` : enumeration
-  :ref:`styleColor <sdk_qtquick_text_styleColor>` : color
-  :ref:`text <sdk_qtquick_text_text>` : string
-  :ref:`textFormat <sdk_qtquick_text_textFormat>` : enumeration
-  :ref:`truncated <sdk_qtquick_text_truncated>` : bool
-  :ref:`verticalAlignment <sdk_qtquick_text_verticalAlignment>` : enumeration
-  :ref:`wrapMode <sdk_qtquick_text_wrapMode>` : enumeration

Signals
-------

-  :ref:`lineLaidOut <sdk_qtquick_text_lineLaidOut>`\ (object *line*)
-  :ref:`linkActivated <sdk_qtquick_text_linkActivated>`\ (string *link*)
-  :ref:`linkHovered <sdk_qtquick_text_linkHovered>`\ (string *link*)

Methods
-------

-  :ref:`doLayout <sdk_qtquick_text_doLayout>`\ ()
-  :ref:`linkAt <sdk_qtquick_text_linkAt>`\ (real *x*, real *y*)

Detailed Description
--------------------

Text items can display both plain and rich text. For example, red text with a specific font and size can be defined like this:

.. code:: qml

    Text {
        text: "Hello World!"
        font.family: "Helvetica"
        font.pointSize: 24
        color: "red"
    }

Rich text is defined using HTML-style markup:

.. code:: qml

    Text {
        text: "<b>Hello</b> <i>World!</i>"
    }

If height and width are not explicitly set, Text will attempt to determine how much room is needed and set it accordingly. Unless :ref:`wrapMode <sdk_qtquick_text_wrapMode>` is set, it will always prefer width to height (all text will be placed on a single line).

The :ref:`elide <sdk_qtquick_text_elide>` property can alternatively be used to fit a single line of plain text to a set width.

Note that the Supported HTML Subset is limited. Also, if the text contains HTML img tags that load remote images, the text is reloaded.

Text provides read-only text. For editable text, see :ref:`TextEdit <sdk_qtquick_textedit>`.

**See also** `Fonts example </sdk/apps/qml/QtQuick/text/#fonts>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_text_baseUrl:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| baseUrl : url                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies a base URL which is used to resolve relative URLs within the text.

Urls are resolved to be within the same directory as the target of the base URL meaning any portion of the path after the last '/' will be ignored.

+--------------------------------------------+----------------------+-------------------------------------------------+
| Base URL                                   | Relative URL         | Resolved URL                                    |
+============================================+======================+=================================================+
| http://qt-project.org/                     | images/logo.png      | http://qt-project.org/images/logo.png           |
+--------------------------------------------+----------------------+-------------------------------------------------+
| http://qt-project.org/index.html           | images/logo.png      | http://qt-project.org/images/logo.png           |
+--------------------------------------------+----------------------+-------------------------------------------------+
| http://qt-project.org/content              | images/logo.png      | http://qt-project.org/content/images/logo.png   |
+--------------------------------------------+----------------------+-------------------------------------------------+
| http://qt-project.org/content/             | images/logo.png      | http://qt-project.org/content/images/logo.png   |
+--------------------------------------------+----------------------+-------------------------------------------------+
| http://qt-project.org/content/index.html   | images/logo.png      | http://qt-project.org/content/images/logo.png   |
+--------------------------------------------+----------------------+-------------------------------------------------+
| http://qt-project.org/content/index.html   | ../images/logo.png   | http://qt-project.org/images/logo.png           |
+--------------------------------------------+----------------------+-------------------------------------------------+
| http://qt-project.org/content/index.html   | /images/logo.png     | http://qt-project.org/images/logo.png           |
+--------------------------------------------+----------------------+-------------------------------------------------+

The default value is the url of the QML file instantiating the Text item.

.. _sdk_qtquick_text_clip:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clip : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the text is clipped.

Note that if the text does not fit in the bounding rectangle it will be abruptly chopped.

If you want to display potentially long text in a limited space, you probably want to use ``elide`` instead.

.. _sdk_qtquick_text_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text color.

An example of green text defined using hexadecimal notation:

.. code:: qml

    Text {
        color: "#00FF00"
        text: "green text"
    }

An example of steel blue text defined using an SVG color name:

.. code:: qml

    Text {
        color: "steelblue"
        text: "blue text"
    }

.. _sdk_qtquick_text_contentHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentHeight : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the height of the text, including height past the height which is covered due to there being more text than fits in the set height.

.. _sdk_qtquick_text_contentWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the width of the text, including width past the width which is covered due to insufficient wrapping if WrapMode is set.

.. _sdk_qtquick_text_effectiveHorizontalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveHorizontalAlignment : enumeration                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

The valid values for ``horizontalAlignment`` are ``Text.AlignLeft``, ``Text.AlignRight``, ``Text.AlignHCenter`` and ``Text.AlignJustify``. The valid values for ``verticalAlignment`` are ``Text.AlignTop``, ``Text.AlignBottom`` and ``Text.AlignVCenter``.

Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the :ref:`Item::anchors <sdk_qtquick_item_anchors>`, or set :ref:`horizontalAlignment <sdk_qtquick_text_horizontalAlignment>` to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_text_elide:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| elide : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to elide parts of the text fit to the Text item's width. The text will only elide if an explicit width has been set.

This property cannot be used with rich text.

Eliding can be:

-  Text.ElideNone - the default
-  Text.ElideLeft
-  Text.ElideMiddle
-  Text.ElideRight

If this property is set to Text.ElideRight, it can be used with :ref:`wrapped <sdk_qtquick_text_wrapMode>` text. The text will only elide if ``maximumLineCount``, or ``height`` has been set. If both ``maximumLineCount`` and ``height`` are set, ``maximumLineCount`` will apply unless the lines do not fit in the height allowed.

If the text is a multi-length string, and the mode is not ``Text.ElideNone``, the first string that fits will be used, otherwise the last will be elided.

Multi-length strings are ordered from longest to shortest, separated by the Unicode "String Terminator" character ``U009C`` (write this in QML with ``"\u009C"`` or ``"\x9C"``).

.. _sdk_qtquick_text_font_bold:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.bold : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font weight is bold.

.. _sdk_qtquick_text_font_capitalization:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.capitalization : enumeration                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the capitalization for the text.

-  Font.MixedCase - This is the normal text rendering option where no capitalization change is applied.
-  Font.AllUppercase - This alters the text to be rendered in all uppercase type.
-  Font.AllLowercase - This alters the text to be rendered in all lowercase type.
-  Font.SmallCaps - This alters the text to be rendered in small-caps type.
-  Font.Capitalize - This alters the text to be rendered with the first character of each word as an uppercase character.

.. code:: qml

    Text { text: "Hello"; font.capitalization: Font.AllLowercase }

.. _sdk_qtquick_text_font_family:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.family : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the family name of the font.

The family name is case insensitive and may optionally include a foundry name, e.g. "Helvetica [Cronyx]". If the family is available from more than one foundry and the foundry isn't specified, an arbitrary foundry is chosen. If the family isn't available a family will be set using the font matching algorithm.

.. _sdk_qtquick_text_font_italic:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.italic : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font has an italic style.

.. _sdk_qtquick_text_font_letterSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.letterSpacing : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the letter spacing for the font.

Letter spacing changes the default spacing between individual letters in the font. A positive value increases the letter spacing by the corresponding pixels; a negative value decreases the spacing.

.. _sdk_qtquick_text_font_pixelSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.pixelSize : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the font size in pixels.

Using this function makes the font device dependent. Use ``pointSize`` to set the size of the font in a device independent manner.

.. _sdk_qtquick_text_font_pointSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.pointSize : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the font size in points. The point size must be greater than zero.

.. _sdk_qtquick_text_font_strikeout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.strikeout : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font has a strikeout style.

.. _sdk_qtquick_text_font_underline:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.underline : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the text is underlined.

.. _sdk_qtquick_text_font_weight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.weight : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the font's weight.

The weight can be one of:

-  Font.Light
-  Font.Normal - the default
-  Font.DemiBold
-  Font.Bold
-  Font.Black

.. code:: qml

    Text { text: "Hello"; font.weight: Font.DemiBold }

.. _sdk_qtquick_text_font_wordSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.wordSpacing : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the word spacing for the font.

Word spacing changes the default spacing between individual words. A positive value increases the word spacing by a corresponding amount of pixels, while a negative value decreases the inter-word spacing accordingly.

.. _sdk_qtquick_text_fontSizeMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fontSizeMode : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies how the font size of the displayed text is determined. The possible values are:

-  Text.FixedSize (default) - The size specified by :ref:`font.pixelSize <sdk_qtquick_text_font_pixelSize>` or :ref:`font.pointSize <sdk_qtquick_text_font_pointSize>` is used.
-  Text.HorizontalFit - The largest size up to the size specified that fits within the width of the item without wrapping is used.
-  Text.VerticalFit - The largest size up to the size specified that fits the height of the item is used.
-  Text.Fit - The largest size up to the size specified that fits within the width and height of the item is used.

The font size of fitted text has a minimum bound specified by the :ref:`minimumPointSize <sdk_qtquick_text_minimumPointSize>` or :ref:`minimumPixelSize <sdk_qtquick_text_minimumPixelSize>` property and maximum bound specified by either the :ref:`font.pointSize <sdk_qtquick_text_font_pointSize>` or :ref:`font.pixelSize <sdk_qtquick_text_font_pixelSize>` properties.

.. code:: qml

    Text { text: "Hello"; fontSizeMode: Text.Fit; minimumPixelSize: 10; font.pixelSize: 72 }

If the text does not fit within the item bounds with the minimum font size the text will be elided as per the :ref:`elide <sdk_qtquick_text_elide>` property.

.. _sdk_qtquick_text_horizontalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| horizontalAlignment : enumeration                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

The valid values for ``horizontalAlignment`` are ``Text.AlignLeft``, ``Text.AlignRight``, ``Text.AlignHCenter`` and ``Text.AlignJustify``. The valid values for ``verticalAlignment`` are ``Text.AlignTop``, ``Text.AlignBottom`` and ``Text.AlignVCenter``.

Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the :ref:`Item::anchors <sdk_qtquick_item_anchors>`, or set horizontalAlignment to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_text_hoveredLink:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hoveredLink : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains the link string when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the *hoveredLink* string provides access to the particular link.

This QML property was introduced in Qt 5.2.

**See also** :ref:`linkHovered <sdk_qtquick_text_linkHovered>` and :ref:`linkAt() <sdk_qtquick_text_linkAt>`.

.. _sdk_qtquick_text_lineCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lineCount : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the number of lines visible in the text item.

This property is not supported for rich text.

**See also** :ref:`maximumLineCount <sdk_qtquick_text_maximumLineCount>`.

.. _sdk_qtquick_text_lineHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lineHeight : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the line height for the text. The value can be in pixels or a multiplier depending on :ref:`lineHeightMode <sdk_qtquick_text_lineHeightMode>`.

The default value is a multiplier of 1.0. The line height must be a positive value.

.. _sdk_qtquick_text_lineHeightMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lineHeightMode : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines how the line height is specified. The possible values are:

-  Text.ProportionalHeight (default) - this sets the spacing proportional to the line (as a multiplier). For example, set to 2 for double spacing.
-  Text.FixedHeight - this sets the line height to a fixed line height (in pixels).

.. _sdk_qtquick_text_linkColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkColor : color                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The color of links in the text.

This property works with the StyledText :ref:`textFormat <sdk_qtquick_text_textFormat>`, but not with RichText. Link color in RichText can be specified by including CSS style tags in the text.

.. _sdk_qtquick_text_maximumLineCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumLineCount : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to limit the number of lines that the text item will show. If elide is set to Text.ElideRight, the text will be elided appropriately. By default, this is the value of the largest possible integer.

This property is not supported for rich text.

**See also** :ref:`lineCount <sdk_qtquick_text_lineCount>` and :ref:`elide <sdk_qtquick_text_elide>`.

.. _sdk_qtquick_text_minimumPixelSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimumPixelSize : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies the minimum font pixel size of text scaled by the :ref:`fontSizeMode <sdk_qtquick_text_fontSizeMode>` property.

If the :ref:`fontSizeMode <sdk_qtquick_text_fontSizeMode>` is Text.FixedSize or the :ref:`font.pixelSize <sdk_qtquick_text_font_pixelSize>` is -1 this property is ignored.

.. _sdk_qtquick_text_minimumPointSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimumPointSize : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies the minimum font point size of text scaled by the :ref:`fontSizeMode <sdk_qtquick_text_fontSizeMode>` property.

If the :ref:`fontSizeMode <sdk_qtquick_text_fontSizeMode>` is Text.FixedSize or the :ref:`font.pointSize <sdk_qtquick_text_font_pointSize>` is -1 this property is ignored.

.. _sdk_qtquick_text_renderType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| renderType : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Override the default rendering type for this component.

Supported render types are:

-  Text.QtRendering - the default
-  Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.

.. _sdk_qtquick_text_style:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| style : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set an additional text style.

Supported text styles are:

-  Text.Normal - the default
-  Text.Outline
-  Text.Raised
-  Text.Sunken

.. code:: qml

    Row {
        Text { font.pointSize: 24; text: "Normal" }
        Text { font.pointSize: 24; text: "Raised"; style: Text.Raised; styleColor: "#AAAAAA" }
        Text { font.pointSize: 24; text: "Outline";style: Text.Outline; styleColor: "red" }
        Text { font.pointSize: 24; text: "Sunken"; style: Text.Sunken; styleColor: "#AAAAAA" }
    }

.. _sdk_qtquick_text_styleColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| styleColor : color                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the secondary color used by text styles.

``styleColor`` is used as the outline color for outlined text, and as the shadow color for raised or sunken text. If no style has been set, it is not used at all.

.. code:: qml

    Text { font.pointSize: 18; text: "hello"; style: Text.Raised; styleColor: "gray" }

**See also** :ref:`style <sdk_qtquick_text_style>`.

.. _sdk_qtquick_text_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text to display. Text supports both plain and rich text strings.

The item will try to automatically determine whether the text should be treated as styled text. This determination is made using Qt::mightBeRichText().

.. _sdk_qtquick_text_textFormat:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| textFormat : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The way the text property should be displayed.

Supported text formats are:

-  Text.AutoText (default)
-  Text.PlainText
-  Text.StyledText
-  Text.RichText

If the text format is ``Text.AutoText`` the Text item will automatically determine whether the text should be treated as styled text. This determination is made using Qt::mightBeRichText() which uses a fast and therefore simple heuristic. It mainly checks whether there is something that looks like a tag before the first line break. Although the result may be correct for common cases, there is no guarantee.

Text.StyledText is an optimized format supporting some basic text styling markup, in the style of HTML 3.2:

.. code:: cpp

    <b></b> - bold
    <strong></strong> - bold
    <i></i> - italic
    <br> - new line
    <p> - paragraph
    <u> - underlined text
    <font color="color_name" size="1-7"></font>
    <h1> to <h6> - headers
    <a href=""> - anchor
    <img src="" align="top,middle,bottom" width="" height=""> - inline images
    <ol type="">, <ul type=""> and <li> - ordered and unordered lists
    <pre></pre> - preformatted
    &gt; &lt; &amp;

``Text.StyledText`` parser is strict, requiring tags to be correctly nested.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     Column {                                                                                                                                           |                                                                                                                                                        |
|         Text {                                                                                                                                         |                                                                                                                                                        |
|             font.pointSize: 24                                                                                                                         |                                                                                                                                                        |
|             text: "<b>Hello</b> <i>World!</i>"                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|         Text {                                                                                                                                         |                                                                                                                                                        |
|             font.pointSize: 24                                                                                                                         |                                                                                                                                                        |
|             textFormat: Text.RichText                                                                                                                  |                                                                                                                                                        |
|             text: "<b>Hello</b> <i>World!</i>"                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|         Text {                                                                                                                                         |                                                                                                                                                        |
|             font.pointSize: 24                                                                                                                         |                                                                                                                                                        |
|             textFormat: Text.PlainText                                                                                                                 |                                                                                                                                                        |
|             text: "<b>Hello</b> <i>World!</i>"                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Text.RichText supports a larger subset of HTML 4, as described on the Supported HTML Subset page. You should prefer using Text.PlainText or Text.StyledText instead, as they offer better performance.

.. _sdk_qtquick_text_truncated:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| truncated : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the text has been truncated due to :ref:`maximumLineCount <sdk_qtquick_text_maximumLineCount>` or :ref:`elide <sdk_qtquick_text_elide>`.

This property is not supported for rich text.

**See also** :ref:`maximumLineCount <sdk_qtquick_text_maximumLineCount>` and :ref:`elide <sdk_qtquick_text_elide>`.

.. _sdk_qtquick_text_verticalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verticalAlignment : enumeration                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

The valid values for ``horizontalAlignment`` are ``Text.AlignLeft``, ``Text.AlignRight``, ``Text.AlignHCenter`` and ``Text.AlignJustify``. The valid values for ``verticalAlignment`` are ``Text.AlignTop``, ``Text.AlignBottom`` and ``Text.AlignVCenter``.

Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the :ref:`Item::anchors <sdk_qtquick_item_anchors>`, or set :ref:`horizontalAlignment <sdk_qtquick_text_horizontalAlignment>` to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_text_wrapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| wrapMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to wrap the text to the Text item's width. The text will only wrap if an explicit width has been set. wrapMode can be one of:

-  Text.NoWrap (default) - no wrapping will be performed. If the text contains insufficient newlines, then :ref:`contentWidth <sdk_qtquick_text_contentWidth>` will exceed a set width.
-  Text.WordWrap - wrapping is done on word boundaries only. If a word is too long, :ref:`contentWidth <sdk_qtquick_text_contentWidth>` will exceed a set width.
-  Text.WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-  Text.Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

Signal Documentation
--------------------

.. _sdk_qtquick_text_lineLaidOut:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lineLaidOut(object *line*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted for each line of text that is laid out during the layout process. The specified *line* object provides more details about the line that is currently being laid out.

This gives the opportunity to position and resize a line as it is being laid out. It can for example be used to create columns or lay out text around objects.

The properties of the specified *line* object are:

-  number (read-only)
-  x
-  y
-  width
-  height

For example, this will move the first 5 lines of a Text item by 100 pixels to the right:

.. code:: cpp

    onLineLaidOut: {
        if (line.number < 5) {
            line.x = line.x + 100
            line.width = line.width - 100
        }
    }

The corresponding handler is ``onLineLaidOut``.

.. _sdk_qtquick_text_linkActivated:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkActivated(string *link*)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

.. code:: qml

        Text {
                textFormat: Text.RichText
                text: "See the <a href=\"http://qt-project.org\">Qt Project website</a>."
                onLinkActivated: console.log(link + " link activated")
        }

The example code will display the text "See the `Qt Project website <http://qt-project.org>`_ ."

Clicking on the highlighted link will output ``http://qt-project.org link activated`` to the console.

The corresponding handler is ``onLinkActivated``.

.. _sdk_qtquick_text_linkHovered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkHovered(string *link*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

The corresponding handler is ``onLinkHovered``.

This QML signal was introduced in Qt 5.2.

**See also** :ref:`hoveredLink <sdk_qtquick_text_hoveredLink>` and :ref:`linkAt() <sdk_qtquick_text_linkAt>`.

Method Documentation
--------------------

.. _sdk_qtquick_text_doLayout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| doLayout()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Triggers a re-layout of the displayed text.

.. _sdk_qtquick_text_linkAt:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkAt(real *x*, real *y*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the link string at point *x*, *y* in content coordinates, or an empty string if no link exists at that point.

This QML method was introduced in Qt 5.3.

**See also** :ref:`hoveredLink <sdk_qtquick_text_hoveredLink>`.

