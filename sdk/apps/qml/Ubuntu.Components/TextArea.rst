The TextArea item displays a block of editable, scrollable, formatted
text.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Ubuntu </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Ubuntu/>`__                     |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`autoSize </sdk/apps/qml/Ubuntu.Components/TextArea#autoSize-prop>`__****
   : bool
-  ****`baseUrl </sdk/apps/qml/Ubuntu.Components/TextArea#baseUrl-prop>`__****
   : url
-  ****`canPaste </sdk/apps/qml/Ubuntu.Components/TextArea#canPaste-prop>`__****
   : bool
-  ****`canRedo </sdk/apps/qml/Ubuntu.Components/TextArea#canRedo-prop>`__****
   : bool
-  ****`canUndo </sdk/apps/qml/Ubuntu.Components/TextArea#canUndo-prop>`__****
   : bool
-  ****`color </sdk/apps/qml/Ubuntu.Components/TextArea#color-prop>`__****
   : color
-  ****`contentHeight </sdk/apps/qml/Ubuntu.Components/TextArea#contentHeight-prop>`__****
   : real
-  ****`contentWidth </sdk/apps/qml/Ubuntu.Components/TextArea#contentWidth-prop>`__****
   : real
-  ****`cursorDelegate </sdk/apps/qml/Ubuntu.Components/TextArea#cursorDelegate-prop>`__****
   : Component
-  ****`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextArea#cursorPosition-prop>`__****
   : int
-  ****`cursorRectangle </sdk/apps/qml/Ubuntu.Components/TextArea#cursorRectangle-prop>`__****
   : rectangle
-  ****`cursorVisible </sdk/apps/qml/Ubuntu.Components/TextArea#cursorVisible-prop>`__****
   : bool
-  ****`displayText </sdk/apps/qml/Ubuntu.Components/TextArea#displayText-prop>`__****
   : string
-  ****`effectiveHorizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextArea#effectiveHorizontalAlignment-prop>`__****
   : enumeration
-  ****`font </sdk/apps/qml/Ubuntu.Components/TextArea#font-prop>`__****
   : font
-  ****`highlighted </sdk/apps/qml/Ubuntu.Components/TextArea#highlighted-prop>`__****
   : bool
-  ****`horizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextArea#horizontalAlignment-prop>`__****
   : enumeration
-  ****`inputMethodComposing </sdk/apps/qml/Ubuntu.Components/TextArea#inputMethodComposing-prop>`__****
   : bool
-  ****`inputMethodHints </sdk/apps/qml/Ubuntu.Components/TextArea#inputMethodHints-prop>`__****
   : enumeration
-  ****`length </sdk/apps/qml/Ubuntu.Components/TextArea#length-prop>`__****
   : int
-  ****`lineCount </sdk/apps/qml/Ubuntu.Components/TextArea#lineCount-prop>`__****
   : int
-  ****`maximumLineCount </sdk/apps/qml/Ubuntu.Components/TextArea#maximumLineCount-prop>`__****
   : int
-  ****`mouseSelectionMode </sdk/apps/qml/Ubuntu.Components/TextArea#mouseSelectionMode-prop>`__****
   : enumeration
-  ****`paintedHeight </sdk/apps/qml/Ubuntu.Components/TextArea#paintedHeight-prop>`__****
   : real
-  ****`paintedWidth </sdk/apps/qml/Ubuntu.Components/TextArea#paintedWidth-prop>`__****
   : real
-  ****`persistentSelection </sdk/apps/qml/Ubuntu.Components/TextArea#persistentSelection-prop>`__****
   : bool
-  ****`placeholderText </sdk/apps/qml/Ubuntu.Components/TextArea#placeholderText-prop>`__****
   : string
-  ****`popover </sdk/apps/qml/Ubuntu.Components/TextArea#popover-prop>`__****
   : var
-  ****`readOnly </sdk/apps/qml/Ubuntu.Components/TextArea#readOnly-prop>`__****
   : bool
