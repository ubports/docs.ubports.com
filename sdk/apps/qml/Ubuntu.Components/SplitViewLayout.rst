.. _sdk_ubuntu_components_splitviewlayout:

Ubuntu.Components SplitViewLayout
=================================

Layout configuration for SplitView.

+---------------------+------------+
| Import Statement:   | import .   |
+---------------------+------------+

Properties
----------

-  :ref:`columns <sdk_ubuntu_components_splitviewlayout_columns>` : list<ViewColumn>
-  :ref:`when <sdk_ubuntu_components_splitviewlayout_when>` : bool

Detailed Description
--------------------

:ref:`SplitViewLayout <sdk_ubuntu_components_splitviewlayout>` defines a layout configuration and the condition when the layout is expected to be applied. In case multiple layout conditions evaluate to true, the first one in the list will be activated.

Property Documentation
----------------------

.. _sdk_ubuntu_components_splitviewlayout_columns:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] columns : list<:ref:`ViewColumn <sdk_ubuntu_components_viewcolumn>`>                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the column configurations for the layout. If the view has more columns than the configuration specifies, the extra columns will be hidden (their visible property will be set to false!). Also, the hidden column sizes may change, therefore size-sensitive content must be aware of this.

.. _sdk_ubuntu_components_splitviewlayout_when:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| when : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the condition when to apply the layout. Usually holds a binding which evaluates to true or false to activate the layout.

