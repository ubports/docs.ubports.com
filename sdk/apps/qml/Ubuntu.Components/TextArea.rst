.. _sdk_ubuntu_components_textarea:
Ubuntu.Components TextArea
==========================

The TextArea item displays a block of editable, scrollable, formatted
text.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Ubuntu <sdk_ubuntu_components_ubunt |
|                                      | u>`_                                 |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`autoSize <sdk_ubuntu_components_textarea_autoSize-prop>` :
   bool
-  :ref:`baseUrl <sdk_ubuntu_components_textarea_baseUrl-prop>` :
   url
-  :ref:`canPaste <sdk_ubuntu_components_textarea_canPaste-prop>` :
   bool
-  :ref:`canRedo <sdk_ubuntu_components_textarea_canRedo-prop>` :
   bool
-  :ref:`canUndo <sdk_ubuntu_components_textarea_canUndo-prop>` :
   bool
-  :ref:`color <sdk_ubuntu_components_textarea_color-prop>` : color
-  :ref:`contentHeight <sdk_ubuntu_components_textarea_contentHeight-prop>`
   : real
-  :ref:`contentWidth <sdk_ubuntu_components_textarea_contentWidth-prop>`
   : real
-  :ref:`cursorDelegate <sdk_ubuntu_components_textarea_cursorDelegate-prop>`
   : Component
-  :ref:`cursorPosition <sdk_ubuntu_components_textarea_cursorPosition-prop>`
   : int
-  :ref:`cursorRectangle <sdk_ubuntu_components_textarea_cursorRectangle-prop>`
   : rectangle
-  :ref:`cursorVisible <sdk_ubuntu_components_textarea_cursorVisible-prop>`
   : bool
-  :ref:`displayText <sdk_ubuntu_components_textarea_displayText-prop>`
   : string
-  :ref:`effectiveHorizontalAlignment <sdk_ubuntu_components_textarea_effectiveHorizontalAlignment-prop>`
   : enumeration
-  :ref:`font <sdk_ubuntu_components_textarea_font-prop>` : font
-  :ref:`highlighted <sdk_ubuntu_components_textarea_highlighted-prop>`
   : bool
-  :ref:`horizontalAlignment <sdk_ubuntu_components_textarea_horizontalAlignment-prop>`
   : enumeration
-  :ref:`inputMethodComposing <sdk_ubuntu_components_textarea_inputMethodComposing-prop>`
   : bool
-  :ref:`inputMethodHints <sdk_ubuntu_components_textarea_inputMethodHints-prop>`
   : enumeration
-  :ref:`length <sdk_ubuntu_components_textarea_length-prop>` : int
-  :ref:`lineCount <sdk_ubuntu_components_textarea_lineCount-prop>`
   : int
-  :ref:`maximumLineCount <sdk_ubuntu_components_textarea_maximumLineCount-prop>`
   : int
-  :ref:`mouseSelectionMode <sdk_ubuntu_components_textarea_mouseSelectionMode-prop>`
   : enumeration
-  :ref:`paintedHeight <sdk_ubuntu_components_textarea_paintedHeight-prop>`
   : real
-  :ref:`paintedWidth <sdk_ubuntu_components_textarea_paintedWidth-prop>`
   : real
-  :ref:`persistentSelection <sdk_ubuntu_components_textarea_persistentSelection-prop>`
   : bool
-  :ref:`placeholderText <sdk_ubuntu_components_textarea_placeholderText-prop>`
   : string
-  :ref:`popover <sdk_ubuntu_components_textarea_popover-prop>` :
   var
-  :ref:`readOnly <sdk_ubuntu_components_textarea_readOnly-prop>` :
   bool
-  :ref:`renderType <sdk_ubuntu_components_textarea_renderType-prop>`
   : enumeration
-  :ref:`selectByMouse <sdk_ubuntu_components_textarea_selectByMouse-prop>`
   : bool
-  :ref:`selectedText <sdk_ubuntu_components_textarea_selectedText-prop>`
   : string
-  :ref:`selectedTextColor <sdk_ubuntu_components_textarea_selectedTextColor-prop>`
   : color
-  :ref:`selectionColor <sdk_ubuntu_components_textarea_selectionColor-prop>`
   : color
-  :ref:`selectionEnd <sdk_ubuntu_components_textarea_selectionEnd-prop>`
   : int
-  :ref:`selectionStart <sdk_ubuntu_components_textarea_selectionStart-prop>`
   : int
-  :ref:`text <sdk_ubuntu_components_textarea_text-prop>` : string
-  :ref:`textDocument <sdk_ubuntu_components_textarea_textDocument-prop>`
   : var
-  :ref:`textFormat <sdk_ubuntu_components_textarea_textFormat-prop>`
   : enumeration
-  :ref:`verticalAlignment <sdk_ubuntu_components_textarea_verticalAlignment-prop>`
   : enumeration
-  :ref:`wrapMode <sdk_ubuntu_components_textarea_wrapMode-prop>` :
   enumeration

Signals
-------

-  :ref:`linkActivated <sdk_ubuntu_components_textarea_linkActivated-signal>`\ (string
   *link*)

Methods
-------

-  :ref:`copy <sdk_ubuntu_components_textarea_copy-method>`\ ()
-  :ref:`cut <sdk_ubuntu_components_textarea_cut-method>`\ ()
-  :ref:`deselect <sdk_ubuntu_components_textarea_deselect-method>`\ ()
-  :ref:`getFormattedText <sdk_ubuntu_components_textarea_getFormattedText-method>`\ (*start*,
   *end*)
-  :ref:`getText <sdk_ubuntu_components_textarea_getText-method>`\ (*start*,
   *end*)
-  :ref:`insert <sdk_ubuntu_components_textarea_insert-method>`\ (*position*,
   *text*)
-  :ref:`isRightToLeft <sdk_ubuntu_components_textarea_isRightToLeft-method>`\ (*start*,
   *end*)
-  :ref:`moveCursorSelection <sdk_ubuntu_components_textarea_moveCursorSelection-method>`\ (*position*,
   *mode*)
-  :ref:`paste <sdk_ubuntu_components_textarea_paste-method>`\ (*data*)
-  :ref:`positionAt <sdk_ubuntu_components_textarea_positionAt-method>`\ (*x*,
   *y*)
-  :ref:`positionToRectangle <sdk_ubuntu_components_textarea_positionToRectangle-method>`\ (*position*)
-  :ref:`redo <sdk_ubuntu_components_textarea_redo-method>`\ ()
-  :ref:`remove <sdk_ubuntu_components_textarea_remove-method>`\ (*start*,
   *end*)
-  :ref:`select <sdk_ubuntu_components_textarea_select-method>`\ (*start*,
   *end*)
-  :ref:`selectAll <sdk_ubuntu_components_textarea_selectAll-method>`\ ()
-  :ref:`selectWord <sdk_ubuntu_components_textarea_selectWord-method>`\ ()
-  :ref:`undo <sdk_ubuntu_components_textarea_undo-method>`\ ()

Detailed Description
--------------------

The :ref:`TextArea <sdk_ubuntu_components_textarea>` supports fix-size and
auto-expanding modes. In fix-size mode the content is scrolled when
exceeds the boundaries and can be scrolled both horizontally and
vertically, depending on the
:ref:`contentWidth <sdk_ubuntu_components_textarea#contentWidth-prop>` and
:ref:`contentHeight <sdk_ubuntu_components_textarea#contentHeight-prop>`
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
:ref:`autoSize <sdk_ubuntu_components_textarea#autoSize-prop>` and
:ref:`maximumLineCount <sdk_ubuntu_components_textarea#maximumLineCount-prop>`.
Setting :ref:`autoSize <sdk_ubuntu_components_textarea#autoSize-prop>` will
set implicitHeight to one line, and the height will follow the line
count, meaning when lines are added the area will expand and when
removed the area will shrink. The
:ref:`maximumLineCount <sdk_ubuntu_components_textarea#maximumLineCount-prop>`
specifies how much the editor should be expanded. If this value is set
to 0, the area will always expand vertically to fit the content. When
:ref:`autoSize <sdk_ubuntu_components_textarea#autoSize-prop>` is set, the
:ref:`contentHeight <sdk_ubuntu_components_textarea#contentHeight-prop>`
property value is ignored, and the expansion only happens vertically.

