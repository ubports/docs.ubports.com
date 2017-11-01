

Beside the pile of bug fixes we have two major changes in the UI Toolkit
version 1.2, as follows:

.. rubric:: MainView.useDeprecatedToolbar
   :name: mainview.usedeprecatedtoolbar

`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__.useDeprecatedToolbar
property **got removed** and the new header is always enabled. If you
need to use the old toolbar you can still do that by importing
**Ubuntu.Components** 1.1.

.. rubric:: A new performant ListItem component
   :name: a-new-performant-listitem-component

As of 1.2, a new
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component and
its attached components were added to the toolkit, which gives more
flexibility and performance when used with scrollable views like
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ or Flickable. Its layout
is free, meaning developers can, and have to implement their layout
themselves. The only helper the toolkit provides is the Captions
component, which fulfills the two typical use cases, for the two label
column title captioning and for the summary captions.

.. rubric:: Ubuntu.Components.ListItems module deprecated
   :name: ubuntu.components.listitems-module-deprecated

The new `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ also
made the old list items module to be redundant, therefore we marked them
for deprecation. Which means that your application should migrate to the
new `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ as soon as
possible. There are few components which were not marked as deprecated,
like
`ThinDivider </sdk/apps/qml/Ubuntu.Components/ListItems.ThinDivider/>`__,
Header, Expandable and ExpandableColumn were not deprecated.

.. rubric:: UbuntuShape facelift
   :name: ubuntushape-facelift

There were few properties added and marked to be deprecated as well in
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__. Some
most wanted features were added, and optimized.

