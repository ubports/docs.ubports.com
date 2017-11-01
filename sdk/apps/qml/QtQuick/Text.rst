Specifies how to add formatted text to a scene

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`baseUrl </sdk/apps/qml/QtQuick/Text#baseUrl-prop>`__**** : url
-  ****`clip </sdk/apps/qml/QtQuick/Text#clip-prop>`__**** : bool
-  ****`color </sdk/apps/qml/QtQuick/Text#color-prop>`__**** : color
-  ****`contentHeight </sdk/apps/qml/QtQuick/Text#contentHeight-prop>`__****
   : real
-  ****`contentWidth </sdk/apps/qml/QtQuick/Text#contentWidth-prop>`__****
   : real
-  ****`effectiveHorizontalAlignment </sdk/apps/qml/QtQuick/Text#effectiveHorizontalAlignment-prop>`__****
   : enumeration
-  ****`elide </sdk/apps/qml/QtQuick/Text#elide-prop>`__**** :
   enumeration
-  ****`font.bold </sdk/apps/qml/QtQuick/Text#font.bold-prop>`__**** :
   bool
-  ****`font.capitalization </sdk/apps/qml/QtQuick/Text#font.capitalization-prop>`__****
   : enumeration
-  ****`font.family </sdk/apps/qml/QtQuick/Text#font.family-prop>`__****
   : string
-  ****`font.italic </sdk/apps/qml/QtQuick/Text#font.italic-prop>`__****
   : bool
-  ****`font.letterSpacing </sdk/apps/qml/QtQuick/Text#font.letterSpacing-prop>`__****
   : real
-  ****`font.pixelSize </sdk/apps/qml/QtQuick/Text#font.pixelSize-prop>`__****
   : int
-  ****`font.pointSize </sdk/apps/qml/QtQuick/Text#font.pointSize-prop>`__****
   : real
-  ****`font.strikeout </sdk/apps/qml/QtQuick/Text#font.strikeout-prop>`__****
   : bool
-  ****`font.underline </sdk/apps/qml/QtQuick/Text#font.underline-prop>`__****
   : bool
-  ****`font.weight </sdk/apps/qml/QtQuick/Text#font.weight-prop>`__****
   : enumeration
-  ****`font.wordSpacing </sdk/apps/qml/QtQuick/Text#font.wordSpacing-prop>`__****
   : real
-  ****`fontSizeMode </sdk/apps/qml/QtQuick/Text#fontSizeMode-prop>`__****
   : enumeration
-  ****`horizontalAlignment </sdk/apps/qml/QtQuick/Text#horizontalAlignment-prop>`__****
   : enumeration
-  ****`hoveredLink </sdk/apps/qml/QtQuick/Text#hoveredLink-prop>`__****
   : string
-  ****`lineCount </sdk/apps/qml/QtQuick/Text#lineCount-prop>`__**** :
   int
-  ****`lineHeight </sdk/apps/qml/QtQuick/Text#lineHeight-prop>`__**** :
   real
-  ****`lineHeightMode </sdk/apps/qml/QtQuick/Text#lineHeightMode-prop>`__****
   : enumeration
-  ****`linkColor </sdk/apps/qml/QtQuick/Text#linkColor-prop>`__**** :
   color
-  ****`maximumLineCount </sdk/apps/qml/QtQuick/Text#maximumLineCount-prop>`__****
   : int
-  ****`minimumPixelSize </sdk/apps/qml/QtQuick/Text#minimumPixelSize-prop>`__****
   : int
-  ****`minimumPointSize </sdk/apps/qml/QtQuick/Text#minimumPointSize-prop>`__****
   : int
-  ****`renderType </sdk/apps/qml/QtQuick/Text#renderType-prop>`__**** :
   enumeration
-  ****`style </sdk/apps/qml/QtQuick/Text#style-prop>`__**** :
   enumeration
-  ****`styleColor </sdk/apps/qml/QtQuick/Text#styleColor-prop>`__**** :
   color
-  ****`text </sdk/apps/qml/QtQuick/Text#text-prop>`__**** : string
-  ****`textFormat </sdk/apps/qml/QtQuick/Text#textFormat-prop>`__**** :
   enumeration
-  ****`truncated </sdk/apps/qml/QtQuick/Text#truncated-prop>`__**** :
   bool
-  ****`verticalAlignment </sdk/apps/qml/QtQuick/Text#verticalAlignment-prop>`__****
   : enumeration
