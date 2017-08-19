QtQuick.Text
============

.. raw:: html

   <p>

Specifies how to add formatted text to a scene More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Text -->

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

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

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

baseUrl : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

clip : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

effectiveHorizontalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

elide : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.bold : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.capitalization : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.family : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.italic : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.letterSpacing : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.pixelSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.pointSize : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.strikeout : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.underline : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.weight : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font.wordSpacing : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fontSizeMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

horizontalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hoveredLink : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineHeightMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

linkColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumLineCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumPixelSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumPointSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

renderType : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

style : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

styleColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textFormat : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

truncated : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

verticalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

wrapMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

lineLaidOut(object line)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

linkActivated(string link)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

linkHovered(string link)

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

doLayout()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

linkAt(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Text-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Text items can display both plain and rich text. For example, red text
with a specific font and size can be defined like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Hello World!&quot;</span>
   <span class="name">font</span>.family: <span class="string">&quot;Helvetica&quot;</span>
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }</pre>

.. raw:: html

   <p>

Rich text is defined using HTML-style markup:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

If height and width are not explicitly set, Text will attempt to
determine how much room is needed and set it accordingly. Unless
wrapMode is set, it will always prefer width to height (all text will be
placed on a single line).

.. raw:: html

   </p>

.. raw:: html

   <p>

The elide property can alternatively be used to fit a single line of
plain text to a set width.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the Supported HTML Subset is limited. Also, if the text
contains HTML img tags that load remote images, the text is reloaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

Text provides read-only text. For editable text, see TextEdit.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Fonts example.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Text -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$baseUrl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="baseUrl-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

baseUrl : url

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

This property specifies a base URL which is used to resolve relative
URLs within the text.

.. raw:: html

   </p>

.. raw:: html

   <p>

Urls are resolved to be within the same directory as the target of the
base URL meaning any portion of the path after the last '/' will be
ignored.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Base URL

.. raw:: html

   </th>

.. raw:: html

   <th>

Relative URL

.. raw:: html

   </th>

.. raw:: html

   <th>

Resolved URL

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

http://qt-project.org/

.. raw:: html

   </td>

.. raw:: html

   <td>

images/logo.png

.. raw:: html

   </td>

.. raw:: html

   <td>

http://qt-project.org/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

http://qt-project.org.md

.. raw:: html

   </td>

.. raw:: html

   <td>

images/logo.png

.. raw:: html

   </td>

.. raw:: html

   <td>

http://qt-project.org/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

http://qt-project.org/content

.. raw:: html

   </td>

.. raw:: html

   <td>

images/logo.png

.. raw:: html

   </td>

.. raw:: html

   <td>

http://qt-project.org/content/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

http://qt-project.org/content/

.. raw:: html

   </td>

.. raw:: html

   <td>

images/logo.png

.. raw:: html

   </td>

.. raw:: html

   <td>

http://qt-project.org/content/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

http://qt-project.org/content.md

.. raw:: html

   </td>

.. raw:: html

   <td>

images/logo.png

.. raw:: html

   </td>

.. raw:: html

   <td>

http://qt-project.org/content/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

http://qt-project.org/content.md

.. raw:: html

   </td>

.. raw:: html

   <td>

../images/logo.png

.. raw:: html

   </td>

.. raw:: html

   <td>

http://qt-project.org/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

http://qt-project.org/content.md

.. raw:: html

   </td>

.. raw:: html

   <td>

/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   <td>

http://qt-project.org/images/logo.png

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The default value is the url of the QML file instantiating the Text
item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@baseUrl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clip-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

clip : bool

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

This property holds whether the text is clipped.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that if the text does not fit in the bounding rectangle it will be
abruptly chopped.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you want to display potentially long text in a limited space, you
probably want to use elide instead.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clip -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

The text color.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example of green text defined using hexadecimal notation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
   <span class="name">color</span>: <span class="string">&quot;#00FF00&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;green text&quot;</span>
   }</pre>

.. raw:: html

   <p>

An example of steel blue text defined using an SVG color name:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
   <span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;blue text&quot;</span>
   }</pre>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentHeight : real

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

Returns the height of the text, including height past the height which
is covered due to there being more text than fits in the set height.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentWidth : real

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

Returns the width of the text, including width past the width which is
covered due to insufficient wrapping if WrapMode is set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="effectiveHorizontalAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

effectiveHorizontalAlignment : enumeration

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

