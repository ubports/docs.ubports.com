.. _sdk_qtquick_textinput:

QtQuick TextInput
=================

Displays an editable line of text

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`acceptableInput <sdk_qtquick_textinput_acceptableInput>` : bool
-  :ref:`activeFocusOnPress <sdk_qtquick_textinput_activeFocusOnPress>` : bool
-  :ref:`autoScroll <sdk_qtquick_textinput_autoScroll>` : bool
-  :ref:`canPaste <sdk_qtquick_textinput_canPaste>` : bool
-  :ref:`canRedo <sdk_qtquick_textinput_canRedo>` : bool
-  :ref:`canUndo <sdk_qtquick_textinput_canUndo>` : bool
-  :ref:`color <sdk_qtquick_textinput_color>` : color
-  :ref:`contentHeight <sdk_qtquick_textinput_contentHeight>` : real
-  :ref:`contentWidth <sdk_qtquick_textinput_contentWidth>` : real
-  :ref:`cursorDelegate <sdk_qtquick_textinput_cursorDelegate>` : Component
-  :ref:`cursorPosition <sdk_qtquick_textinput_cursorPosition>` : int
-  :ref:`cursorRectangle <sdk_qtquick_textinput_cursorRectangle>` : rectangle
-  :ref:`cursorVisible <sdk_qtquick_textinput_cursorVisible>` : bool
-  :ref:`displayText <sdk_qtquick_textinput_displayText>` : string
-  :ref:`echoMode <sdk_qtquick_textinput_echoMode>` : enumeration
-  :ref:`effectiveHorizontalAlignment <sdk_qtquick_textinput_effectiveHorizontalAlignment>` : enumeration
-  :ref:`font.bold <sdk_qtquick_textinput_font_bold>` : bool
-  :ref:`font.capitalization <sdk_qtquick_textinput_font_capitalization>` : enumeration
-  :ref:`font.family <sdk_qtquick_textinput_font_family>` : string
-  :ref:`font.italic <sdk_qtquick_textinput_font_italic>` : bool
-  :ref:`font.letterSpacing <sdk_qtquick_textinput_font_letterSpacing>` : real
-  :ref:`font.pixelSize <sdk_qtquick_textinput_font_pixelSize>` : int
-  :ref:`font.pointSize <sdk_qtquick_textinput_font_pointSize>` : real
-  :ref:`font.strikeout <sdk_qtquick_textinput_font_strikeout>` : bool
-  :ref:`font.underline <sdk_qtquick_textinput_font_underline>` : bool
-  :ref:`font.weight <sdk_qtquick_textinput_font_weight>` : enumeration
-  :ref:`font.wordSpacing <sdk_qtquick_textinput_font_wordSpacing>` : real
-  :ref:`horizontalAlignment <sdk_qtquick_textinput_horizontalAlignment>` : enumeration
-  :ref:`inputMask <sdk_qtquick_textinput_inputMask>` : string
-  :ref:`inputMethodComposing <sdk_qtquick_textinput_inputMethodComposing>` : bool
-  :ref:`inputMethodHints <sdk_qtquick_textinput_inputMethodHints>` : enumeration
-  :ref:`length <sdk_qtquick_textinput_length>` : int
-  :ref:`maximumLength <sdk_qtquick_textinput_maximumLength>` : int
-  :ref:`mouseSelectionMode <sdk_qtquick_textinput_mouseSelectionMode>` : enumeration
-  :ref:`passwordCharacter <sdk_qtquick_textinput_passwordCharacter>` : string
-  :ref:`passwordMaskDelay <sdk_qtquick_textinput_passwordMaskDelay>` : int
-  :ref:`persistentSelection <sdk_qtquick_textinput_persistentSelection>` : bool
-  :ref:`readOnly <sdk_qtquick_textinput_readOnly>` : bool
-  :ref:`renderType <sdk_qtquick_textinput_renderType>` : enumeration
-  :ref:`selectByMouse <sdk_qtquick_textinput_selectByMouse>` : bool
-  :ref:`selectedText <sdk_qtquick_textinput_selectedText>` : string
-  :ref:`selectedTextColor <sdk_qtquick_textinput_selectedTextColor>` : color
-  :ref:`selectionColor <sdk_qtquick_textinput_selectionColor>` : color
-  :ref:`selectionEnd <sdk_qtquick_textinput_selectionEnd>` : int
-  :ref:`selectionStart <sdk_qtquick_textinput_selectionStart>` : int
-  :ref:`text <sdk_qtquick_textinput_text>` : string
-  :ref:`validator <sdk_qtquick_textinput_validator>` : Validator
-  :ref:`verticalAlignment <sdk_qtquick_textinput_verticalAlignment>` : enumeration
-  :ref:`wrapMode <sdk_qtquick_textinput_wrapMode>` : enumeration