.. code:: qml

    TextArea {
        width: units.gu(20)
        height: units.gu(12)
        contentWidth: units.gu(30)
        autoSize: true
        maximumLineCount: 0
    }

:ref:`TextArea <sdk_ubuntu_components_textarea>` comes with 30 grid-units
implicit width and one line height on auto-sizing mode and 4 lines on
fixed-mode. The line size is calculated from the font size and the
ovarlay and frame spacing specified in the style.

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

.. _sdk_ubuntu_components_textarea_autoSize-prop:

+--------------------------------------------------------------------------+
|        \ autoSize : bool                                                 |
+--------------------------------------------------------------------------+

This property specifies whether the text area sizes following the line
count or not. The default value is false.

| 

.. _sdk_ubuntu_components_textarea_baseUrl-prop:

+--------------------------------------------------------------------------+
|        \ baseUrl : `url <http://doc.qt.io/qt-5/qml-url.html>`_           |
+--------------------------------------------------------------------------+

This property specifies a base URL which is used to resolve relative
URLs within the text. The default value is the url of the QML file
instantiating the :ref:`TextArea <sdk_ubuntu_components_textarea>` item.

| 

.. _sdk_ubuntu_components_textarea_canPaste-prop:

+--------------------------------------------------------------------------+
|        \ canPaste : bool                                                 |
+--------------------------------------------------------------------------+