Sets the horizontal and vertical alignment of the text within the Text
items width and height. By default, the text is vertically aligned to
the top. Horizontal alignment follows the natural alignment of the text,
for example text that is read from left to right will be aligned to the
left.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are Text.AlignLeft,
Text.AlignRight, Text.AlignHCenter and Text.AlignJustify. The valid
values for verticalAlignment are Text.AlignTop, Text.AlignBottom and
Text.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that for a single line of text, the size of the text is the area of
the text. In this common case, all alignments are equivalent. If you
want the text to be, say, centered in its parent, then you will need to
either modify the Item::anchors, or set horizontalAlignment to
Text.AlignHCenter and bind the width to that of the parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of Text, use the
read-only property effectiveHorizontalAlignment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effectiveHorizontalAlignment -->

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

Set this property to elide parts of the text fit to the Text item's
width. The text will only elide if an explicit width has been set.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property cannot be used with rich text.

.. raw:: html

   </p>

.. raw:: html

   <p>

Eliding can be:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.ElideNone - the default

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.ElideLeft

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.ElideMiddle

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.ElideRight

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If this property is set to Text.ElideRight, it can be used with wrapped
text. The text will only elide if maximumLineCount, or height has been
set. If both maximumLineCount and height are set, maximumLineCount will
apply unless the lines do not fit in the height allowed.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the text is a multi-length string, and the mode is not
Text.ElideNone, the first string that fits will be used, otherwise the
last will be elided.

.. raw:: html

   </p>

.. raw:: html

   <p>

Multi-length strings are ordered from longest to shortest, separated by
the Unicode "String Terminator" character U009C (write this in QML with
":raw-latex:`\u0`09C" or ":raw-latex:`\x`9C").

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@elide -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.bold-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.bold : bool

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

Sets whether the font weight is bold.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.bold -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.capitalization-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.capitalization : enumeration

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

Sets the capitalization for the text.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Font.MixedCase - This is the normal text rendering option where no
capitalization change is applied.

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.AllUppercase - This alters the text to be rendered in all uppercase
type.

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.AllLowercase - This alters the text to be rendered in all lowercase
type.

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.SmallCaps - This alters the text to be rendered in small-caps type.

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.Capitalize - This alters the text to be rendered with the first
character of each word as an uppercase character.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.capitalization: <span class="name">Font</span>.<span class="name">AllLowercase</span> }</pre>

.. raw:: html

   <!-- @@@font.capitalization -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.family-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.family : string

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

Sets the family name of the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

The family name is case insensitive and may optionally include a foundry
name, e.g. "Helvetica [Cronyx]". If the family is available from more
than one foundry and the foundry isn't specified, an arbitrary foundry
is chosen. If the family isn't available a family will be set using the
font matching algorithm.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.family -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.italic-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.italic : bool

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

Sets whether the font has an italic style.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.italic -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.letterSpacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.letterSpacing : real

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

Sets the letter spacing for the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

Letter spacing changes the default spacing between individual letters in
the font. A positive value increases the letter spacing by the
corresponding pixels; a negative value decreases the spacing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.letterSpacing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.pixelSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.pixelSize : int

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

Sets the font size in pixels.

.. raw:: html

   </p>

.. raw:: html

   <p>

Using this function makes the font device dependent. Use pointSize to
set the size of the font in a device independent manner.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.pixelSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.pointSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.pointSize : real

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

Sets the font size in points. The point size must be greater than zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.pointSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.strikeout-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.strikeout : bool

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

Sets whether the font has a strikeout style.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.strikeout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.underline-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.underline : bool

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

Sets whether the text is underlined.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.underline -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.weight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.weight : enumeration

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

Sets the font's weight.

.. raw:: html

   </p>

.. raw:: html

   <p>

The weight can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Font.Light

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.Normal - the default

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.DemiBold

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.Bold

.. raw:: html

   </li>

.. raw:: html

   <li>

Font.Black

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.weight: <span class="name">Font</span>.<span class="name">DemiBold</span> }</pre>

.. raw:: html

   <!-- @@@font.weight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font.wordSpacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font.wordSpacing : real

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

Sets the word spacing for the font.

.. raw:: html

   </p>

.. raw:: html

   <p>

Word spacing changes the default spacing between individual words. A
positive value increases the word spacing by a corresponding amount of
pixels, while a negative value decreases the inter-word spacing
accordingly.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font.wordSpacing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fontSizeMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fontSizeMode : enumeration

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

