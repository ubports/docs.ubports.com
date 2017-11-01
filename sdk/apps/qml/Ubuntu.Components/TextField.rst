The TextField element displays a single line of editable plain text.
Input constraints can be set through validator or inputMask. Setting
echoMode to an appropriate value enables TextField to be used as
password input field.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Ubuntu </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Ubuntu/>`__                     |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`acceptableInput </sdk/apps/qml/Ubuntu.Components/TextField#acceptableInput-prop>`__****
   : bool
-  ****`activeFocusOnPress </sdk/apps/qml/Ubuntu.Components/TextField#activeFocusOnPress-prop>`__****
   : bool
-  ****`autoScroll </sdk/apps/qml/Ubuntu.Components/TextField#autoScroll-prop>`__****
   : bool
-  ****`canPaste </sdk/apps/qml/Ubuntu.Components/TextField#canPaste-prop>`__****
   : bool
-  ****`canRedo </sdk/apps/qml/Ubuntu.Components/TextField#canRedo-prop>`__****
   : bool
-  ****`canUndo </sdk/apps/qml/Ubuntu.Components/TextField#canUndo-prop>`__****
   : bool
-  ****`color </sdk/apps/qml/Ubuntu.Components/TextField#color-prop>`__****
   : color
-  ****`contentHeight </sdk/apps/qml/Ubuntu.Components/TextField#contentHeight-prop>`__****
   : real
-  ****`contentWidth </sdk/apps/qml/Ubuntu.Components/TextField#contentWidth-prop>`__****
   : real
-  ****`cursorDelegate </sdk/apps/qml/Ubuntu.Components/TextField#cursorDelegate-prop>`__****
   : Component
-  ****`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextField#cursorPosition-prop>`__****
   : int
-  ****`cursorRectangle </sdk/apps/qml/Ubuntu.Components/TextField#cursorRectangle-prop>`__****
   : rectangle
-  ****`cursorVisible </sdk/apps/qml/Ubuntu.Components/TextField#cursorVisible-prop>`__****
   : bool
-  ****`displayText </sdk/apps/qml/Ubuntu.Components/TextField#displayText-prop>`__****
   : string
-  ****`echoMode </sdk/apps/qml/Ubuntu.Components/TextField#echoMode-prop>`__****
   : enumeration
-  ****`effectiveHorizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextField#effectiveHorizontalAlignment-prop>`__****
   : enumeration
-  ****`errorHighlight </sdk/apps/qml/Ubuntu.Components/TextField#errorHighlight-prop>`__****
   : bool
-  ****`font </sdk/apps/qml/Ubuntu.Components/TextField#font-prop>`__****
   : font
-  ****`hasClearButton </sdk/apps/qml/Ubuntu.Components/TextField#hasClearButton-prop>`__****
   : bool
-  ****`highlighted </sdk/apps/qml/Ubuntu.Components/TextField#highlighted-prop>`__****
   : bool
-  ****`horizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextField#horizontalAlignment-prop>`__****
   : enumeration
-  ****`inputMask </sdk/apps/qml/Ubuntu.Components/TextField#inputMask-prop>`__****
   : string
-  ****`inputMethodComposing </sdk/apps/qml/Ubuntu.Components/TextField#inputMethodComposing-prop>`__****
   : bool
-  ****`inputMethodHints </sdk/apps/qml/Ubuntu.Components/TextField#inputMethodHints-prop>`__****
   : enumeration
-  ****`length </sdk/apps/qml/Ubuntu.Components/TextField#length-prop>`__****
   : int
-  ****`maximumLength </sdk/apps/qml/Ubuntu.Components/TextField#maximumLength-prop>`__****
   : int
-  ****`mouseSelectionMode </sdk/apps/qml/Ubuntu.Components/TextField#mouseSelectionMode-prop>`__****
   : enumeration
-  ****`passwordCharacter </sdk/apps/qml/Ubuntu.Components/TextField#passwordCharacter-prop>`__****
   : string
-  ****`persistentSelection </sdk/apps/qml/Ubuntu.Components/TextField#persistentSelection-prop>`__****
   : bool
-  ****`placeholderText </sdk/apps/qml/Ubuntu.Components/TextField#placeholderText-prop>`__****
   : string