Returns true if the :ref:`TextArea <sdk_ubuntu_components_textarea>` is
writable and the content of the clipboard is suitable for pasting into
the :ref:`TextArea <sdk_ubuntu_components_textarea>`.

| 

.. _sdk_ubuntu_components_textarea_canRedo-prop:

+--------------------------------------------------------------------------+
|        \ canRedo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the :ref:`TextArea <sdk_ubuntu_components_textarea>` is
writable and there are undone operations that can be redone.

| 

.. _sdk_ubuntu_components_textarea_canUndo-prop:

+--------------------------------------------------------------------------+
|        \ canUndo : bool                                                  |
+--------------------------------------------------------------------------+

Returns true if the :ref:`TextArea <sdk_ubuntu_components_textarea>` is
writable and there are previous operations that can be undone.

| 

.. _sdk_ubuntu_components_textarea_color-prop:

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The text color.

| 

.. _sdk_ubuntu_components_textarea_contentHeight-prop:

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

The property folds the height of the text editing content. This can be
equal or bigger than the frame height minus the spacing between the
frame and the input area defined in the current theme. The default value
is the same as the visible input area's height.

| 

.. _sdk_ubuntu_components_textarea_contentWidth-prop:

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

The property folds the width of the text editing content. This can be
equal or bigger than the frame width minus the spacing between the frame
and the input area defined in the current theme. The default value is
the same as the visible input area's width.

| 

.. _sdk_ubuntu_components_textarea_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ cursorDelegate : `Component <sdk_qtqml_component>`         |
+--------------------------------------------------------------------------+

The delegate for the cursor in the
:ref:`TextArea <sdk_ubuntu_components_textarea>`.

If you set a cursorDelegate for a
:ref:`TextArea <sdk_ubuntu_components_textarea>`, this delegate will be
used for drawing the cursor instead of the standard cursor. An instance
of the delegate will be created and managed by the text edit when a
cursor is needed, and the x and y properties of delegate instance will
be set so as to be one pixel before the top left of the current
character.

Note that the root item of the delegate component must be a
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`_  or
`QQuickItem <http://doc.qt.io/qt-5/qquickitem.html>`_  derived item.

| 

