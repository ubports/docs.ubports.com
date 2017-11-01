Displays multiple lines of editable formatted text

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`activeFocusOnPress </sdk/apps/qml/QtQuick/TextEdit#activeFocusOnPress-prop>`__****
   : bool
-  ****`baseUrl </sdk/apps/qml/QtQuick/TextEdit#baseUrl-prop>`__**** :
   url
-  ****`canPaste </sdk/apps/qml/QtQuick/TextEdit#canPaste-prop>`__**** :
   bool
-  ****`canRedo </sdk/apps/qml/QtQuick/TextEdit#canRedo-prop>`__**** :
   bool
-  ****`canUndo </sdk/apps/qml/QtQuick/TextEdit#canUndo-prop>`__**** :
   bool
-  ****`color </sdk/apps/qml/QtQuick/TextEdit#color-prop>`__**** : color
-  ****`contentHeight </sdk/apps/qml/QtQuick/TextEdit#contentHeight-prop>`__****
   : real
-  ****`contentWidth </sdk/apps/qml/QtQuick/TextEdit#contentWidth-prop>`__****
   : real
-  ****`cursorDelegate </sdk/apps/qml/QtQuick/TextEdit#cursorDelegate-prop>`__****
   : Component
-  ****`cursorPosition </sdk/apps/qml/QtQuick/TextEdit#cursorPosition-prop>`__****
   : int
-  ****`cursorRectangle </sdk/apps/qml/QtQuick/TextEdit#cursorRectangle-prop>`__****
   : rectangle
-  ****`cursorVisible </sdk/apps/qml/QtQuick/TextEdit#cursorVisible-prop>`__****
   : bool
-  ****`effectiveHorizontalAlignment </sdk/apps/qml/QtQuick/TextEdit#effectiveHorizontalAlignment-prop>`__****
   : enumeration
-  ****`font.bold </sdk/apps/qml/QtQuick/TextEdit#font.bold-prop>`__****
   : bool
-  ****`font.capitalization </sdk/apps/qml/QtQuick/TextEdit#font.capitalization-prop>`__****
   : enumeration
-  ****`font.family </sdk/apps/qml/QtQuick/TextEdit#font.family-prop>`__****
   : string
-  ****`font.italic </sdk/apps/qml/QtQuick/TextEdit#font.italic-prop>`__****
   : bool
-  ****`font.letterSpacing </sdk/apps/qml/QtQuick/TextEdit#font.letterSpacing-prop>`__****
   : real
-  ****`font.pixelSize </sdk/apps/qml/QtQuick/TextEdit#font.pixelSize-prop>`__****
   : int
-  ****`font.pointSize </sdk/apps/qml/QtQuick/TextEdit#font.pointSize-prop>`__****
   : real
-  ****`font.strikeout </sdk/apps/qml/QtQuick/TextEdit#font.strikeout-prop>`__****
   : bool
-  ****`font.underline </sdk/apps/qml/QtQuick/TextEdit#font.underline-prop>`__****
   : bool
-  ****`font.weight </sdk/apps/qml/QtQuick/TextEdit#font.weight-prop>`__****
   : enumeration
-  ****`font.wordSpacing </sdk/apps/qml/QtQuick/TextEdit#font.wordSpacing-prop>`__****
   : real
-  ****`horizontalAlignment </sdk/apps/qml/QtQuick/TextEdit#horizontalAlignment-prop>`__****
   : enumeration
-  ****`hoveredLink </sdk/apps/qml/QtQuick/TextEdit#hoveredLink-prop>`__****
   : string
-  ****`inputMethodComposing </sdk/apps/qml/QtQuick/TextEdit#inputMethodComposing-prop>`__****
   : bool
-  ****`inputMethodHints </sdk/apps/qml/QtQuick/TextEdit#inputMethodHints-prop>`__****
   : enumeration
-  ****`length </sdk/apps/qml/QtQuick/TextEdit#length-prop>`__**** : int
-  ****`lineCount </sdk/apps/qml/QtQuick/TextEdit#lineCount-prop>`__****
   : int