-  ****`renderType </sdk/apps/qml/Ubuntu.Components/TextArea#renderType-prop>`__****
   : enumeration
-  ****`selectByMouse </sdk/apps/qml/Ubuntu.Components/TextArea#selectByMouse-prop>`__****
   : bool
-  ****`selectedText </sdk/apps/qml/Ubuntu.Components/TextArea#selectedText-prop>`__****
   : string
-  ****`selectedTextColor </sdk/apps/qml/Ubuntu.Components/TextArea#selectedTextColor-prop>`__****
   : color
-  ****`selectionColor </sdk/apps/qml/Ubuntu.Components/TextArea#selectionColor-prop>`__****
   : color
-  ****`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextArea#selectionEnd-prop>`__****
   : int
-  ****`selectionStart </sdk/apps/qml/Ubuntu.Components/TextArea#selectionStart-prop>`__****
   : int
-  ****`text </sdk/apps/qml/Ubuntu.Components/TextArea#text-prop>`__****
   : string
-  ****`textDocument </sdk/apps/qml/Ubuntu.Components/TextArea#textDocument-prop>`__****
   : var
-  ****`textFormat </sdk/apps/qml/Ubuntu.Components/TextArea#textFormat-prop>`__****
   : enumeration
-  ****`verticalAlignment </sdk/apps/qml/Ubuntu.Components/TextArea#verticalAlignment-prop>`__****
   : enumeration
-  ****`wrapMode </sdk/apps/qml/Ubuntu.Components/TextArea#wrapMode-prop>`__****
   : enumeration

Signals
-------

-  ****`linkActivated </sdk/apps/qml/Ubuntu.Components/TextArea#linkActivated-signal>`__****\ (string
   *link*)

Methods
-------

-  ****`copy </sdk/apps/qml/Ubuntu.Components/TextArea#copy-method>`__****\ ()
-  ****`cut </sdk/apps/qml/Ubuntu.Components/TextArea#cut-method>`__****\ ()
-  ****`deselect </sdk/apps/qml/Ubuntu.Components/TextArea#deselect-method>`__****\ ()
-  ****`getFormattedText </sdk/apps/qml/Ubuntu.Components/TextArea#getFormattedText-method>`__****\ (*start*,
   *end*)
-  ****`getText </sdk/apps/qml/Ubuntu.Components/TextArea#getText-method>`__****\ (*start*,
   *end*)
-  ****`insert </sdk/apps/qml/Ubuntu.Components/TextArea#insert-method>`__****\ (*position*,
   *text*)
-  ****`isRightToLeft </sdk/apps/qml/Ubuntu.Components/TextArea#isRightToLeft-method>`__****\ (*start*,
   *end*)
-  ****`moveCursorSelection </sdk/apps/qml/Ubuntu.Components/TextArea#moveCursorSelection-method>`__****\ (*position*,
   *mode*)
-  ****`paste </sdk/apps/qml/Ubuntu.Components/TextArea#paste-method>`__****\ (*data*)
-  ****`positionAt </sdk/apps/qml/Ubuntu.Components/TextArea#positionAt-method>`__****\ (*x*,
   *y*)
-  ****`positionToRectangle </sdk/apps/qml/Ubuntu.Components/TextArea#positionToRectangle-method>`__****\ (*position*)
-  ****`redo </sdk/apps/qml/Ubuntu.Components/TextArea#redo-method>`__****\ ()
-  ****`remove </sdk/apps/qml/Ubuntu.Components/TextArea#remove-method>`__****\ (*start*,
   *end*)
-  ****`select </sdk/apps/qml/Ubuntu.Components/TextArea#select-method>`__****\ (*start*,
   *end*)
-  ****`selectAll </sdk/apps/qml/Ubuntu.Components/TextArea#selectAll-method>`__****\ ()
-  ****`selectWord </sdk/apps/qml/Ubuntu.Components/TextArea#selectWord-method>`__****\ ()
-  ****`undo </sdk/apps/qml/Ubuntu.Components/TextArea#undo-method>`__****\ ()