.. _sdk_ubuntu_components_textarea_cursorPosition-prop:

+--------------------------------------------------------------------------+
|        \ cursorPosition : int                                            |
+--------------------------------------------------------------------------+

The position of the cursor in the
:ref:`TextArea <sdk_ubuntu_components_textarea>`.

| 

.. _sdk_ubuntu_components_textarea_cursorRectangle-prop:

+--------------------------------------------------------------------------+
|        \ cursorRectangle : rectangle                                     |
+--------------------------------------------------------------------------+

The rectangle where the standard text cursor is rendered within the text
edit. Read-only.

The position and height of a custom
:ref:`cursorDelegate <sdk_ubuntu_components_textarea#cursorDelegate-prop>`
are updated to follow the cursorRectangle automatically when it changes.
The width of the delegate is unaffected by changes in the cursor
rectangle.

| 

.. _sdk_ubuntu_components_textarea_cursorVisible-prop:

+--------------------------------------------------------------------------+
|        \ cursorVisible : bool                                            |
+--------------------------------------------------------------------------+

If true the text edit shows a cursor.

This property is set and unset when the text edit gets active focus, but
it can also be set directly (useful, for example, if a KeyProxy might
forward keys to it).

| 

.. _sdk_ubuntu_components_textarea_[read-only] displayText-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] displayText : string                                |
+--------------------------------------------------------------------------+

This property contains the text that is displayed on the screen. May
differ from the text property value when
:ref:`TextEdit <sdk_qtquick_textedit>`.RichText format is selected.

| 

.. _sdk_ubuntu_components_textarea_effectiveHorizontalAlignment-prop:

+--------------------------------------------------------------------------+
|        \ effectiveHorizontalAlignment : enumeration                      |
+--------------------------------------------------------------------------+

Presents the effective horizontal alignment that can be different from
the one specified at
:ref:`horizontalAlignment <sdk_ubuntu_components_textarea#horizontalAlignment-prop>`
due to layout mirroring.

| 

.. _sdk_ubuntu_components_textarea_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ font : `font <sdk_ubuntu_components_textarea#font-prop>`   |
+--------------------------------------------------------------------------+

The property holds the font used by the editing.

| 

.. _sdk_ubuntu_components_textarea_highlighted-prop:

+--------------------------------------------------------------------------+
|        \ highlighted : bool                                              |
+--------------------------------------------------------------------------+

The property presents whether the
:ref:`TextArea <sdk_ubuntu_components_textarea>` is highlighted or not. By
default the :ref:`TextArea <sdk_ubuntu_components_textarea>` gets
highlighted when gets the focus, so can accept text input. This property
allows to control the highlight separately from the focused behavior.

| 

.. _sdk_ubuntu_components_textarea_horizontalAlignment-prop:

+--------------------------------------------------------------------------+
|        \ horizontalAlignment : enumeration                               |
+--------------------------------------------------------------------------+

Sets the horizontal alignment of the text within the TextAre item's
width and height. By default, the text alignment follows the natural
alignment of the text, for example text that is read from left to right
will be aligned to the left.