-  ****`wrapMode </sdk/apps/qml/QtQuick/Text#wrapMode-prop>`__**** :
   enumeration

Signals
-------

-  ****`lineLaidOut </sdk/apps/qml/QtQuick/Text#lineLaidOut-signal>`__****\ (object
   *line*)
-  ****`linkActivated </sdk/apps/qml/QtQuick/Text#linkActivated-signal>`__****\ (string
   *link*)
-  ****`linkHovered </sdk/apps/qml/QtQuick/Text#linkHovered-signal>`__****\ (string
   *link*)

Methods
-------

-  ****`doLayout </sdk/apps/qml/QtQuick/Text#doLayout-method>`__****\ ()
-  ****`linkAt </sdk/apps/qml/QtQuick/Text#linkAt-method>`__****\ (real
   *x*, real *y*)

Detailed Description
--------------------

Text items can display both plain and rich text. For example, red text
with a specific font and size can be defined like this:

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

|image0|

If height and width are not explicitly set, Text will attempt to
determine how much room is needed and set it accordingly. Unless
`wrapMode </sdk/apps/qml/QtQuick/Text#wrapMode-prop>`__ is set, it will
always prefer width to height (all text will be placed on a single
line).

The `elide </sdk/apps/qml/QtQuick/Text#elide-prop>`__ property can
alternatively be used to fit a single line of plain text to a set width.

Note that the Supported HTML Subset is limited. Also, if the text
contains HTML img tags that load remote images, the text is reloaded.

Text provides read-only text. For editable text, see
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.

**See also** `Fonts example </sdk/apps/qml/QtQuick/text#fonts>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ baseUrl : url                                                   |
+--------------------------------------------------------------------------+

This property specifies a base URL which is used to resolve relative
URLs within the text.

Urls are resolved to be within the same directory as the target of the
base URL meaning any portion of the path after the last '/' will be
ignored.

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

The default value is the url of the QML file instantiating the Text
item.

| 

+--------------------------------------------------------------------------+
|        \ clip : bool                                                     |
+--------------------------------------------------------------------------+

This property holds whether the text is clipped.

Note that if the text does not fit in the bounding rectangle it will be
abruptly chopped.

If you want to display potentially long text in a limited space, you
probably want to use ``elide`` instead.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

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

| 

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

Returns the height of the text, including height past the height which
is covered due to there being more text than fits in the set height.

| 

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

Returns the width of the text, including width past the width which is
covered due to insufficient wrapping if WrapMode is set.

| 

+--------------------------------------------------------------------------+
|        \ effectiveHorizontalAlignment : enumeration                      |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the Text
items width and height. By default, the text is vertically aligned to
the top. Horizontal alignment follows the natural alignment of the text,
for example text that is read from left to right will be aligned to the
left.

The valid values for ``horizontalAlignment`` are ``Text.AlignLeft``,
``Text.AlignRight``, ``Text.AlignHCenter`` and ``Text.AlignJustify``.
The valid values for ``verticalAlignment`` are ``Text.AlignTop``,
``Text.AlignBottom`` and ``Text.AlignVCenter``.

Note that for a single line of text, the size of the text is the area of
the text. In this common case, all alignments are equivalent. If you
want the text to be, say, centered in its parent, then you will need to
either modify the
`Item::anchors </sdk/apps/qml/QtQuick/Item#anchors-prop>`__, or set
`horizontalAlignment </sdk/apps/qml/QtQuick/Text#horizontalAlignment-prop>`__
to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property ``horizontalAlignment`` will
remain unchanged. To query the effective horizontal alignment of Text,
use the read-only property ``effectiveHorizontalAlignment``.

| 

+--------------------------------------------------------------------------+
|        \ elide : enumeration                                             |
+--------------------------------------------------------------------------+

Set this property to elide parts of the text fit to the Text item's
width. The text will only elide if an explicit width has been set.

This property cannot be used with rich text.

Eliding can be:

-  Text.ElideNone - the default
-  Text.ElideLeft
-  Text.ElideMiddle
-  Text.ElideRight

If this property is set to Text.ElideRight, it can be used with
`wrapped </sdk/apps/qml/QtQuick/Text#wrapMode-prop>`__ text. The text
will only elide if ``maximumLineCount``, or ``height`` has been set. If
both ``maximumLineCount`` and ``height`` are set, ``maximumLineCount``
will apply unless the lines do not fit in the height allowed.

If the text is a multi-length string, and the mode is not
``Text.ElideNone``, the first string that fits will be used, otherwise
the last will be elided.