Detailed Description
--------------------

The `TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ supports
fix-size and auto-expanding modes. In fix-size mode the content is
scrolled when exceeds the boundaries and can be scrolled both
horizontally and vertically, depending on the
`contentWidth </sdk/apps/qml/Ubuntu.Components/TextArea#contentWidth-prop>`__
and
`contentHeight </sdk/apps/qml/Ubuntu.Components/TextArea#contentHeight-prop>`__
set. The following example will scroll the editing area both
horizontally and vertically:

.. code:: qml

    TextArea {
        width: units.gu(20)
        height: units.gu(12)
        contentWidth: units.gu(30)
        contentHeight: units.gu(60)
    }

The auto-expand mode is realized using two properties:
`autoSize </sdk/apps/qml/Ubuntu.Components/TextArea#autoSize-prop>`__
and
`maximumLineCount </sdk/apps/qml/Ubuntu.Components/TextArea#maximumLineCount-prop>`__.
Setting
`autoSize </sdk/apps/qml/Ubuntu.Components/TextArea#autoSize-prop>`__
will set implicitHeight to one line, and the height will follow the line
count, meaning when lines are added the area will expand and when
removed the area will shrink. The
`maximumLineCount </sdk/apps/qml/Ubuntu.Components/TextArea#maximumLineCount-prop>`__
specifies how much the editor should be expanded. If this value is set
to 0, the area will always expand vertically to fit the content. When
`autoSize </sdk/apps/qml/Ubuntu.Components/TextArea#autoSize-prop>`__ is
set, the
`contentHeight </sdk/apps/qml/Ubuntu.Components/TextArea#contentHeight-prop>`__
property value is ignored, and the expansion only happens vertically.

.. code:: qml

    TextArea {
        width: units.gu(20)
        height: units.gu(12)
        contentWidth: units.gu(30)
        autoSize: true
        maximumLineCount: 0
    }

`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ comes with 30
grid-units implicit width and one line height on auto-sizing mode and 4
lines on fixed-mode. The line size is calculated from the font size and
the ovarlay and frame spacing specified in the style.

Scrolling and text selection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The input is activated when the tap or mouse is released after being
pressed over the component.

Scrolling the editing area can happen when the size is fixed or in
auto-sizing mode when the content size is bigger than the visible area.
The scrolling is realized by swipe gestures, or by navigating the
cursor.

The content can be selected in the following ways:

-  - double tapping/left mouse clicking over the content, when the word
   that had been tapped over will be selected
-  - by pressing and dragging the selection cursor over the text input.
   Note that there has to be a delay of approx. 200 ms between the press
   and drag gesture, time when the input switches from scroll mode to
   selection mode

The input is focused (activated) upon tap/left mouse button release. The
cursor will be placed at the position the mouse/tap point at release
time. If the click is happening on a selected area, the selection will
be cleared. Long press above a selected area brings up the clipboard
context menu. When the long press happens over a non-selected area, the
cursor will be moved to the position and the component enters in
selection mode. The selection mode can also be activated by tapping and
keeping the tap/mouse over for approx 300 ms. If there is a move during
this time, the component enters into scrolling mode. The mode is exited
once the scrolling finishes. During the scrolling mode the selected text
is preserved.

**Note:** During text selection all interactive parent Flickables are
turned off.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ autoSize : bool                                                 |
+--------------------------------------------------------------------------+

This property specifies whether the text area sizes following the line
count or not. The default value is false.

| 

+--------------------------------------------------------------------------+
|        \ baseUrl : `url <http://doc.qt.io/qt-5/qml-url.html>`__          |
+--------------------------------------------------------------------------+

This property specifies a base URL which is used to resolve relative
URLs within the text. The default value is the url of the QML file
instantiating the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ item.

| 

+--------------------------------------------------------------------------+
|        \ canPaste : bool                                                 |
+--------------------------------------------------------------------------+

Returns true if the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ is writable and
the content of the clipboard is suitable for pasting into the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__.

| 

