QtQuick.TextInput
=================

.. raw:: html

   <p>

Displays an editable line of text More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TextInput -->

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

acceptableInput : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

activeFocusOnPress : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

autoScroll : bool

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

displayText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

echoMode : enumeration

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

inputMask : string

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

maximumLength : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseSelectionMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

passwordCharacter : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

passwordMaskDelay : int

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

validator : Validator

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

accepted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

editingFinished()

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

ensureVisible(int position)

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

int positionAt(real x, real y, CursorPosition position)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rect positionToRectangle(int pos)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

redo()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

remove(int start, int end)

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

   <!-- $$$TextInput-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The TextInput type displays a single line of editable plain text.

.. raw:: html

   </p>

.. raw:: html

   <p>

TextInput is used to accept a line of text input. Input constraints can
be placed on a TextInput item (for example, through a validator or
inputMask), and setting echoMode to an appropriate value enables
TextInput to be used for a password input field.

.. raw:: html

   </p>

.. raw:: html

   <p>

On Mac OS X, the Up/Down key bindings for Home/End are explicitly
disabled. If you want such bindings (on any platform), you will need to
construct them in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also TextEdit and Text.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TextInput -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$acceptableInput -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="acceptableInput-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

acceptableInput : bool

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

This property is always true unless a validator or input mask has been
set. If a validator or input mask has been set, this property will only
be true if the current text is acceptable to the validator or input mask
as a final string (not as an intermediate string).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acceptableInput -->

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

Whether the TextInput should gain active focus on a mouse press. By
default this is set to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeFocusOnPress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoScroll-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoScroll : bool

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

Whether the TextInput should scroll when the text is longer than the
width. By default this is set to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ensureVisible().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoScroll -->

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

Returns true if the TextInput is writable and the content of the
clipboard is suitable for pasting into the TextInput.

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

Returns true if the TextInput is writable and there are undone
operations that can be redone.

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

Returns true if the TextInput is writable and there are previous
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

The delegate for the cursor in the TextInput.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you set a cursorDelegate for a TextInput, this delegate will be used
for drawing the cursor instead of the standard cursor. An instance of
the delegate will be created and managed by the TextInput when a cursor
is needed, and the x property of delegate instance will be set so as to
be one pixel before the top left of the current character.

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

The position of the cursor in the TextInput.

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
input. Read only.

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

Set to true when the TextInput shows a cursor.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is set and unset when the TextInput gets active focus, so
that other properties can be bound to whether the cursor is currently
showing. As it gets set and unset automatically, when you set the value
yourself you must keep in mind that your value may be overwritten.

.. raw:: html

   </p>

.. raw:: html

   <p>

It can be set directly in script, for example if a KeyProxy might
forward keys to it and you desire it to look active when this happens
(but without actually giving it active focus).

.. raw:: html

   </p>

.. raw:: html

   <p>

It should not be set directly on the item, like in the below QML, as the
specified value will be overridden an lost on focus changes.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TextInput {
   text: <span class="string">&quot;Text&quot;</span>
   cursorVisible: <span class="keyword">false</span>
   }</pre>

.. raw:: html

   <p>

In the above snippet the cursor will still become visible when the
TextInput gains active focus.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cursorVisible -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displayText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] displayText : string

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

This is the text displayed in the TextInput.

.. raw:: html

   </p>

.. raw:: html

   <p>

If echoMode is set to TextInput::Normal, this holds the same value as
the TextInput::text property. Otherwise, this property holds the text
visible to the user, while the text property holds the actual entered
text.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Unlike the TextInput::text property, this contains partial text
input from an input method.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="echoMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

echoMode : enumeration

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

Specifies how the text should be displayed in the TextInput.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextInput.Normal - Displays the text as it is. (Default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.Password - Displays platform-dependent password mask
characters instead of the actual characters.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.NoEcho - Displays nothing.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.PasswordEchoOnEdit - Displays characters as they are entered
while editing, otherwise identical to TextInput.Password.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@echoMode -->

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

Sets the horizontal alignment of the text within the TextInput item's
width and height. By default, the text alignment follows the natural
alignment of the text, for example text that is read from left to right
will be aligned to the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

TextInput does not have vertical alignment, as the natural height is
exactly the height of the single line of text. If you set the height
manually to something larger, TextInput will always be top aligned
vertically. You can use anchors to align it however you want within
another item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are TextInput.AlignLeft,
TextInput.AlignRight and TextInput.AlignHCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for verticalAlignment are TextInput.AlignTop (default),
TextInput.AlignBottom TextInput.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of TextInput, use
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

   <pre class="qml"><span class="type"><a href="index.html">TextInput</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.capitalization: <span class="name">Font</span>.<span class="name">AllLowercase</span> }</pre>

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

   <pre class="qml"><span class="type"><a href="index.html">TextInput</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.weight: <span class="name">Font</span>.<span class="name">DemiBold</span> }</pre>

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