Signals
-------

-  :ref:`accepted <sdk_qtquick_textinput_accepted>`\ ()
-  :ref:`editingFinished <sdk_qtquick_textinput_editingFinished>`\ ()

Methods
-------

-  :ref:`copy <sdk_qtquick_textinput_copy>`\ ()
-  :ref:`cut <sdk_qtquick_textinput_cut>`\ ()
-  :ref:`deselect <sdk_qtquick_textinput_deselect>`\ ()
-  :ref:`ensureVisible <sdk_qtquick_textinput_ensureVisible>`\ (int *position*)
-  string :ref:`getText <sdk_qtquick_textinput_getText>`\ (int *start*, int *end*)
-  :ref:`insert <sdk_qtquick_textinput_insert>`\ (int *position*, string *text*)
-  :ref:`isRightToLeft <sdk_qtquick_textinput_isRightToLeft>`\ (int *start*, int *end*)
-  :ref:`moveCursorSelection <sdk_qtquick_textinput_moveCursorSelection>`\ (int *position*, SelectionMode *mode*)
-  :ref:`paste <sdk_qtquick_textinput_paste>`\ ()
-  int :ref:`positionAt <sdk_qtquick_textinput_positionAt>`\ (real *x*, real *y*, CursorPosition *position*)
-  rect :ref:`positionToRectangle <sdk_qtquick_textinput_positionToRectangle>`\ (int *pos*)
-  :ref:`redo <sdk_qtquick_textinput_redo>`\ ()
-  :ref:`remove <sdk_qtquick_textinput_remove>`\ (int *start*, int *end*)
-  :ref:`select <sdk_qtquick_textinput_select>`\ (int *start*, int *end*)
-  :ref:`selectAll <sdk_qtquick_textinput_selectAll>`\ ()
-  :ref:`selectWord <sdk_qtquick_textinput_selectWord>`\ ()
-  :ref:`undo <sdk_qtquick_textinput_undo>`\ ()

Detailed Description
--------------------

The :ref:`TextInput <sdk_qtquick_textinput>` type displays a single line of editable plain text.

:ref:`TextInput <sdk_qtquick_textinput>` is used to accept a line of text input. Input constraints can be placed on a :ref:`TextInput <sdk_qtquick_textinput>` item (for example, through a :ref:`validator <sdk_qtquick_textinput_validator>` or :ref:`inputMask <sdk_qtquick_textinput_inputMask>`), and setting :ref:`echoMode <sdk_qtquick_textinput_echoMode>` to an appropriate value enables :ref:`TextInput <sdk_qtquick_textinput>` to be used for a password input field.

On Mac OS X, the Up/Down key bindings for Home/End are explicitly disabled. If you want such bindings (on any platform), you will need to construct them in QML.