-  ****`popover </sdk/apps/qml/Ubuntu.Components/TextField#popover-prop>`__****
   : var
-  ****`primaryItem </sdk/apps/qml/Ubuntu.Components/TextField#primaryItem-prop>`__****
   : list<Object>
-  ****`readOnly </sdk/apps/qml/Ubuntu.Components/TextField#readOnly-prop>`__****
   : bool
-  ****`renderType </sdk/apps/qml/Ubuntu.Components/TextField#renderType-prop>`__****
   : enumeration
-  ****`secondaryItem </sdk/apps/qml/Ubuntu.Components/TextField#secondaryItem-prop>`__****
   : list<Object>
-  ****`selectByMouse </sdk/apps/qml/Ubuntu.Components/TextField#selectByMouse-prop>`__****
   : bool
-  ****`selectedText </sdk/apps/qml/Ubuntu.Components/TextField#selectedText-prop>`__****
   : string
-  ****`selectedTextColor </sdk/apps/qml/Ubuntu.Components/TextField#selectedTextColor-prop>`__****
   : color
-  ****`selectionColor </sdk/apps/qml/Ubuntu.Components/TextField#selectionColor-prop>`__****
   : color
-  ****`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextField#selectionEnd-prop>`__****
   : int
-  ****`selectionStart </sdk/apps/qml/Ubuntu.Components/TextField#selectionStart-prop>`__****
   : int
-  ****`text </sdk/apps/qml/Ubuntu.Components/TextField#text-prop>`__****
   : string
-  ****`validator </sdk/apps/qml/Ubuntu.Components/TextField#validator-prop>`__****
   : Validator
-  ****`verticalAlignment </sdk/apps/qml/Ubuntu.Components/TextField#verticalAlignment-prop>`__****
   : enumeration

Signals
-------

-  ****`accepted </sdk/apps/qml/Ubuntu.Components/TextField#accepted-signal>`__****\ ()

Methods
-------

-  ****`copy </sdk/apps/qml/Ubuntu.Components/TextField#copy-method>`__****\ ()
-  ****`cut </sdk/apps/qml/Ubuntu.Components/TextField#cut-method>`__****\ ()
-  ****`deselect </sdk/apps/qml/Ubuntu.Components/TextField#deselect-method>`__****\ ()
-  ****`getText </sdk/apps/qml/Ubuntu.Components/TextField#getText-method>`__****\ (*start*,
   *end*)
-  ****`insert </sdk/apps/qml/Ubuntu.Components/TextField#insert-method>`__****\ (*position*,
   *text*)
-  ****`isRightToLeft </sdk/apps/qml/Ubuntu.Components/TextField#isRightToLeft-method>`__****\ (*start*,
   *end*)
-  ****`moveCursorSelection </sdk/apps/qml/Ubuntu.Components/TextField#moveCursorSelection-method>`__****\ (*position*,
   *mode*)
-  ****`paste </sdk/apps/qml/Ubuntu.Components/TextField#paste-method>`__****\ (*data*)
-  ****`positionAt </sdk/apps/qml/Ubuntu.Components/TextField#positionAt-method>`__****\ (*x*,
   *position*)
-  ****`positionToRectangle </sdk/apps/qml/Ubuntu.Components/TextField#positionToRectangle-method>`__****\ (*pos*)
-  ****`redo </sdk/apps/qml/Ubuntu.Components/TextField#redo-method>`__****\ ()
-  ****`remove </sdk/apps/qml/Ubuntu.Components/TextField#remove-method>`__****\ (*start*,
   *end*)
-  ****`select </sdk/apps/qml/Ubuntu.Components/TextField#select-method>`__****\ (*start*,
   *end*)
-  ****`selectAll </sdk/apps/qml/Ubuntu.Components/TextField#selectAll-method>`__****\ ()
-  ****`selectWord </sdk/apps/qml/Ubuntu.Components/TextField#selectWord-method>`__****\ ()
-  ****`undo </sdk/apps/qml/Ubuntu.Components/TextField#undo-method>`__****\ ()

Detailed Description
--------------------

`See also the Design Guidelines on the Text
Field <https://design.ubuntu.com/apps/building-blocks/text-input#text-field>`__.

