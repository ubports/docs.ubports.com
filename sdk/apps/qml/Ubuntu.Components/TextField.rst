.. _sdk_ubuntu_components_textfield:
Ubuntu.Components TextField
===========================

The TextField element displays a single line of editable plain text.
Input constraints can be set through validator or inputMask. Setting
echoMode to an appropriate value enables TextField to be used as
password input field.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Ubuntu <sdk_ubuntu_components_ubunt |
|                                      | u>`_                                 |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`acceptableInput <sdk_ubuntu_components_textfield_acceptableInput-prop>`
   : bool
-  :ref:`activeFocusOnPress <sdk_ubuntu_components_textfield_activeFocusOnPress-prop>`
   : bool
-  :ref:`autoScroll <sdk_ubuntu_components_textfield_autoScroll-prop>`
   : bool
-  :ref:`canPaste <sdk_ubuntu_components_textfield_canPaste-prop>`
   : bool
-  :ref:`canRedo <sdk_ubuntu_components_textfield_canRedo-prop>` :
   bool
-  :ref:`canUndo <sdk_ubuntu_components_textfield_canUndo-prop>` :
   bool
-  :ref:`color <sdk_ubuntu_components_textfield_color-prop>` :
   color
-  :ref:`contentHeight <sdk_ubuntu_components_textfield_contentHeight-prop>`
   : real
-  :ref:`contentWidth <sdk_ubuntu_components_textfield_contentWidth-prop>`
   : real
-  :ref:`cursorDelegate <sdk_ubuntu_components_textfield_cursorDelegate-prop>`
   : Component
-  :ref:`cursorPosition <sdk_ubuntu_components_textfield_cursorPosition-prop>`
   : int
-  :ref:`cursorRectangle <sdk_ubuntu_components_textfield_cursorRectangle-prop>`
   : rectangle
-  :ref:`cursorVisible <sdk_ubuntu_components_textfield_cursorVisible-prop>`
   : bool
-  :ref:`displayText <sdk_ubuntu_components_textfield_displayText-prop>`
   : string
-  :ref:`echoMode <sdk_ubuntu_components_textfield_echoMode-prop>`
   : enumeration
-  :ref:`effectiveHorizontalAlignment <sdk_ubuntu_components_textfield_effectiveHorizontalAlignment-prop>`
   : enumeration
-  :ref:`errorHighlight <sdk_ubuntu_components_textfield_errorHighlight-prop>`
   : bool
-  :ref:`font <sdk_ubuntu_components_textfield_font-prop>` : font
-  :ref:`hasClearButton <sdk_ubuntu_components_textfield_hasClearButton-prop>`
   : bool
-  :ref:`highlighted <sdk_ubuntu_components_textfield_highlighted-prop>`
   : bool
-  :ref:`horizontalAlignment <sdk_ubuntu_components_textfield_horizontalAlignment-prop>`
   : enumeration
-  :ref:`inputMask <sdk_ubuntu_components_textfield_inputMask-prop>`
   : string
-  :ref:`inputMethodComposing <sdk_ubuntu_components_textfield_inputMethodComposing-prop>`
   : bool
-  :ref:`inputMethodHints <sdk_ubuntu_components_textfield_inputMethodHints-prop>`
   : enumeration
-  :ref:`length <sdk_ubuntu_components_textfield_length-prop>` :
   int
-  :ref:`maximumLength <sdk_ubuntu_components_textfield_maximumLength-prop>`
   : int
-  :ref:`mouseSelectionMode <sdk_ubuntu_components_textfield_mouseSelectionMode-prop>`
   : enumeration
-  :ref:`passwordCharacter <sdk_ubuntu_components_textfield_passwordCharacter-prop>`
   : string
-  :ref:`persistentSelection <sdk_ubuntu_components_textfield_persistentSelection-prop>`
   : bool
-  :ref:`placeholderText <sdk_ubuntu_components_textfield_placeholderText-prop>`
   : string
-  :ref:`popover <sdk_ubuntu_components_textfield_popover-prop>` :
   var
-  :ref:`primaryItem <sdk_ubuntu_components_textfield_primaryItem-prop>`
   : list<Object>
-  :ref:`readOnly <sdk_ubuntu_components_textfield_readOnly-prop>`
   : bool
-  :ref:`renderType <sdk_ubuntu_components_textfield_renderType-prop>`
   : enumeration
-  :ref:`secondaryItem <sdk_ubuntu_components_textfield_secondaryItem-prop>`
   : list<Object>
-  :ref:`selectByMouse <sdk_ubuntu_components_textfield_selectByMouse-prop>`
   : bool
-  :ref:`selectedText <sdk_ubuntu_components_textfield_selectedText-prop>`
   : string
-  :ref:`selectedTextColor <sdk_ubuntu_components_textfield_selectedTextColor-prop>`
   : color
-  :ref:`selectionColor <sdk_ubuntu_components_textfield_selectionColor-prop>`
   : color
-  :ref:`selectionEnd <sdk_ubuntu_components_textfield_selectionEnd-prop>`
   : int
-  :ref:`selectionStart <sdk_ubuntu_components_textfield_selectionStart-prop>`
   : int
-  :ref:`text <sdk_ubuntu_components_textfield_text-prop>` : string
-  :ref:`validator <sdk_ubuntu_components_textfield_validator-prop>`
   : Validator
-  :ref:`verticalAlignment <sdk_ubuntu_components_textfield_verticalAlignment-prop>`
   : enumeration

Signals
-------

-  :ref:`accepted <sdk_ubuntu_components_textfield_accepted-signal>`\ ()

Methods
-------

-  :ref:`copy <sdk_ubuntu_components_textfield_copy-method>`\ ()
-  :ref:`cut <sdk_ubuntu_components_textfield_cut-method>`\ ()
-  :ref:`deselect <sdk_ubuntu_components_textfield_deselect-method>`\ ()
-  :ref:`getText <sdk_ubuntu_components_textfield_getText-method>`\ (*start*,
   *end*)
-  :ref:`insert <sdk_ubuntu_components_textfield_insert-method>`\ (*position*,
   *text*)
-  :ref:`isRightToLeft <sdk_ubuntu_components_textfield_isRightToLeft-method>`\ (*start*,
   *end*)
-  :ref:`moveCursorSelection <sdk_ubuntu_components_textfield_moveCursorSelection-method>`\ (*position*,
   *mode*)
-  :ref:`paste <sdk_ubuntu_components_textfield_paste-method>`\ (*data*)
-  :ref:`positionAt <sdk_ubuntu_components_textfield_positionAt-method>`\ (*x*,
   *position*)
-  :ref:`positionToRectangle <sdk_ubuntu_components_textfield_positionToRectangle-method>`\ (*pos*)
-  :ref:`redo <sdk_ubuntu_components_textfield_redo-method>`\ ()
-  :ref:`remove <sdk_ubuntu_components_textfield_remove-method>`\ (*start*,
   *end*)
-  :ref:`select <sdk_ubuntu_components_textfield_select-method>`\ (*start*,
   *end*)
-  :ref:`selectAll <sdk_ubuntu_components_textfield_selectAll-method>`\ ()
-  :ref:`selectWord <sdk_ubuntu_components_textfield_selectWord-method>`\ ()
-  :ref:`undo <sdk_ubuntu_components_textfield_undo-method>`\ ()

Detailed Description
--------------------

`See also the Design Guidelines on the Text
Field <https://design.ubuntu.com/apps/building-blocks/text-input#text-field>`_ .

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

