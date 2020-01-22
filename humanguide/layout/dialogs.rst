Dialogs
=======

A dialog is a way of informing the user about important notices or letting them complete a single action.

Dialogs should be unambiguous and concise in its wording and coloring only the most common action. This common action or main action should be place as the top button in vertical dialogs or to the right in horizontal dialogs.

Main actions may be positive, negative, or neutral. Positive actions add something to their subjects. Negative actions remove, delete something or are changes that can't be undone. Neutral actions do not add or remove from the subject, but still make a change.

The button which confirms the action should be accented in red if the action is destructive, green if it is positive, and blue if it is neutral. The other options should be gray.

The text in a button should resume its action avoiding yes/no questions.

.. figure:: /_static/images/humanguide/39.png

Examples: left: Download a file (old accent color) right: Delete a contact (wrong use of color, confusing answers.

Let's focus on the 'Delete a contact dialog'. Question: Are you sure that you want to delete this contact? Answers: Yes (green positive), No (red destructive).

This is a clear example of an ambiguous answer text to be avoided. We want to focus on the main action that is to remove a contact (which is a destructive action) therefore we will present the dialog like:

.. figure:: /_static/images/humanguide/40.png