Example:

.. code:: qml

    Item {
        TextField {
            placeholderText: "hint text"
        }
        TextField {
            placeholderText: "without clear sign"
            hasClearButton: false
        }
        TextField {
            placeholderText: "password"
            echoMode: TextInput.Password
        }
        TextField {
            placeholderText: "overlaid in front"
            primaryItem: Image {
                height: parent.height
                width: height
                source: "magnifier.png"
            }
            secondaryItem: Row {
                Button {
                    height: parent.height
                    width: height
                    iconName: "compose"
                    onClicked: doSomething()
                }
                Button {
                    height: parent.height
                    width: height
                    iconName: "undo"
                    onClicked: doSomething()
                }
            }
        }
    }

Scrolling and text selection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The input is activated when the tap or mouse is released after being
pressed over the component.

The text can be scrolled horizontally by swiping over the content both
when the component is active or inactive.

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
|        \ acceptableInput : bool                                          |
+--------------------------------------------------------------------------+

This property is always true unless a validator or input mask has been
set. If a validator or input mask has been set, this property will only
be true if the current text is acceptable to the validator or input mask
as a final string (not as an intermediate string).

| 

+--------------------------------------------------------------------------+
|        \ activeFocusOnPress : bool                                       |
+--------------------------------------------------------------------------+

Whether the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__
should gain active focus on a mouse press. By default this is set to
true.

| 

+--------------------------------------------------------------------------+
|        \ autoScroll : bool                                               |
+--------------------------------------------------------------------------+

Whether the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__
should scroll when the text is longer than the width. By default this is
set to true.

| 

+--------------------------------------------------------------------------+
|        \ canPaste : bool                                                 |
+--------------------------------------------------------------------------+

Returns true if the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ is writable
and the content of the clipboard is suitable for pasting into the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

| 

+--------------------------------------------------------------------------+
|        \ canRedo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ is writable
and there are undone operations that can be redone.

| 

+--------------------------------------------------------------------------+
|        \ canUndo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ is writable
and there are previous operations that can be undone.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The text color.

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
is covered due to insufficient wrapping if wrapMode is set.

| 

+--------------------------------------------------------------------------+
|        \ cursorDelegate : `Component </sdk/apps/qml/QtQml/Component/>`__ |
+--------------------------------------------------------------------------+

The delegate for the cursor in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

If you set a cursorDelegate for a
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__, this
delegate will be used for drawing the cursor instead of the standard
cursor. An instance of the delegate will be created and managed by the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ when a cursor
is needed, and the x property of delegate instance will be set so as to
be one pixel before the top left of the current character.

Note that the root item of the delegate component must be a
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`__ or
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`__ derived item.

| 

+--------------------------------------------------------------------------+
|        \ cursorPosition : int                                            |
+--------------------------------------------------------------------------+

The position of the cursor in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

| 

+--------------------------------------------------------------------------+
|        \ cursorRectangle : rectangle                                     |
+--------------------------------------------------------------------------+

The rectangle where the standard text cursor is rendered within the text
input. Read only.

The position and height of a custom
`cursorDelegate </sdk/apps/qml/Ubuntu.Components/TextField#cursorDelegate-prop>`__
are updated to follow the cursorRectangle automatically when it changes.
The width of the delegate is unaffected by changes in the cursor
rectangle.

| 

+--------------------------------------------------------------------------+
|        \ cursorVisible : bool                                            |
+--------------------------------------------------------------------------+

Set to true when the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ shows a
cursor.

This property is set and unset when the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ gets active
focus, so that other properties can be bound to whether the cursor is
currently showing. As it gets set and unset automatically, when you set
the value yourself you must keep in mind that your value may be
overwritten.

It can be set directly in script, for example if a KeyProxy might
forward keys to it and you desire it to look active when this happens
(but without actually giving it active focus).

It should not be set directly on the item, like in the below QML, as the
specified value will be overridden an lost on focus changes.

.. code:: qml

    TextField {
        text: "Text"
        cursorVisible: false
    }

In the above snippet the cursor will still become visible when the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ gains active
focus.

| 

+--------------------------------------------------------------------------+
|        \ displayText : string                                            |
+--------------------------------------------------------------------------+

This is the text displayed in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