**See also** :ref:`TextEdit <sdk_qtquick_textedit>` and `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_textinput_acceptableInput:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| acceptableInput : bool                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is always true unless a validator or input mask has been set. If a validator or input mask has been set, this property will only be true if the current text is acceptable to the validator or input mask as a final string (not as an intermediate string).

.. _sdk_qtquick_textinput_activeFocusOnPress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activeFocusOnPress : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the :ref:`TextInput <sdk_qtquick_textinput>` should gain active focus on a mouse press. By default this is set to true.

.. _sdk_qtquick_textinput_autoScroll:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoScroll : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the :ref:`TextInput <sdk_qtquick_textinput>` should scroll when the text is longer than the width. By default this is set to true.

**See also** :ref:`ensureVisible() <sdk_qtquick_textinput_ensureVisible>`.

.. _sdk_qtquick_textinput_canPaste:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canPaste : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the :ref:`TextInput <sdk_qtquick_textinput>` is writable and the content of the clipboard is suitable for pasting into the :ref:`TextInput <sdk_qtquick_textinput>`.

.. _sdk_qtquick_textinput_canRedo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canRedo : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the :ref:`TextInput <sdk_qtquick_textinput>` is writable and there are :ref:`undone <sdk_qtquick_textinput_undo>` operations that can be redone.

.. _sdk_qtquick_textinput_canUndo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canUndo : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the :ref:`TextInput <sdk_qtquick_textinput>` is writable and there are previous operations that can be undone.

.. _sdk_qtquick_textinput_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text color.

.. _sdk_qtquick_textinput_contentHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentHeight : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the height of the text, including the height past the height that is covered if the text does not fit within the set height.

.. _sdk_qtquick_textinput_contentWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the width of the text, including the width past the width which is covered due to insufficient wrapping if :ref:`wrapMode <sdk_qtquick_textinput_wrapMode>` is set.

.. _sdk_qtquick_textinput_cursorDelegate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorDelegate : Component                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The delegate for the cursor in the :ref:`TextInput <sdk_qtquick_textinput>`.

If you set a cursorDelegate for a :ref:`TextInput <sdk_qtquick_textinput>`, this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the :ref:`TextInput <sdk_qtquick_textinput>` when a cursor is needed, and the x property of delegate instance will be set so as to be one pixel before the top left of the current character.

Note that the root item of the delegate component must be a QQuickItem or QQuickItem derived item.

.. _sdk_qtquick_textinput_cursorPosition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorPosition : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The position of the cursor in the :ref:`TextInput <sdk_qtquick_textinput>`.

.. _sdk_qtquick_textinput_cursorRectangle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorRectangle : rectangle                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The rectangle where the standard text cursor is rendered within the text input. Read only.

The position and height of a custom :ref:`cursorDelegate <sdk_qtquick_textinput_cursorDelegate>` are updated to follow the cursorRectangle automatically when it changes. The width of the delegate is unaffected by changes in the cursor rectangle.

.. _sdk_qtquick_textinput_cursorVisible:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorVisible : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set to true when the :ref:`TextInput <sdk_qtquick_textinput>` shows a cursor.

This property is set and unset when the :ref:`TextInput <sdk_qtquick_textinput>` gets active focus, so that other properties can be bound to whether the cursor is currently showing. As it gets set and unset automatically, when you set the value yourself you must keep in mind that your value may be overwritten.

It can be set directly in script, for example if a KeyProxy might forward keys to it and you desire it to look active when this happens (but without actually giving it active focus).

It should not be set directly on the item, like in the below QML, as the specified value will be overridden an lost on focus changes.

.. code:: cpp

    TextInput {
        text: "Text"
        cursorVisible: false
    }

In the above snippet the cursor will still become visible when the :ref:`TextInput <sdk_qtquick_textinput>` gains active focus.

.. _sdk_qtquick_textinput_displayText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] displayText : string                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This is the text displayed in the :ref:`TextInput <sdk_qtquick_textinput>`.

If :ref:`echoMode <sdk_qtquick_textinput_echoMode>` is set to TextInput::Normal, this holds the same value as the :ref:`TextInput::text <sdk_qtquick_textinput_text>` property. Otherwise, this property holds the text visible to the user, while the `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  property holds the actual entered text.

**Note:** Unlike the :ref:`TextInput::text <sdk_qtquick_textinput_text>` property, this contains partial text input from an input method.

.. _sdk_qtquick_textinput_echoMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| echoMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies how the text should be displayed in the :ref:`TextInput <sdk_qtquick_textinput>`.

