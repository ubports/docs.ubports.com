List items
==========

List items can be used to make up a list of ordered scrollable items
that are related to each other.

.. figure:: https://assets.ubuntu.com/v1/12134b24-750w_ListItems_MainImage-1.png
   :alt: 750w\_ListItems\_MainImage (1)

   750w\_ListItems\_MainImage (1)

A list of emails
----------------

-  `Overview › <#overview>`__

-  `Contextual actions for list items
   › <#contextual-actions-for-list-items>`__

-  `Lists in edit mode › <#lists-in-edit-mode>`__

-  `Structure › <#structure>`__

-  `Actions › <#actions>`__

-  `Communicating feedback › <#communicating-feedback>`__

-  `List item layouts › <#list-item-layouts>`__

\|\ |no alt text|\ \|\ `See the ListItemLayout API that provides
customisable
templates <../../api-qml-current/Ubuntu.Components.ListItemLayout.md>`__,
and the `ListItem
API <../../api-qml-current/Ubuntu.Components.ListItem.md>`__ that
provides swiping actions.\| \| \|---\|-----\|

Overview
--------

Lists are displayed in a single column layout and are made up of items
that can contain one or more controls. Items should be grouped together
in a logical way that makes sense to the user.

Items in a form
---------------

.. figure:: https://assets.ubuntu.com/v1/afc631f2-366w_ListItems_UseCases1-2.png
   :alt: 366w\_ListItems\_UseCases1 (2)

   366w\_ListItems\_UseCases1 (2)

A list of settings
------------------

.. figure:: https://assets.ubuntu.com/v1/2903062e-366w_ListItems_UseCases2-2.png
   :alt: 366w\_ListItems\_UseCases2 (2)

   366w\_ListItems\_UseCases2 (2)

Use appropriately to the content
--------------------------------

.. figure:: https://assets.ubuntu.com/v1/755e0c6f-366w_ListItems_ImageList-1.png
   :alt: 366w\_ListItems\_ImageList (1)

   366w\_ListItems\_ImageList (1)

When images or icons are presented without text or actions, it would
make more sense to show them inside a grid rather than a list; like in a
photo gallery.

Use search function
-------------------

.. figure:: https://assets.ubuntu.com/v1/a9e74185-366w_ListItems_UseCaseSearchFunction-2.png
   :alt: 366w\_ListItems\_UseCaseSearchFunction (2)

   366w\_ListItems\_UseCaseSearchFunction (2)

Consider adding a search function for lists that are likely to contain a
large number of items, in order for the users to quickly search a
particular item.

Contextual actions for list items
---------------------------------

Items in a list can have actions that can be placed in a context menu.
The context menu can be accessed in two ways: by swiping or
right-clicking the list item.

Touch and pointer interactions perform the same functions across
convergent devices for consistency and familiarity across the platform.
Swiping right may reveal a button for the leading action, such as
‘Delete’ or something similar. Swiping left may reveal buttons for (up
to) three other important actions; these are the trailing actions. When
the user interacts with an item using a mouse, right-clicking will
reveal the context menu, and click and drag will reveal the leading and
trailing actions either side of the item. This gives the same experience
as swiping.

The actions are placed within two categories: leading for negative
actions and trailing for positive actions. Grouping actions into
positive and negative areas inside your list items will reinforce
familiarity inside your app; allowing users to find and identify
important actions easily.

.. figure:: https://assets.ubuntu.com/v1/f0bff2bc-366w_ListItems_ContextualActions1-3.png
   :alt: 366w\_ListItems\_ContextualActions1 (3)

   366w\_ListItems\_ContextualActions1 (3)

Touch – Leading action
----------------------

Swipe left to right

.. figure:: https://assets.ubuntu.com/v1/0238f83e-366w_ListItems_ContextualActions2.png
   :alt: 366w\_ListItems\_ContextualActions2

   366w\_ListItems\_ContextualActions2

Touch – Trailing action
-----------------------

Swipe right to left

.. figure:: https://assets.ubuntu.com/v1/ffb1c374-366w_ListItems_ContextualActionsPointer-3.png
   :alt: 366w\_ListItems\_ContextualActionsPointer (3)

   366w\_ListItems\_ContextualActionsPointer (3)

Pointer
-------

A user can right-click to reveal the contextual menu, or drag right to
left to reveal the leading or trailing options in an item.

.. figure:: https://assets.ubuntu.com/v1/93863db6-366w_ListItems_ContextualActionsFocus.png
   :alt: 366w\_ListItems\_ContextualActionsFocus

   366w\_ListItems\_ContextualActionsFocus

Focus
-----

A user can reveal the contextual menu by focusing on an item using
keyboard navigation and hitting a keyboard key to reveal it.

Lists in edit mode
------------------

Edit mode allows users to modify a particular item or multiple items at
once.