If
`echoMode </sdk/apps/qml/Ubuntu.Components/TextField#echoMode-prop>`__
is set to TextInput::Normal, this holds the same value as the
`text </sdk/apps/qml/Ubuntu.Components/TextField#text-prop>`__ property.
Otherwise, this property holds the text visible to the user, while the
text property holds the actual entered text.

| 

+--------------------------------------------------------------------------+
|        \ echoMode : enumeration                                          |
+--------------------------------------------------------------------------+

Specifies how the text should be displayed in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

-  - `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.Normal - Displays
   the text as it is. (Default)
-  - `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.Password -
   Displays asterixes instead of characters.
-  - `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.NoEcho - Displays
   nothing.
-  - `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.PasswordEchoOnEdit
   - Displays characters as they are entered while editing, otherwise
   displays asterisks.

| 

+--------------------------------------------------------------------------+
|        \ effectiveHorizontalAlignment : enumeration                      |
+--------------------------------------------------------------------------+

See
`horizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextField#horizontalAlignment-prop>`__
for details.

| 

+--------------------------------------------------------------------------+
|        \ errorHighlight : bool                                           |
+--------------------------------------------------------------------------+

Allows highlighting errors in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

| 

+--------------------------------------------------------------------------+
|        \ font :                                                          |
| `font </sdk/apps/qml/Ubuntu.Components/TextField#font-prop>`__           |
+--------------------------------------------------------------------------+

Font used in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

| 

+--------------------------------------------------------------------------+
|        \ hasClearButton : bool                                           |
+--------------------------------------------------------------------------+

Specifies whether the control has a clear button or not.

| 

+--------------------------------------------------------------------------+
|        \ highlighted : bool                                              |
+--------------------------------------------------------------------------+

The property presents whether the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ is
highlighted or not. By default the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ gets
highlighted when gets the focus, so can accept text input. This property
allows to control the highlight separately from the focused behavior.

| 

+--------------------------------------------------------------------------+
|        \ horizontalAlignment : enumeration                               |
+--------------------------------------------------------------------------+

Sets the horizontal alignment of the text within the item's width and
height. By default, the text alignment follows the natural alignment of
the text, for example text that is read from left to right will be
aligned to the left.

`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ does not have
vertical alignment, as the natural height is exactly the height of the
single line of text. If you set the height manually to something larger,
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ will always be top
aligned vertically. You can use anchors to align it however you want
within another item.

The valid values for horizontalAlignment are
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.AlignLeft,
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.AlignRight and
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.AlignHCenter.

Valid values for
`verticalAlignment </sdk/apps/qml/Ubuntu.Components/TextField#verticalAlignment-prop>`__
are `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.AlignTop (default),
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.AlignBottom
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.AlignVCenter.

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__, use the
read-only property
`effectiveHorizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextField#effectiveHorizontalAlignment-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ inputMask : string                                              |
+--------------------------------------------------------------------------+

Allows you to set an input mask on the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__, restricting
the text inputs. See QLineEdit::inputMask for further details, as the
exact same mask strings are used by
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

Note that when using an inputMask together with
`echoMode </sdk/apps/qml/Ubuntu.Components/TextField#echoMode-prop>`__
to hide the input the empty
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ may still
show masked characters - consider
`validator </sdk/apps/qml/Ubuntu.Components/TextField#validator-prop>`__
instead.

**See also**
`acceptableInput </sdk/apps/qml/Ubuntu.Components/TextField#acceptableInput-prop>`__
and
`validator </sdk/apps/qml/Ubuntu.Components/TextField#validator-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ inputMethodComposing : bool                                     |
+--------------------------------------------------------------------------+

This property holds whether the
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ has partial text input
from an input method.

While it is composing an input method may rely on mouse or key events
from the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ to
edit or commit the partial text. This property can be used to determine
when to disable events handlers that may interfere with the correct
operation of an input method.

| 

+--------------------------------------------------------------------------+
|        \ inputMethodHints : enumeration                                  |
+--------------------------------------------------------------------------+

Provides hints to the input method about the expected content of the
text input and how it should operate.

The value is a bit-wise combination of flags, or Qt.ImhNone if no hints
are set.

Flags that alter behaviour are:

-  - Qt.ImhHiddenText - Characters should be hidden, as is typically
   used when entering passwords. This is automatically set when setting
   `echoMode </sdk/apps/qml/Ubuntu.Components/TextField#echoMode-prop>`__
   to ``TextInput.Password``.