Multi-length strings are ordered from longest to shortest, separated by
the Unicode "String Terminator" character ``U009C`` (write this in QML
with ``"\u009C"`` or ``"\x9C"``).

| 

+--------------------------------------------------------------------------+
|        \ font.bold : bool                                                |
+--------------------------------------------------------------------------+

Sets whether the font weight is bold.

| 

+--------------------------------------------------------------------------+
|        \ font.capitalization : enumeration                               |
+--------------------------------------------------------------------------+

Sets the capitalization for the text.

-  Font.MixedCase - This is the normal text rendering option where no
   capitalization change is applied.
-  Font.AllUppercase - This alters the text to be rendered in all
   uppercase type.
-  Font.AllLowercase - This alters the text to be rendered in all
   lowercase type.
-  Font.SmallCaps - This alters the text to be rendered in small-caps
   type.
-  Font.Capitalize - This alters the text to be rendered with the first
   character of each word as an uppercase character.

.. code:: qml

    Text { text: "Hello"; font.capitalization: Font.AllLowercase }

| 

+--------------------------------------------------------------------------+
|        \ font.family : string                                            |
+--------------------------------------------------------------------------+

Sets the family name of the font.

The family name is case insensitive and may optionally include a foundry
name, e.g. "Helvetica [Cronyx]". If the family is available from more
than one foundry and the foundry isn't specified, an arbitrary foundry
is chosen. If the family isn't available a family will be set using the
font matching algorithm.

| 

+--------------------------------------------------------------------------+
|        \ font.italic : bool                                              |
+--------------------------------------------------------------------------+

Sets whether the font has an italic style.

| 

+--------------------------------------------------------------------------+
|        \ font.letterSpacing : real                                       |
+--------------------------------------------------------------------------+

Sets the letter spacing for the font.

Letter spacing changes the default spacing between individual letters in
the font. A positive value increases the letter spacing by the
corresponding pixels; a negative value decreases the spacing.

| 

+--------------------------------------------------------------------------+
|        \ font.pixelSize : int                                            |
+--------------------------------------------------------------------------+

Sets the font size in pixels.

Using this function makes the font device dependent. Use ``pointSize``
to set the size of the font in a device independent manner.

| 

+--------------------------------------------------------------------------+
|        \ font.pointSize : real                                           |
+--------------------------------------------------------------------------+

Sets the font size in points. The point size must be greater than zero.

| 

+--------------------------------------------------------------------------+
|        \ font.strikeout : bool                                           |
+--------------------------------------------------------------------------+

Sets whether the font has a strikeout style.

| 

+--------------------------------------------------------------------------+
|        \ font.underline : bool                                           |
+--------------------------------------------------------------------------+

Sets whether the text is underlined.

| 

+--------------------------------------------------------------------------+
|        \ font.weight : enumeration                                       |
+--------------------------------------------------------------------------+

Sets the font's weight.

The weight can be one of:

-  Font.Light
-  Font.Normal - the default
-  Font.DemiBold
-  Font.Bold
-  Font.Black

.. code:: qml

    Text { text: "Hello"; font.weight: Font.DemiBold }

| 

+--------------------------------------------------------------------------+
|        \ font.wordSpacing : real                                         |
+--------------------------------------------------------------------------+

Sets the word spacing for the font.

Word spacing changes the default spacing between individual words. A
positive value increases the word spacing by a corresponding amount of
pixels, while a negative value decreases the inter-word spacing
accordingly.

| 

+--------------------------------------------------------------------------+
|        \ fontSizeMode : enumeration                                      |
+--------------------------------------------------------------------------+

This property specifies how the font size of the displayed text is
determined. The possible values are:

-  Text.FixedSize (default) - The size specified by
   `font.pixelSize </sdk/apps/qml/QtQuick/Text#font.pixelSize-prop>`__
   or
   `font.pointSize </sdk/apps/qml/QtQuick/Text#font.pointSize-prop>`__
   is used.
-  Text.HorizontalFit - The largest size up to the size specified that
   fits within the width of the item without wrapping is used.
-  Text.VerticalFit - The largest size up to the size specified that
   fits the height of the item is used.
-  Text.Fit - The largest size up to the size specified that fits within
   the width and height of the item is used.

The font size of fitted text has a minimum bound specified by the
`minimumPointSize </sdk/apps/qml/QtQuick/Text#minimumPointSize-prop>`__
or
`minimumPixelSize </sdk/apps/qml/QtQuick/Text#minimumPixelSize-prop>`__
property and maximum bound specified by either the
`font.pointSize </sdk/apps/qml/QtQuick/Text#font.pointSize-prop>`__ or
`font.pixelSize </sdk/apps/qml/QtQuick/Text#font.pixelSize-prop>`__
properties.