You can use edit mode to allow users to multi-select, rearrange or
delete items inside a list. When edit mode is entered the whole screen
becomes an edit state and the header will show associated editing
actions for the content. Alternatively, if the user long presses an item
a context menu will show the associated editing actions too.

Use case
--------

.. figure:: https://assets.ubuntu.com/v1/03e5997a-366w_ListItems_ListEditMode1-4.png
   :alt: 366w\_ListItems\_ListEditMode1 (4)

   366w\_ListItems\_ListEditMode1 (4)

.. figure:: https://assets.ubuntu.com/v1/880961a6-366w_ListItems_ListEditMode2-3.png
   :alt: 366w\_ListItems\_ListEditMode2 (3)

   366w\_ListItems\_ListEditMode2 (3)

Edit contacts
-------------

In the Contacts app for example, the list of contacts is made editable
to allow users to delete or edit a contact’s information.

1. A user selects an item in the list by using the edit icon in the
   header.

2. The list becomes selectable with checkboxesthat provides swiping
   actions for multi-select mode.

3. The header changes to reveal editing actions, and the header section
   is replaced with a toolbar underneath the main header with further
   editing actions.

\|\ |no alt text|\ \|For more information about how edit mode is used
see `Header <header.md>`__.\| \| \|---\|-----\|

Structure
---------

The toolkit provides list item layouts that consist of 1 to 4 slots
which can be arranged in a variety of ways. These slots can contain
components that allow the list item to perform actions and display
content.

Slot A (mandatory)
------------------

Can only contain text, such as a title with an optional subtitle.

.. figure:: https://assets.ubuntu.com/v1/334e715a-750w_ListItems_4SlotLayout.png
   :alt: 750w\_ListItems\_4SlotLayout

   750w\_ListItems\_4SlotLayout

Slot B (optional)
-----------------

For additional text, an icon or a component.

.. figure:: https://assets.ubuntu.com/v1/8c57eddf-750w_ListItems_1SlotLayout.png
   :alt: 750w\_ListItems\_1SlotLayout

   750w\_ListItems\_1SlotLayout

.. figure:: https://assets.ubuntu.com/v1/608696e3-developer_links.png
   :alt: developer\_links.

   developer\_links.

List items must always contain at least one slot.

Chevron (optional)
------------------

If your list item allows for navigation through to an associated view,
then a ProgressionSlot (chevron) is used in a fixed position in the
right-most slot. No other actions is displayed in this slot, because
this would conflict with the chevron navigation.

\|\ |no alt text|\ \|The `ProgressionSlot
API <../../api-qml-current/Ubuntu.Components.ProgressionSlot.md>`__ is
designed to provide an easy way for developers to add a progression
symbol to the list item created using ListItemLayout or SlotsLayout.\|
\| \|---\|-----\|

.. figure:: https://assets.ubuntu.com/v1/08b912ae-366w_ListItems_Chevron1-4.png
   :alt: 366w\_ListItems\_Chevron1 (4)

   366w\_ListItems\_Chevron1 (4)

.. figure:: https://assets.ubuntu.com/v1/912aaefd-366w_ListItems_Chevron2-3.png
   :alt: 366w\_ListItems\_Chevron2 (3)

   366w\_ListItems\_Chevron2 (3)

Content
-------

If you use the ListItemLayout API then Slot A can contain a 1 line
title, a subtitle, and a 2 line summary. If you use SlotsLayout API, you
can put whatever you choose in to Slot A. A recommendation is to place
the most distinguishing content in the first line of your list item.

Text is always aligned according to the currently displayed language.
For example, in the case of English it is left to right, whereas Arabic
is right to left.

.. figure:: https://assets.ubuntu.com/v1/b71e1e47-750w_ListItems_Content3.png
   :alt: 750w\_ListItems\_Content3

   750w\_ListItems\_Content3

ListItemLayout labels:
----------------------

1. 1 line – Title

2. 1 line – Subtitle

3. 2 lines – Summary

\|\ |no alt text|\ \|Developers are free to override the maximum amount
lines for each label. See the `Label
API <../../api-qml-current/Ubuntu.Components.Label.md>`__ for more
information.\| \| \|---\|-----\|

Actions
-------

Primary
-------

The primary action is the main action you want a user to perform.

Secondary
---------

A secondary action is an action the user may wish to perform instead of
the primary action.

.. figure:: https://assets.ubuntu.com/v1/b861e52d-750w_ListItems_1action2action-3.png
   :alt: 750w\_ListItems\_1action2action (3)

   750w\_ListItems\_1action2action (3)

One action
----------

Primary action: a user wants to turn their dial paid sound on or off.

Two actions
-----------

Primary action: a user can call using tap or click on a contacts name.

Secondary action: a user can message a contact by taping or clicking on
the message action icon.

Two actions – with primary icon
-------------------------------