-  - Qt.ImhSensitiveData - Typed text should not be stored by the active
   input method in any persistent storage like predictive user
   dictionary.
-  - Qt.ImhNoAutoUppercase - The input method should not try to
   automatically switch to upper case when a sentence ends.
-  - Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-  - Qt.ImhPreferUppercase - Upper case letters are preferred (but not
   required).
-  - Qt.ImhPreferLowercase - Lower case letters are preferred (but not
   required).
-  - Qt.ImhNoPredictiveText - Do not use predictive text (i.e.
   dictionary lookup) while typing.
-  - Qt.ImhDate - The text editor functions as a date field.
-  - Qt.ImhTime - The text editor functions as a time field.

Flags that restrict input (exclusive flags) are:

-  - Qt.ImhDigitsOnly - Only digits are allowed.
-  - Qt.ImhFormattedNumbersOnly - Only number input is allowed. This
   includes decimal point and minus sign.
-  - Qt.ImhUppercaseOnly - Only upper case letter input is allowed.
-  - Qt.ImhLowercaseOnly - Only lower case letter input is allowed.
-  - Qt.ImhDialableCharactersOnly - Only characters suitable for phone
   dialing are allowed.
-  - Qt.ImhEmailCharactersOnly - Only characters suitable for email
   addresses are allowed.
-  - Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are
   allowed.

Masks:

-  - Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the
   exclusive flags are used.

| 

+--------------------------------------------------------------------------+
|        \ length : int                                                    |
+--------------------------------------------------------------------------+

Returns the total number of characters in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ item.

If the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ has an
`inputMask </sdk/apps/qml/Ubuntu.Components/TextField#inputMask-prop>`__
the length will include mask characters and may differ from the length
of the string returned by the text property.

This property can be faster than querying the length the text property
as it doesn't require any copying or conversion of the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__'s internal
string data.

| 

+--------------------------------------------------------------------------+
|        \ maximumLength : int                                             |
+--------------------------------------------------------------------------+

The maximum permitted length of the text in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

If the text is too long, it is truncated at the limit.

By default, this property contains a value of 32767.

| 

+--------------------------------------------------------------------------+
|        \ mouseSelectionMode : enumeration                                |
+--------------------------------------------------------------------------+

Specifies how text should be selected using a mouse.

-  -`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.SelectCharacters -
   The selection is updated with individual characters. (Default)
-  -`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.SelectWords - The
   selection is updated with whole words.

This property only applies when
`selectByMouse </sdk/apps/qml/Ubuntu.Components/TextField#selectByMouse-prop>`__
is true.

| 

+--------------------------------------------------------------------------+
|        \ passwordCharacter : string                                      |
+--------------------------------------------------------------------------+

This is the character displayed when
`echoMode </sdk/apps/qml/Ubuntu.Components/TextField#echoMode-prop>`__
is set to Password or PasswordEchoOnEdit. By default it is the unicode
character 2022.

If this property is set to a string with more than one character, the
first character is used. If the string is empty, the value is ignored
and the property is not set.

| 

+--------------------------------------------------------------------------+
|        \ persistentSelection : bool                                      |
+--------------------------------------------------------------------------+

Whether the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__
should keep its selection when it loses active focus to another item in
the scene. By default this is set to false.

| 

+--------------------------------------------------------------------------+
|        \ placeholderText : string                                        |
+--------------------------------------------------------------------------+

Text that appears when there is no content in the component.

| 

+--------------------------------------------------------------------------+
|        \ popover : `var <http://doc.qt.io/qt-5/qml-var.html>`__          |
+--------------------------------------------------------------------------+

The property overrides the default popover of the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__. When set,
the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ will open
the given popover instead of the default one defined. The popover can
either be a component or a URL to be loaded.

| 

+--------------------------------------------------------------------------+
|        \ primaryItem : list<Object>                                      |
+--------------------------------------------------------------------------+

Overlaid component that can be set for the fore side of the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__, e.g.showing
a magnifier to implement search functionality.