+--------------------------------------------------------------------------+
|        \ canRedo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ is writable and
there are undone operations that can be redone.

| 

+--------------------------------------------------------------------------+
|        \ canUndo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ is writable and
there are previous operations that can be undone.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The text color.

| 

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

The property folds the height of the text editing content. This can be
equal or bigger than the frame height minus the spacing between the
frame and the input area defined in the current theme. The default value
is the same as the visible input area's height.

| 

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

The property folds the width of the text editing content. This can be
equal or bigger than the frame width minus the spacing between the frame
and the input area defined in the current theme. The default value is
the same as the visible input area's width.

| 

+--------------------------------------------------------------------------+
|        \ cursorDelegate : `Component </sdk/apps/qml/QtQml/Component/>`__ |
+--------------------------------------------------------------------------+

The delegate for the cursor in the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__.

If you set a cursorDelegate for a
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__, this delegate
will be used for drawing the cursor instead of the standard cursor. An
instance of the delegate will be created and managed by the text edit
when a cursor is needed, and the x and y properties of delegate instance
will be set so as to be one pixel before the top left of the current
character.

Note that the root item of the delegate component must be a
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`__ or
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`__ derived item.

| 

+--------------------------------------------------------------------------+
|        \ cursorPosition : int                                            |
+--------------------------------------------------------------------------+

The position of the cursor in the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__.

| 

+--------------------------------------------------------------------------+
|        \ cursorRectangle : rectangle                                     |
+--------------------------------------------------------------------------+

The rectangle where the standard text cursor is rendered within the text
edit. Read-only.

The position and height of a custom
`cursorDelegate </sdk/apps/qml/Ubuntu.Components/TextArea#cursorDelegate-prop>`__
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
|        \ [read-only] displayText : string                                |
+--------------------------------------------------------------------------+

This property contains the text that is displayed on the screen. May
differ from the text property value when
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.RichText format is
selected.

| 

+--------------------------------------------------------------------------+
|        \ effectiveHorizontalAlignment : enumeration                      |
+--------------------------------------------------------------------------+

Presents the effective horizontal alignment that can be different from
the one specified at
`horizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextArea#horizontalAlignment-prop>`__
due to layout mirroring.

| 

+--------------------------------------------------------------------------+
|        \ font :                                                          |
| `font </sdk/apps/qml/Ubuntu.Components/TextArea#font-prop>`__            |
+--------------------------------------------------------------------------+

The property holds the font used by the editing.

| 

+--------------------------------------------------------------------------+
|        \ highlighted : bool                                              |
+--------------------------------------------------------------------------+

The property presents whether the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ is highlighted
or not. By default the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ gets
highlighted when gets the focus, so can accept text input. This property
allows to control the highlight separately from the focused behavior.

| 

+--------------------------------------------------------------------------+
|        \ horizontalAlignment : enumeration                               |
+--------------------------------------------------------------------------+

Sets the horizontal alignment of the text within the TextAre item's
width and height. By default, the text alignment follows the natural
alignment of the text, for example text that is read from left to right
will be aligned to the left.

Valid values for
`effectiveHorizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextArea#effectiveHorizontalAlignment-prop>`__
are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignLeft (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignRight
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignHCenter
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignJustify

| 

+--------------------------------------------------------------------------+
|        \ inputMethodComposing : bool                                     |
+--------------------------------------------------------------------------+

This property holds whether the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ has partial
text input from an input method.

While it is composing an input method may rely on mouse or key events
from the `TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ to
edit or commit the partial text. This property can be used to determine
when to disable events handlers that may interfere with the correct
operation of an input method.

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
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ item.

As this number doesn't include any formatting markup it may not be the
same as the length of the string returned by the text property.

This property can be faster than querying the length the text property
as it doesn't require any copying or conversion of the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__'s internal
string data.

| 

+--------------------------------------------------------------------------+
|        \ lineCount : int                                                 |
+--------------------------------------------------------------------------+

Returns the total number of lines in the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ item.

| 

+--------------------------------------------------------------------------+
|        \ maximumLineCount : int                                          |
+--------------------------------------------------------------------------+

The property holds the maximum amount of lines to expand when
`autoSize </sdk/apps/qml/Ubuntu.Components/TextArea#autoSize-prop>`__ is
enabled. The value of 0 does not put any upper limit and the control
will expand forever.

The default value is 5 lines.

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
`selectByMouse </sdk/apps/qml/Ubuntu.Components/TextArea#selectByMouse-prop>`__
is true.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] paintedHeight : real                                |
+--------------------------------------------------------------------------+