-  :ref:`TextInput <sdk_qtquick_textinput>`.Normal - Displays the text as it is. (Default)
-  :ref:`TextInput <sdk_qtquick_textinput>`.Password - Displays platform-dependent password mask characters instead of the actual characters.
-  :ref:`TextInput <sdk_qtquick_textinput>`.NoEcho - Displays nothing.
-  :ref:`TextInput <sdk_qtquick_textinput>`.PasswordEchoOnEdit - Displays characters as they are entered while editing, otherwise identical to ``TextInput.Password``.

.. _sdk_qtquick_textinput_effectiveHorizontalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveHorizontalAlignment : enumeration                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal alignment of the text within the :ref:`TextInput <sdk_qtquick_textinput>` item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

:ref:`TextInput <sdk_qtquick_textinput>` does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, :ref:`TextInput <sdk_qtquick_textinput>` will always be top aligned vertically. You can use anchors to align it however you want within another item.

The valid values for ``horizontalAlignment`` are ``TextInput.AlignLeft``, ``TextInput.AlignRight`` and ``TextInput.AlignHCenter``.

Valid values for ``verticalAlignment`` are ``TextInput.AlignTop`` (default), ``TextInput.AlignBottom`` ``TextInput.AlignVCenter``.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of :ref:`TextInput <sdk_qtquick_textinput>`, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_textinput_font_bold:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.bold : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font weight is bold.

.. _sdk_qtquick_textinput_font_capitalization:

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

    TextInput { text: "Hello"; font.capitalization: Font.AllLowercase }

.. _sdk_qtquick_textinput_font_family:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.family : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the family name of the font.

The family name is case insensitive and may optionally include a foundry name, e.g. "Helvetica [Cronyx]". If the family is available from more than one foundry and the foundry isn't specified, an arbitrary foundry is chosen. If the family isn't available a family will be set using the font matching algorithm.

.. _sdk_qtquick_textinput_font_italic:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.italic : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font has an italic style.

.. _sdk_qtquick_textinput_font_letterSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.letterSpacing : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the letter spacing for the font.

Letter spacing changes the default spacing between individual letters in the font. A positive value increases the letter spacing by the corresponding pixels; a negative value decreases the spacing.

.. _sdk_qtquick_textinput_font_pixelSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.pixelSize : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the font size in pixels.

Using this function makes the font device dependent. Use ``pointSize`` to set the size of the font in a device independent manner.

.. _sdk_qtquick_textinput_font_pointSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.pointSize : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the font size in points. The point size must be greater than zero.

.. _sdk_qtquick_textinput_font_strikeout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.strikeout : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font has a strikeout style.

.. _sdk_qtquick_textinput_font_underline:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.underline : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the text is underlined.

.. _sdk_qtquick_textinput_font_weight:

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

    TextInput { text: "Hello"; font.weight: Font.DemiBold }

.. _sdk_qtquick_textinput_font_wordSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.wordSpacing : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the word spacing for the font.

Word spacing changes the default spacing between individual words. A positive value increases the word spacing by a corresponding amount of pixels, while a negative value decreases the inter-word spacing accordingly.

.. _sdk_qtquick_textinput_horizontalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| horizontalAlignment : enumeration                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal alignment of the text within the :ref:`TextInput <sdk_qtquick_textinput>` item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

:ref:`TextInput <sdk_qtquick_textinput>` does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, :ref:`TextInput <sdk_qtquick_textinput>` will always be top aligned vertically. You can use anchors to align it however you want within another item.

The valid values for ``horizontalAlignment`` are ``TextInput.AlignLeft``, ``TextInput.AlignRight`` and ``TextInput.AlignHCenter``.

Valid values for ``verticalAlignment`` are ``TextInput.AlignTop`` (default), ``TextInput.AlignBottom`` ``TextInput.AlignVCenter``.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of :ref:`TextInput <sdk_qtquick_textinput>`, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_textinput_inputMask:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| inputMask : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Allows you to set an input mask on the :ref:`TextInput <sdk_qtquick_textinput>`, restricting the allowable text inputs. See QLineEdit::inputMask for further details, as the exact same mask strings are used by :ref:`TextInput <sdk_qtquick_textinput>`.