-  ****`mouseSelectionMode </sdk/apps/qml/QtQuick/TextEdit#mouseSelectionMode-prop>`__****
   : enumeration
-  ****`persistentSelection </sdk/apps/qml/QtQuick/TextEdit#persistentSelection-prop>`__****
   : bool
-  ****`readOnly </sdk/apps/qml/QtQuick/TextEdit#readOnly-prop>`__**** :
   bool
-  ****`renderType </sdk/apps/qml/QtQuick/TextEdit#renderType-prop>`__****
   : enumeration
-  ****`selectByKeyboard </sdk/apps/qml/QtQuick/TextEdit#selectByKeyboard-prop>`__****
   : bool
-  ****`selectByMouse </sdk/apps/qml/QtQuick/TextEdit#selectByMouse-prop>`__****
   : bool
-  ****`selectedText </sdk/apps/qml/QtQuick/TextEdit#selectedText-prop>`__****
   : string
-  ****`selectedTextColor </sdk/apps/qml/QtQuick/TextEdit#selectedTextColor-prop>`__****
   : color
-  ****`selectionColor </sdk/apps/qml/QtQuick/TextEdit#selectionColor-prop>`__****
   : color
-  ****`selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__****
   : int
-  ****`selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__****
   : int
-  ****`text </sdk/apps/qml/QtQuick/TextEdit#text-prop>`__**** : string
-  ****`textDocument </sdk/apps/qml/QtQuick/TextEdit#textDocument-prop>`__****
   : TextDocument
-  ****`textFormat </sdk/apps/qml/QtQuick/TextEdit#textFormat-prop>`__****
   : enumeration
-  ****`textMargin </sdk/apps/qml/QtQuick/TextEdit#textMargin-prop>`__****
   : real
-  ****`verticalAlignment </sdk/apps/qml/QtQuick/TextEdit#verticalAlignment-prop>`__****
   : enumeration
-  ****`wrapMode </sdk/apps/qml/QtQuick/TextEdit#wrapMode-prop>`__**** :
   enumeration

Signals
-------

-  ****`linkActivated </sdk/apps/qml/QtQuick/TextEdit#linkActivated-signal>`__****\ (string
   *link*)
-  ****`linkHovered </sdk/apps/qml/QtQuick/TextEdit#linkHovered-signal>`__****\ (string
   *link*)

Methods
-------

-  void
   ****`append </sdk/apps/qml/QtQuick/TextEdit#append-method>`__****\ (string
   *text*)
-  ****`copy </sdk/apps/qml/QtQuick/TextEdit#copy-method>`__****\ ()
-  ****`cut </sdk/apps/qml/QtQuick/TextEdit#cut-method>`__****\ ()
-  ****`deselect </sdk/apps/qml/QtQuick/TextEdit#deselect-method>`__****\ ()
-  string
   ****`getFormattedText </sdk/apps/qml/QtQuick/TextEdit#getFormattedText-method>`__****\ (int
   *start*, int *end*)
-  string
   ****`getText </sdk/apps/qml/QtQuick/TextEdit#getText-method>`__****\ (int
   *start*, int *end*)
-  ****`insert </sdk/apps/qml/QtQuick/TextEdit#insert-method>`__****\ (int
   *position*, string *text*)
-  ****`isRightToLeft </sdk/apps/qml/QtQuick/TextEdit#isRightToLeft-method>`__****\ (int
   *start*, int *end*)
-  ****`linkAt </sdk/apps/qml/QtQuick/TextEdit#linkAt-method>`__****\ (real
   *x*, real *y*)
-  ****`moveCursorSelection </sdk/apps/qml/QtQuick/TextEdit#moveCursorSelection-method>`__****\ (int
   *position*, SelectionMode *mode*)
-  ****`paste </sdk/apps/qml/QtQuick/TextEdit#paste-method>`__****\ ()
-  int
   ****`positionAt </sdk/apps/qml/QtQuick/TextEdit#positionAt-method>`__****\ (int
   *x*, int *y*)
-  rectangle
   ****`positionToRectangle </sdk/apps/qml/QtQuick/TextEdit#positionToRectangle-method>`__****\ (position)