.. code:: qml

    Text { text: "Hello"; fontSizeMode: Text.Fit; minimumPixelSize: 10; font.pixelSize: 72 }

If the text does not fit within the item bounds with the minimum font
size the text will be elided as per the
`elide </sdk/apps/qml/QtQuick/Text#elide-prop>`__ property.

| 

+--------------------------------------------------------------------------+
|        \ horizontalAlignment : enumeration                               |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the Text
items width and height. By default, the text is vertically aligned to
the top. Horizontal alignment follows the natural alignment of the text,
for example text that is read from left to right will be aligned to the
left.

The valid values for ``horizontalAlignment`` are ``Text.AlignLeft``,
``Text.AlignRight``, ``Text.AlignHCenter`` and ``Text.AlignJustify``.
The valid values for ``verticalAlignment`` are ``Text.AlignTop``,
``Text.AlignBottom`` and ``Text.AlignVCenter``.

Note that for a single line of text, the size of the text is the area of
the text. In this common case, all alignments are equivalent. If you
want the text to be, say, centered in its parent, then you will need to
either modify the
`Item::anchors </sdk/apps/qml/QtQuick/Item#anchors-prop>`__, or set
horizontalAlignment to Text.AlignHCenter and bind the width to that of
the parent.

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property ``horizontalAlignment`` will
remain unchanged. To query the effective horizontal alignment of Text,
use the read-only property ``effectiveHorizontalAlignment``.

| 

+--------------------------------------------------------------------------+
|        \ hoveredLink : string                                            |
+--------------------------------------------------------------------------+

This property contains the link string when the user hovers a link
embedded in the text. The link must be in rich text or HTML format and
the *hoveredLink* string provides access to the particular link.

This QML property was introduced in Qt 5.2.

**See also**
`linkHovered </sdk/apps/qml/QtQuick/Text#linkHovered-signal>`__ and
`linkAt() </sdk/apps/qml/QtQuick/Text#linkAt-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ lineCount : int                                                 |
+--------------------------------------------------------------------------+

Returns the number of lines visible in the text item.

This property is not supported for rich text.

**See also**
`maximumLineCount </sdk/apps/qml/QtQuick/Text#maximumLineCount-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ lineHeight : real                                               |
+--------------------------------------------------------------------------+

Sets the line height for the text. The value can be in pixels or a
multiplier depending on
`lineHeightMode </sdk/apps/qml/QtQuick/Text#lineHeightMode-prop>`__.

The default value is a multiplier of 1.0. The line height must be a
positive value.

| 

+--------------------------------------------------------------------------+
|        \ lineHeightMode : enumeration                                    |
+--------------------------------------------------------------------------+

This property determines how the line height is specified. The possible
values are:

-  Text.ProportionalHeight (default) - this sets the spacing
   proportional to the line (as a multiplier). For example, set to 2 for
   double spacing.
-  Text.FixedHeight - this sets the line height to a fixed line height
   (in pixels).

| 

+--------------------------------------------------------------------------+
|        \ linkColor : color                                               |
+--------------------------------------------------------------------------+

The color of links in the text.

This property works with the StyledText
`textFormat </sdk/apps/qml/QtQuick/Text#textFormat-prop>`__, but not
with RichText. Link color in RichText can be specified by including CSS
style tags in the text.

| 

+--------------------------------------------------------------------------+
|        \ maximumLineCount : int                                          |
+--------------------------------------------------------------------------+

Set this property to limit the number of lines that the text item will
show. If elide is set to Text.ElideRight, the text will be elided
appropriately. By default, this is the value of the largest possible
integer.

This property is not supported for rich text.

**See also** `lineCount </sdk/apps/qml/QtQuick/Text#lineCount-prop>`__
and `elide </sdk/apps/qml/QtQuick/Text#elide-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ minimumPixelSize : int                                          |
+--------------------------------------------------------------------------+

This property specifies the minimum font pixel size of text scaled by
the `fontSizeMode </sdk/apps/qml/QtQuick/Text#fontSizeMode-prop>`__
property.

If the `fontSizeMode </sdk/apps/qml/QtQuick/Text#fontSizeMode-prop>`__
is Text.FixedSize or the
`font.pixelSize </sdk/apps/qml/QtQuick/Text#font.pixelSize-prop>`__ is
-1 this property is ignored.

