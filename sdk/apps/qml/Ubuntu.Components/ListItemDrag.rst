.. _sdk_ubuntu_components_listitemdrag:
Ubuntu.Components ListItemDrag
==============================

Provides information about a ListItem drag event.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`accept <sdk_ubuntu_components_listitemdrag_accept-prop>` :
   bool
-  :ref:`from <sdk_ubuntu_components_listitemdrag_from-prop>` : int
-  :ref:`maximumIndex <sdk_ubuntu_components_listitemdrag_maximumIndex-prop>`
   : int
-  :ref:`minimumIndex <sdk_ubuntu_components_listitemdrag_minimumIndex-prop>`
   : int
-  :ref:`status <sdk_ubuntu_components_listitemdrag_status-prop>` :
   enum
-  :ref:`to <sdk_ubuntu_components_listitemdrag_to-prop>` : int

Detailed Description
--------------------

The object cannot be instantiated and it is passed as parameter to
:ref:`ViewItems::dragUpdated <sdk_ubuntu_components_viewitems#dragUpdated-signal>`
attached signal. Developer can decide whether to accept or restrict the
dragging event based on the input provided by this event.

The direction of the drag can be found via the
:ref:`status <sdk_ubuntu_components_listitemdrag#status-prop>` property and
the source and destination the drag can be applied via
:ref:`from <sdk_ubuntu_components_listitemdrag#from-prop>` and
:ref:`to <sdk_ubuntu_components_listitemdrag#to-prop>` properties. The
allowed directions can be configured through
:ref:`minimumIndex <sdk_ubuntu_components_listitemdrag#minimumIndex-prop>`
and
:ref:`maximumIndex <sdk_ubuntu_components_listitemdrag#maximumIndex-prop>`
properties, and the event acceptance through
:ref:`accept <sdk_ubuntu_components_listitemdrag#accept-prop>` property. If
the event is not accepted, the drag action will be considered as
cancelled.

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitemdrag_accept-prop:

+--------------------------------------------------------------------------+
|        \ accept : bool                                                   |
+--------------------------------------------------------------------------+

The property can be used to dismiss the event. By default its value is
true, meaning the drag event is accepted. The value of false blocks the
drag event to be handled by the
:ref:`ListItem <sdk_ubuntu_components_listitem>`'s dragging mechanism.

| 

.. _sdk_ubuntu_components_listitemdrag_[read-only] from-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] from : int                                          |
+--------------------------------------------------------------------------+

Specifies the source index the
:ref:`ListItem <sdk_ubuntu_components_listitem>` is dragged from.

| 

.. _sdk_ubuntu_components_listitemdrag_maximumIndex-prop:

+--------------------------------------------------------------------------+
|        \ maximumIndex : int                                              |
+--------------------------------------------------------------------------+

| 

.. _sdk_ubuntu_components_listitemdrag_minimumIndex-prop:

+--------------------------------------------------------------------------+
|        \ minimumIndex : int                                              |
+--------------------------------------------------------------------------+

These properties configure the minimum and maximum indexes the item can
be dragged. The properties can be set in
:ref:`ViewItems::dragUpdated <sdk_ubuntu_components_viewitems#dragUpdated-signal>`
signal. A negative value means no restriction defined on the dragging
interval side.

| 

.. _sdk_ubuntu_components_listitemdrag_[read-only] status-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] status : enum                                       |
+--------------------------------------------------------------------------+

The property provides information about the status of the drag. Its
value can be one of the following:

-  **ListItemDrag.Started** - indicates that the dragging is about to
   start, giving opportunities to define restrictions on the dragging
   indexes, like
   :ref:`minimumIndex <sdk_ubuntu_components_listitemdrag#minimumIndex-prop>`,
   :ref:`maximumIndex <sdk_ubuntu_components_listitemdrag#maximumIndex-prop>`
-  **ListItemDrag.Moving** - the dragged item is moved upwards or
   downwards in the :ref:`ListItem <sdk_ubuntu_components_listitem>`
-  **ListItemDrag.Dropped** - indicates that the drag event is finished,
   and the dragged item is about to be dropped to the given position.

| 

.. _sdk_ubuntu_components_listitemdrag_[read-only] to-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] to : int                                            |
+--------------------------------------------------------------------------+

Specifies the index the :ref:`ListItem <sdk_ubuntu_components_listitem>` is
dragged to or dropped.

| 