-  ****`redo </sdk/apps/qml/QtQuick/TextEdit#redo-method>`__****\ ()
-  string
   ****`remove </sdk/apps/qml/QtQuick/TextEdit#remove-method>`__****\ (int
   *start*, int *end*)
-  ****`select </sdk/apps/qml/QtQuick/TextEdit#select-method>`__****\ (int
   *start*, int *end*)
-  ****`selectAll </sdk/apps/qml/QtQuick/TextEdit#selectAll-method>`__****\ ()
-  ****`selectWord </sdk/apps/qml/QtQuick/TextEdit#selectWord-method>`__****\ ()
-  ****`undo </sdk/apps/qml/QtQuick/TextEdit#undo-method>`__****\ ()

Detailed Description
--------------------

The `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item displays a block
of editable, formatted text.

It can display both plain and rich text. For example:

.. code:: qml

    TextEdit {
        width: 240
        text: "<b>Hello</b> <i>World!</i>"
        font.family: "Helvetica"
        font.pointSize: 20
        color: "blue"
        focus: true
    }

|image0|

Setting `focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__ to ``true``
enables the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item to
receive keyboard focus.

Note that the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ does not
implement scrolling, following the cursor, or other behaviors specific
to a look-and-feel. For example, to add flickable scrolling that follows
the cursor:

.. code:: qml

    Flickable {
         id: flick
         width: 300; height: 200;
         contentWidth: edit.paintedWidth
         contentHeight: edit.paintedHeight
         clip: true
         function ensureVisible(r)
         {
             if (contentX >= r.x)
                 contentX = r.x;
             else if (contentX+width <= r.x+r.width)
                 contentX = r.x+r.width-width;
             if (contentY >= r.y)
                 contentY = r.y;
             else if (contentY+height <= r.y+r.height)
                 contentY = r.y+r.height-height;
         }
         TextEdit {
             id: edit
             width: flick.width
             height: flick.height
             focus: true
             wrapMode: TextEdit.Wrap
             onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
         }
     }

A particular look-and-feel might use smooth scrolling (eg. using
`SmoothedAnimation </sdk/apps/qml/QtQuick/SmoothedAnimation/>`__), might
have a visible scrollbar, or a scrollbar that fades in to show location,
etc.

Clipboard support is provided by the
`cut() </sdk/apps/qml/QtQuick/TextEdit#cut-method>`__,
`copy() </sdk/apps/qml/QtQuick/TextEdit#copy-method>`__, and
`paste() </sdk/apps/qml/QtQuick/TextEdit#paste-method>`__ functions, and
the selection can be handled in a traditional "mouse" mechanism by
setting
`selectByMouse </sdk/apps/qml/QtQuick/TextEdit#selectByMouse-prop>`__,
or handled completely from QML by manipulating
`selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__
and `selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__,
or using
`selectAll() </sdk/apps/qml/QtQuick/TextEdit#selectAll-method>`__ or
`selectWord() </sdk/apps/qml/QtQuick/TextEdit#selectWord-method>`__.

You can translate between cursor positions (characters from the start of
the document) and pixel points using
`positionAt() </sdk/apps/qml/QtQuick/TextEdit#positionAt-method>`__ and
`positionToRectangle() </sdk/apps/qml/QtQuick/TextEdit#positionToRectangle-method>`__.

**See also** `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__
and `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ activeFocusOnPress : bool                                       |
+--------------------------------------------------------------------------+

Whether the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ should gain
active focus on a mouse press. By default this is set to true.

| 

+--------------------------------------------------------------------------+
|        \ baseUrl : url                                                   |
+--------------------------------------------------------------------------+

This property specifies a base URL which is used to resolve relative
URLs within the text.

The default value is the url of the QML file instantiating the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item.

| 

+--------------------------------------------------------------------------+
|        \ canPaste : bool                                                 |
+--------------------------------------------------------------------------+

Returns true if the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ is
writable and the content of the clipboard is suitable for pasting into
the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.

| 

+--------------------------------------------------------------------------+
|        \ canRedo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ is
writable and there are
`undone </sdk/apps/qml/QtQuick/TextEdit#undo-method>`__ operations that
can be redone.