Exposes the paintedHeight of the underlying text component. It's
required if the application uses its own Flickable for scrolling.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] paintedWidth : real                                 |
+--------------------------------------------------------------------------+

Exposes the paintedWidth of the underlying text component. It's required
if the application uses its own Flickable for scrolling.

| 

+--------------------------------------------------------------------------+
|        \ persistentSelection : bool                                      |
+--------------------------------------------------------------------------+

Whether the `TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__
should keep the selection visible when it loses active focus to another
item in the scene. By default this is set to true.

| 

+--------------------------------------------------------------------------+
|        \ placeholderText : string                                        |
+--------------------------------------------------------------------------+

Text that appears when there is no focus and no content in the component
(hint text).

| 

+--------------------------------------------------------------------------+
|        \ popover : `var <http://doc.qt.io/qt-5/qml-var.html>`__          |
+--------------------------------------------------------------------------+

The property overrides the default popover of the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__. When set, the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ will open the
given popover instead of the default one defined. The popover can either
be a component or a URL to be loaded.

| 

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

Whether the user can interact with the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ item. If this
property is set to true the text cannot be edited by user interaction.

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
|        \ selectByMouse : bool                                            |
+--------------------------------------------------------------------------+

The property drives whether text selection should happen with the mouse
or not. The default value is true.

| 

+--------------------------------------------------------------------------+
|        \ selectedText : string                                           |
+--------------------------------------------------------------------------+

This read-only property provides the text currently selected in the text
edit.

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

This property is read-only. To change the selection, use select(start,
end),
`selectAll() </sdk/apps/qml/Ubuntu.Components/TextArea#selectAll-method>`__,
or
`selectWord() </sdk/apps/qml/Ubuntu.Components/TextArea#selectWord-method>`__.

See also
`selectionStart </sdk/apps/qml/Ubuntu.Components/TextArea#selectionStart-prop>`__,
`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextArea#cursorPosition-prop>`__,
and
`selectedText </sdk/apps/qml/Ubuntu.Components/TextArea#selectedText-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ selectionStart : int                                            |
+--------------------------------------------------------------------------+

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use select(start,
end),
`selectAll() </sdk/apps/qml/Ubuntu.Components/TextArea#selectAll-method>`__,
or
`selectWord() </sdk/apps/qml/Ubuntu.Components/TextArea#selectWord-method>`__.

See also
`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextArea#selectionEnd-prop>`__,
`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextArea#cursorPosition-prop>`__,
and
`selectedText </sdk/apps/qml/Ubuntu.Components/TextArea#selectedText-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The text to display. If the text format is AutoText the text edit will
automatically determine whether the text should be treated as rich text.
This determination is made using Qt::mightBeRichText().

| 

+--------------------------------------------------------------------------+
|        \ textDocument : `var <http://doc.qt.io/qt-5/qml-var.html>`__     |
+--------------------------------------------------------------------------+

Exposes the
`QQuickTextDocument <http://doc.qt.io/qt-5/qquicktextdocument.html>`__
which can be used to implement advanced formatting and syntax
highlighting (QSyntaxHighlighter) with C++.

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

| 

+--------------------------------------------------------------------------+
|        \ verticalAlignment : enumeration                                 |
+--------------------------------------------------------------------------+

Sets the vertical alignment of the text within the TextAres item's width
and height. By default, the text alignment follows the natural alignment
of the text.

Valid values for verticalAlignment are:

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignTop (default)
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignBottom
-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.AlignVCenter

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

