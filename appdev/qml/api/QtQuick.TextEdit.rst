QtQuick.TextEdit
================

.. raw:: html

   <p>

Displays multiple lines of editable formatted text More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TextEdit -->

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

activeFocusOnPress : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

baseUrl : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

canPaste : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

canRedo : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

canUndo : bool

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

cursorDelegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cursorPosition : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cursorRectangle : rectangle

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cursorVisible : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

effectiveHorizontalAlignment : enumeration

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

inputMethodComposing : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

inputMethodHints : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

length : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseSelectionMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

persistentSelection : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

readOnly : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

renderType : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectByKeyboard : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectByMouse : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedTextColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectionColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectionEnd : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectionStart : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textDocument : TextDocument

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textFormat : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textMargin : real

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

void append(string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

copy()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cut()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

deselect()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string getFormattedText(int start, int end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string getText(int start, int end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

insert(int position, string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isRightToLeft(int start, int end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

linkAt(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moveCursorSelection(int position, SelectionMode mode)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paste()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int positionAt(int x, int y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rectangle positionToRectangle(position)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

redo()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string remove(int start, int end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

select(int start, int end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectAll()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectWord()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

undo()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TextEdit-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The TextEdit item displays a block of editable, formatted text.

.. raw:: html

   </p>

.. raw:: html

   <p>

It can display both plain and rich text. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">TextEdit</a></span> {
   <span class="name">width</span>: <span class="number">240</span>
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
   <span class="name">font</span>.family: <span class="string">&quot;Helvetica&quot;</span>
   <span class="name">font</span>.pointSize: <span class="number">20</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting focus to true enables the TextEdit item to receive keyboard
focus.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the TextEdit does not implement scrolling, following the
cursor, or other behaviors specific to a look-and-feel. For example, to
add flickable scrolling that follows the cursor:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">id</span>: <span class="name">flick</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>;
   <span class="name">contentWidth</span>: <span class="name">edit</span>.<span class="name">paintedWidth</span>
   <span class="name">contentHeight</span>: <span class="name">edit</span>.<span class="name">paintedHeight</span>
   <span class="name">clip</span>: <span class="number">true</span>
   <span class="keyword">function</span> <span class="name">ensureVisible</span>(<span class="name">r</span>)
   {
   <span class="keyword">if</span> (<span class="name">contentX</span> <span class="operator">&gt;=</span> <span class="name">r</span>.<span class="name">x</span>)
   <span class="name">contentX</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">x</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">contentX</span><span class="operator">+</span><span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">r</span>.<span class="name">x</span><span class="operator">+</span><span class="name">r</span>.<span class="name">width</span>)
   <span class="name">contentX</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">x</span><span class="operator">+</span><span class="name">r</span>.<span class="name">width</span><span class="operator">-</span><span class="name">width</span>;
   <span class="keyword">if</span> (<span class="name">contentY</span> <span class="operator">&gt;=</span> <span class="name">r</span>.<span class="name">y</span>)
   <span class="name">contentY</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">y</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">contentY</span><span class="operator">+</span><span class="name">height</span> <span class="operator">&lt;=</span> <span class="name">r</span>.<span class="name">y</span><span class="operator">+</span><span class="name">r</span>.<span class="name">height</span>)
   <span class="name">contentY</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">y</span><span class="operator">+</span><span class="name">r</span>.<span class="name">height</span><span class="operator">-</span><span class="name">height</span>;
   }
   <span class="type"><a href="index.html">TextEdit</a></span> {
   <span class="name">id</span>: <span class="name">edit</span>
   <span class="name">width</span>: <span class="name">flick</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">flick</span>.<span class="name">height</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">wrapMode</span>: <span class="name">TextEdit</span>.<span class="name">Wrap</span>
   <span class="name">onCursorRectangleChanged</span>: <span class="name">flick</span>.<span class="name">ensureVisible</span>(<span class="name">cursorRectangle</span>)
   }
   }</pre>

.. raw:: html

   <p>

A particular look-and-feel might use smooth scrolling (eg. using
SmoothedAnimation), might have a visible scrollbar, or a scrollbar that
fades in to show location, etc.

.. raw:: html

   </p>

.. raw:: html

   <p>

Clipboard support is provided by the cut(), copy(), and paste()
functions, and the selection can be handled in a traditional "mouse"
mechanism by setting selectByMouse, or handled completely from QML by
manipulating selectionStart and selectionEnd, or using selectAll() or
selectWord().

.. raw:: html

   </p>

.. raw:: html

   <p>

You can translate between cursor positions (characters from the start of
the document) and pixel points using positionAt() and
positionToRectangle().

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Text and TextInput.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TextEdit -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$activeFocusOnPress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activeFocusOnPress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

activeFocusOnPress : bool

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

Whether the TextEdit should gain active focus on a mouse press. By
default this is set to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeFocusOnPress -->

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

The default value is the url of the QML file instantiating the TextEdit
item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@baseUrl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canPaste-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canPaste : bool

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

Returns true if the TextEdit is writable and the content of the
clipboard is suitable for pasting into the TextEdit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canPaste -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canRedo-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canRedo : bool

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

Returns true if the TextEdit is writable and there are undone operations
that can be redone.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canRedo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canUndo-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canUndo : bool

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

Returns true if the TextEdit is writable and there are previous
operations that can be undone.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canUndo -->

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

   <pre class="qml"><span class="comment">// green text using hexadecimal notation</span>
   <span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">color</span>: <span class="string">&quot;#00FF00&quot;</span> }</pre>

.. raw:: html

   <pre class="qml"><span class="comment">// steelblue text using SVG color name</span>
   <span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span> }</pre>

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

Returns the height of the text, including the height past the height
that is covered if the text does not fit within the set height.

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

Returns the width of the text, including the width past the width which
is covered due to insufficient wrapping if wrapMode is set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cursorDelegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cursorDelegate : Component

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

The delegate for the cursor in the TextEdit.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you set a cursorDelegate for a TextEdit, this delegate will be used
for drawing the cursor instead of the standard cursor. An instance of
the delegate will be created and managed by the text edit when a cursor
is needed, and the x and y properties of delegate instance will be set
so as to be one pixel before the top left of the current character.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the root item of the delegate component must be a QQuickItem
or QQuickItem derived item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cursorDelegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cursorPosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cursorPosition : int

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

The position of the cursor in the TextEdit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cursorPosition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cursorRectangle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cursorRectangle : rectangle

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

The rectangle where the standard text cursor is rendered within the text
edit. Read-only.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position and height of a custom cursorDelegate are updated to follow
the cursorRectangle automatically when it changes. The width of the
delegate is unaffected by changes in the cursor rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cursorRectangle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cursorVisible-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cursorVisible : bool

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

If true the text edit shows a cursor.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is set and unset when the text edit gets active focus, but
it can also be set directly (useful, for example, if a KeyProxy might
forward keys to it).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cursorVisible -->

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

Sets the horizontal and vertical alignment of the text within the
TextEdit item's width and height. By default, the text alignment follows
the natural alignment of the text, for example text that is read from
left to right will be aligned to the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for horizontalAlignment are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.AlignLeft (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignRight

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignHCenter

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignJustify

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Valid values for verticalAlignment are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.AlignTop (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignBottom

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignVCenter

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of TextEdit, use
the read-only property effectiveHorizontalAlignment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effectiveHorizontalAlignment -->

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

   <pre class="qml"><span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.capitalization: <span class="name">Font</span>.<span class="name">AllLowercase</span> }</pre>

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

Using this function makes the font device dependent. Use
TextEdit::font.pointSize to set the size of the font in a device
independent manner.

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

   <pre class="qml"><span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.weight: <span class="name">Font</span>.<span class="name">DemiBold</span> }</pre>

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

Sets the horizontal and vertical alignment of the text within the
TextEdit item's width and height. By default, the text alignment follows
the natural alignment of the text, for example text that is read from
left to right will be aligned to the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for horizontalAlignment are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.AlignLeft (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignRight

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignHCenter

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignJustify

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Valid values for verticalAlignment are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.AlignTop (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignBottom

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignVCenter

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of TextEdit, use
the read-only property effectiveHorizontalAlignment.

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
the link string provides access to the particular link.

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

   <tr valign="top" id="inputMethodComposing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

inputMethodComposing : bool

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

This property holds whether the TextEdit has partial text input from an
input method.

.. raw:: html

   </p>

.. raw:: html

   <p>

While it is composing an input method may rely on mouse or key events
from the TextEdit to edit or commit the partial text. This property can
be used to determine when to disable events handlers that may interfere
with the correct operation of an input method.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@inputMethodComposing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="inputMethodHints-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

inputMethodHints : enumeration

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

Provides hints to the input method about the expected content of the
text edit and how it should operate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is a bit-wise combination of flags or Qt.ImhNone if no hints
are set.

.. raw:: html

   </p>

.. raw:: html

   <p>

Flags that alter behaviour are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.ImhHiddenText - Characters should be hidden, as is typically used
when entering passwords.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhSensitiveData - Typed text should not be stored by the active
input method in any persistent storage like predictive user dictionary.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhNoAutoUppercase - The input method should not try to automatically
switch to upper case when a sentence ends.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhPreferNumbers - Numbers are preferred (but not required).

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhPreferUppercase - Upper case letters are preferred (but not
required).

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhPreferLowercase - Lower case letters are preferred (but not
required).

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary
lookup) while typing.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhDate - The text editor functions as a date field.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhTime - The text editor functions as a time field.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Flags that restrict input (exclusive flags) are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.ImhDigitsOnly - Only digits are allowed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhFormattedNumbersOnly - Only number input is allowed. This includes
decimal point and minus sign.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhUppercaseOnly - Only upper case letter input is allowed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhLowercaseOnly - Only lower case letter input is allowed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhDialableCharactersOnly - Only characters suitable for phone
dialing are allowed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhEmailCharactersOnly - Only characters suitable for email addresses
are allowed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are allowed.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Masks:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the
exclusive flags are used.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@inputMethodHints -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="length-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

length : int

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

Returns the total number of plain text characters in the TextEdit item.

.. raw:: html

   </p>

.. raw:: html

   <p>

As this number doesn't include any formatting markup it may not be the
same as the length of the string returned by the text property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property can be faster than querying the length the text property
as it doesn't require any copying or conversion of the TextEdit's
internal string data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@length -->

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

Returns the total number of lines in the textEdit item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseSelectionMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mouseSelectionMode : enumeration

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

Specifies how text should be selected using a mouse.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.SelectCharacters - The selection is updated with individual
characters. (Default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.SelectWords - The selection is updated with whole words.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This property only applies when selectByMouse is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseSelectionMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="persistentSelection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

persistentSelection : bool

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

Whether the TextEdit should keep the selection visible when it loses
active focus to another item in the scene. By default this is set to
false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@persistentSelection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="readOnly-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

readOnly : bool

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

Whether the user can interact with the TextEdit item. If this property
is set to true the text cannot be edited by user interaction.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@readOnly -->

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

   <tr valign="top" id="selectByKeyboard-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectByKeyboard : bool

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

Defaults to true when the editor is editable, and false when read-only.

.. raw:: html

   </p>

.. raw:: html

   <p>

If true, the user can use the keyboard to select text even if the editor
is read-only. If false, the user cannot use the keyboard to select text
even if the editor is editable.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also readOnly.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectByKeyboard -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectByMouse-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectByMouse : bool

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

Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

If true, the user can use the mouse to select text in some
platform-specific way. Note that for some platforms this may not be an
appropriate interaction (eg. may conflict with how the text needs to
behave inside a Flickable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectByMouse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectedText : string

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

This read-only property provides the text currently selected in the text
edit.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is equivalent to the following snippet, but is faster and easier to
use.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">//myTextEdit is the id of the TextEdit</span>
   myTextEdit<span class="operator">.</span>text<span class="operator">.</span>toString()<span class="operator">.</span>substring(myTextEdit<span class="operator">.</span>selectionStart<span class="operator">,</span>
   myTextEdit<span class="operator">.</span>selectionEnd);</pre>

.. raw:: html

   <!-- @@@selectedText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedTextColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectedTextColor : color

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

The selected text color, used in selections.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedTextColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectionColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectionColor : color

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

The text highlight color, used behind selections.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectionColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectionEnd-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectionEnd : int

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

The cursor position after the last character in the current selection.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read-only. To change the selection, use
select(start,end), selectAll(), or selectWord().

.. raw:: html

   </p>

.. raw:: html

   <p>

See also selectionStart, cursorPosition, and selectedText.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectionEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectionStart-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectionStart : int

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

The cursor position before the first character in the current selection.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read-only. To change the selection, use
select(start,end), selectAll(), or selectWord().

.. raw:: html

   </p>

.. raw:: html

   <p>

See also selectionEnd, cursorPosition, and selectedText.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectionStart -->

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

The text to display. If the text format is AutoText the text edit will
automatically determine whether the text should be treated as rich text.
This determination is made using Qt::mightBeRichText().

.. raw:: html

   </p>

.. raw:: html

   <p>

The text-property is mostly suitable for setting the initial content and
handling modifications to relatively small text content. The append(),
insert() and remove() methods provide more fine-grained control and
remarkably better performance for modifying especially large rich text
content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textDocument-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textDocument : TextDocument

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

Returns the QQuickTextDocument of this TextEdit. It can be used to
implement syntax highlighting using QSyntaxHighlighter.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QQuickTextDocument.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@textDocument -->

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

   <ul>

.. raw:: html

   <li>

TextEdit.AutoText

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.PlainText

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.RichText

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default is TextEdit.PlainText. If the text format is
TextEdit.AutoText the text edit will automatically determine whether the
text should be treated as rich text. This determination is made using
Qt::mightBeRichText().

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
   <span class="type"><a href="index.html">TextEdit</a></span> {
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
   }
   <span class="type"><a href="index.html">TextEdit</a></span> {
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   <span class="name">textFormat</span>: <span class="name">TextEdit</span>.<span class="name">RichText</span>
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
   }
   <span class="type"><a href="index.html">TextEdit</a></span> {
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   <span class="name">textFormat</span>: <span class="name">TextEdit</span>.<span class="name">PlainText</span>
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

   <!-- @@@textFormat -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textMargin : real

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

The margin, in pixels, around the text in the TextEdit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@textMargin -->

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

Sets the horizontal and vertical alignment of the text within the
TextEdit item's width and height. By default, the text alignment follows
the natural alignment of the text, for example text that is read from
left to right will be aligned to the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for horizontalAlignment are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.AlignLeft (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignRight

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignHCenter

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignJustify

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Valid values for verticalAlignment are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.AlignTop (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignBottom

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.AlignVCenter

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of TextEdit, use
the read-only property effectiveHorizontalAlignment.

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

Set this property to wrap the text to the TextEdit item's width. The
text will only wrap if an explicit width has been set.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.NoWrap - no wrapping will be performed. If the text contains
insufficient newlines, then implicitWidth will exceed a set width.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.WordWrap - wrapping is done on word boundaries only. If a word
is too long, implicitWidth will exceed a set width.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.WrapAnywhere - wrapping is done at any point on a line, even if
it occurs in the middle of a word.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.Wrap - if possible, wrapping occurs at a word boundary;
otherwise it will occur at the appropriate point on the line, even in
the middle of a word.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default is TextEdit.NoWrap. If you set a width, consider using
TextEdit.Wrap.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@wrapMode -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$linkActivated -->

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

   <!-- $$$append -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="append-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void append(string text)

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

Appends a new paragraph with text to the end of the TextEdit.

.. raw:: html

   </p>

.. raw:: html

   <p>

In order to append without inserting a new paragraph, call
myTextEdit.insert(myTextEdit.length, text) instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@append -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="copy-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

copy()

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

Copies the currently selected text to the system clipboard.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@copy -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cut-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cut()

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

Moves the currently selected text to the system clipboard.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cut -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="deselect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

deselect()

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

Removes active text selection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@deselect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="getFormattedText-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string getFormattedText(int start, int end)

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

Returns the section of text that is between the start and end positions.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned text will be formatted according the textFormat property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@getFormattedText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="getText-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string getText(int start, int end)

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

Returns the section of text that is between the start and end positions.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned text does not include any rich text formatting.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@getText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="insert-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

insert(int position, string text)

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

Inserts text into the TextEdit at position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@insert -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isRightToLeft-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

isRightToLeft(int start, int end)

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

Returns true if the natural reading direction of the editor text found
between positions start and end is right to left.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isRightToLeft -->

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

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveCursorSelection-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

moveCursorSelection(int position, SelectionMode mode =
TextEdit.SelectCharacters)

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

Moves the cursor to position and updates the selection according to the
optional mode parameter. (To only move the cursor, set the
cursorPosition property.)

.. raw:: html

   </p>

.. raw:: html

   <p>

When this method is called it additionally sets either the
selectionStart or the selectionEnd (whichever was at the previous cursor
position) to the specified position. This allows you to easily extend
and contract the selected text range.

.. raw:: html

   </p>

.. raw:: html

   <p>

The selection mode specifies whether the selection is updated on a per
character or a per word basis. If not specified the selection mode will
default to TextEdit.SelectCharacters.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextEdit.SelectCharacters - Sets either the selectionStart or
selectionEnd (whichever was at the previous cursor position) to the
specified position.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit.SelectWords - Sets the selectionStart and selectionEnd to
include all words between the specified position and the previous cursor
position. Words partially in the range are included.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For example, take this sequence of calls:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">cursorPosition <span class="operator">=</span> <span class="number">5</span>
   moveCursorSelection(<span class="number">9</span><span class="operator">,</span> TextEdit<span class="operator">.</span>SelectCharacters)
   moveCursorSelection(<span class="number">7</span><span class="operator">,</span> TextEdit<span class="operator">.</span>SelectCharacters)</pre>

.. raw:: html

   <p>

This moves the cursor to position 5, extend the selection end from 5 to
9 and then retract the selection end from 9 to 7, leaving the text from
position 5 to 7 selected (the 6th and 7th characters).

.. raw:: html

   </p>

.. raw:: html

   <p>

The same sequence with TextEdit.SelectWords will extend the selection
start to a word boundary before or on position 5 and extend the
selection end to a word boundary on or past position 9.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveCursorSelection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="paste-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

paste()

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

Replaces the currently selected text by the contents of the system
clipboard.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@paste -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionAt-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int positionAt(int x, int y)

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

Returns the text position closest to pixel position (x, y).

.. raw:: html

   </p>

.. raw:: html

   <p>

Position 0 is before the first character, position 1 is after the first
character but before the second, and so on until position text.length,
which is after all characters.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@positionAt -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionToRectangle-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

rectangle positionToRectangle(position)

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

Returns the rectangle at the given position in the text. The x, y, and
height properties correspond to the cursor that would describe that
position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@positionToRectangle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="redo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

redo()

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

Redoes the last operation if redo is available.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@redo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="remove-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string remove(int start, int end)

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

Removes the section of text that is between the start and end positions
from the TextEdit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@remove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="select-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

select(int start, int end)

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

Causes the text from start to end to be selected.

.. raw:: html

   </p>

.. raw:: html

   <p>

If either start or end is out of range, the selection is not changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

After calling this, selectionStart will become the lesser and
selectionEnd will become the greater (regardless of the order passed to
this method).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also selectionStart and selectionEnd.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@select -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectAll-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

selectAll()

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

Causes all text to be selected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectAll -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectWord-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

selectWord()

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

Causes the word closest to the current cursor position to be selected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectWord -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="undo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

undo()

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

Undoes the last operation if undo is available. Deselects any current
selection, and updates the selection start to the current cursor
position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@undo -->