.. _sdk_ubuntu_components_textfield_acceptableInput-prop:

+--------------------------------------------------------------------------+
|        \ acceptableInput : bool                                          |
+--------------------------------------------------------------------------+

This property is always true unless a validator or input mask has been
set. If a validator or input mask has been set, this property will only
be true if the current text is acceptable to the validator or input mask
as a final string (not as an intermediate string).

| 

.. _sdk_ubuntu_components_textfield_activeFocusOnPress-prop:

+--------------------------------------------------------------------------+
|        \ activeFocusOnPress : bool                                       |
+--------------------------------------------------------------------------+

Whether the :ref:`TextField <sdk_ubuntu_components_textfield>` should gain
active focus on a mouse press. By default this is set to true.

| 

.. _sdk_ubuntu_components_textfield_autoScroll-prop:

+--------------------------------------------------------------------------+
|        \ autoScroll : bool                                               |
+--------------------------------------------------------------------------+

Whether the :ref:`TextField <sdk_ubuntu_components_textfield>` should
scroll when the text is longer than the width. By default this is set to
true.

| 

.. _sdk_ubuntu_components_textfield_canPaste-prop:

+--------------------------------------------------------------------------+
|        \ canPaste : bool                                                 |
+--------------------------------------------------------------------------+

Returns true if the :ref:`TextField <sdk_ubuntu_components_textfield>` is
writable and the content of the clipboard is suitable for pasting into
the :ref:`TextField <sdk_ubuntu_components_textfield>`.