| 

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

Sets whether user input can modify the contents of the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

If readOnly is set to true, then user input will not affect the text
property. Any bindings or attempts to set the text property will still
work.

| 

+--------------------------------------------------------------------------+
|        \ renderType : enumeration                                        |
+--------------------------------------------------------------------------+

Override the default rendering type for this component.

Supported render types are:

-  - Text.QtRendering - (default)
-  - Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the
target platform and do not require advanced features such as
transformation of the text. Using such features in combination with the
NativeRendering render type will lend poor and sometimes pixelated
results.

| 

+--------------------------------------------------------------------------+
|        \ secondaryItem : list<Object>                                    |
+--------------------------------------------------------------------------+

Overlaid component that can be set for the rear side of the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__, e.g.showing
a CAPS LOCK or NUM LOCK indication. The overlaid components will be
placed right after the clear button.

| 

+--------------------------------------------------------------------------+
|        \ selectByMouse : bool                                            |
+--------------------------------------------------------------------------+

Defaults to true.

If false, the user cannot use the mouse to select text, only can use it
to focus the input.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] selectedText : string                               |
+--------------------------------------------------------------------------+

This read-only property provides the text currently selected in the text
input.

It is equivalent to the following snippet, but is faster and easier to
use.

.. code:: cpp

    myTextInput.text.toString().substring(myTextInput.selectionStart,
              myTextInput.selectionEnd);

| 

+--------------------------------------------------------------------------+
|        \ selectedTextColor : color                                       |
+--------------------------------------------------------------------------+

The highlighted text color, used in selections.

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
`selectAll() </sdk/apps/qml/Ubuntu.Components/TextField#selectAll-method>`__,
or
`selectWord() </sdk/apps/qml/Ubuntu.Components/TextField#selectWord-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ selectionStart : int                                            |
+--------------------------------------------------------------------------+

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use
select(start,end),
`selectAll() </sdk/apps/qml/Ubuntu.Components/TextField#selectAll-method>`__,
or
`selectWord() </sdk/apps/qml/Ubuntu.Components/TextField#selectWord-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The text in the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

| 

+--------------------------------------------------------------------------+
|        \ validator : Validator                                           |
+--------------------------------------------------------------------------+

Allows you to set a validator on the
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__. When a validator is
set the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ will
only accept input which leaves the text property in an acceptable or
intermediate state. The accepted signal will only be sent if the text is
in an acceptable state when enter is pressed.

Currently supported validators are
`IntValidator </sdk/apps/qml/QtQuick/IntValidator/>`__,
`DoubleValidator </sdk/apps/qml/QtQuick/DoubleValidator/>`__ and
`RegExpValidator </sdk/apps/qml/QtQuick/RegExpValidator/>`__. An example
of using validators is shown below, which allows input of integers
between 11 and 31 into the text input:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    TextField{
        validator: IntValidator{bottom: 11; top: 31;}
        focus: true
    }

The next example is for a use case of typing a PIN with masked
characters.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    TextField {
        echoMode: TextInput.Password
        validator: RegExpValidator { regExp: /^\d{4}$/ }
        inputMethodHints: Qt.ImhDigitsOnly
    }

**See also**
`acceptableInput </sdk/apps/qml/Ubuntu.Components/TextField#acceptableInput-prop>`__
and
`inputMask </sdk/apps/qml/Ubuntu.Components/TextField#inputMask-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ verticalAlignment : enumeration                                 |
+--------------------------------------------------------------------------+

See
`horizontalAlignment </sdk/apps/qml/Ubuntu.Components/TextField#horizontalAlignment-prop>`__
for details.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ accepted()                                                      |
+--------------------------------------------------------------------------+

This handler is called when the Return or Enter key is pressed. Note
that if there is a validator or
`inputMask </sdk/apps/qml/Ubuntu.Components/TextField#inputMask-prop>`__
set on the text input, the handler will only be emitted if the input is
in an acceptable state.

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
|        \ getText( *start*, *end*)                                        |
+--------------------------------------------------------------------------+

Returns the section of text that is between the start and end positions.

If the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ has an
`inputMask </sdk/apps/qml/Ubuntu.Components/TextField#inputMask-prop>`__
the length will include mask characters.

