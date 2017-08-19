UbuntuUserInterfaceToolkit.ubuntu-whatsnew
==========================================

.. raw:: html

   <p>

Beside the pile of bug fixes we have two major changes in the UI Toolkit
version 1.2, as follows:

.. raw:: html

   </p>

.. raw:: html

   <h4>

MainView.useDeprecatedToolbar

.. raw:: html

   </h4>

.. raw:: html

   <p>

MainView.useDeprecatedToolbar property got removed and the new header is
always enabled. If you need to use the old toolbar you can still do that
by importing Ubuntu.Components 1.1.

.. raw:: html

   </p>

.. raw:: html

   <h4>

A new performant ListItem component

.. raw:: html

   </h4>

.. raw:: html

   <p>

As of 1.2, a new ListItem component and its attached components were
added to the toolkit, which gives more flexibility and performance when
used with scrollable views like ListView or Flickable. Its layout is
free, meaning developers can, and have to implement their layout
themselves. The only helper the toolkit provides is the Captions
component, which fulfills the two typical use cases, for the two label
column title captioning and for the summary captions.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Ubuntu.Components.ListItems module deprecated

.. raw:: html

   </h4>

.. raw:: html

   <p>

The new ListItem also made the old list items module to be redundant,
therefore we marked them for deprecation. Which means that your
application should migrate to the new ListItem as soon as possible.
There are few components which were not marked as deprecated, like
ThinDivider, Header, Expandable and ExpandableColumn were not
deprecated.

.. raw:: html

   </p>

.. raw:: html

   <h4>

UbuntuShape facelift

.. raw:: html

   </h4>

.. raw:: html

   <p>

There were few properties added and marked to be deprecated as well in
UbuntuShape. Some most wanted features were added, and optimized.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ubuntu-whatsnew.html -->