This property specifies how the font size of the displayed text is
determined. The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.FixedSize (default) - The size specified by font.pixelSize or
font.pointSize is used.

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.HorizontalFit - The largest size up to the size specified that fits
within the width of the item without wrapping is used.

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.VerticalFit - The largest size up to the size specified that fits
the height of the item is used.

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.Fit - The largest size up to the size specified that fits within
the width and height of the item is used.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The font size of fitted text has a minimum bound specified by the
minimumPointSize or minimumPixelSize property and maximum bound
specified by either the font.pointSize or font.pixelSize properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">fontSizeMode</span>: <span class="name">Text</span>.<span class="name">Fit</span>; <span class="name">minimumPixelSize</span>: <span class="number">10</span>; <span class="name">font</span>.pixelSize: <span class="number">72</span> }</pre>

.. raw:: html

   <p>

If the text does not fit within the item bounds with the minimum font
size the text will be elided as per the elide property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fontSizeMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="horizontalAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

horizontalAlignment : enumeration

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

Sets the horizontal and vertical alignment of the text within the Text
items width and height. By default, the text is vertically aligned to
the top. Horizontal alignment follows the natural alignment of the text,
for example text that is read from left to right will be aligned to the
left.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are Text.AlignLeft,
Text.AlignRight, Text.AlignHCenter and Text.AlignJustify. The valid
values for verticalAlignment are Text.AlignTop, Text.AlignBottom and
Text.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that for a single line of text, the size of the text is the area of
the text. In this common case, all alignments are equivalent. If you
want the text to be, say, centered in its parent, then you will need to
either modify the Item::anchors, or set horizontalAlignment to
Text.AlignHCenter and bind the width to that of the parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of Text, use the
read-only property effectiveHorizontalAlignment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@horizontalAlignment -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hoveredLink-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hoveredLink : string

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

This property contains the link string when the user hovers a link
embedded in the text. The link must be in rich text or HTML format and
the hoveredLink string provides access to the particular link.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also linkHovered and linkAt().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hoveredLink -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineCount : int

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

Returns the number of lines visible in the text item.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is not supported for rich text.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also maximumLineCount.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineHeight : real

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

Sets the line height for the text. The value can be in pixels or a
multiplier depending on lineHeightMode.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is a multiplier of 1.0. The line height must be a
positive value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineHeightMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineHeightMode : enumeration

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

This property determines how the line height is specified. The possible
values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.ProportionalHeight (default) - this sets the spacing proportional
to the line (as a multiplier). For example, set to 2 for double spacing.

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.FixedHeight - this sets the line height to a fixed line height (in
pixels).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@lineHeightMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="linkColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

linkColor : color

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

The color of links in the text.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property works with the StyledText textFormat, but not with
RichText. Link color in RichText can be specified by including CSS style
tags in the text.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@linkColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumLineCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumLineCount : int

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

Set this property to limit the number of lines that the text item will
show. If elide is set to Text.ElideRight, the text will be elided
appropriately. By default, this is the value of the largest possible
integer.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is not supported for rich text.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also lineCount and elide.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumLineCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumPixelSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumPixelSize : int

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

This property specifies the minimum font pixel size of text scaled by
the fontSizeMode property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the fontSizeMode is Text.FixedSize or the font.pixelSize is -1 this
property is ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumPixelSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumPointSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumPointSize : int

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

This property specifies the minimum font point size of text scaled by
the fontSizeMode property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the fontSizeMode is Text.FixedSize or the font.pointSize is -1 this
property is ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumPointSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="renderType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

renderType : enumeration

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

Override the default rendering type for this component.

.. raw:: html

   </p>

.. raw:: html

   <p>

Supported render types are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.QtRendering - the default

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.NativeRendering

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Select Text.NativeRendering if you prefer text to look native on the
target platform and do not require advanced features such as
transformation of the text. Using such features in combination with the
NativeRendering render type will lend poor and sometimes pixelated
results.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@renderType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="style-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

style : enumeration

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

Set an additional text style.

.. raw:: html

   </p>

.. raw:: html

   <p>

Supported text styles are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.Normal - the default

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.Outline

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.Raised

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.Sunken

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Normal&quot;</span> }
   <span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Raised&quot;</span>; <span class="name">style</span>: <span class="name">Text</span>.<span class="name">Raised</span>; <span class="name">styleColor</span>: <span class="string">&quot;#AAAAAA&quot;</span> }
   <span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Outline&quot;</span>;<span class="name">style</span>: <span class="name">Text</span>.<span class="name">Outline</span>; <span class="name">styleColor</span>: <span class="string">&quot;red&quot;</span> }
   <span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Sunken&quot;</span>; <span class="name">style</span>: <span class="name">Text</span>.<span class="name">Sunken</span>; <span class="name">styleColor</span>: <span class="string">&quot;#AAAAAA&quot;</span> }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@style -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="styleColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