| 

+--------------------------------------------------------------------------+
|        \ canUndo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ is
writable and there are previous operations that can be undone.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The text color.

.. code:: qml

    // green text using hexadecimal notation
    TextEdit { color: "#00FF00" }

.. code:: qml

    // steelblue text using SVG color name
    TextEdit { color: "steelblue" }

| 

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

Returns the height of the text, including the height past the height
that is covered if the text does not fit within the set height.

| 

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

Returns the width of the text, including the width past the width which
is covered due to insufficient wrapping if
`wrapMode </sdk/apps/qml/QtQuick/TextEdit#wrapMode-prop>`__ is set.

| 

+--------------------------------------------------------------------------+
|        \ cursorDelegate : Component                                      |
+--------------------------------------------------------------------------+

The delegate for the cursor in the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.

If you set a cursorDelegate for a
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__, this delegate will be
used for drawing the cursor instead of the standard cursor. An instance
of the delegate will be created and managed by the text edit when a
cursor is needed, and the x and y properties of delegate instance will
be set so as to be one pixel before the top left of the current
character.

Note that the root item of the delegate component must be a QQuickItem
or QQuickItem derived item.

| 

+--------------------------------------------------------------------------+
|        \ cursorPosition : int                                            |
+--------------------------------------------------------------------------+

The position of the cursor in the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.

| 

+--------------------------------------------------------------------------+
|        \ cursorRectangle : rectangle                                     |
+--------------------------------------------------------------------------+

The rectangle where the standard text cursor is rendered within the text
edit. Read-only.

The position and height of a custom
`cursorDelegate </sdk/apps/qml/QtQuick/TextEdit#cursorDelegate-prop>`__
are updated to follow the cursorRectangle automatically when it changes.
The width of the delegate is unaffected by changes in the cursor
rectangle.

| 

+--------------------------------------------------------------------------+
|        \ cursorVisible : bool                                            |
+--------------------------------------------------------------------------+

If true the text edit shows a cursor.

This property is set and unset when the text edit gets active focus, but
it can also be set directly (useful, for example, if a KeyProxy might
forward keys to it).

| 

+--------------------------------------------------------------------------+
|        \ effectiveHorizontalAlignment : enumeration                      |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item's width and height.
By default, the text alignment follows the natural alignment of the
text, for example text that is read from left to right will be aligned
to the left.