Valid values for
:ref:`effectiveHorizontalAlignment <sdk_ubuntu_components_textarea#effectiveHorizontalAlignment-prop>`
are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignLeft (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignRight
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignHCenter
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignJustify

| 

.. _sdk_ubuntu_components_textarea_inputMethodComposing-prop:

+--------------------------------------------------------------------------+
|        \ inputMethodComposing : bool                                     |
+--------------------------------------------------------------------------+

This property holds whether the
:ref:`TextArea <sdk_ubuntu_components_textarea>` has partial text input
from an input method.

While it is composing an input method may rely on mouse or key events
from the :ref:`TextArea <sdk_ubuntu_components_textarea>` to edit or commit
the partial text. This property can be used to determine when to disable
events handlers that may interfere with the correct operation of an
input method.

| 

.. _sdk_ubuntu_components_textarea_inputMethodHints-prop:

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

.. _sdk_ubuntu_components_textarea_length-prop:

+--------------------------------------------------------------------------+
|        \ length : int                                                    |
+--------------------------------------------------------------------------+

Returns the total number of plain text characters in the
:ref:`TextArea <sdk_ubuntu_components_textarea>` item.

As this number doesn't include any formatting markup it may not be the
same as the length of the string returned by the text property.

This property can be faster than querying the length the text property
as it doesn't require any copying or conversion of the
:ref:`TextArea <sdk_ubuntu_components_textarea>`'s internal string data.

| 

.. _sdk_ubuntu_components_textarea_lineCount-prop:

+--------------------------------------------------------------------------+
|        \ lineCount : int                                                 |
+--------------------------------------------------------------------------+

Returns the total number of lines in the
:ref:`TextArea <sdk_ubuntu_components_textarea>` item.

| 

.. _sdk_ubuntu_components_textarea_maximumLineCount-prop:

+--------------------------------------------------------------------------+
|        \ maximumLineCount : int                                          |
+--------------------------------------------------------------------------+

The property holds the maximum amount of lines to expand when
:ref:`autoSize <sdk_ubuntu_components_textarea#autoSize-prop>` is enabled.
The value of 0 does not put any upper limit and the control will expand
forever.

The default value is 5 lines.

| 

.. _sdk_ubuntu_components_textarea_mouseSelectionMode-prop:

+--------------------------------------------------------------------------+
|        \ mouseSelectionMode : enumeration                                |
+--------------------------------------------------------------------------+

Specifies how text should be selected using a mouse.

-  :ref:`TextEdit <sdk_qtquick_textedit>`.SelectCharacters - The selection
   is updated with individual characters. (Default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.SelectWords - The selection is
   updated with whole words.

This property only applies when
:ref:`selectByMouse <sdk_ubuntu_components_textarea#selectByMouse-prop>` is
true.

| 

.. _sdk_ubuntu_components_textarea_[read-only] paintedHeight-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] paintedHeight : real                                |
+--------------------------------------------------------------------------+

Exposes the paintedHeight of the underlying text component. It's
required if the application uses its own Flickable for scrolling.

| 

.. _sdk_ubuntu_components_textarea_[read-only] paintedWidth-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] paintedWidth : real                                 |
+--------------------------------------------------------------------------+

Exposes the paintedWidth of the underlying text component. It's required
if the application uses its own Flickable for scrolling.

| 

.. _sdk_ubuntu_components_textarea_persistentSelection-prop:

+--------------------------------------------------------------------------+
|        \ persistentSelection : bool                                      |
+--------------------------------------------------------------------------+

Whether the :ref:`TextArea <sdk_ubuntu_components_textarea>` should keep
the selection visible when it loses active focus to another item in the
scene. By default this is set to true.

| 

.. _sdk_ubuntu_components_textarea_placeholderText-prop:

+--------------------------------------------------------------------------+
|        \ placeholderText : string                                        |
+--------------------------------------------------------------------------+

Text that appears when there is no focus and no content in the component
(hint text).

| 

.. _sdk_ubuntu_components_textarea_popover-prop:

+--------------------------------------------------------------------------+
|        \ popover : `var <http://doc.qt.io/qt-5/qml-var.html>`_           |
+--------------------------------------------------------------------------+

The property overrides the default popover of the
:ref:`TextArea <sdk_ubuntu_components_textarea>`. When set, the
:ref:`TextArea <sdk_ubuntu_components_textarea>` will open the given
popover instead of the default one defined. The popover can either be a
component or a URL to be loaded.

| 

.. _sdk_ubuntu_components_textarea_readOnly-prop:

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

Whether the user can interact with the
:ref:`TextArea <sdk_ubuntu_components_textarea>` item. If this property is
set to true the text cannot be edited by user interaction.

By default this property is false.

| 

.. _sdk_ubuntu_components_textarea_renderType-prop:

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

.. _sdk_ubuntu_components_textarea_selectByMouse-prop:

+--------------------------------------------------------------------------+
|        \ selectByMouse : bool                                            |
+--------------------------------------------------------------------------+

