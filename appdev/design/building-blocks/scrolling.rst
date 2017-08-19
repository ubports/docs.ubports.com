Scrolling
=========

The toolkit provides a ScrollView component that allows users to scroll
content inside panels, text fields and lists across all devices.

.. figure:: https://assets.ubuntu.com/v1/3b6f6d0a-750w_Scrollbar_MainImage.png
   :alt: 750w\_Scrollbar\_MainImage

   750w\_Scrollbar\_MainImage

\|\ |no alt text|\ \|The `ScrollView
API <../../api-qml-current/Ubuntu.Components.ScrollView.md>`__ is a
scrollable view that features scrollbars and scrolling when using
keyboard keys.\| \| \|---\|-----\|

ScrollView vs. Scrollbar APIs
-----------------------------

The ScrollView API works by wrapping the Scrollbar API in a view and
provides additional features such as:

-  keyboard navigation and focus handling for a complete convergent
   experience

-  automatic positioning of vertical and horizontal scrollbars, which
   prevents them from overlapping one another when both are present on
   screen

The Scrollbar API doesn’t handle keyboard input and has the following
requirements:

-  the content position is driven through the attached Flickable item

-  the alignment management has to adhere to the anchors for built-in
   alignment functionality

-  every style implementation should drive the position through
   contentX/contentY properties, depending on whether the orientation is
   vertical or horizontal

Handling overlay
----------------

A ScrollView handles scrollbar placement by automatically placing the
scrollbars horizontally and vertically where appropriate in the device
layout.

Scrollbar
---------

|366w\_Scrollbar\_HandlingOverlay\_Good| |do\_32|

Do
--

ScrollView
----------

|366w\_Scrollbar\_HandlingOverlay\_Bad| |dont\_32|

Don’t
-----

Use cases
---------

Borderless content
------------------

If the content of your app is borderless, like the camera, it wouldn’t
be practical to have scrollbars because it can hinder the user’s view
and primary task of taking a picture.

Borderless
----------

|366w\_Scrollbar\_BorderlessContent\_Good| |do\_32|

Do
--

With scrollbars
---------------

|366w\_Scrollbar\_BorderlessContent\_Bad| |dont\_32|

Don’t
-----

Avoid custom scrollers
----------------------

Custom scrollers usually work poorly because they are hard to recognise,
or they do not include all the functions people expect.

.. figure:: https://assets.ubuntu.com/v1/c7a23911-750w_Scrollbar_CustomScrollbar.png
   :alt: 750w\_Scrollbar\_CustomScrollbar

   750w\_Scrollbar\_CustomScrollbar

Scrolling through a list
------------------------

Place any ListView API inside a ScrollView to present a scrollbar when
items have scrolled off-screen.

.. figure:: https://assets.ubuntu.com/v1/312f5973-366w_Scrollbar_List.png
   :alt: 366w\_Scrollbar\_List

   366w\_Scrollbar\_List

\|\ |no alt text|\ \|Use the `ListView
API <../../api-qml-current/QtQuick.ListView.md>`__ or see `List
Items <list-items.md>`__ for more guidance on using lists inside your
application.\| \| \|---\|-----\|

Scrolling within a text field
-----------------------------

If your app allows for multi-line input inside a text field, then the
user will expect to scroll the content.

In a text field, such as in the Messaging app, the field automatically
displays a scrollbar that overlays the content to allow users to scroll
once they have entered more than five lines of text.

.. figure:: https://assets.ubuntu.com/v1/a2adf439-366w_Scrollbar_Text.png
   :alt: 366w\_Scrollbar\_Text

   366w\_Scrollbar\_Text

Scrolling inside panels
-----------------------

The toolkit provides panels that can be used to display anything from
images, large amount of text or videos. The user will expect to scroll
either vertically or horizontally, or both to view the content.

By wrapping the panel inside a ScrollView it will automatically adhere
to the content in any device layout.

.. figure:: https://assets.ubuntu.com/v1/f9e5b0bb-750w_Scrollbar_InsidePanel.png
   :alt: 750w\_Scrollbar\_InsidePanel

   750w\_Scrollbar\_InsidePanel

.. |no alt text| image:: https://assets.ubuntu.com/v1/608696e3-developer_links.png
.. |366w\_Scrollbar\_HandlingOverlay\_Good| image:: https://assets.ubuntu.com/v1/6591cecc-366w_Scrollbar_HandlingOverlay_Good.png
.. |do\_32| image:: https://assets.ubuntu.com/v1/74c13c17-do_32+%281%29.png
.. |366w\_Scrollbar\_HandlingOverlay\_Bad| image:: https://assets.ubuntu.com/v1/3a6877c8-366w_Scrollbar_HandlingOverlay_Bad.png
.. |dont\_32| image:: https://assets.ubuntu.com/v1/01fb853b-dont_32.png
.. |366w\_Scrollbar\_BorderlessContent\_Good| image:: https://assets.ubuntu.com/v1/4fcd5fea-366w_Scrollbar_BorderlessContent_Good.png
.. |366w\_Scrollbar\_BorderlessContent\_Bad| image:: https://assets.ubuntu.com/v1/d375f85c-366w_Scrollbar_BorderlessContent_Bad.png