| 

.. _sdk_ubuntu_components_textfield_canRedo-prop:

+--------------------------------------------------------------------------+
|        \ canRedo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the :ref:`TextField <sdk_ubuntu_components_textfield>` is
writable and there are undone operations that can be redone.

| 

.. _sdk_ubuntu_components_textfield_canUndo-prop:

+--------------------------------------------------------------------------+
|        \ canUndo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the :ref:`TextField <sdk_ubuntu_components_textfield>` is
writable and there are previous operations that can be undone.

| 

.. _sdk_ubuntu_components_textfield_color-prop:

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The text color.

| 

.. _sdk_ubuntu_components_textfield_contentHeight-prop:

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

Returns the height of the text, including the height past the height
that is covered if the text does not fit within the set height.

| 

.. _sdk_ubuntu_components_textfield_contentWidth-prop:

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

Returns the width of the text, including the width past the width which
is covered due to insufficient wrapping if wrapMode is set.

| 

.. _sdk_ubuntu_components_textfield_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ cursorDelegate : `Component <sdk_qtqml_component>`         |
+--------------------------------------------------------------------------+

The delegate for the cursor in the
:ref:`TextField <sdk_ubuntu_components_textfield>`.

If you set a cursorDelegate for a
:ref:`TextField <sdk_ubuntu_components_textfield>`, this delegate will be
used for drawing the cursor instead of the standard cursor. An instance
of the delegate will be created and managed by the
:ref:`TextField <sdk_ubuntu_components_textfield>` when a cursor is needed,
and the x property of delegate instance will be set so as to be one
pixel before the top left of the current character.

Note that the root item of the delegate component must be a
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`_  or
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`_  derived item.

| 

.. _sdk_ubuntu_components_textfield_cursorPosition-prop:

+--------------------------------------------------------------------------+
|        \ cursorPosition : int                                            |
+--------------------------------------------------------------------------+

The position of the cursor in the
:ref:`TextField <sdk_ubuntu_components_textfield>`.

| 

.. _sdk_ubuntu_components_textfield_cursorRectangle-prop:

+--------------------------------------------------------------------------+
|        \ cursorRectangle : rectangle                                     |
+--------------------------------------------------------------------------+

The rectangle where the standard text cursor is rendered within the text
input. Read only.

The position and height of a custom
:ref:`cursorDelegate <sdk_ubuntu_components_textfield#cursorDelegate-prop>`
are updated to follow the cursorRectangle automatically when it changes.
The width of the delegate is unaffected by changes in the cursor
rectangle.

| 

.. _sdk_ubuntu_components_textfield_cursorVisible-prop:

+--------------------------------------------------------------------------+
|        \ cursorVisible : bool                                            |
+--------------------------------------------------------------------------+

Set to true when the :ref:`TextField <sdk_ubuntu_components_textfield>`
shows a cursor.

This property is set and unset when the
:ref:`TextField <sdk_ubuntu_components_textfield>` gets active focus, so
that other properties can be bound to whether the cursor is currently
showing. As it gets set and unset automatically, when you set the value
yourself you must keep in mind that your value may be overwritten.

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
:ref:`TextField <sdk_ubuntu_components_textfield>` gains active focus.

| 

.. _sdk_ubuntu_components_textfield_displayText-prop:

+--------------------------------------------------------------------------+
|        \ displayText : string                                            |
+--------------------------------------------------------------------------+

This is the text displayed in the
:ref:`TextField <sdk_ubuntu_components_textfield>`.

If :ref:`echoMode <sdk_ubuntu_components_textfield#echoMode-prop>` is set
to TextInput::Normal, this holds the same value as the
:ref:`text <sdk_ubuntu_components_textfield#text-prop>` property.
Otherwise, this property holds the text visible to the user, while the
text property holds the actual entered text.

| 

.. _sdk_ubuntu_components_textfield_echoMode-prop:

+--------------------------------------------------------------------------+
|        \ echoMode : enumeration                                          |
+--------------------------------------------------------------------------+

Specifies how the text should be displayed in the
:ref:`TextField <sdk_ubuntu_components_textfield>`.

-  - :ref:`TextInput <sdk_qtquick_textinput>`.Normal - Displays the text as
   it is. (Default)
-  - :ref:`TextInput <sdk_qtquick_textinput>`.Password - Displays asterixes
   instead of characters.
-  - :ref:`TextInput <sdk_qtquick_textinput>`.NoEcho - Displays nothing.
-  - :ref:`TextInput <sdk_qtquick_textinput>`.PasswordEchoOnEdit - Displays
   characters as they are entered while editing, otherwise displays
   asterisks.

| 

.. _sdk_ubuntu_components_textfield_effectiveHorizontalAlignment-prop:

+--------------------------------------------------------------------------+
|        \ effectiveHorizontalAlignment : enumeration                      |
+--------------------------------------------------------------------------+

See
:ref:`horizontalAlignment <sdk_ubuntu_components_textfield#horizontalAlignment-prop>`
for details.

| 

.. _sdk_ubuntu_components_textfield_errorHighlight-prop:

+--------------------------------------------------------------------------+
|        \ errorHighlight : bool                                           |
+--------------------------------------------------------------------------+

Allows highlighting errors in the
:ref:`TextField <sdk_ubuntu_components_textfield>`.

| 

.. _sdk_ubuntu_components_textfield_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ font : `font <sdk_ubuntu_components_textfield#font-prop>`  |
+--------------------------------------------------------------------------+

Font used in the :ref:`TextField <sdk_ubuntu_components_textfield>`.

| 

.. _sdk_ubuntu_components_textfield_hasClearButton-prop:

+--------------------------------------------------------------------------+
|        \ hasClearButton : bool                                           |
+--------------------------------------------------------------------------+

Specifies whether the control has a clear button or not.

| 

.. _sdk_ubuntu_components_textfield_highlighted-prop:

+--------------------------------------------------------------------------+
|        \ highlighted : bool                                              |
+--------------------------------------------------------------------------+

The property presents whether the
:ref:`TextField <sdk_ubuntu_components_textfield>` is highlighted or not.
By default the :ref:`TextField <sdk_ubuntu_components_textfield>` gets
highlighted when gets the focus, so can accept text input. This property
allows to control the highlight separately from the focused behavior.

| 

.. _sdk_ubuntu_components_textfield_horizontalAlignment-prop:

+--------------------------------------------------------------------------+
|        \ horizontalAlignment : enumeration                               |
+--------------------------------------------------------------------------+

Sets the horizontal alignment of the text within the item's width and
height. By default, the text alignment follows the natural alignment of
the text, for example text that is read from left to right will be
aligned to the left.

:ref:`TextField <sdk_ubuntu_components_textfield>` does not have vertical
alignment, as the natural height is exactly the height of the single
line of text. If you set the height manually to something larger,
:ref:`TextInput <sdk_qtquick_textinput>` will always be top aligned
vertically. You can use anchors to align it however you want within
another item.

The valid values for horizontalAlignment are
:ref:`TextInput <sdk_qtquick_textinput>`.AlignLeft,
:ref:`TextInput <sdk_qtquick_textinput>`.AlignRight and
:ref:`TextInput <sdk_qtquick_textinput>`.AlignHCenter.

Valid values for
:ref:`verticalAlignment <sdk_ubuntu_components_textfield#verticalAlignment-prop>`
are :ref:`TextInput <sdk_qtquick_textinput>`.AlignTop (default),
:ref:`TextInput <sdk_qtquick_textinput>`.AlignBottom
:ref:`TextInput <sdk_qtquick_textinput>`.AlignVCenter.

When using the attached property
:ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring#enabled-prop>`
to mirror application layouts, the horizontal alignment of text will
also be mirrored. However, the property horizontalAlignment will remain
unchanged. To query the effective horizontal alignment of
:ref:`TextField <sdk_ubuntu_components_textfield>`, use the read-only
property
:ref:`effectiveHorizontalAlignment <sdk_ubuntu_components_textfield#effectiveHorizontalAlignment-prop>`.

| 

.. _sdk_ubuntu_components_textfield_inputMask-prop:

+--------------------------------------------------------------------------+
|        \ inputMask : string                                              |
+--------------------------------------------------------------------------+

Allows you to set an input mask on the
:ref:`TextField <sdk_ubuntu_components_textfield>`, restricting the text
inputs. See QLineEdit::inputMask for further details, as the exact same
mask strings are used by
:ref:`TextField <sdk_ubuntu_components_textfield>`.

Note that when using an inputMask together with
:ref:`echoMode <sdk_ubuntu_components_textfield#echoMode-prop>` to hide the
input the empty :ref:`TextField <sdk_ubuntu_components_textfield>` may
still show masked characters - consider
:ref:`validator <sdk_ubuntu_components_textfield#validator-prop>` instead.

**See also**
:ref:`acceptableInput <sdk_ubuntu_components_textfield#acceptableInput-prop>`
and :ref:`validator <sdk_ubuntu_components_textfield#validator-prop>`.

| 

.. _sdk_ubuntu_components_textfield_inputMethodComposing-prop:

+--------------------------------------------------------------------------+
|        \ inputMethodComposing : bool                                     |
+--------------------------------------------------------------------------+

This property holds whether the :ref:`TextInput <sdk_qtquick_textinput>`
has partial text input from an input method.

While it is composing an input method may rely on mouse or key events
from the :ref:`TextField <sdk_ubuntu_components_textfield>` to edit or
commit the partial text. This property can be used to determine when to
disable events handlers that may interfere with the correct operation of
an input method.

| 

.. _sdk_ubuntu_components_textfield_inputMethodHints-prop:

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
   :ref:`echoMode <sdk_ubuntu_components_textfield#echoMode-prop>` to
   ``TextInput.Password``.
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

.. _sdk_ubuntu_components_textfield_length-prop:

+--------------------------------------------------------------------------+
|        \ length : int                                                    |
+--------------------------------------------------------------------------+

Returns the total number of characters in the
:ref:`TextField <sdk_ubuntu_components_textfield>` item.

If the :ref:`TextField <sdk_ubuntu_components_textfield>` has an
:ref:`inputMask <sdk_ubuntu_components_textfield#inputMask-prop>` the
length will include mask characters and may differ from the length of
the string returned by the text property.

This property can be faster than querying the length the text property
as it doesn't require any copying or conversion of the
:ref:`TextField <sdk_ubuntu_components_textfield>`'s internal string data.

| 

.. _sdk_ubuntu_components_textfield_maximumLength-prop:

+--------------------------------------------------------------------------+
|        \ maximumLength : int                                             |
+--------------------------------------------------------------------------+

The maximum permitted length of the text in the
:ref:`TextField <sdk_ubuntu_components_textfield>`.

If the text is too long, it is truncated at the limit.

By default, this property contains a value of 32767.

| 

.. _sdk_ubuntu_components_textfield_mouseSelectionMode-prop:

+--------------------------------------------------------------------------+
|        \ mouseSelectionMode : enumeration                                |
+--------------------------------------------------------------------------+

Specifies how text should be selected using a mouse.

-  -:ref:`TextInput <sdk_qtquick_textinput>`.SelectCharacters - The
   selection is updated with individual characters. (Default)
-  -:ref:`TextInput <sdk_qtquick_textinput>`.SelectWords - The selection is
   updated with whole words.

This property only applies when
:ref:`selectByMouse <sdk_ubuntu_components_textfield#selectByMouse-prop>`
is true.

| 

.. _sdk_ubuntu_components_textfield_passwordCharacter-prop:

+--------------------------------------------------------------------------+
|        \ passwordCharacter : string                                      |
+--------------------------------------------------------------------------+

This is the character displayed when
:ref:`echoMode <sdk_ubuntu_components_textfield#echoMode-prop>` is set to
Password or PasswordEchoOnEdit. By default it is the unicode character
2022.

If this property is set to a string with more than one character, the
first character is used. If the string is empty, the value is ignored
and the property is not set.

| 

.. _sdk_ubuntu_components_textfield_persistentSelection-prop:

+--------------------------------------------------------------------------+
|        \ persistentSelection : bool                                      |
+--------------------------------------------------------------------------+

Whether the :ref:`TextField <sdk_ubuntu_components_textfield>` should keep
its selection when it loses active focus to another item in the scene.
By default this is set to false.