**See also** :ref:`acceptableInput <sdk_qtquick_textinput_acceptableInput>` and :ref:`validator <sdk_qtquick_textinput_validator>`.

.. _sdk_qtquick_textinput_inputMethodComposing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| inputMethodComposing : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the :ref:`TextInput <sdk_qtquick_textinput>` has partial text input from an input method.

While it is composing an input method may rely on mouse or key events from the :ref:`TextInput <sdk_qtquick_textinput>` to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.

.. _sdk_qtquick_textinput_inputMethodHints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| inputMethodHints : enumeration                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Provides hints to the input method about the expected content of the text input and how it should operate.

The value is a bit-wise combination of flags, or Qt.ImhNone if no hints are set.

Flags that alter behaviour are:

-  Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords. This is automatically set when setting :ref:`echoMode <sdk_qtquick_textinput_echoMode>` to ``TextInput.Password``.
-  Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.
-  Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.
-  Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-  Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).
-  Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).
-  Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary lookup) while typing.
-  Qt.ImhDate - The text editor functions as a date field.
-  Qt.ImhTime - The text editor functions as a time field.
-  Qt.ImhMultiLine - The text editor doesn't close software input keyboard when Return or Enter key is pressed (since QtQuick 2.4).

Flags that restrict input (exclusive flags) are:

-  Qt.ImhDigitsOnly - Only digits are allowed.
-  Qt.ImhFormattedNumbersOnly - Only number input is allowed. This includes decimal point and minus sign.
-  Qt.ImhUppercaseOnly - Only upper case letter input is allowed.
-  Qt.ImhLowercaseOnly - Only lower case letter input is allowed.
-  Qt.ImhDialableCharactersOnly - Only characters suitable for phone dialing are allowed.
-  Qt.ImhEmailCharactersOnly - Only characters suitable for email addresses are allowed.
-  Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are allowed.

Masks:

-  Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the exclusive flags are used.

.. _sdk_qtquick_textinput_length:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| length : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the total number of characters in the :ref:`TextInput <sdk_qtquick_textinput>` item.

If the :ref:`TextInput <sdk_qtquick_textinput>` has an :ref:`inputMask <sdk_qtquick_textinput_inputMask>` the length will include mask characters and may differ from the length of the string returned by the `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  property.

This property can be faster than querying the length the `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  property as it doesn't require any copying or conversion of the :ref:`TextInput <sdk_qtquick_textinput>`'s internal string data.

.. _sdk_qtquick_textinput_maximumLength:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumLength : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The maximum permitted length of the text in the :ref:`TextInput <sdk_qtquick_textinput>`.

If the text is too long, it is truncated at the limit.

By default, this property contains a value of 32767.

.. _sdk_qtquick_textinput_mouseSelectionMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseSelectionMode : enumeration                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies how text should be selected using a mouse.

-  :ref:`TextInput <sdk_qtquick_textinput>`.SelectCharacters - The selection is updated with individual characters. (Default)
-  :ref:`TextInput <sdk_qtquick_textinput>`.SelectWords - The selection is updated with whole words.

This property only applies when :ref:`selectByMouse <sdk_qtquick_textinput_selectByMouse>` is true.

.. _sdk_qtquick_textinput_passwordCharacter:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| passwordCharacter : string                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This is the character displayed when :ref:`echoMode <sdk_qtquick_textinput_echoMode>` is set to Password or PasswordEchoOnEdit. By default it is the password character used by the platform theme.

If this property is set to a string with more than one character, the first character is used. If the string is empty, the value is ignored and the property is not set.

.. _sdk_qtquick_textinput_passwordMaskDelay:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| passwordMaskDelay : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the delay before visible character is masked with password character, in milliseconds.

The reset method will be called by assigning undefined.

This QML property was introduced in Qt 5.4.

