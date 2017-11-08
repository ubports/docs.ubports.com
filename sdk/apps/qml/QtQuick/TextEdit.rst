.. _sdk_qtquick_textedit:

QtQuick TextEdit
================

Displays multiple lines of editable formatted text

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`activeFocusOnPress <sdk_qtquick_textedit_activeFocusOnPress>` : bool
-  :ref:`baseUrl <sdk_qtquick_textedit_baseUrl>` : url
-  :ref:`canPaste <sdk_qtquick_textedit_canPaste>` : bool
-  :ref:`canRedo <sdk_qtquick_textedit_canRedo>` : bool
-  :ref:`canUndo <sdk_qtquick_textedit_canUndo>` : bool
-  :ref:`color <sdk_qtquick_textedit_color>` : color
-  :ref:`contentHeight <sdk_qtquick_textedit_contentHeight>` : real
-  :ref:`contentWidth <sdk_qtquick_textedit_contentWidth>` : real
-  :ref:`cursorDelegate <sdk_qtquick_textedit_cursorDelegate>` : Component
-  :ref:`cursorPosition <sdk_qtquick_textedit_cursorPosition>` : int
-  :ref:`cursorRectangle <sdk_qtquick_textedit_cursorRectangle>` : rectangle
-  :ref:`cursorVisible <sdk_qtquick_textedit_cursorVisible>` : bool
-  :ref:`effectiveHorizontalAlignment <sdk_qtquick_textedit_effectiveHorizontalAlignment>` : enumeration
-  :ref:`font.bold <sdk_qtquick_textedit_font_bold>` : bool
-  :ref:`font.capitalization <sdk_qtquick_textedit_font_capitalization>` : enumeration
-  :ref:`font.family <sdk_qtquick_textedit_font_family>` : string
-  :ref:`font.italic <sdk_qtquick_textedit_font_italic>` : bool
-  :ref:`font.letterSpacing <sdk_qtquick_textedit_font_letterSpacing>` : real
-  :ref:`font.pixelSize <sdk_qtquick_textedit_font_pixelSize>` : int
-  :ref:`font.pointSize <sdk_qtquick_textedit_font_pointSize>` : real
-  :ref:`font.strikeout <sdk_qtquick_textedit_font_strikeout>` : bool
-  :ref:`font.underline <sdk_qtquick_textedit_font_underline>` : bool
-  :ref:`font.weight <sdk_qtquick_textedit_font_weight>` : enumeration
-  :ref:`font.wordSpacing <sdk_qtquick_textedit_font_wordSpacing>` : real
-  :ref:`horizontalAlignment <sdk_qtquick_textedit_horizontalAlignment>` : enumeration
-  :ref:`hoveredLink <sdk_qtquick_textedit_hoveredLink>` : string
-  :ref:`inputMethodComposing <sdk_qtquick_textedit_inputMethodComposing>` : bool
-  :ref:`inputMethodHints <sdk_qtquick_textedit_inputMethodHints>` : enumeration
-  :ref:`length <sdk_qtquick_textedit_length>` : int
-  :ref:`lineCount <sdk_qtquick_textedit_lineCount>` : int
-  :ref:`mouseSelectionMode <sdk_qtquick_textedit_mouseSelectionMode>` : enumeration
-  :ref:`persistentSelection <sdk_qtquick_textedit_persistentSelection>` : bool
-  :ref:`readOnly <sdk_qtquick_textedit_readOnly>` : bool
-  :ref:`renderType <sdk_qtquick_textedit_renderType>` : enumeration
-  :ref:`selectByKeyboard <sdk_qtquick_textedit_selectByKeyboard>` : bool
-  :ref:`selectByMouse <sdk_qtquick_textedit_selectByMouse>` : bool
-  :ref:`selectedText <sdk_qtquick_textedit_selectedText>` : string
-  :ref:`selectedTextColor <sdk_qtquick_textedit_selectedTextColor>` : color
-  :ref:`selectionColor <sdk_qtquick_textedit_selectionColor>` : color
-  :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>` : int
-  :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>` : int
-  :ref:`text <sdk_qtquick_textedit_text>` : string
-  :ref:`textDocument <sdk_qtquick_textedit_textDocument>` : TextDocument
-  :ref:`textFormat <sdk_qtquick_textedit_textFormat>` : enumeration
-  :ref:`textMargin <sdk_qtquick_textedit_textMargin>` : real
-  :ref:`verticalAlignment <sdk_qtquick_textedit_verticalAlignment>` : enumeration
-  :ref:`wrapMode <sdk_qtquick_textedit_wrapMode>` : enumeration