Sets the horizontal alignment of the text within the TextInput item's
width and height. By default, the text alignment follows the natural
alignment of the text, for example text that is read from left to right
will be aligned to the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

TextInput does not have vertical alignment, as the natural height is
exactly the height of the single line of text. If you set the height
manually to something larger, TextInput will always be top aligned
vertically. You can use anchors to align it however you want within
another item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are TextInput.AlignLeft,
TextInput.AlignRight and TextInput.AlignHCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for verticalAlignment are TextInput.AlignTop (default),
TextInput.AlignBottom TextInput.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of TextInput, use
the read-only property effectiveHorizontalAlignment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@horizontalAlignment -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="inputMask-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

inputMask : string

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

Allows you to set an input mask on the TextInput, restricting the
allowable text inputs. See QLineEdit::inputMask for further details, as
the exact same mask strings are used by TextInput.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also acceptableInput and validator.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@inputMask -->

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

This property holds whether the TextInput has partial text input from an
input method.

.. raw:: html

   </p>

.. raw:: html

   <p>

While it is composing an input method may rely on mouse or key events
from the TextInput to edit or commit the partial text. This property can
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
text input and how it should operate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is a bit-wise combination of flags, or Qt.ImhNone if no hints
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
when entering passwords. This is automatically set when setting echoMode
to TextInput.Password.

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

   <li>

Qt.ImhMultiLine - The text editor doesn't close software input keyboard
when Return or Enter key is pressed (since QtQuick 2.4).

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

Returns the total number of characters in the TextInput item.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the TextInput has an inputMask the length will include mask
characters and may differ from the length of the string returned by the
text property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property can be faster than querying the length the text property
as it doesn't require any copying or conversion of the TextInput's
internal string data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@length -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumLength-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumLength : int

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

The maximum permitted length of the text in the TextInput.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the text is too long, it is truncated at the limit.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property contains a value of 32767.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumLength -->

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

TextInput.SelectCharacters - The selection is updated with individual
characters. (Default)

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.SelectWords - The selection is updated with whole words.

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

   <tr valign="top" id="passwordCharacter-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

passwordCharacter : string

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

This is the character displayed when echoMode is set to Password or
PasswordEchoOnEdit. By default it is the password character used by the
platform theme.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is set to a string with more than one character, the
first character is used. If the string is empty, the value is ignored
and the property is not set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@passwordCharacter -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="passwordMaskDelay-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

passwordMaskDelay : int

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

Sets the delay before visible character is masked with password
character, in milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

The reset method will be called by assigning undefined.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@passwordMaskDelay -->

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

Whether the TextInput should keep its selection when it loses active
focus to another item in the scene. By default this is set to false;

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

Sets whether user input can modify the contents of the TextInput.

.. raw:: html

   </p>

.. raw:: html

   <p>

If readOnly is set to true, then user input will not affect the text
property. Any bindings or attempts to set the text property will still
work.

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
input.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is equivalent to the following snippet, but is faster and easier to
use.

.. raw:: html

   </p>

.. raw:: html

   <pre class="js"><span class="name">myTextInput</span>.<span class="name">text</span>.<span class="name">toString</span>().<span class="name">substring</span>(<span class="name">myTextInput</span>.<span class="name">selectionStart</span>,
   <span class="name">myTextInput</span>.<span class="name">selectionEnd</span>);</pre>

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

The highlighted text color, used in selections.

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

The text in the TextInput.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="validator-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

validator : Validator

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

Allows you to set a validator on the TextInput. When a validator is set
the TextInput will only accept input which leaves the text property in
an acceptable or intermediate state. The accepted signal will only be
sent if the text is in an acceptable state when enter is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently supported validators are IntValidator, DoubleValidator and
RegExpValidator. An example of using validators is shown below, which
allows input of integers between 11 and 31 into the text input:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   TextInput{
   validator: IntValidator{bottom: <span class="number">11</span>; top: <span class="number">31</span>;}
   focus: <span class="keyword">true</span>
   }</pre>