The default is `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__.Wrap

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ linkActivated(string *link*)                                    |
+--------------------------------------------------------------------------+

This handler is called when the user clicks on a link embedded in the
text. The link must be in rich text or HTML format and the link string
provides access to the particular link.

| 

Method Documentation
--------------------

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
|        \ getFormattedText( *start*, *end*)                               |
+--------------------------------------------------------------------------+

Returns the section of text that is between the start and end positions.

The returned text will be formatted according the
`textFormat </sdk/apps/qml/Ubuntu.Components/TextArea#textFormat-prop>`__
property.

| 

+--------------------------------------------------------------------------+
|        \ getText( *start*, *end*)                                        |
+--------------------------------------------------------------------------+

Returns the section of text that is between the start and end positions.

The returned text does not include any rich text formatting. A
getText(0, length) will result in the same value as
`displayText </sdk/apps/qml/Ubuntu.Components/TextArea#displayText-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ insert( *position*, *text*)                                     |
+--------------------------------------------------------------------------+

Inserts text into the
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ at position.

| 

+--------------------------------------------------------------------------+
|        \ isRightToLeft( *start*, *end*)                                  |
+--------------------------------------------------------------------------+

Returns true if the natural reading direction of the editor text found
between positions start and end is right to left.

| 

+--------------------------------------------------------------------------+
|        \ moveCursorSelection( *position*, *mode*)                        |
+--------------------------------------------------------------------------+

Moves the cursor to position and updates the selection according to the
optional mode parameter. (To only move the cursor, set the
`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextArea#cursorPosition-prop>`__
property.)

When this method is called it additionally sets either the
`selectionStart </sdk/apps/qml/Ubuntu.Components/TextArea#selectionStart-prop>`__
or the
`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextArea#selectionEnd-prop>`__
(whichever was at the previous cursor position) to the specified
position. This allows you to easily extend and contract the selected
text range.

The selection mode specifies whether the selection is updated on a per
character or a per word basis. If not specified the selection mode will
default to whatever is given in the
`mouseSelectionMode </sdk/apps/qml/Ubuntu.Components/TextArea#mouseSelectionMode-prop>`__
property.

| 

+--------------------------------------------------------------------------+
|        \ paste( *data*)                                                  |
+--------------------------------------------------------------------------+

Places the clipboard or the data given as parameter into the text input.
The selected text will be replaces with the data.

| 

+--------------------------------------------------------------------------+
|        \ positionAt( *x*, *y*)                                           |
+--------------------------------------------------------------------------+

Returns the text position closest to pixel position (x, y).

Position 0 is before the first character, position 1 is after the first
character but before the second, and so on until position text.length,
which is after all characters.

| 

+--------------------------------------------------------------------------+
|        \ positionToRectangle( *position*)                                |
+--------------------------------------------------------------------------+

Returns the rectangle at the given position in the text. The x, y, and
height properties correspond to the cursor that would describe that
position.

| 

+--------------------------------------------------------------------------+
|        \ redo()                                                          |
+--------------------------------------------------------------------------+

Redoes the last operation if redo is
`available </sdk/apps/qml/Ubuntu.Components/TextArea#canRedo-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ remove( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Removes the section of text that is between the start and end positions
from the `TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__.

| 

+--------------------------------------------------------------------------+
|        \ select( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Causes the text from start to end to be selected.

If either start or end is out of range, the selection is not changed.

After calling this,
`selectionStart </sdk/apps/qml/Ubuntu.Components/TextArea#selectionStart-prop>`__
will become the lesser and
`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextArea#selectionEnd-prop>`__
will become the greater (regardless of the order passed to this method).

See also
`selectionStart </sdk/apps/qml/Ubuntu.Components/TextArea#selectionStart-prop>`__
and
`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextArea#selectionEnd-prop>`__.

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
`available </sdk/apps/qml/Ubuntu.Components/TextArea#canUndo-prop>`__.
Deselects any current selection, and updates the selection start to the
current cursor position.

| 