| 

.. _sdk_ubuntu_components_textfield_placeholderText-prop:

+--------------------------------------------------------------------------+
|        \ placeholderText : string                                        |
+--------------------------------------------------------------------------+

Text that appears when there is no content in the component.

| 

.. _sdk_ubuntu_components_textfield_popover-prop:

+--------------------------------------------------------------------------+
|        \ popover : `var <http://doc.qt.io/qt-5/qml-var.html>`_           |
+--------------------------------------------------------------------------+

The property overrides the default popover of the
:ref:`TextField <sdk_ubuntu_components_textfield>`. When set, the
:ref:`TextField <sdk_ubuntu_components_textfield>` will open the given
popover instead of the default one defined. The popover can either be a
component or a URL to be loaded.

| 

.. _sdk_ubuntu_components_textfield_primaryItem-prop:

+--------------------------------------------------------------------------+
|        \ primaryItem : list<Object>                                      |
+--------------------------------------------------------------------------+

Overlaid component that can be set for the fore side of the
:ref:`TextField <sdk_ubuntu_components_textfield>`, e.g.showing a magnifier
to implement search functionality.

| 

.. _sdk_ubuntu_components_textfield_readOnly-prop:

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

Sets whether user input can modify the contents of the
:ref:`TextField <sdk_ubuntu_components_textfield>`.

If readOnly is set to true, then user input will not affect the text
property. Any bindings or attempts to set the text property will still
work.

| 

.. _sdk_ubuntu_components_textfield_renderType-prop:

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

.. _sdk_ubuntu_components_textfield_secondaryItem-prop:

+--------------------------------------------------------------------------+
|        \ secondaryItem : list<Object>                                    |
+--------------------------------------------------------------------------+

Overlaid component that can be set for the rear side of the
:ref:`TextField <sdk_ubuntu_components_textfield>`, e.g.showing a CAPS LOCK
or NUM LOCK indication. The overlaid components will be placed right
after the clear button.

| 

.. _sdk_ubuntu_components_textfield_selectByMouse-prop:

+--------------------------------------------------------------------------+
|        \ selectByMouse : bool                                            |
+--------------------------------------------------------------------------+

Defaults to true.

If false, the user cannot use the mouse to select text, only can use it
to focus the input.

| 

.. _sdk_ubuntu_components_textfield_[read-only] selectedText-prop:

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

.. _sdk_ubuntu_components_textfield_selectedTextColor-prop:

+--------------------------------------------------------------------------+
|        \ selectedTextColor : color                                       |
+--------------------------------------------------------------------------+

The highlighted text color, used in selections.

| 

.. _sdk_ubuntu_components_textfield_selectionColor-prop:

+--------------------------------------------------------------------------+
|        \ selectionColor : color                                          |
+--------------------------------------------------------------------------+

The text highlight color, used behind selections.

| 

.. _sdk_ubuntu_components_textfield_selectionEnd-prop:

+--------------------------------------------------------------------------+
|        \ selectionEnd : int                                              |
+--------------------------------------------------------------------------+

The cursor position after the last character in the current selection.

This property is read-only. To change the selection, use
select(start,end),
:ref:`selectAll() <sdk_ubuntu_components_textfield#selectAll-method>`, or
:ref:`selectWord() <sdk_ubuntu_components_textfield#selectWord-method>`.

| 

.. _sdk_ubuntu_components_textfield_selectionStart-prop:

+--------------------------------------------------------------------------+
|        \ selectionStart : int                                            |
+--------------------------------------------------------------------------+

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use
select(start,end),
:ref:`selectAll() <sdk_ubuntu_components_textfield#selectAll-method>`, or
:ref:`selectWord() <sdk_ubuntu_components_textfield#selectWord-method>`.

| 

.. _sdk_ubuntu_components_textfield_text-prop:

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The text in the :ref:`TextField <sdk_ubuntu_components_textfield>`.

| 

.. _sdk_ubuntu_components_textfield_validator-prop:

+--------------------------------------------------------------------------+
|        \ validator : Validator                                           |
+--------------------------------------------------------------------------+

Allows you to set a validator on the
:ref:`TextInput <sdk_qtquick_textinput>`. When a validator is set the
:ref:`TextField <sdk_ubuntu_components_textfield>` will only accept input
which leaves the text property in an acceptable or intermediate state.
The accepted signal will only be sent if the text is in an acceptable
state when enter is pressed.