.. raw:: html

   <p>

See also acceptableInput and inputMask.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@validator -->

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

Sets the horizontal alignment of the text within the TextInput item's
width and height. By default, the text alignment follows the natural
alignment of the text, for example text that is read from left to right
will be aligned to the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

TextInput does not have vertical alignment, as the natural height is
exactly the height of the single line of text. If you set the height
manually to something larger, TextInput will always be top aligned
vertically. You can use anchors to align it however you want within
another item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are TextInput.AlignLeft,
TextInput.AlignRight and TextInput.AlignHCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for verticalAlignment are TextInput.AlignTop (default),
TextInput.AlignBottom TextInput.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled to mirror
application layouts, the horizontal alignment of text will also be
mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of TextInput, use
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

Set this property to wrap the text to the TextInput item's width. The
text will only wrap if an explicit width has been set.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextInput.NoWrap - no wrapping will be performed. If the text contains
insufficient newlines, then implicitWidth will exceed a set width.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.WordWrap - wrapping is done on word boundaries only. If a word
is too long, implicitWidth will exceed a set width.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.WrapAnywhere - wrapping is done at any point on a line, even
if it occurs in the middle of a word.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.Wrap - if possible, wrapping occurs at a word boundary;
otherwise it will occur at the appropriate point on the line, even in
the middle of a word.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default is TextInput.NoWrap. If you set a width, consider using
TextInput.Wrap.

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

   <!-- $$$accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accepted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

accepted()

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

This signal is emitted when the Return or Enter key is pressed. Note
that if there is a validator or inputMask set on the text input, the
signal will only be emitted if the input is in an acceptable state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onAccepted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="editingFinished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

editingFinished()

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

This signal is emitted when the Return or Enter key is pressed or the
text input loses focus. Note that if there is a validator or inputMask
set on the text input and enter/return is pressed, this signal will only
be emitted if the input follows the inputMask and the validator returns
an acceptable state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEditingFinished.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@editingFinished -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$copy -->

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

   <tr valign="top" id="ensureVisible-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

ensureVisible(int position)

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

Scrolls the contents of the text input so that the specified character
position is visible inside the boundaries of the text input.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also autoScroll.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ensureVisible -->

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

If the TextInput has an inputMask the length will include mask
characters.

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

Inserts text into the TextInput at position.

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

   <tr valign="top" id="moveCursorSelection-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

moveCursorSelection(int position, SelectionMode mode =
TextInput.SelectCharacters)

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
default to TextInput.SelectCharacters.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextInput.SelectCharacters - Sets either the selectionStart or
selectionEnd (whichever was at the previous cursor position) to the
specified position.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.SelectWords - Sets the selectionStart and selectionEnd to
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
   moveCursorSelection(<span class="number">9</span><span class="operator">,</span> TextInput<span class="operator">.</span>SelectCharacters)
   moveCursorSelection(<span class="number">7</span><span class="operator">,</span> TextInput<span class="operator">.</span>SelectCharacters)</pre>

.. raw:: html

   <p>

This moves the cursor to position 5, extend the selection end from 5 to
9 and then retract the selection end from 9 to 7, leaving the text from
position 5 to 7 selected (the 6th and 7th characters).

.. raw:: html

   </p>

.. raw:: html

   <p>

The same sequence with TextInput.SelectWords will extend the selection
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

int positionAt(real x, real y, CursorPosition position =
CursorBetweenCharacters)

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

This function returns the character position at x and y pixels from the
top left of the textInput. Position 0 is before the first character,
position 1 is after the first character but before the second, and so on
until position text.length, which is after all characters.

.. raw:: html

   </p>

.. raw:: html

   <p>

This means that for all x values before the first character this
function returns 0, and for all x values after the last character this
function returns text.length. If the y value is above the text the
position will be that of the nearest character on the first line and if
it is below the text the position of the nearest character on the last
line will be returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The cursor position type specifies how the cursor position should be
resolved.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TextInput.CursorBetweenCharacters - Returns the position between
characters that is nearest x.

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput.CursorOnCharacter - Returns the position before the character
that is nearest x.

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

rect positionToRectangle(int pos)

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

This function takes a character position and returns the rectangle that
the cursor would occupy, if it was placed at that character position.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is similar to setting the cursorPosition, and then querying the
cursor rectangle, but the cursorPosition is not changed.

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

remove(int start, int end)

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
from the TextInput.

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