The property drives whether text selection should happen with the mouse
or not. The default value is true.

| 

.. _sdk_ubuntu_components_textarea_selectedText-prop:

+--------------------------------------------------------------------------+
|        \ selectedText : string                                           |
+--------------------------------------------------------------------------+

This read-only property provides the text currently selected in the text
edit.

| 

.. _sdk_ubuntu_components_textarea_selectedTextColor-prop:

+--------------------------------------------------------------------------+
|        \ selectedTextColor : color                                       |
+--------------------------------------------------------------------------+

The selected text color, used in selections.

| 

.. _sdk_ubuntu_components_textarea_selectionColor-prop:

+--------------------------------------------------------------------------+
|        \ selectionColor : color                                          |
+--------------------------------------------------------------------------+

The text highlight color, used behind selections.

| 

.. _sdk_ubuntu_components_textarea_selectionEnd-prop:

+--------------------------------------------------------------------------+
|        \ selectionEnd : int                                              |
+--------------------------------------------------------------------------+

The cursor position after the last character in the current selection.

This property is read-only. To change the selection, use select(start,
end), :ref:`selectAll() <sdk_ubuntu_components_textarea#selectAll-method>`,
or :ref:`selectWord() <sdk_ubuntu_components_textarea#selectWord-method>`.

See also
:ref:`selectionStart <sdk_ubuntu_components_textarea#selectionStart-prop>`,
:ref:`cursorPosition <sdk_ubuntu_components_textarea#cursorPosition-prop>`,
and :ref:`selectedText <sdk_ubuntu_components_textarea#selectedText-prop>`.

| 

.. _sdk_ubuntu_components_textarea_selectionStart-prop:

+--------------------------------------------------------------------------+
|        \ selectionStart : int                                            |
+--------------------------------------------------------------------------+

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use select(start,
end), :ref:`selectAll() <sdk_ubuntu_components_textarea#selectAll-method>`,
or :ref:`selectWord() <sdk_ubuntu_components_textarea#selectWord-method>`.

See also
:ref:`selectionEnd <sdk_ubuntu_components_textarea#selectionEnd-prop>`,
:ref:`cursorPosition <sdk_ubuntu_components_textarea#cursorPosition-prop>`,
and :ref:`selectedText <sdk_ubuntu_components_textarea#selectedText-prop>`.

| 

.. _sdk_ubuntu_components_textarea_text-prop:

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The text to display. If the text format is AutoText the text edit will
automatically determine whether the text should be treated as rich text.
This determination is made using Qt::mightBeRichText().

| 

.. _sdk_ubuntu_components_textarea_textDocument-prop:

+--------------------------------------------------------------------------+
|        \ textDocument : `var <http://doc.qt.io/qt-5/qml-var.html>`_      |
+--------------------------------------------------------------------------+

Exposes the
`QQuickTextDocument <http://doc.qt.io/qt-5/qquicktextdocument.html>`_ 
which can be used to implement advanced formatting and syntax
highlighting (QSyntaxHighlighter) with C++.

| 

.. _sdk_ubuntu_components_textarea_textFormat-prop:

+--------------------------------------------------------------------------+
|        \ textFormat : enumeration                                        |
+--------------------------------------------------------------------------+

The way the text property should be displayed.

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AutoText
-  :ref:`TextEdit <sdk_qtquick_textedit>`.PlainText
-  :ref:`TextEdit <sdk_qtquick_textedit>`.RichText

The default is :ref:`TextEdit <sdk_qtquick_textedit>`.PlainText. If the
text format is :ref:`TextEdit <sdk_qtquick_textedit>`.AutoText the text
edit will automatically determine whether the text should be treated as
rich text. This determination is made using Qt::mightBeRichText().

| 

.. _sdk_ubuntu_components_textarea_verticalAlignment-prop:

+--------------------------------------------------------------------------+
|        \ verticalAlignment : enumeration                                 |
+--------------------------------------------------------------------------+