| 

+--------------------------------------------------------------------------+
|        \ minimumPointSize : int                                          |
+--------------------------------------------------------------------------+

This property specifies the minimum font point size of text scaled by
the `fontSizeMode </sdk/apps/qml/QtQuick/Text#fontSizeMode-prop>`__
property.

If the `fontSizeMode </sdk/apps/qml/QtQuick/Text#fontSizeMode-prop>`__
is Text.FixedSize or the
`font.pointSize </sdk/apps/qml/QtQuick/Text#font.pointSize-prop>`__ is
-1 this property is ignored.

| 

+--------------------------------------------------------------------------+
|        \ renderType : enumeration                                        |
+--------------------------------------------------------------------------+

Override the default rendering type for this component.

Supported render types are:

-  Text.QtRendering - the default
-  Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the
target platform and do not require advanced features such as
transformation of the text. Using such features in combination with the
NativeRendering render type will lend poor and sometimes pixelated
results.

| 

+--------------------------------------------------------------------------+
|        \ style : enumeration                                             |
+--------------------------------------------------------------------------+

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

|image1|

| 

+--------------------------------------------------------------------------+
|        \ styleColor : color                                              |
+--------------------------------------------------------------------------+

Defines the secondary color used by text styles.

``styleColor`` is used as the outline color for outlined text, and as
the shadow color for raised or sunken text. If no style has been set, it
is not used at all.

.. code:: qml

    Text { font.pointSize: 18; text: "hello"; style: Text.Raised; styleColor: "gray" }

**See also** `style </sdk/apps/qml/QtQuick/Text#style-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The text to display. Text supports both plain and rich text strings.

The item will try to automatically determine whether the text should be
treated as styled text. This determination is made using
Qt::mightBeRichText().

| 

+--------------------------------------------------------------------------+
|        \ textFormat : enumeration                                        |
+--------------------------------------------------------------------------+

The way the text property should be displayed.

Supported text formats are:

-  Text.AutoText (default)
-  Text.PlainText
-  Text.StyledText
-  Text.RichText

If the text format is ``Text.AutoText`` the Text item will automatically
determine whether the text should be treated as styled text. This
determination is made using Qt::mightBeRichText() which uses a fast and
therefore simple heuristic. It mainly checks whether there is something
that looks like a tag before the first line break. Although the result
may be correct for common cases, there is no guarantee.

Text.StyledText is an optimized format supporting some basic text
styling markup, in the style of HTML 3.2:

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

``Text.StyledText`` parser is strict, requiring tags to be correctly
nested.

+--------------------------------------+--------------------------------------+
| .. code:: qml                        | |image2|                             |
|                                      |                                      |
|     Column {                         |                                      |
|         Text {                       |                                      |
|             font.pointSize: 24       |                                      |
|             text: "<b>Hello</b> <i>W |                                      |
| orld!</i>"                           |                                      |
|         }                            |                                      |
|         Text {                       |                                      |
|             font.pointSize: 24       |                                      |
|             textFormat: Text.RichTex |                                      |
| t                                    |                                      |
|             text: "<b>Hello</b> <i>W |                                      |
| orld!</i>"                           |                                      |
|         }                            |                                      |
|         Text {                       |                                      |
|             font.pointSize: 24       |                                      |
|             textFormat: Text.PlainTe |                                      |
| xt                                   |                                      |
|             text: "<b>Hello</b> <i>W |                                      |
| orld!</i>"                           |                                      |
|         }                            |                                      |
|     }                                |                                      |
+--------------------------------------+--------------------------------------+

Text.RichText supports a larger subset of HTML 4, as described on the
Supported HTML Subset page. You should prefer using Text.PlainText or
Text.StyledText instead, as they offer better performance.

| 

+--------------------------------------------------------------------------+
|        \ truncated : bool                                                |
+--------------------------------------------------------------------------+

Returns true if the text has been truncated due to
`maximumLineCount </sdk/apps/qml/QtQuick/Text#maximumLineCount-prop>`__
or `elide </sdk/apps/qml/QtQuick/Text#elide-prop>`__.

This property is not supported for rich text.