.. _sdk_qtquick_textinput_persistentSelection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| persistentSelection : bool                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the :ref:`TextInput <sdk_qtquick_textinput>` should keep its selection when it loses active focus to another item in the scene. By default this is set to false;

.. _sdk_qtquick_textinput_readOnly:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| readOnly : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether user input can modify the contents of the :ref:`TextInput <sdk_qtquick_textinput>`.

If readOnly is set to true, then user input will not affect the text property. Any bindings or attempts to set the text property will still work.

.. _sdk_qtquick_textinput_renderType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| renderType : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Override the default rendering type for this component.

Supported render types are:

-  Text.QtRendering - the default
-  Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.

.. _sdk_qtquick_textinput_selectByMouse:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectByMouse : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defaults to false.

If true, the user can use the mouse to select text in some platform-specific way. Note that for some platforms this may not be an appropriate interaction (eg. may conflict with how the text needs to behave inside a Flickable.

.. _sdk_qtquick_textinput_selectedText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectedText : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property provides the text currently selected in the text input.

It is equivalent to the following snippet, but is faster and easier to use.

.. code:: js

    myTextInput.text.toString().substring(myTextInput.selectionStart,
        myTextInput.selectionEnd);

.. _sdk_qtquick_textinput_selectedTextColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectedTextColor : color                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The highlighted text color, used in selections.

.. _sdk_qtquick_textinput_selectionColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectionColor : color                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text highlight color, used behind selections.

.. _sdk_qtquick_textinput_selectionEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectionEnd : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The cursor position after the last character in the current selection.

This property is read-only. To change the selection, use select(start,end), :ref:`selectAll() <sdk_qtquick_textinput_selectAll>`, or :ref:`selectWord() <sdk_qtquick_textinput_selectWord>`.

**See also** :ref:`selectionStart <sdk_qtquick_textinput_selectionStart>`, :ref:`cursorPosition <sdk_qtquick_textinput_cursorPosition>`, and :ref:`selectedText <sdk_qtquick_textinput_selectedText>`.

.. _sdk_qtquick_textinput_selectionStart:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectionStart : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use select(start,end), :ref:`selectAll() <sdk_qtquick_textinput_selectAll>`, or :ref:`selectWord() <sdk_qtquick_textinput_selectWord>`.

**See also** :ref:`selectionEnd <sdk_qtquick_textinput_selectionEnd>`, :ref:`cursorPosition <sdk_qtquick_textinput_cursorPosition>`, and :ref:`selectedText <sdk_qtquick_textinput_selectedText>`.

.. _sdk_qtquick_textinput_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text in the :ref:`TextInput <sdk_qtquick_textinput>`.

.. _sdk_qtquick_textinput_validator:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| validator : Validator                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Allows you to set a validator on the :ref:`TextInput <sdk_qtquick_textinput>`. When a validator is set the :ref:`TextInput <sdk_qtquick_textinput>` will only accept input which leaves the text property in an acceptable or intermediate state. The accepted signal will only be sent if the text is in an acceptable state when enter is pressed.

Currently supported validators are :ref:`IntValidator <sdk_qtquick_intvalidator>`, :ref:`DoubleValidator <sdk_qtquick_doublevalidator>` and :ref:`RegExpValidator <sdk_qtquick_regexpvalidator>`. An example of using validators is shown below, which allows input of integers between 11 and 31 into the text input:

.. code:: cpp

    import QtQuick 2.0
    TextInput{
        validator: IntValidator{bottom: 11; top: 31;}
        focus: true
    }

**See also** :ref:`acceptableInput <sdk_qtquick_textinput_acceptableInput>` and :ref:`inputMask <sdk_qtquick_textinput_inputMask>`.

.. _sdk_qtquick_textinput_verticalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verticalAlignment : enumeration                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal alignment of the text within the :ref:`TextInput <sdk_qtquick_textinput>` item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

:ref:`TextInput <sdk_qtquick_textinput>` does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, :ref:`TextInput <sdk_qtquick_textinput>` will always be top aligned vertically. You can use anchors to align it however you want within another item.

The valid values for ``horizontalAlignment`` are ``TextInput.AlignLeft``, ``TextInput.AlignRight`` and ``TextInput.AlignHCenter``.

Valid values for ``verticalAlignment`` are ``TextInput.AlignTop`` (default), ``TextInput.AlignBottom`` ``TextInput.AlignVCenter``.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of :ref:`TextInput <sdk_qtquick_textinput>`, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_textinput_wrapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| wrapMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to wrap the text to the :ref:`TextInput <sdk_qtquick_textinput>` item's width. The text will only wrap if an explicit width has been set.

-  :ref:`TextInput <sdk_qtquick_textinput>`.NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.
-  :ref:`TextInput <sdk_qtquick_textinput>`.WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.
-  :ref:`TextInput <sdk_qtquick_textinput>`.WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-  :ref:`TextInput <sdk_qtquick_textinput>`.Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

The default is :ref:`TextInput <sdk_qtquick_textinput>`.NoWrap. If you set a width, consider using :ref:`TextInput <sdk_qtquick_textinput>`.Wrap.

Signal Documentation
--------------------

.. _sdk_qtquick_textinput_accepted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accepted()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Return or Enter key is pressed. Note that if there is a :ref:`validator <sdk_qtquick_textinput_validator>` or :ref:`inputMask <sdk_qtquick_textinput_inputMask>` set on the text input, the signal will only be emitted if the input is in an acceptable state.

The corresponding handler is ``onAccepted``.

.. _sdk_qtquick_textinput_editingFinished:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| editingFinished()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Return or Enter key is pressed or the text input loses focus. Note that if there is a validator or :ref:`inputMask <sdk_qtquick_textinput_inputMask>` set on the text input and enter/return is pressed, this signal will only be emitted if the input follows the :ref:`inputMask <sdk_qtquick_textinput_inputMask>` and the validator returns an acceptable state.

The corresponding handler is ``onEditingFinished``.

This QML signal was introduced in Qt 5.2.

Method Documentation
--------------------

.. _sdk_qtquick_textinput_copy:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| copy()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Copies the currently selected text to the system clipboard.

.. _sdk_qtquick_textinput_cut:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cut()                                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Moves the currently selected text to the system clipboard.

.. _sdk_qtquick_textinput_deselect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| deselect()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes active text selection.

.. _sdk_qtquick_textinput_ensureVisible:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ensureVisible(int *position*)                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Scrolls the contents of the text input so that the specified character *position* is visible inside the boundaries of the text input.

This QML method was introduced in Qt 5.4.

**See also** :ref:`autoScroll <sdk_qtquick_textinput_autoScroll>`.

.. _sdk_qtquick_textinput_getText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string getText(int *start*, int *end*)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the section of text that is between the *start* and *end* positions.

If the :ref:`TextInput <sdk_qtquick_textinput>` has an :ref:`inputMask <sdk_qtquick_textinput_inputMask>` the length will include mask characters.

.. _sdk_qtquick_textinput_insert:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| insert(int *position*, string *text*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Inserts *text* into the :ref:`TextInput <sdk_qtquick_textinput>` at position.

.. _sdk_qtquick_textinput_isRightToLeft:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| isRightToLeft(int *start*, int *end*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the natural reading direction of the editor text found between positions *start* and *end* is right to left.

.. _sdk_qtquick_textinput_moveCursorSelection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moveCursorSelection(int *position*, SelectionMode *mode* = TextInput.SelectCharacters)                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Moves the cursor to *position* and updates the selection according to the optional *mode* parameter. (To only move the cursor, set the :ref:`cursorPosition <sdk_qtquick_textinput_cursorPosition>` property.)

When this method is called it additionally sets either the :ref:`selectionStart <sdk_qtquick_textinput_selectionStart>` or the :ref:`selectionEnd <sdk_qtquick_textinput_selectionEnd>` (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.

The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to :ref:`TextInput <sdk_qtquick_textinput>`.SelectCharacters.

-  :ref:`TextInput <sdk_qtquick_textinput>`.SelectCharacters - Sets either the :ref:`selectionStart <sdk_qtquick_textinput_selectionStart>` or :ref:`selectionEnd <sdk_qtquick_textinput_selectionEnd>` (whichever was at the previous cursor position) to the specified position.
-  :ref:`TextInput <sdk_qtquick_textinput>`.SelectWords - Sets the :ref:`selectionStart <sdk_qtquick_textinput_selectionStart>` and :ref:`selectionEnd <sdk_qtquick_textinput_selectionEnd>` to include all words between the specified position and the previous cursor position. Words partially in the range are included.

For example, take this sequence of calls:

.. code:: cpp

    cursorPosition = 5
    moveCursorSelection(9, TextInput.SelectCharacters)
    moveCursorSelection(7, TextInput.SelectCharacters)

This moves the cursor to position 5, extend the selection end from 5 to 9 and then retract the selection end from 9 to 7, leaving the text from position 5 to 7 selected (the 6th and 7th characters).

The same sequence with :ref:`TextInput <sdk_qtquick_textinput>`.SelectWords will extend the selection start to a word boundary before or on position 5 and extend the selection end to a word boundary on or past position 9.

.. _sdk_qtquick_textinput_paste:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| paste()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Replaces the currently selected text by the contents of the system clipboard.

.. _sdk_qtquick_textinput_positionAt:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| int positionAt(real *x*, real *y*, CursorPosition *position* = CursorBetweenCharacters)                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function returns the character position at x and y pixels from the top left of the textInput. Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position text.length, which is after all characters.

This means that for all x values before the first character this function returns 0, and for all x values after the last character this function returns text.length. If the y value is above the text the position will be that of the nearest character on the first line and if it is below the text the position of the nearest character on the last line will be returned.

The cursor position type specifies how the cursor position should be resolved.

-  :ref:`TextInput <sdk_qtquick_textinput>`.CursorBetweenCharacters - Returns the position between characters that is nearest x.
-  :ref:`TextInput <sdk_qtquick_textinput>`.CursorOnCharacter - Returns the position before the character that is nearest x.

.. _sdk_qtquick_textinput_positionToRectangle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rect positionToRectangle(int *pos*)                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function takes a character position and returns the rectangle that the cursor would occupy, if it was placed at that character position.

This is similar to setting the :ref:`cursorPosition <sdk_qtquick_textinput_cursorPosition>`, and then querying the cursor rectangle, but the :ref:`cursorPosition <sdk_qtquick_textinput_cursorPosition>` is not changed.

.. _sdk_qtquick_textinput_redo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| redo()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Redoes the last operation if redo is :ref:`available <sdk_qtquick_textinput_canRedo>`.

.. _sdk_qtquick_textinput_remove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| remove(int *start*, int *end*)                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the section of text that is between the *start* and *end* positions from the :ref:`TextInput <sdk_qtquick_textinput>`.

.. _sdk_qtquick_textinput_select:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| select(int *start*, int *end*)                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Causes the text from *start* to *end* to be selected.

If either start or end is out of range, the selection is not changed.

After calling this, :ref:`selectionStart <sdk_qtquick_textinput_selectionStart>` will become the lesser and :ref:`selectionEnd <sdk_qtquick_textinput_selectionEnd>` will become the greater (regardless of the order passed to this method).

**See also** :ref:`selectionStart <sdk_qtquick_textinput_selectionStart>` and :ref:`selectionEnd <sdk_qtquick_textinput_selectionEnd>`.

.. _sdk_qtquick_textinput_selectAll:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectAll()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Causes all text to be selected.

.. _sdk_qtquick_textinput_selectWord:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectWord()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Causes the word closest to the current cursor position to be selected.

.. _sdk_qtquick_textinput_undo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| undo()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Undoes the last operation if undo is :ref:`available <sdk_qtquick_textinput_canUndo>`. Deselects any current selection, and updates the selection start to the current cursor position.