styleColor : color

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

Defines the secondary color used by text styles.

.. raw:: html

   </p>

.. raw:: html

   <p>

styleColor is used as the outline color for outlined text, and as the
shadow color for raised or sunken text. If no style has been set, it is
not used at all.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">18</span>; <span class="name">text</span>: <span class="string">&quot;hello&quot;</span>; <span class="name">style</span>: <span class="name">Text</span>.<span class="name">Raised</span>; <span class="name">styleColor</span>: <span class="string">&quot;gray&quot;</span> }</pre>

.. raw:: html

   <p>

See also style.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@styleColor -->

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

The text to display. Text supports both plain and rich text strings.

.. raw:: html

   </p>

.. raw:: html

   <p>

The item will try to automatically determine whether the text should be
treated as styled text. This determination is made using
Qt::mightBeRichText().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textFormat-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textFormat : enumeration

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

The way the text property should be displayed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Supported text formats are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.AutoText (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.PlainText

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.StyledText

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.RichText

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the text format is Text.AutoText the Text item will automatically
determine whether the text should be treated as styled text. This
determination is made using Qt::mightBeRichText() which uses a fast and
therefore simple heuristic. It mainly checks whether there is something
that looks like a tag before the first line break. Although the result
may be correct for common cases, there is no guarantee.

.. raw:: html

   </p>

.. raw:: html

   <p>

Text.StyledText is an optimized format supporting some basic text
styling markup, in the style of HTML 3.2:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span>b<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>b<span class="operator">&gt;</span> <span class="operator">-</span> bold
   <span class="operator">&lt;</span>strong<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>strong<span class="operator">&gt;</span> <span class="operator">-</span> bold
   <span class="operator">&lt;</span>i<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>i<span class="operator">&gt;</span> <span class="operator">-</span> italic
   <span class="operator">&lt;</span>br<span class="operator">&gt;</span> <span class="operator">-</span> <span class="keyword">new</span> line
   <span class="operator">&lt;</span>p<span class="operator">&gt;</span> <span class="operator">-</span> paragraph
   <span class="operator">&lt;</span>u<span class="operator">&gt;</span> <span class="operator">-</span> underlined text
   <span class="operator">&lt;</span>font color<span class="operator">=</span><span class="string">&quot;color_name&quot;</span> size<span class="operator">=</span><span class="string">&quot;1-7&quot;</span><span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>font<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>h1<span class="operator">&gt;</span> to <span class="operator">&lt;</span>h6<span class="operator">&gt;</span> <span class="operator">-</span> headers
   <span class="operator">&lt;</span>a href<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span> <span class="operator">-</span> anchor
   <span class="operator">&lt;</span>img src<span class="operator">=</span><span class="string">&quot;&quot;</span> align<span class="operator">=</span><span class="string">&quot;top,middle,bottom&quot;</span> width<span class="operator">=</span><span class="string">&quot;&quot;</span> height<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span> <span class="operator">-</span> <span class="keyword">inline</span> images
   <span class="operator">&lt;</span>ol type<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span><span class="operator">,</span> <span class="operator">&lt;</span>ul type<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span> and <span class="operator">&lt;</span>li<span class="operator">&gt;</span> <span class="operator">-</span> ordered and unordered lists
   <span class="operator">&lt;</span>pre<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>pre<span class="operator">&gt;</span> <span class="operator">-</span> preformatted
   <span class="operator">&amp;</span>gt; <span class="operator">&amp;</span>lt; <span class="operator">&amp;</span>amp;</pre>

.. raw:: html

   <p>

Text.StyledText parser is strict, requiring tags to be correctly nested.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="index.html">Text</a></span> {
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
   }
   <span class="type"><a href="index.html">Text</a></span> {
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   <span class="name">textFormat</span>: <span class="name">Text</span>.<span class="name">RichText</span>
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
   }
   <span class="type"><a href="index.html">Text</a></span> {
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   <span class="name">textFormat</span>: <span class="name">Text</span>.<span class="name">PlainText</span>
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

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

Text.RichText supports a larger subset of HTML 4, as described on the
Supported HTML Subset page. You should prefer using Text.PlainText or
Text.StyledText instead, as they offer better performance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@textFormat -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="truncated-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

truncated : bool

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

Returns true if the text has been truncated due to maximumLineCount or
elide.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is not supported for rich text.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also maximumLineCount and elide.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@truncated -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="verticalAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

verticalAlignment : enumeration

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

Sets the horizontal and vertical alignment of the text within the Text
items width and height. By default, the text is vertically aligned to
the top. Horizontal alignment follows the natural alignment of the text,
for example text that is read from left to right will be aligned to the
left.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are Text.AlignLeft,
Text.AlignRight, Text.AlignHCenter and Text.AlignJustify. The valid
values for verticalAlignment are Text.AlignTop, Text.AlignBottom and
Text.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that for a single line of text, the size of the text is the area of
the text. In this common case, all alignments are equivalent. If you
want the text to be, say, centered in its parent, then you will need to
either modify the Item::anchors, or set horizontalAlignment to
Text.AlignHCenter and bind the width to that of the parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of Text, use the
read-only property effectiveHorizontalAlignment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@verticalAlignment -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="wrapMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

wrapMode : enumeration

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

Set this property to wrap the text to the Text item's width. The text
will only wrap if an explicit width has been set. wrapMode can be one
of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.NoWrap (default) - no wrapping will be performed. If the text
contains insufficient newlines, then contentWidth will exceed a set
width.

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.WordWrap - wrapping is done on word boundaries only. If a word is
too long, contentWidth will exceed a set width.

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.WrapAnywhere - wrapping is done at any point on a line, even if it
occurs in the middle of a word.

.. raw:: html

   </li>

.. raw:: html

   <li>

Text.Wrap - if possible, wrapping occurs at a word boundary; otherwise
it will occur at the appropriate point on the line, even in the middle
of a word.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@wrapMode -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$lineLaidOut -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineLaidOut-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

lineLaidOut(object line)

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

This signal is emitted for each line of text that is laid out during the
layout process. The specified line object provides more details about
the line that is currently being laid out.

.. raw:: html

   </p>

.. raw:: html

   <p>

This gives the opportunity to position and resize a line as it is being
laid out. It can for example be used to create columns or lay out text
around objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

The properties of the specified line object are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

number (read-only)

.. raw:: html

   </li>

.. raw:: html

   <li>

x

.. raw:: html

   </li>

.. raw:: html

   <li>

y

.. raw:: html

   </li>

.. raw:: html

   <li>

width

.. raw:: html

   </li>

.. raw:: html

   <li>

height

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For example, this will move the first 5 lines of a Text item by 100
pixels to the right:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">onLineLaidOut: {
   <span class="keyword">if</span> (line<span class="operator">.</span>number <span class="operator">&lt;</span> <span class="number">5</span>) {
   line<span class="operator">.</span>x <span class="operator">=</span> line<span class="operator">.</span>x <span class="operator">+</span> <span class="number">100</span>
   line<span class="operator">.</span>width <span class="operator">=</span> line<span class="operator">.</span>width <span class="operator">-</span> <span class="number">100</span>
   }
   }</pre>

.. raw:: html

   <p>

The corresponding handler is onLineLaidOut.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineLaidOut -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="linkActivated-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

linkActivated(string link)

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

This signal is emitted when the user clicks on a link embedded in the
text. The link must be in rich text or HTML format and the link string
provides access to the particular link.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="index.html">Text</a></span> {
   <span class="name">textFormat</span>: <span class="name">Text</span>.<span class="name">RichText</span>
   <span class="name">text</span>: <span class="string">&quot;See the &lt;a href=\&quot;http://qt-project.org\&quot;&gt;Qt Project website&lt;/a&gt;.&quot;</span>
   <span class="name">onLinkActivated</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">link</span> <span class="operator">+</span> <span class="string">&quot; link activated&quot;</span>)
   }</pre>

.. raw:: html

   <p>

The example code will display the text "See the Qt Project website."

.. raw:: html

   </p>

.. raw:: html

   <p>

Clicking on the highlighted link will output http://qt-project.org link
activated to the console.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLinkActivated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@linkActivated -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="linkHovered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

linkHovered(string link)

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

This signal is emitted when the user hovers a link embedded in the text.
The link must be in rich text or HTML format and the link string
provides access to the particular link.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLinkHovered.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also hoveredLink and linkAt().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@linkHovered -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$doLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="doLayout-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

doLayout()

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

Triggers a re-layout of the displayed text.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@doLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="linkAt-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

linkAt(real x, real y)

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

Returns the link string at point x, y in content coordinates, or an
empty string if no link exists at that point.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also hoveredLink.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@linkAt -->