Currently supported validators are
:ref:`IntValidator <sdk_qtquick_intvalidator>`,
:ref:`DoubleValidator <sdk_qtquick_doublevalidator>` and
:ref:`RegExpValidator <sdk_qtquick_regexpvalidator>`. An example of using
validators is shown below, which allows input of integers between 11 and
31 into the text input:

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
:ref:`acceptableInput <sdk_ubuntu_components_textfield#acceptableInput-prop>`
and :ref:`inputMask <sdk_ubuntu_components_textfield#inputMask-prop>`.

| 

.. _sdk_ubuntu_components_textfield_verticalAlignment-method:

+--------------------------------------------------------------------------+
|        \ verticalAlignment : enumeration                                 |
+--------------------------------------------------------------------------+

See
:ref:`horizontalAlignment <sdk_ubuntu_components_textfield#horizontalAlignment-prop>`
for details.

| 

Signal Documentation
--------------------

.. _sdk_ubuntu_components_textfield_accepted-method:

+--------------------------------------------------------------------------+
|        \ accepted()                                                      |
+--------------------------------------------------------------------------+

This handler is called when the Return or Enter key is pressed. Note
that if there is a validator or
:ref:`inputMask <sdk_ubuntu_components_textfield#inputMask-prop>` set on
the text input, the handler will only be emitted if the input is in an
acceptable state.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_textfield_copy-method:

+--------------------------------------------------------------------------+
|        \ copy()                                                          |
+--------------------------------------------------------------------------+

Copies the currently selected text to the system clipboard.

| 

.. _sdk_ubuntu_components_textfield_cut-method:

+--------------------------------------------------------------------------+
|        \ cut()                                                           |
+--------------------------------------------------------------------------+

Moves the currently selected text to the system clipboard.

| 

.. _sdk_ubuntu_components_textfield_deselect-method:

+--------------------------------------------------------------------------+
|        \ deselect()                                                      |
+--------------------------------------------------------------------------+

Removes active text selection.

| 

.. _sdk_ubuntu_components_textfield_getText-method:

+--------------------------------------------------------------------------+
|        \ getText( *start*, *end*)                                        |
+--------------------------------------------------------------------------+

Returns the section of text that is between the start and end positions.

If the :ref:`TextField <sdk_ubuntu_components_textfield>` has an
:ref:`inputMask <sdk_ubuntu_components_textfield#inputMask-prop>` the
length will include mask characters.

| 

.. _sdk_ubuntu_components_textfield_insert-method:

+--------------------------------------------------------------------------+
|        \ insert( *position*, *text*)                                     |
+--------------------------------------------------------------------------+

Inserts *text* into the :ref:`TextField <sdk_ubuntu_components_textfield>`
at *position*.

| 

.. _sdk_ubuntu_components_textfield_isRightToLeft-method:

+--------------------------------------------------------------------------+
|        \ isRightToLeft( *start*, *end*)                                  |
+--------------------------------------------------------------------------+

Returns true if the natural reading direction of the editor text found
between positions start and end is right to left.

| 

.. _sdk_ubuntu_components_textfield_moveCursorSelection-method:

+--------------------------------------------------------------------------+
|        \ moveCursorSelection( *position*, *mode*)                        |
+--------------------------------------------------------------------------+

Moves the cursor to position and updates the selection according to the
optional mode parameter. (To only move the cursor, set the
:ref:`cursorPosition <sdk_ubuntu_components_textfield#cursorPosition-prop>`
property.)

When this method is called it additionally sets either the
:ref:`selectionStart <sdk_ubuntu_components_textfield#selectionStart-prop>`
or the
:ref:`selectionEnd <sdk_ubuntu_components_textfield#selectionEnd-prop>`
(whichever was at the previous cursor position) to the specified
position. This allows you to easily extend and contract the selected
text range.

The selection mode specifies whether the selection is updated on a per
character or a per word basis. If not specified the selection mode will
default to :ref:`TextInput <sdk_qtquick_textinput>`.SelectCharacters.

-  - :ref:`TextInput <sdk_qtquick_textinput>`.SelectCharacters - Sets
   either the
   :ref:`selectionStart <sdk_ubuntu_components_textfield#selectionStart-prop>`
   or
   :ref:`selectionEnd <sdk_ubuntu_components_textfield#selectionEnd-prop>`
   (whichever was at the previous cursor position) to the specified
   position.