Valid values for ``horizontalAlignment`` are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignLeft (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignRight
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignHCenter
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignJustify

Valid values for ``verticalAlignment`` are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignTop (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignBottom
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignVCenter

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property ``horizontalAlignment`` will
remain unchanged. To query the effective horizontal alignment of
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__, use the read-only
property ``effectiveHorizontalAlignment``.

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

    TextEdit { text: "Hello"; font.capitalization: Font.AllLowercase }

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

Using this function makes the font device dependent. Use
`TextEdit::font.pointSize </sdk/apps/qml/QtQuick/TextEdit#font.pointSize-prop>`__
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

    TextEdit { text: "Hello"; font.weight: Font.DemiBold }

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
|        \ horizontalAlignment : enumeration                               |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item's width and height.
By default, the text alignment follows the natural alignment of the
text, for example text that is read from left to right will be aligned
to the left.

Valid values for ``horizontalAlignment`` are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignLeft (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignRight
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignHCenter
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignJustify

Valid values for ``verticalAlignment`` are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignTop (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignBottom
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignVCenter

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property ``horizontalAlignment`` will
remain unchanged. To query the effective horizontal alignment of
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__, use the read-only
property ``effectiveHorizontalAlignment``.

| 

+--------------------------------------------------------------------------+
|        \ hoveredLink : string                                            |
+--------------------------------------------------------------------------+

This property contains the link string when the user hovers a link
embedded in the text. The link must be in rich text or HTML format and
the link string provides access to the particular link.

This QML property was introduced in Qt 5.2.

**See also**
`linkHovered </sdk/apps/qml/QtQuick/TextEdit#linkHovered-signal>`__ and
`linkAt() </sdk/apps/qml/QtQuick/TextEdit#linkAt-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ inputMethodComposing : bool                                     |
+--------------------------------------------------------------------------+

This property holds whether the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ has partial text input
from an input method.

While it is composing an input method may rely on mouse or key events
from the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ to edit or
commit the partial text. This property can be used to determine when to
disable events handlers that may interfere with the correct operation of
an input method.

| 

+--------------------------------------------------------------------------+
|        \ inputMethodHints : enumeration                                  |
+--------------------------------------------------------------------------+

Provides hints to the input method about the expected content of the
text edit and how it should operate.

The value is a bit-wise combination of flags or Qt.ImhNone if no hints
are set.

Flags that alter behaviour are:

-  Qt.ImhHiddenText - Characters should be hidden, as is typically used
   when entering passwords.
-  Qt.ImhSensitiveData - Typed text should not be stored by the active
   input method in any persistent storage like predictive user
   dictionary.
-  Qt.ImhNoAutoUppercase - The input method should not try to
   automatically switch to upper case when a sentence ends.
-  Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-  Qt.ImhPreferUppercase - Upper case letters are preferred (but not
   required).
-  Qt.ImhPreferLowercase - Lower case letters are preferred (but not
   required).
-  Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary
   lookup) while typing.
-  Qt.ImhDate - The text editor functions as a date field.
-  Qt.ImhTime - The text editor functions as a time field.

Flags that restrict input (exclusive flags) are:

-  Qt.ImhDigitsOnly - Only digits are allowed.
-  Qt.ImhFormattedNumbersOnly - Only number input is allowed. This
   includes decimal point and minus sign.
-  Qt.ImhUppercaseOnly - Only upper case letter input is allowed.
-  Qt.ImhLowercaseOnly - Only lower case letter input is allowed.
-  Qt.ImhDialableCharactersOnly - Only characters suitable for phone
   dialing are allowed.
-  Qt.ImhEmailCharactersOnly - Only characters suitable for email
   addresses are allowed.
-  Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are
   allowed.

Masks:

-  Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the
   exclusive flags are used.

| 

+--------------------------------------------------------------------------+
|        \ length : int                                                    |
+--------------------------------------------------------------------------+

Returns the total number of plain text characters in the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item.

As this number doesn't include any formatting markup it may not be the
same as the length of the string returned by the
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ property.

This property can be faster than querying the length the
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ property as
it doesn't require any copying or conversion of the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__'s internal string data.

| 

+--------------------------------------------------------------------------+
|        \ lineCount : int                                                 |
+--------------------------------------------------------------------------+

Returns the total number of lines in the textEdit item.

| 

+--------------------------------------------------------------------------+
|        \ mouseSelectionMode : enumeration                                |
+--------------------------------------------------------------------------+

Specifies how text should be selected using a mouse.

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.SelectCharacters - The
   selection is updated with individual characters. (Default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.SelectWords - The
   selection is updated with whole words.

This property only applies when
`selectByMouse </sdk/apps/qml/QtQuick/TextEdit#selectByMouse-prop>`__ is
true.

| 

+--------------------------------------------------------------------------+
|        \ persistentSelection : bool                                      |
+--------------------------------------------------------------------------+

Whether the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ should keep
the selection visible when it loses active focus to another item in the
scene. By default this is set to false.

| 

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

Whether the user can interact with the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item. If this property is
set to true the text cannot be edited by user interaction.

By default this property is false.

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
|        \ selectByKeyboard : bool                                         |
+--------------------------------------------------------------------------+

Defaults to true when the editor is editable, and false when read-only.

If true, the user can use the keyboard to select text even if the editor
is read-only. If false, the user cannot use the keyboard to select text
even if the editor is editable.

This QML property was introduced in Qt 5.1.

**See also**
`readOnly </sdk/apps/qml/QtQuick/TextEdit#readOnly-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ selectByMouse : bool                                            |
+--------------------------------------------------------------------------+

Defaults to false.

If true, the user can use the mouse to select text in some
platform-specific way. Note that for some platforms this may not be an
appropriate interaction (eg. may conflict with how the text needs to
behave inside a Flickable.

| 

+--------------------------------------------------------------------------+
|        \ selectedText : string                                           |
+--------------------------------------------------------------------------+

This read-only property provides the text currently selected in the text
edit.

It is equivalent to the following snippet, but is faster and easier to
use.

.. code:: cpp

    //myTextEdit is the id of the TextEdit
    myTextEdit.text.toString().substring(myTextEdit.selectionStart,
            myTextEdit.selectionEnd);

| 

+--------------------------------------------------------------------------+
|        \ selectedTextColor : color                                       |
+--------------------------------------------------------------------------+

The selected text color, used in selections.

| 

+--------------------------------------------------------------------------+
|        \ selectionColor : color                                          |
+--------------------------------------------------------------------------+

The text highlight color, used behind selections.

| 

+--------------------------------------------------------------------------+
|        \ selectionEnd : int                                              |
+--------------------------------------------------------------------------+

The cursor position after the last character in the current selection.

This property is read-only. To change the selection, use
select(start,end),
`selectAll() </sdk/apps/qml/QtQuick/TextEdit#selectAll-method>`__, or
`selectWord() </sdk/apps/qml/QtQuick/TextEdit#selectWord-method>`__.

**See also**
`selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__,
`cursorPosition </sdk/apps/qml/QtQuick/TextEdit#cursorPosition-prop>`__,
and `selectedText </sdk/apps/qml/QtQuick/TextEdit#selectedText-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ selectionStart : int                                            |
+--------------------------------------------------------------------------+

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use
select(start,end),
`selectAll() </sdk/apps/qml/QtQuick/TextEdit#selectAll-method>`__, or
`selectWord() </sdk/apps/qml/QtQuick/TextEdit#selectWord-method>`__.

**See also**
`selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__,
`cursorPosition </sdk/apps/qml/QtQuick/TextEdit#cursorPosition-prop>`__,
and `selectedText </sdk/apps/qml/QtQuick/TextEdit#selectedText-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The text to display. If the text format is AutoText the text edit will
automatically determine whether the text should be treated as rich text.
This determination is made using Qt::mightBeRichText().

The text-property is mostly suitable for setting the initial content and
handling modifications to relatively small text content. The
`append() </sdk/apps/qml/QtQuick/TextEdit#append-method>`__,
`insert() </sdk/apps/qml/QtQuick/TextEdit#insert-method>`__ and
`remove() </sdk/apps/qml/QtQuick/TextEdit#remove-method>`__ methods
provide more fine-grained control and remarkably better performance for
modifying especially large rich text content.

| 

+--------------------------------------------------------------------------+
|        \ textDocument : TextDocument                                     |
+--------------------------------------------------------------------------+

Returns the QQuickTextDocument of this TextEdit. It can be used to
implement syntax highlighting using QSyntaxHighlighter.

This QML property was introduced in Qt 5.1.

**See also** QQuickTextDocument.

| 

+--------------------------------------------------------------------------+
|        \ textFormat : enumeration                                        |
+--------------------------------------------------------------------------+

The way the text property should be displayed.

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AutoText
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.PlainText
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.RichText

The default is `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.PlainText.
If the text format is
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AutoText the text edit
will automatically determine whether the text should be treated as rich
text. This determination is made using Qt::mightBeRichText().

+--------------------------------------+--------------------------------------+
| .. code:: qml                        | |image1|                             |
|                                      |                                      |
|     Column {                         |                                      |
|         TextEdit {                   |                                      |
|             font.pointSize: 24       |                                      |
|             text: "<b>Hello</b> <i>W |                                      |
| orld!</i>"                           |                                      |
|         }                            |                                      |
|         TextEdit {                   |                                      |
|             font.pointSize: 24       |                                      |
|             textFormat: TextEdit.Ric |                                      |
| hText                                |                                      |
|             text: "<b>Hello</b> <i>W |                                      |
| orld!</i>"                           |                                      |
|         }                            |                                      |
|         TextEdit {                   |                                      |
|             font.pointSize: 24       |                                      |
|             textFormat: TextEdit.Pla |                                      |
| inText                               |                                      |
|             text: "<b>Hello</b> <i>W |                                      |
| orld!</i>"                           |                                      |
|         }                            |                                      |
|     }                                |                                      |
+--------------------------------------+--------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ textMargin : real                                               |
+--------------------------------------------------------------------------+

The margin, in pixels, around the text in the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.

| 

+--------------------------------------------------------------------------+
|        \ verticalAlignment : enumeration                                 |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item's width and height.
By default, the text alignment follows the natural alignment of the
text, for example text that is read from left to right will be aligned
to the left.

Valid values for ``horizontalAlignment`` are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignLeft (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignRight
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignHCenter
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignJustify

Valid values for ``verticalAlignment`` are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignTop (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignBottom
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignVCenter

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property ``horizontalAlignment`` will
remain unchanged. To query the effective horizontal alignment of
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__, use the read-only
property ``effectiveHorizontalAlignment``.

| 

+--------------------------------------------------------------------------+
|        \ wrapMode : enumeration                                          |
+--------------------------------------------------------------------------+

Set this property to wrap the text to the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ item's width. The text
will only wrap if an explicit width has been set.

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.NoWrap - no wrapping
   will be performed. If the text contains insufficient newlines, then
   implicitWidth will exceed a set width.
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.WordWrap - wrapping is
   done on word boundaries only. If a word is too long, implicitWidth
   will exceed a set width.
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.WrapAnywhere -
   wrapping is done at any point on a line, even if it occurs in the
   middle of a word.
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.Wrap - if possible,
   wrapping occurs at a word boundary; otherwise it will occur at the
   appropriate point on the line, even in the middle of a word.

The default is `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.NoWrap. If
you set a width, consider using
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.Wrap.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ linkActivated(string *link*)                                    |
+--------------------------------------------------------------------------+

This signal is emitted when the user clicks on a link embedded in the
text. The link must be in rich text or HTML format and the *link* string
provides access to the particular link.

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
`hoveredLink </sdk/apps/qml/QtQuick/TextEdit#hoveredLink-prop>`__ and
`linkAt() </sdk/apps/qml/QtQuick/TextEdit#linkAt-method>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void append(string *text*)                                      |
+--------------------------------------------------------------------------+

Appends a new paragraph with *text* to the end of the
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.

In order to append without inserting a new paragraph, call
``myTextEdit.insert(myTextEdit.length, text)`` instead.

This QML method was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ copy()                                                          |
+--------------------------------------------------------------------------+

Copies the currently selected text to the system clipboard.

| 

+--------------------------------------------------------------------------+
|        \ cut()                                                           |
+--------------------------------------------------------------------------+

Moves the currently selected text to the system clipboard.

| 

+--------------------------------------------------------------------------+
|        \ deselect()                                                      |
+--------------------------------------------------------------------------+

Removes active text selection.

| 

+--------------------------------------------------------------------------+
|        \ string getFormattedText(int *start*, int *end*)                 |
+--------------------------------------------------------------------------+

Returns the section of text that is between the *start* and *end*
positions.

The returned text will be formatted according the
`textFormat </sdk/apps/qml/QtQuick/TextEdit#textFormat-prop>`__
property.

| 

+--------------------------------------------------------------------------+
|        \ string getText(int *start*, int *end*)                          |
+--------------------------------------------------------------------------+

Returns the section of text that is between the *start* and *end*
positions.

The returned text does not include any rich text formatting.

| 

+--------------------------------------------------------------------------+
|        \ insert(int *position*, string *text*)                           |
+--------------------------------------------------------------------------+

Inserts *text* into the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__
at position.

| 

+--------------------------------------------------------------------------+
|        \ isRightToLeft(int *start*, int *end*)                           |
+--------------------------------------------------------------------------+

Returns true if the natural reading direction of the editor text found
between positions *start* and *end* is right to left.

| 

+--------------------------------------------------------------------------+
|        \ linkAt(real *x*, real *y*)                                      |
+--------------------------------------------------------------------------+

Returns the link string at point *x*, *y* in content coordinates, or an
empty string if no link exists at that point.

This QML method was introduced in Qt 5.3.

**See also**
`hoveredLink </sdk/apps/qml/QtQuick/TextEdit#hoveredLink-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ moveCursorSelection(int *position*, SelectionMode *mode* =      |
| TextEdit.SelectCharacters)                                               |
+--------------------------------------------------------------------------+

Moves the cursor to *position* and updates the selection according to
the optional *mode* parameter. (To only move the cursor, set the
`cursorPosition </sdk/apps/qml/QtQuick/TextEdit#cursorPosition-prop>`__
property.)

When this method is called it additionally sets either the
`selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__
or the
`selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__
(whichever was at the previous cursor position) to the specified
position. This allows you to easily extend and contract the selected
text range.

The selection mode specifies whether the selection is updated on a per
character or a per word basis. If not specified the selection mode will
default to
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.SelectCharacters.

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.SelectCharacters -
   Sets either the
   `selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__
   or
   `selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__
   (whichever was at the previous cursor position) to the specified
   position.
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.SelectWords - Sets the
   `selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__
   and
   `selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__
   to include all words between the specified position and the previous
   cursor position. Words partially in the range are included.

For example, take this sequence of calls:

.. code:: cpp

    cursorPosition = 5
    moveCursorSelection(9, TextEdit.SelectCharacters)
    moveCursorSelection(7, TextEdit.SelectCharacters)

This moves the cursor to position 5, extend the selection end from 5 to
9 and then retract the selection end from 9 to 7, leaving the text from
position 5 to 7 selected (the 6th and 7th characters).

The same sequence with
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.SelectWords will extend
the selection start to a word boundary before or on position 5 and
extend the selection end to a word boundary on or past position 9.

| 

+--------------------------------------------------------------------------+
|        \ paste()                                                         |
+--------------------------------------------------------------------------+

Replaces the currently selected text by the contents of the system
clipboard.

| 

+--------------------------------------------------------------------------+
|        \ int positionAt(int *x*, int *y*)                                |
+--------------------------------------------------------------------------+

Returns the text position closest to pixel position (*x*, *y*).

Position 0 is before the first character, position 1 is after the first
character but before the second, and so on until position
`text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__.length, which
is after all characters.

| 

+--------------------------------------------------------------------------+
|        \ rectangle positionToRectangle(position)                         |
+--------------------------------------------------------------------------+

Returns the rectangle at the given *position* in the text. The x, y, and
height properties correspond to the cursor that would describe that
position.

| 

+--------------------------------------------------------------------------+
|        \ redo()                                                          |
+--------------------------------------------------------------------------+

Redoes the last operation if redo is
`available </sdk/apps/qml/QtQuick/TextEdit#canRedo-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ string remove(int *start*, int *end*)                           |
+--------------------------------------------------------------------------+

Removes the section of text that is between the *start* and *end*
positions from the `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.

| 

+--------------------------------------------------------------------------+
|        \ select(int *start*, int *end*)                                  |
+--------------------------------------------------------------------------+

Causes the text from *start* to *end* to be selected.

If either start or end is out of range, the selection is not changed.

After calling this,
`selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__
will become the lesser and
`selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__ will
become the greater (regardless of the order passed to this method).

**See also**
`selectionStart </sdk/apps/qml/QtQuick/TextEdit#selectionStart-prop>`__
and `selectionEnd </sdk/apps/qml/QtQuick/TextEdit#selectionEnd-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ selectAll()                                                     |
+--------------------------------------------------------------------------+

Causes all text to be selected.

| 

+--------------------------------------------------------------------------+
|        \ selectWord()                                                    |
+--------------------------------------------------------------------------+

Causes the word closest to the current cursor position to be selected.

| 

+--------------------------------------------------------------------------+
|        \ undo()                                                          |
+--------------------------------------------------------------------------+

Undoes the last operation if undo is
`available </sdk/apps/qml/QtQuick/TextEdit#canUndo-prop>`__. Deselects
any current selection, and updates the selection start to the current
cursor position.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/TextEdit/images/declarative-textedit.gif
.. |image1| image:: /media/sdk/apps/qml/QtQuick/TextEdit/images/declarative-textformat.png