Signals
-------

-  :ref:`linkActivated <sdk_qtquick_textedit_linkActivated>`\ (string *link*)
-  :ref:`linkHovered <sdk_qtquick_textedit_linkHovered>`\ (string *link*)

Methods
-------

-  void :ref:`append <sdk_qtquick_textedit_append>`\ (string *text*)
-  :ref:`copy <sdk_qtquick_textedit_copy>`\ ()
-  :ref:`cut <sdk_qtquick_textedit_cut>`\ ()
-  :ref:`deselect <sdk_qtquick_textedit_deselect>`\ ()
-  string :ref:`getFormattedText <sdk_qtquick_textedit_getFormattedText>`\ (int *start*, int *end*)
-  string :ref:`getText <sdk_qtquick_textedit_getText>`\ (int *start*, int *end*)
-  :ref:`insert <sdk_qtquick_textedit_insert>`\ (int *position*, string *text*)
-  :ref:`isRightToLeft <sdk_qtquick_textedit_isRightToLeft>`\ (int *start*, int *end*)
-  :ref:`linkAt <sdk_qtquick_textedit_linkAt>`\ (real *x*, real *y*)
-  :ref:`moveCursorSelection <sdk_qtquick_textedit_moveCursorSelection>`\ (int *position*, SelectionMode *mode*)
-  :ref:`paste <sdk_qtquick_textedit_paste>`\ ()
-  int :ref:`positionAt <sdk_qtquick_textedit_positionAt>`\ (int *x*, int *y*)
-  rectangle :ref:`positionToRectangle <sdk_qtquick_textedit_positionToRectangle>`\ (position)
-  :ref:`redo <sdk_qtquick_textedit_redo>`\ ()
-  string :ref:`remove <sdk_qtquick_textedit_remove>`\ (int *start*, int *end*)
-  :ref:`select <sdk_qtquick_textedit_select>`\ (int *start*, int *end*)
-  :ref:`selectAll <sdk_qtquick_textedit_selectAll>`\ ()
-  :ref:`selectWord <sdk_qtquick_textedit_selectWord>`\ ()
-  :ref:`undo <sdk_qtquick_textedit_undo>`\ ()

Detailed Description
--------------------

The :ref:`TextEdit <sdk_qtquick_textedit>` item displays a block of editable, formatted text.

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

Setting :ref:`focus <sdk_qtquick_item_focus>` to ``true`` enables the :ref:`TextEdit <sdk_qtquick_textedit>` item to receive keyboard focus.

Note that the :ref:`TextEdit <sdk_qtquick_textedit>` does not implement scrolling, following the cursor, or other behaviors specific to a look-and-feel. For example, to add flickable scrolling that follows the cursor:

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