Primary action: call using tap or click on the dial action.

Secondary action: message using tap or click on the message action icon.

\|\ |information-link|\ \|Avoid creating visual noise by repeatedly
using additional actions in list items.\| \| \|---\|-----\|

Touch regions
-------------

Tapping anywhere in the list item should perform the primary action. The
secondary action is only triggered by touching a particular touch region
where the action resides.

For example, user will expect to tap on the contact name or call button
(primary action) to call a contact. The secondary action would be to
message the contact using the message action icon.

.. figure:: https://assets.ubuntu.com/v1/7ab1c77d-366w_ListItems_ActionsPrimary-1.png
   :alt: 366w\_ListItems\_ActionsPrimary (1)

   366w\_ListItems\_ActionsPrimary (1)

.. figure:: https://assets.ubuntu.com/v1/a70a0b6c-366w_ListItems_ActionsSecondary-1.png
   :alt: 366w\_ListItems\_ActionsSecondary (1)

   366w\_ListItems\_ActionsSecondary (1)

Primary action – call

Secondary action – message

Communicating feedback
----------------------

You can use a slot to communicate if something has changed within a list
item. For example, a timestamp on a message indicates when the message
was received and a tick to show the message has been read.

.. figure:: https://assets.ubuntu.com/v1/1283edc7-366w_ListItems_InformationStates.png
   :alt: 366w\_ListItems\_InformationStates

   366w\_ListItems\_InformationStates

Use text labels
---------------

If a list item needs to provide feedback from an associated action, then
the list item should not be used to communicate this.

.. figure:: https://assets.ubuntu.com/v1/7c36aac8-366w_ListItems_CommunicatingFeedback1-1.png
   :alt: 366w\_ListItems\_CommunicatingFeedback1 (1)

   366w\_ListItems\_CommunicatingFeedback1 (1)

.. figure:: https://assets.ubuntu.com/v1/9c48008e-366w_ListItems_CommunicatingFeedback2-1.png
   :alt: 366w\_ListItems\_CommunicatingFeedback2 (1)

   366w\_ListItems\_CommunicatingFeedback2 (1)

In System Settings if a user has tried to connect to another device
using Bluetooth and no device has been found, a text label within the
view is used to indicate feedback.

List item layouts
-----------------

The toolkit provides a number of layouts when creating a list item to
ensure users get the best experience from your app across different
surfaces.

**Consider:**

-  Slot A is mandatory and should always contain text.

-  The maximum number of slots is four.

\|\ |information-link|\ \|You can place what you wish inside the slots.
However, these recommendations take into consideration cognitive
familiarity to provide a clean and minimalist look.\| \| \|---\|-----\|

.. figure:: https://assets.ubuntu.com/v1/26479ed7-366w_ListItems_OneSlotSmall-2.png
   :alt: 366w\_ListItems\_OneSlotSmall (2)

   366w\_ListItems\_OneSlotSmall (2)

One slot
--------

.. figure:: https://assets.ubuntu.com/v1/f4572937-366w_ListItems_TwoSlotSmall2.png
   :alt: 366w\_ListItems\_TwoSlotSmall2

   366w\_ListItems\_TwoSlotSmall2

Two slot
--------

.. figure:: https://assets.ubuntu.com/v1/0ef2a52e-366w_ListItems_ThreeSlotSmall2-1.png
   :alt: 366w\_ListItems\_ThreeSlotSmall2 (1)

   366w\_ListItems\_ThreeSlotSmall2 (1)

Three slot
----------

.. figure:: https://assets.ubuntu.com/v1/c161036d-366w_ListItems_FourSlotSmall2-1.png
   :alt: 366w\_ListItems\_FourSlotSmall2 (1)

   366w\_ListItems\_FourSlotSmall2 (1)

Four slot
---------

\|\ |no alt text|\ \|Provide a caption under the title to give the user
more information if necessary. For example, displaying a contact’s email
address saves the user clicking through to find the information.\| \|
\|---\|-----\|

Avoid cluttered list items
--------------------------

.. figure:: https://assets.ubuntu.com/v1/b340de77-366w_ListItems_FourSlotBad.png
   :alt: 366w\_ListItems\_FourSlotBad

   366w\_ListItems\_FourSlotBad

In this example, the list item is too overcrowded and it is not
immediately apparent what the primary action is.

.. |no alt text| image:: https://assets.ubuntu.com/v1/608696e3-developer_links.png
.. |no alt text| image:: https://assets.ubuntu.com/v1/75f60d24-link_external.png
.. |no alt text| image:: https://assets.ubuntu.com/v1/608696e3-developer_links.png
.. |information-link| image:: https://assets.ubuntu.com/v1/e9f11635-information-link.png
.. |no alt text| image:: https://assets.ubuntu.com/v1/75f60d24-link_external.png