**See also**
`maximumLineCount </sdk/apps/qml/QtQuick/Text#maximumLineCount-prop>`__
and `elide </sdk/apps/qml/QtQuick/Text#elide-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ verticalAlignment : enumeration                                 |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the Text
items width and height. By default, the text is vertically aligned to
the top. Horizontal alignment follows the natural alignment of the text,
for example text that is read from left to right will be aligned to the
left.

The valid values for ``horizontalAlignment`` are ``Text.AlignLeft``,
``Text.AlignRight``, ``Text.AlignHCenter`` and ``Text.AlignJustify``.
The valid values for ``verticalAlignment`` are ``Text.AlignTop``,
``Text.AlignBottom`` and ``Text.AlignVCenter``.

Note that for a single line of text, the size of the text is the area of
the text. In this common case, all alignments are equivalent. If you
want the text to be, say, centered in its parent, then you will need to
either modify the
`Item::anchors </sdk/apps/qml/QtQuick/Item#anchors-prop>`__, or set
`horizontalAlignment </sdk/apps/qml/QtQuick/Text#horizontalAlignment-prop>`__
to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property ``horizontalAlignment`` will
remain unchanged. To query the effective horizontal alignment of Text,
use the read-only property ``effectiveHorizontalAlignment``.

| 

+--------------------------------------------------------------------------+
|        \ wrapMode : enumeration                                          |
+--------------------------------------------------------------------------+

Set this property to wrap the text to the Text item's width. The text
will only wrap if an explicit width has been set. wrapMode can be one
of:

-  Text.NoWrap (default) - no wrapping will be performed. If the text
   contains insufficient newlines, then
   `contentWidth </sdk/apps/qml/QtQuick/Text#contentWidth-prop>`__ will
   exceed a set width.
-  Text.WordWrap - wrapping is done on word boundaries only. If a word
   is too long,
   `contentWidth </sdk/apps/qml/QtQuick/Text#contentWidth-prop>`__ will
   exceed a set width.
-  Text.WrapAnywhere - wrapping is done at any point on a line, even if
   it occurs in the middle of a word.
-  Text.Wrap - if possible, wrapping occurs at a word boundary;
   otherwise it will occur at the appropriate point on the line, even in
   the middle of a word.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ lineLaidOut(object *line*)                                      |
+--------------------------------------------------------------------------+

This signal is emitted for each line of text that is laid out during the
layout process. The specified *line* object provides more details about
the line that is currently being laid out.

This gives the opportunity to position and resize a line as it is being
laid out. It can for example be used to create columns or lay out text
around objects.

The properties of the specified *line* object are:

-  number (read-only)
-  x
-  y
-  width
-  height

For example, this will move the first 5 lines of a Text item by 100
pixels to the right:

.. code:: cpp

    onLineLaidOut: {
        if (line.number < 5) {
            line.x = line.x + 100
            line.width = line.width - 100
        }
    }

The corresponding handler is ``onLineLaidOut``.

| 

+--------------------------------------------------------------------------+
|        \ linkActivated(string *link*)                                    |
+--------------------------------------------------------------------------+

This signal is emitted when the user clicks on a link embedded in the
text. The link must be in rich text or HTML format and the *link* string
provides access to the particular link.

.. code:: qml

        Text {
                textFormat: Text.RichText
                text: "See the <a href=\"http://qt-project.org\">Qt Project website</a>."
                onLinkActivated: console.log(link + " link activated")
        }

The example code will display the text "See the `Qt Project
website <http://qt-project.org>`__."

Clicking on the highlighted link will output
``http://qt-project.org link activated`` to the console.

The corresponding handler is ``onLinkActivated``.

| 

+--------------------------------------------------------------------------+
|        \ linkHovered(string *link*)                                      |
+--------------------------------------------------------------------------+

This signal is emitted when the user hovers a link embedded in the text.
The link must be in rich text or HTML format and the *link* string
provides access to the particular link.

The corresponding handler is ``onLinkHovered``.

This QML signal was introduced in Qt 5.2.

**See also**
`hoveredLink </sdk/apps/qml/QtQuick/Text#hoveredLink-prop>`__ and
`linkAt() </sdk/apps/qml/QtQuick/Text#linkAt-method>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ doLayout()                                                      |
+--------------------------------------------------------------------------+

Triggers a re-layout of the displayed text.

| 

+--------------------------------------------------------------------------+
|        \ linkAt(real *x*, real *y*)                                      |
+--------------------------------------------------------------------------+

Returns the link string at point *x*, *y* in content coordinates, or an
empty string if no link exists at that point.

This QML method was introduced in Qt 5.3.

**See also**
`hoveredLink </sdk/apps/qml/QtQuick/Text#hoveredLink-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Text/images/declarative-text.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Text/images/declarative-textstyle.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Text/images/declarative-textformat.png