A particular look-and-feel might use smooth scrolling (eg. using :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`), might have a visible scrollbar, or a scrollbar that fades in to show location, etc.

Clipboard support is provided by the :ref:`cut() <sdk_qtquick_textedit_cut>`, :ref:`copy() <sdk_qtquick_textedit_copy>`, and :ref:`paste() <sdk_qtquick_textedit_paste>` functions, and the selection can be handled in a traditional "mouse" mechanism by setting :ref:`selectByMouse <sdk_qtquick_textedit_selectByMouse>`, or handled completely from QML by manipulating :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>` and :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>`, or using :ref:`selectAll() <sdk_qtquick_textedit_selectAll>` or :ref:`selectWord() <sdk_qtquick_textedit_selectWord>`.

You can translate between cursor positions (characters from the start of the document) and pixel points using :ref:`positionAt() <sdk_qtquick_textedit_positionAt>` and :ref:`positionToRectangle() <sdk_qtquick_textedit_positionToRectangle>`.

**See also** `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  and :ref:`TextInput <sdk_qtquick_textinput>`.

Property Documentation
----------------------

.. _sdk_qtquick_textedit_activeFocusOnPress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activeFocusOnPress : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the :ref:`TextEdit <sdk_qtquick_textedit>` should gain active focus on a mouse press. By default this is set to true.

.. _sdk_qtquick_textedit_baseUrl:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| baseUrl : url                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies a base URL which is used to resolve relative URLs within the text.

The default value is the url of the QML file instantiating the :ref:`TextEdit <sdk_qtquick_textedit>` item.

.. _sdk_qtquick_textedit_canPaste:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canPaste : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the :ref:`TextEdit <sdk_qtquick_textedit>` is writable and the content of the clipboard is suitable for pasting into the :ref:`TextEdit <sdk_qtquick_textedit>`.

.. _sdk_qtquick_textedit_canRedo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canRedo : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the :ref:`TextEdit <sdk_qtquick_textedit>` is writable and there are :ref:`undone <sdk_qtquick_textedit_undo>` operations that can be redone.

.. _sdk_qtquick_textedit_canUndo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canUndo : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the :ref:`TextEdit <sdk_qtquick_textedit>` is writable and there are previous operations that can be undone.

.. _sdk_qtquick_textedit_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text color.

.. code:: qml

    // green text using hexadecimal notation
    TextEdit { color: "#00FF00" }

.. code:: qml

    // steelblue text using SVG color name
    TextEdit { color: "steelblue" }

.. _sdk_qtquick_textedit_contentHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentHeight : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the height of the text, including the height past the height that is covered if the text does not fit within the set height.

.. _sdk_qtquick_textedit_contentWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the width of the text, including the width past the width which is covered due to insufficient wrapping if :ref:`wrapMode <sdk_qtquick_textedit_wrapMode>` is set.

.. _sdk_qtquick_textedit_cursorDelegate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorDelegate : Component                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The delegate for the cursor in the :ref:`TextEdit <sdk_qtquick_textedit>`.

If you set a cursorDelegate for a :ref:`TextEdit <sdk_qtquick_textedit>`, this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the text edit when a cursor is needed, and the x and y properties of delegate instance will be set so as to be one pixel before the top left of the current character.

Note that the root item of the delegate component must be a QQuickItem or QQuickItem derived item.

.. _sdk_qtquick_textedit_cursorPosition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorPosition : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The position of the cursor in the :ref:`TextEdit <sdk_qtquick_textedit>`.

.. _sdk_qtquick_textedit_cursorRectangle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorRectangle : rectangle                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The rectangle where the standard text cursor is rendered within the text edit. Read-only.

The position and height of a custom :ref:`cursorDelegate <sdk_qtquick_textedit_cursorDelegate>` are updated to follow the cursorRectangle automatically when it changes. The width of the delegate is unaffected by changes in the cursor rectangle.

.. _sdk_qtquick_textedit_cursorVisible:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorVisible : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true the text edit shows a cursor.

This property is set and unset when the text edit gets active focus, but it can also be set directly (useful, for example, if a KeyProxy might forward keys to it).

.. _sdk_qtquick_textedit_effectiveHorizontalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveHorizontalAlignment : enumeration                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the :ref:`TextEdit <sdk_qtquick_textedit>` item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for ``horizontalAlignment`` are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignLeft (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignRight
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignHCenter
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignJustify

Valid values for ``verticalAlignment`` are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignTop (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignBottom
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignVCenter

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of :ref:`TextEdit <sdk_qtquick_textedit>`, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_textedit_font_bold:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.bold : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font weight is bold.

.. _sdk_qtquick_textedit_font_capitalization:

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

    TextEdit { text: "Hello"; font.capitalization: Font.AllLowercase }

.. _sdk_qtquick_textedit_font_family:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.family : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the family name of the font.

The family name is case insensitive and may optionally include a foundry name, e.g. "Helvetica [Cronyx]". If the family is available from more than one foundry and the foundry isn't specified, an arbitrary foundry is chosen. If the family isn't available a family will be set using the font matching algorithm.

.. _sdk_qtquick_textedit_font_italic:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.italic : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font has an italic style.

.. _sdk_qtquick_textedit_font_letterSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.letterSpacing : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the letter spacing for the font.

Letter spacing changes the default spacing between individual letters in the font. A positive value increases the letter spacing by the corresponding pixels; a negative value decreases the spacing.

.. _sdk_qtquick_textedit_font_pixelSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.pixelSize : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the font size in pixels.

Using this function makes the font device dependent. Use :ref:`TextEdit::font.pointSize <sdk_qtquick_textedit_font_pointSize>` to set the size of the font in a device independent manner.

.. _sdk_qtquick_textedit_font_pointSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.pointSize : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the font size in points. The point size must be greater than zero.

.. _sdk_qtquick_textedit_font_strikeout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.strikeout : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the font has a strikeout style.

.. _sdk_qtquick_textedit_font_underline:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.underline : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets whether the text is underlined.

.. _sdk_qtquick_textedit_font_weight:

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

    TextEdit { text: "Hello"; font.weight: Font.DemiBold }

.. _sdk_qtquick_textedit_font_wordSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font.wordSpacing : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the word spacing for the font.

Word spacing changes the default spacing between individual words. A positive value increases the word spacing by a corresponding amount of pixels, while a negative value decreases the inter-word spacing accordingly.

.. _sdk_qtquick_textedit_horizontalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| horizontalAlignment : enumeration                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the :ref:`TextEdit <sdk_qtquick_textedit>` item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for ``horizontalAlignment`` are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignLeft (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignRight
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignHCenter
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignJustify

Valid values for ``verticalAlignment`` are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignTop (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignBottom
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignVCenter

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of :ref:`TextEdit <sdk_qtquick_textedit>`, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_textedit_hoveredLink:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hoveredLink : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains the link string when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the link string provides access to the particular link.

This QML property was introduced in Qt 5.2.

**See also** :ref:`linkHovered <sdk_qtquick_textedit_linkHovered>` and :ref:`linkAt() <sdk_qtquick_textedit_linkAt>`.

.. _sdk_qtquick_textedit_inputMethodComposing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| inputMethodComposing : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the :ref:`TextEdit <sdk_qtquick_textedit>` has partial text input from an input method.

While it is composing an input method may rely on mouse or key events from the :ref:`TextEdit <sdk_qtquick_textedit>` to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.

.. _sdk_qtquick_textedit_inputMethodHints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| inputMethodHints : enumeration                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Provides hints to the input method about the expected content of the text edit and how it should operate.

The value is a bit-wise combination of flags or Qt.ImhNone if no hints are set.

Flags that alter behaviour are:

-  Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords.
-  Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.
-  Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.
-  Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-  Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).
-  Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).
-  Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary lookup) while typing.
-  Qt.ImhDate - The text editor functions as a date field.
-  Qt.ImhTime - The text editor functions as a time field.

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

.. _sdk_qtquick_textedit_length:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| length : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the total number of plain text characters in the :ref:`TextEdit <sdk_qtquick_textedit>` item.

As this number doesn't include any formatting markup it may not be the same as the length of the string returned by the `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  property.

This property can be faster than querying the length the `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  property as it doesn't require any copying or conversion of the :ref:`TextEdit <sdk_qtquick_textedit>`'s internal string data.

.. _sdk_qtquick_textedit_lineCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lineCount : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the total number of lines in the textEdit item.

.. _sdk_qtquick_textedit_mouseSelectionMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseSelectionMode : enumeration                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies how text should be selected using a mouse.

-  :ref:`TextEdit <sdk_qtquick_textedit>`.SelectCharacters - The selection is updated with individual characters. (Default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.SelectWords - The selection is updated with whole words.

This property only applies when :ref:`selectByMouse <sdk_qtquick_textedit_selectByMouse>` is true.

.. _sdk_qtquick_textedit_persistentSelection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| persistentSelection : bool                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the :ref:`TextEdit <sdk_qtquick_textedit>` should keep the selection visible when it loses active focus to another item in the scene. By default this is set to false.

.. _sdk_qtquick_textedit_readOnly:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| readOnly : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the user can interact with the :ref:`TextEdit <sdk_qtquick_textedit>` item. If this property is set to true the text cannot be edited by user interaction.

By default this property is false.

.. _sdk_qtquick_textedit_renderType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| renderType : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Override the default rendering type for this component.

Supported render types are:

-  Text.QtRendering - the default
-  Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.

.. _sdk_qtquick_textedit_selectByKeyboard:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectByKeyboard : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defaults to true when the editor is editable, and false when read-only.

If true, the user can use the keyboard to select text even if the editor is read-only. If false, the user cannot use the keyboard to select text even if the editor is editable.

This QML property was introduced in Qt 5.1.

**See also** :ref:`readOnly <sdk_qtquick_textedit_readOnly>`.

.. _sdk_qtquick_textedit_selectByMouse:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectByMouse : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defaults to false.

If true, the user can use the mouse to select text in some platform-specific way. Note that for some platforms this may not be an appropriate interaction (eg. may conflict with how the text needs to behave inside a Flickable.

.. _sdk_qtquick_textedit_selectedText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectedText : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property provides the text currently selected in the text edit.

It is equivalent to the following snippet, but is faster and easier to use.

.. code:: cpp

    //myTextEdit is the id of the TextEdit
    myTextEdit.text.toString().substring(myTextEdit.selectionStart,
            myTextEdit.selectionEnd);

.. _sdk_qtquick_textedit_selectedTextColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectedTextColor : color                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The selected text color, used in selections.

.. _sdk_qtquick_textedit_selectionColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectionColor : color                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text highlight color, used behind selections.

.. _sdk_qtquick_textedit_selectionEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectionEnd : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The cursor position after the last character in the current selection.

This property is read-only. To change the selection, use select(start,end), :ref:`selectAll() <sdk_qtquick_textedit_selectAll>`, or :ref:`selectWord() <sdk_qtquick_textedit_selectWord>`.

**See also** :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>`, :ref:`cursorPosition <sdk_qtquick_textedit_cursorPosition>`, and :ref:`selectedText <sdk_qtquick_textedit_selectedText>`.

.. _sdk_qtquick_textedit_selectionStart:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectionStart : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use select(start,end), :ref:`selectAll() <sdk_qtquick_textedit_selectAll>`, or :ref:`selectWord() <sdk_qtquick_textedit_selectWord>`.

**See also** :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>`, :ref:`cursorPosition <sdk_qtquick_textedit_cursorPosition>`, and :ref:`selectedText <sdk_qtquick_textedit_selectedText>`.

.. _sdk_qtquick_textedit_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The text to display. If the text format is AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().

The text-property is mostly suitable for setting the initial content and handling modifications to relatively small text content. The :ref:`append() <sdk_qtquick_textedit_append>`, :ref:`insert() <sdk_qtquick_textedit_insert>` and :ref:`remove() <sdk_qtquick_textedit_remove>` methods provide more fine-grained control and remarkably better performance for modifying especially large rich text content.

.. _sdk_qtquick_textedit_textDocument:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| textDocument : TextDocument                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the QQuickTextDocument of this TextEdit. It can be used to implement syntax highlighting using QSyntaxHighlighter.

This QML property was introduced in Qt 5.1.

**See also** QQuickTextDocument.

.. _sdk_qtquick_textedit_textFormat:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| textFormat : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The way the text property should be displayed.

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AutoText
-  :ref:`TextEdit <sdk_qtquick_textedit>`.PlainText
-  :ref:`TextEdit <sdk_qtquick_textedit>`.RichText

The default is :ref:`TextEdit <sdk_qtquick_textedit>`.PlainText. If the text format is :ref:`TextEdit <sdk_qtquick_textedit>`.AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     Column {                                                                                                                                           |                                                                                                                                                        |
|         TextEdit {                                                                                                                                     |                                                                                                                                                        |
|             font.pointSize: 24                                                                                                                         |                                                                                                                                                        |
|             text: "<b>Hello</b> <i>World!</i>"                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|         TextEdit {                                                                                                                                     |                                                                                                                                                        |
|             font.pointSize: 24                                                                                                                         |                                                                                                                                                        |
|             textFormat: TextEdit.RichText                                                                                                              |                                                                                                                                                        |
|             text: "<b>Hello</b> <i>World!</i>"                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|         TextEdit {                                                                                                                                     |                                                                                                                                                        |
|             font.pointSize: 24                                                                                                                         |                                                                                                                                                        |
|             textFormat: TextEdit.PlainText                                                                                                             |                                                                                                                                                        |
|             text: "<b>Hello</b> <i>World!</i>"                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtquick_textedit_textMargin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| textMargin : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The margin, in pixels, around the text in the :ref:`TextEdit <sdk_qtquick_textedit>`.

.. _sdk_qtquick_textedit_verticalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verticalAlignment : enumeration                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the text within the :ref:`TextEdit <sdk_qtquick_textedit>` item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for ``horizontalAlignment`` are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignLeft (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignRight
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignHCenter
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignJustify

Valid values for ``verticalAlignment`` are:

-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignTop (default)
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignBottom
-  :ref:`TextEdit <sdk_qtquick_textedit>`.AlignVCenter

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property ``horizontalAlignment`` will remain unchanged. To query the effective horizontal alignment of :ref:`TextEdit <sdk_qtquick_textedit>`, use the read-only property ``effectiveHorizontalAlignment``.

.. _sdk_qtquick_textedit_wrapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| wrapMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to wrap the text to the :ref:`TextEdit <sdk_qtquick_textedit>` item's width. The text will only wrap if an explicit width has been set.

-  :ref:`TextEdit <sdk_qtquick_textedit>`.NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.
-  :ref:`TextEdit <sdk_qtquick_textedit>`.WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.
-  :ref:`TextEdit <sdk_qtquick_textedit>`.WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-  :ref:`TextEdit <sdk_qtquick_textedit>`.Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

The default is :ref:`TextEdit <sdk_qtquick_textedit>`.NoWrap. If you set a width, consider using :ref:`TextEdit <sdk_qtquick_textedit>`.Wrap.

Signal Documentation
--------------------

.. _sdk_qtquick_textedit_linkActivated:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkActivated(string *link*)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

The corresponding handler is ``onLinkActivated``.

.. _sdk_qtquick_textedit_linkHovered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkHovered(string *link*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

The corresponding handler is ``onLinkHovered``.

This QML signal was introduced in Qt 5.2.

**See also** :ref:`hoveredLink <sdk_qtquick_textedit_hoveredLink>` and :ref:`linkAt() <sdk_qtquick_textedit_linkAt>`.

Method Documentation
--------------------

.. _sdk_qtquick_textedit_append:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void append(string *text*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Appends a new paragraph with *text* to the end of the :ref:`TextEdit <sdk_qtquick_textedit>`.

In order to append without inserting a new paragraph, call ``myTextEdit.insert(myTextEdit.length, text)`` instead.

This QML method was introduced in Qt 5.2.

.. _sdk_qtquick_textedit_copy:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| copy()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Copies the currently selected text to the system clipboard.

.. _sdk_qtquick_textedit_cut:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cut()                                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Moves the currently selected text to the system clipboard.

.. _sdk_qtquick_textedit_deselect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| deselect()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes active text selection.

.. _sdk_qtquick_textedit_getFormattedText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string getFormattedText(int *start*, int *end*)                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the section of text that is between the *start* and *end* positions.

The returned text will be formatted according the :ref:`textFormat <sdk_qtquick_textedit_textFormat>` property.

.. _sdk_qtquick_textedit_getText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string getText(int *start*, int *end*)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the section of text that is between the *start* and *end* positions.

The returned text does not include any rich text formatting.

.. _sdk_qtquick_textedit_insert:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| insert(int *position*, string *text*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Inserts *text* into the :ref:`TextEdit <sdk_qtquick_textedit>` at position.

.. _sdk_qtquick_textedit_isRightToLeft:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| isRightToLeft(int *start*, int *end*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the natural reading direction of the editor text found between positions *start* and *end* is right to left.

.. _sdk_qtquick_textedit_linkAt:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkAt(real *x*, real *y*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the link string at point *x*, *y* in content coordinates, or an empty string if no link exists at that point.

This QML method was introduced in Qt 5.3.

**See also** :ref:`hoveredLink <sdk_qtquick_textedit_hoveredLink>`.

.. _sdk_qtquick_textedit_moveCursorSelection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moveCursorSelection(int *position*, SelectionMode *mode* = TextEdit.SelectCharacters)                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Moves the cursor to *position* and updates the selection according to the optional *mode* parameter. (To only move the cursor, set the :ref:`cursorPosition <sdk_qtquick_textedit_cursorPosition>` property.)

When this method is called it additionally sets either the :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>` or the :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>` (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.

The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to :ref:`TextEdit <sdk_qtquick_textedit>`.SelectCharacters.

-  :ref:`TextEdit <sdk_qtquick_textedit>`.SelectCharacters - Sets either the :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>` or :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>` (whichever was at the previous cursor position) to the specified position.
-  :ref:`TextEdit <sdk_qtquick_textedit>`.SelectWords - Sets the :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>` and :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>` to include all words between the specified position and the previous cursor position. Words partially in the range are included.

For example, take this sequence of calls:

.. code:: cpp

    cursorPosition = 5
    moveCursorSelection(9, TextEdit.SelectCharacters)
    moveCursorSelection(7, TextEdit.SelectCharacters)

This moves the cursor to position 5, extend the selection end from 5 to 9 and then retract the selection end from 9 to 7, leaving the text from position 5 to 7 selected (the 6th and 7th characters).

The same sequence with :ref:`TextEdit <sdk_qtquick_textedit>`.SelectWords will extend the selection start to a word boundary before or on position 5 and extend the selection end to a word boundary on or past position 9.

.. _sdk_qtquick_textedit_paste:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| paste()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Replaces the currently selected text by the contents of the system clipboard.

.. _sdk_qtquick_textedit_positionAt:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| int positionAt(int *x*, int *y*)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the text position closest to pixel position (*x*, *y*).

Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position `text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ .length, which is after all characters.

.. _sdk_qtquick_textedit_positionToRectangle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rectangle positionToRectangle(position)                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the rectangle at the given *position* in the text. The x, y, and height properties correspond to the cursor that would describe that position.

.. _sdk_qtquick_textedit_redo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| redo()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Redoes the last operation if redo is :ref:`available <sdk_qtquick_textedit_canRedo>`.

.. _sdk_qtquick_textedit_remove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string remove(int *start*, int *end*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the section of text that is between the *start* and *end* positions from the :ref:`TextEdit <sdk_qtquick_textedit>`.

.. _sdk_qtquick_textedit_select:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| select(int *start*, int *end*)                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Causes the text from *start* to *end* to be selected.

If either start or end is out of range, the selection is not changed.

After calling this, :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>` will become the lesser and :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>` will become the greater (regardless of the order passed to this method).

**See also** :ref:`selectionStart <sdk_qtquick_textedit_selectionStart>` and :ref:`selectionEnd <sdk_qtquick_textedit_selectionEnd>`.

.. _sdk_qtquick_textedit_selectAll:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectAll()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Causes all text to be selected.

.. _sdk_qtquick_textedit_selectWord:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectWord()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Causes the word closest to the current cursor position to be selected.

.. _sdk_qtquick_textedit_undo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| undo()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Undoes the last operation if undo is :ref:`available <sdk_qtquick_textedit_canUndo>`. Deselects any current selection, and updates the selection start to the current cursor position.

