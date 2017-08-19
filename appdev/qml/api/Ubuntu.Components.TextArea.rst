Ubuntu.Components.TextArea
==========================

.. raw:: html

   <p>

The TextArea item displays a block of editable, scrollable, formatted
text. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TextArea -->

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

import Ubuntu.Components 1.3

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

Ubuntu

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

   <li>

Obsolete members

.. raw:: html

   </li>

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

autoSize : bool

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

displayText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

effectiveHorizontalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font : font

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlighted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

horizontalAlignment : enumeration

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

maximumLineCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseSelectionMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paintedHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paintedWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

persistentSelection : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

placeholderText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

popover : var

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

textDocument : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textFormat : enumeration

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

getFormattedText(start, end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

getText(start, end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

insert(position, text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isRightToLeft(start, end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moveCursorSelection(position, mode)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paste(data)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionAt(x, y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionToRectangle(position)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

redo()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

remove(start, end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

select(start, end)

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

   <!-- $$$TextArea-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The TextArea supports fix-size and auto-expanding modes. In fix-size
mode the content is scrolled when exceeds the boundaries and can be
scrolled both horizontally and vertically, depending on the contentWidth
and contentHeight set. The following example will scroll the editing
area both horizontally and vertically:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">TextArea</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">12</span>)
   <span class="name">contentWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">contentHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   }</pre>

.. raw:: html

   <p>

The auto-expand mode is realized using two properties: autoSize and
maximumLineCount. Setting autoSize will set implicitHeight to one line,
and the height will follow the line count, meaning when lines are added
the area will expand and when removed the area will shrink. The
maximumLineCount specifies how much the editor should be expanded. If
this value is set to 0, the area will always expand vertically to fit
the content. When autoSize is set, the contentHeight property value is
ignored, and the expansion only happens vertically.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">TextArea</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">12</span>)
   <span class="name">contentWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">autoSize</span>: <span class="number">true</span>
   <span class="name">maximumLineCount</span>: <span class="number">0</span>
   }</pre>

.. raw:: html

   <p>

TextArea comes with 30 grid-units implicit width and one line height on
auto-sizing mode and 4 lines on fixed-mode. The line size is calculated
from the font size and the ovarlay and frame spacing specified in the
style.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Scrolling and text selection

.. raw:: html

   </h3>

.. raw:: html

   <p>

The input is activated when the tap or mouse is released after being
pressed over the component.

.. raw:: html

   </p>

.. raw:: html

   <p>

Scrolling the editing area can happen when the size is fixed or in
auto-sizing mode when the content size is bigger than the visible area.
The scrolling is realized by swipe gestures, or by navigating the
cursor.

.. raw:: html

   </p>

.. raw:: html

   <p>

The content can be selected in the following ways:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

-  double tapping/left mouse clicking over the content, when the word
   that had been tapped over will be selected

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   -  by pressing and dragging the selection cursor over the text input.
      Note that there has to be a delay of approx. 200 ms between the
      press and drag gesture, time when the input switches from scroll
      mode to selection mode

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      The input is focused (activated) upon tap/left mouse button
      release. The cursor will be placed at the position the mouse/tap
      point at release time. If the click is happening on a selected
      area, the selection will be cleared. Long press above a selected
      area brings up the clipboard context menu. When the long press
      happens over a non-selected area, the cursor will be moved to the
      position and the component enters in selection mode. The selection
      mode can also be activated by tapping and keeping the tap/mouse
      over for approx 300 ms. If there is a move during this time, the
      component enters into scrolling mode. The mode is exited once the
      scrolling finishes. During the scrolling mode the selected text is
      preserved.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      Note: During text selection all interactive parent Flickables are
      turned off.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@TextArea -->

      .. raw:: html

         <h2>

      Property Documentation

      .. raw:: html

         </h2>

      .. raw:: html

         <!-- $$$autoSize -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="autoSize-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      autoSize : bool

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

      This property specifies whether the text area sizes following the
      line count or not. The default value is false.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@autoSize -->

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

      This property specifies a base URL which is used to resolve
      relative URLs within the text. The default value is the url of the
      QML file instantiating the TextArea item.

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

      Returns true if the TextArea is writable and the content of the
      clipboard is suitable for pasting into the TextArea.

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

      Returns true if the TextArea is writable and there are undone
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

      Returns true if the TextArea is writable and there are previous
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

      The property folds the height of the text editing content. This
      can be equal or bigger than the frame height minus the spacing
      between the frame and the input area defined in the current theme.
      The default value is the same as the visible input area's height.

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

      The property folds the width of the text editing content. This can
      be equal or bigger than the frame width minus the spacing between
      the frame and the input area defined in the current theme. The
      default value is the same as the visible input area's width.

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

      The delegate for the cursor in the TextArea.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      If you set a cursorDelegate for a TextArea, this delegate will be
      used for drawing the cursor instead of the standard cursor. An
      instance of the delegate will be created and managed by the text
      edit when a cursor is needed, and the x and y properties of
      delegate instance will be set so as to be one pixel before the top
      left of the current character.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      Note that the root item of the delegate component must be a
      QQuickItem or QQuickItem derived item.

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

      The position of the cursor in the TextArea.

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

      The rectangle where the standard text cursor is rendered within
      the text edit. Read-only.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      The position and height of a custom cursorDelegate are updated to
      follow the cursorRectangle automatically when it changes. The
      width of the delegate is unaffected by changes in the cursor
      rectangle.

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

      This property is set and unset when the text edit gets active
      focus, but it can also be set directly (useful, for example, if a
      KeyProxy might forward keys to it).

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

      This property contains the text that is displayed on the screen.
      May differ from the text property value when TextEdit.RichText
      format is selected.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@displayText -->

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

      Presents the effective horizontal alignment that can be different
      from the one specified at horizontalAlignment due to layout
      mirroring.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@effectiveHorizontalAlignment -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="font-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      font : font

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

      The property holds the font used by the editing.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@font -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="highlighted-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      highlighted : bool

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

      The property presents whether the TextArea is highlighted or not.
      By default the TextArea gets highlighted when gets the focus, so
      can accept text input. This property allows to control the
      highlight separately from the focused behavior.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@highlighted -->

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

      Sets the horizontal alignment of the text within the TextAre
      item's width and height. By default, the text alignment follows
      the natural alignment of the text, for example text that is read
      from left to right will be aligned to the left.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      Valid values for effectiveHorizontalAlignment are:

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

         <!-- @@@horizontalAlignment -->

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

      This property holds whether the TextArea has partial text input
      from an input method.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      While it is composing an input method may rely on mouse or key
      events from the TextArea to edit or commit the partial text. This
      property can be used to determine when to disable events handlers
      that may interfere with the correct operation of an input method.

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

      Provides hints to the input method about the expected content of
      the text edit and how it should operate.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      The value is a bit-wise combination of flags or Qt.ImhNone if no
      hints are set.

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

      Qt.ImhHiddenText - Characters should be hidden, as is typically
      used when entering passwords.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Qt.ImhSensitiveData - Typed text should not be stored by the
      active input method in any persistent storage like predictive user
      dictionary.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Qt.ImhNoAutoUppercase - The input method should not try to
      automatically switch to upper case when a sentence ends.

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

      Qt.ImhNoPredictiveText - Do not use predictive text (i.e.
      dictionary lookup) while typing.

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

      Qt.ImhFormattedNumbersOnly - Only number input is allowed. This
      includes decimal point and minus sign.

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

      Qt.ImhEmailCharactersOnly - Only characters suitable for email
      addresses are allowed.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are
      allowed.

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

      Returns the total number of plain text characters in the TextArea
      item.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      As this number doesn't include any formatting markup it may not be
      the same as the length of the string returned by the text
      property.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      This property can be faster than querying the length the text
      property as it doesn't require any copying or conversion of the
      TextArea's internal string data.

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

      Returns the total number of lines in the TextArea item.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@lineCount -->

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

      The property holds the maximum amount of lines to expand when
      autoSize is enabled. The value of 0 does not put any upper limit
      and the control will expand forever.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      The default value is 5 lines.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@maximumLineCount -->

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

      TextEdit.SelectCharacters - The selection is updated with
      individual characters. (Default)

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

         <tr valign="top" id="paintedHeight-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      [read-only] paintedHeight : real

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

      Exposes the paintedHeight of the underlying text component. It's
      required if the application uses its own Flickable for scrolling.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@paintedHeight -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="paintedWidth-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      [read-only] paintedWidth : real

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

      Exposes the paintedWidth of the underlying text component. It's
      required if the application uses its own Flickable for scrolling.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@paintedWidth -->

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

      Whether the TextArea should keep the selection visible when it
      loses active focus to another item in the scene. By default this
      is set to true.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@persistentSelection -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="placeholderText-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      placeholderText : string

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

      Text that appears when there is no focus and no content in the
      component (hint text).

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@placeholderText -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="popover-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      popover : var

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

      The property overrides the default popover of the TextArea. When
      set, the TextArea will open the given popover instead of the
      default one defined. The popover can either be a component or a
      URL to be loaded.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@popover -->

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

      Whether the user can interact with the TextArea item. If this
      property is set to true the text cannot be edited by user
      interaction.

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

      Select Text.NativeRendering if you prefer text to look native on
      the target platform and do not require advanced features such as
      transformation of the text. Using such features in combination
      with the NativeRendering render type will lend poor and sometimes
      pixelated results.

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

      The property drives whether text selection should happen with the
      mouse or not. The default value is true.

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

      This read-only property provides the text currently selected in
      the text edit.

      .. raw:: html

         </p>

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

      The cursor position after the last character in the current
      selection.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      This property is read-only. To change the selection, use
      select(start, end), selectAll(), or selectWord().

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

      The cursor position before the first character in the current
      selection.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      This property is read-only. To change the selection, use
      select(start, end), selectAll(), or selectWord().

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

      The text to display. If the text format is AutoText the text edit
      will automatically determine whether the text should be treated as
      rich text. This determination is made using Qt::mightBeRichText().

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

      textDocument : var

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

      Exposes the QQuickTextDocument which can be used to implement
      advanced formatting and syntax highlighting (QSyntaxHighlighter)
      with C++.

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
      TextEdit.AutoText the text edit will automatically determine
      whether the text should be treated as rich text. This
      determination is made using Qt::mightBeRichText().

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@textFormat -->

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

      Sets the vertical alignment of the text within the TextAres item's
      width and height. By default, the text alignment follows the
      natural alignment of the text.

      .. raw:: html

         </p>

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

      Set this property to wrap the text to the TextEdit item's width.
      The text will only wrap if an explicit width has been set.

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      TextEdit.NoWrap - no wrapping will be performed. If the text
      contains insufficient newlines, then implicitWidth will exceed a
      set width.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      TextEdit.WordWrap - wrapping is done on word boundaries only. If a
      word is too long, implicitWidth will exceed a set width.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      TextEdit.WrapAnywhere - wrapping is done at any point on a line,
      even if it occurs in the middle of a word.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      TextEdit.Wrap - if possible, wrapping occurs at a word boundary;
      otherwise it will occur at the appropriate point on the line, even
      in the middle of a word.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      The default is TextEdit.Wrap

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

      This handler is called when the user clicks on a link embedded in
      the text. The link must be in rich text or HTML format and the
      link string provides access to the particular link.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@linkActivated -->

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

         <tr valign="top" id="getFormattedText-method">

      .. raw:: html

         <td class="tblQmlFuncNode">

      .. raw:: html

         <p>

      getFormattedText( start, end)

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

      Returns the section of text that is between the start and end
      positions.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      The returned text will be formatted according the textFormat
      property.

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

      getText( start, end)

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

      Returns the section of text that is between the start and end
      positions.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      The returned text does not include any rich text formatting. A
      getText(0, length) will result in the same value as displayText.

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

      insert( position, text)

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

      Inserts text into the TextArea at position.

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

      isRightToLeft( start, end)

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

      Returns true if the natural reading direction of the editor text
      found between positions start and end is right to left.

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

      moveCursorSelection( position, mode)

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

      Moves the cursor to position and updates the selection according
      to the optional mode parameter. (To only move the cursor, set the
      cursorPosition property.)

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      When this method is called it additionally sets either the
      selectionStart or the selectionEnd (whichever was at the previous
      cursor position) to the specified position. This allows you to
      easily extend and contract the selected text range.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      The selection mode specifies whether the selection is updated on a
      per character or a per word basis. If not specified the selection
      mode will default to whatever is given in the mouseSelectionMode
      property.

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

      paste( data)

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

      Places the clipboard or the data given as parameter into the text
      input. The selected text will be replaces with the data.

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

      positionAt( x, y)

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

      Position 0 is before the first character, position 1 is after the
      first character but before the second, and so on until position
      text.length, which is after all characters.

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

      positionToRectangle( position)

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

      Returns the rectangle at the given position in the text. The x, y,
      and height properties correspond to the cursor that would describe
      that position.

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

      remove( start, end)

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

      Removes the section of text that is between the start and end
      positions from the TextArea.

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

      select( start, end)

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

      If either start or end is out of range, the selection is not
      changed.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      After calling this, selectionStart will become the lesser and
      selectionEnd will become the greater (regardless of the order
      passed to this method).

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

      Causes the word closest to the current cursor position to be
      selected.

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

      Undoes the last operation if undo is available. Deselects any
      current selection, and updates the selection start to the current
      cursor position.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@undo -->