| 

+--------------------------------------------------------------------------+
|        \ insert( *position*, *text*)                                     |
+--------------------------------------------------------------------------+

Inserts *text* into the
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ at
*position*.

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
`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextField#cursorPosition-prop>`__
property.)

When this method is called it additionally sets either the
`selectionStart </sdk/apps/qml/Ubuntu.Components/TextField#selectionStart-prop>`__
or the
`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextField#selectionEnd-prop>`__
(whichever was at the previous cursor position) to the specified
position. This allows you to easily extend and contract the selected
text range.

The selection mode specifies whether the selection is updated on a per
character or a per word basis. If not specified the selection mode will
default to
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.SelectCharacters.

-  - `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.SelectCharacters -
   Sets either the
   `selectionStart </sdk/apps/qml/Ubuntu.Components/TextField#selectionStart-prop>`__
   or
   `selectionEnd </sdk/apps/qml/Ubuntu.Components/TextField#selectionEnd-prop>`__
   (whichever was at the previous cursor position) to the specified
   position.
-  - `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.SelectWords - Sets
   the
   `selectionStart </sdk/apps/qml/Ubuntu.Components/TextField#selectionStart-prop>`__
   and
   `selectionEnd </sdk/apps/qml/Ubuntu.Components/TextField#selectionEnd-prop>`__
   to include all words between the specified position and the previous
   cursor position. Words partially in the range are included.

For example, take this sequence of calls:

.. code:: cpp

    cursorPosition = 5
    moveCursorSelection(9, TextInput.SelectCharacters)
    moveCursorSelection(7, TextInput.SelectCharacters)

This moves the cursor to position 5, extend the selection end from 5 to
9 and then retract the selection end from 9 to 7, leaving the text from
position 5 to 7 selected (the 6th and 7th characters).

The same sequence with
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.SelectWords will extend
the selection start to a word boundary before or on position 5 and
extend the selection end to a word boundary on or past position 9.

| 

+--------------------------------------------------------------------------+
|        \ paste( *data*)                                                  |
+--------------------------------------------------------------------------+

Places the clipboard or the data given as parameter into the text input.
The selected text will be replaces with the data.

| 

+--------------------------------------------------------------------------+
|        \ positionAt( *x*, *position*)                                    |
+--------------------------------------------------------------------------+

This function returns the character position at x pixels from the left
of the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.
Position 0 is before the first character, position 1 is after the first
character but before the second, and so on until position text.length,
which is after all characters.

This means that for all x values before the first character this
function returns 0, and for all x values after the last character this
function returns text.length.

The cursor position type specifies how the cursor position should be
resolved.

-  -
   `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.CursorBetweenCharacters
   - Returns the position between characters that is nearest x.
-  - `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__.CursorOnCharacter
   - Returns the position before the character that is nearest x.

| 

+--------------------------------------------------------------------------+
|        \ positionToRectangle( *pos*)                                     |
+--------------------------------------------------------------------------+

This function takes a character position and returns the rectangle that
the cursor would occupy, if it was placed at that character position.

This is similar to setting the
`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextField#cursorPosition-prop>`__,
and then querying the cursor rectangle, but the
`cursorPosition </sdk/apps/qml/Ubuntu.Components/TextField#cursorPosition-prop>`__
is not changed.

| 

+--------------------------------------------------------------------------+
|        \ redo()                                                          |
+--------------------------------------------------------------------------+

Redoes the last operation if redo is
`available </sdk/apps/qml/Ubuntu.Components/TextField#canRedo-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ remove( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Removes the section of text that is between the start and end positions
from the `TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__.

| 

+--------------------------------------------------------------------------+
|        \ select( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Causes the text from start to end to be selected.

If either start or end is out of range, the selection is not changed.

After calling this,
`selectionStart </sdk/apps/qml/Ubuntu.Components/TextField#selectionStart-prop>`__
will become the lesser and
`selectionEnd </sdk/apps/qml/Ubuntu.Components/TextField#selectionEnd-prop>`__
will become the greater (regardless of the order passed to this method).

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
`available </sdk/apps/qml/Ubuntu.Components/TextField#canUndo-prop>`__.
Deselects any current selection, and updates the selection start to the
current cursor position.

| 