-  - :ref:`TextInput <sdk_qtquick_textinput>`.SelectWords - Sets the
   :ref:`selectionStart <sdk_ubuntu_components_textfield#selectionStart-prop>`
   and
   :ref:`selectionEnd <sdk_ubuntu_components_textfield#selectionEnd-prop>`
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

The same sequence with :ref:`TextInput <sdk_qtquick_textinput>`.SelectWords
will extend the selection start to a word boundary before or on position
5 and extend the selection end to a word boundary on or past position 9.

| 

.. _sdk_ubuntu_components_textfield_paste-method:

+--------------------------------------------------------------------------+
|        \ paste( *data*)                                                  |
+--------------------------------------------------------------------------+

Places the clipboard or the data given as parameter into the text input.
The selected text will be replaces with the data.

| 

.. _sdk_ubuntu_components_textfield_positionAt-method:

+--------------------------------------------------------------------------+
|        \ positionAt( *x*, *position*)                                    |
+--------------------------------------------------------------------------+

This function returns the character position at x pixels from the left
of the :ref:`TextField <sdk_ubuntu_components_textfield>`. Position 0 is
before the first character, position 1 is after the first character but
before the second, and so on until position text.length, which is after
all characters.

This means that for all x values before the first character this
function returns 0, and for all x values after the last character this
function returns text.length.

The cursor position type specifies how the cursor position should be
resolved.

-  - :ref:`TextInput <sdk_qtquick_textinput>`.CursorBetweenCharacters -
   Returns the position between characters that is nearest x.
-  - :ref:`TextInput <sdk_qtquick_textinput>`.CursorOnCharacter - Returns
   the position before the character that is nearest x.

| 

.. _sdk_ubuntu_components_textfield_positionToRectangle-method:

+--------------------------------------------------------------------------+
|        \ positionToRectangle( *pos*)                                     |
+--------------------------------------------------------------------------+

This function takes a character position and returns the rectangle that
the cursor would occupy, if it was placed at that character position.

This is similar to setting the
:ref:`cursorPosition <sdk_ubuntu_components_textfield#cursorPosition-prop>`,
and then querying the cursor rectangle, but the
:ref:`cursorPosition <sdk_ubuntu_components_textfield#cursorPosition-prop>`
is not changed.

| 

.. _sdk_ubuntu_components_textfield_redo-method:

+--------------------------------------------------------------------------+
|        \ redo()                                                          |
+--------------------------------------------------------------------------+

Redoes the last operation if redo is
:ref:`available <sdk_ubuntu_components_textfield#canRedo-prop>`.

| 

.. _sdk_ubuntu_components_textfield_remove-method:

+--------------------------------------------------------------------------+
|        \ remove( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Removes the section of text that is between the start and end positions
from the :ref:`TextField <sdk_ubuntu_components_textfield>`.

| 

.. _sdk_ubuntu_components_textfield_select-method:

+--------------------------------------------------------------------------+
|        \ select( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Causes the text from start to end to be selected.

If either start or end is out of range, the selection is not changed.

After calling this,
:ref:`selectionStart <sdk_ubuntu_components_textfield#selectionStart-prop>`
will become the lesser and
:ref:`selectionEnd <sdk_ubuntu_components_textfield#selectionEnd-prop>`
will become the greater (regardless of the order passed to this method).

| 

.. _sdk_ubuntu_components_textfield_selectAll-method:

+--------------------------------------------------------------------------+
|        \ selectAll()                                                     |
+--------------------------------------------------------------------------+

Causes all text to be selected.

| 

.. _sdk_ubuntu_components_textfield_selectWord-method:

+--------------------------------------------------------------------------+
|        \ selectWord()                                                    |
+--------------------------------------------------------------------------+

Causes the word closest to the current cursor position to be selected.

| 

.. _sdk_ubuntu_components_textfield_undo-method:

+--------------------------------------------------------------------------+
|        \ undo()                                                          |
+--------------------------------------------------------------------------+

Undoes the last operation if undo is
:ref:`available <sdk_ubuntu_components_textfield#canUndo-prop>`. Deselects
any current selection, and updates the selection start to the current
cursor position.

| 