Sets the vertical alignment of the text within the TextAres item's width
and height. By default, the text alignment follows the natural alignment
of the text.

Valid values for verticalAlignment are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignTop (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignBottom
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignVCenter

| 

.. _sdk_ubuntu_components_textarea_wrapMode-prop:

+--------------------------------------------------------------------------+
|        \ wrapMode : enumeration                                          |
+--------------------------------------------------------------------------+

Set this property to wrap the text to the
:ref:`TextEdit <sdk_qtquick_textedit>` item's width. The text will only
wrap if an explicit width has been set.

-  :ref:`TextEdit <sdk_qtquick_textedit>`.NoWrap - no wrapping will be
   performed. If the text contains insufficient newlines, then
   implicitWidth will exceed a set width.
-  :ref:`TextEdit <sdk_qtquick_textedit>`.WordWrap - wrapping is done on
   word boundaries only. If a word is too long, implicitWidth will
   exceed a set width.
-  :ref:`TextEdit <sdk_qtquick_textedit>`.WrapAnywhere - wrapping is done
   at any point on a line, even if it occurs in the middle of a word.
-  :ref:`TextEdit <sdk_qtquick_textedit>`.Wrap - if possible, wrapping
   occurs at a word boundary; otherwise it will occur at the appropriate
   point on the line, even in the middle of a word.

The default is :ref:`TextEdit <sdk_qtquick_textedit>`.Wrap

| 

Signal Documentation
--------------------

.. _sdk_ubuntu_components_textarea_linkActivated-method:

+--------------------------------------------------------------------------+
|        \ linkActivated(string *link*)                                    |
+--------------------------------------------------------------------------+

This handler is called when the user clicks on a link embedded in the
text. The link must be in rich text or HTML format and the link string
provides access to the particular link.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_textarea_copy-method:

+--------------------------------------------------------------------------+
|        \ copy()                                                          |
+--------------------------------------------------------------------------+

Copies the currently selected text to the system clipboard.

| 

.. _sdk_ubuntu_components_textarea_cut-method:

+--------------------------------------------------------------------------+
|        \ cut()                                                           |
+--------------------------------------------------------------------------+

Moves the currently selected text to the system clipboard.

| 

.. _sdk_ubuntu_components_textarea_deselect-method:

+--------------------------------------------------------------------------+
|        \ deselect()                                                      |
+--------------------------------------------------------------------------+

Removes active text selection.

| 

.. _sdk_ubuntu_components_textarea_getFormattedText-method:

+--------------------------------------------------------------------------+
|        \ getFormattedText( *start*, *end*)                               |
+--------------------------------------------------------------------------+

Returns the section of text that is between the start and end positions.

The returned text will be formatted according the
:ref:`textFormat <sdk_ubuntu_components_textarea#textFormat-prop>`
property.

| 

.. _sdk_ubuntu_components_textarea_getText-method:

+--------------------------------------------------------------------------+
|        \ getText( *start*, *end*)                                        |
+--------------------------------------------------------------------------+

Returns the section of text that is between the start and end positions.

The returned text does not include any rich text formatting. A
getText(0, length) will result in the same value as
:ref:`displayText <sdk_ubuntu_components_textarea#displayText-prop>`.

| 

.. _sdk_ubuntu_components_textarea_insert-method:

+--------------------------------------------------------------------------+
|        \ insert( *position*, *text*)                                     |
+--------------------------------------------------------------------------+

Inserts text into the :ref:`TextArea <sdk_ubuntu_components_textarea>` at
position.

| 

.. _sdk_ubuntu_components_textarea_isRightToLeft-method:

+--------------------------------------------------------------------------+
|        \ isRightToLeft( *start*, *end*)                                  |
+--------------------------------------------------------------------------+

Returns true if the natural reading direction of the editor text found
between positions start and end is right to left.

| 

.. _sdk_ubuntu_components_textarea_moveCursorSelection-method:

+--------------------------------------------------------------------------+
|        \ moveCursorSelection( *position*, *mode*)                        |
+--------------------------------------------------------------------------+

Moves the cursor to position and updates the selection according to the
optional mode parameter. (To only move the cursor, set the
:ref:`cursorPosition <sdk_ubuntu_components_textarea#cursorPosition-prop>`
property.)

When this method is called it additionally sets either the
:ref:`selectionStart <sdk_ubuntu_components_textarea#selectionStart-prop>`
or the
:ref:`selectionEnd <sdk_ubuntu_components_textarea#selectionEnd-prop>`
(whichever was at the previous cursor position) to the specified
position. This allows you to easily extend and contract the selected
text range.

The selection mode specifies whether the selection is updated on a per
character or a per word basis. If not specified the selection mode will
default to whatever is given in the
:ref:`mouseSelectionMode <sdk_ubuntu_components_textarea#mouseSelectionMode-prop>`
property.

| 

.. _sdk_ubuntu_components_textarea_paste-method:

+--------------------------------------------------------------------------+
|        \ paste( *data*)                                                  |
+--------------------------------------------------------------------------+

Places the clipboard or the data given as parameter into the text input.
The selected text will be replaces with the data.

| 

.. _sdk_ubuntu_components_textarea_positionAt-method:

+--------------------------------------------------------------------------+
|        \ positionAt( *x*, *y*)                                           |
+--------------------------------------------------------------------------+

Returns the text position closest to pixel position (x, y).

Position 0 is before the first character, position 1 is after the first
character but before the second, and so on until position text.length,
which is after all characters.

| 

.. _sdk_ubuntu_components_textarea_positionToRectangle-method:

+--------------------------------------------------------------------------+
|        \ positionToRectangle( *position*)                                |
+--------------------------------------------------------------------------+

Returns the rectangle at the given position in the text. The x, y, and
height properties correspond to the cursor that would describe that
position.

| 

.. _sdk_ubuntu_components_textarea_redo-method:

+--------------------------------------------------------------------------+
|        \ redo()                                                          |
+--------------------------------------------------------------------------+

Redoes the last operation if redo is
:ref:`available <sdk_ubuntu_components_textarea#canRedo-prop>`.

| 

.. _sdk_ubuntu_components_textarea_remove-method:

+--------------------------------------------------------------------------+
|        \ remove( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Removes the section of text that is between the start and end positions
from the :ref:`TextArea <sdk_ubuntu_components_textarea>`.

| 

.. _sdk_ubuntu_components_textarea_select-method:

+--------------------------------------------------------------------------+
|        \ select( *start*, *end*)                                         |
+--------------------------------------------------------------------------+

Causes the text from start to end to be selected.

If either start or end is out of range, the selection is not changed.

After calling this,
:ref:`selectionStart <sdk_ubuntu_components_textarea#selectionStart-prop>`
will become the lesser and
:ref:`selectionEnd <sdk_ubuntu_components_textarea#selectionEnd-prop>` will
become the greater (regardless of the order passed to this method).

See also
:ref:`selectionStart <sdk_ubuntu_components_textarea#selectionStart-prop>`
and :ref:`selectionEnd <sdk_ubuntu_components_textarea#selectionEnd-prop>`.

| 

.. _sdk_ubuntu_components_textarea_selectAll-method:

+--------------------------------------------------------------------------+
|        \ selectAll()                                                     |
+--------------------------------------------------------------------------+

Causes all text to be selected.

| 

.. _sdk_ubuntu_components_textarea_selectWord-method:

+--------------------------------------------------------------------------+
|        \ selectWord()                                                    |
+--------------------------------------------------------------------------+

Causes the word closest to the current cursor position to be selected.

| 

.. _sdk_ubuntu_components_textarea_undo-method:

+--------------------------------------------------------------------------+
|        \ undo()                                                          |
+--------------------------------------------------------------------------+

Undoes the last operation if undo is
:ref:`available <sdk_ubuntu_components_textarea#canUndo-prop>`. Deselects
any current selection, and updates the selection start to the current
cursor position.

| 
