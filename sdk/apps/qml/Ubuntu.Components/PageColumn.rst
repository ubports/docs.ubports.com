.. _sdk_ubuntu_components_pagecolumn:
Ubuntu.Components PageColumn
============================

Component configuring the metrics of a column in AdaptivePageLayout.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`QtObject <sdk_qtqml_qtobject>` |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`fillWidth <sdk_ubuntu_components_pagecolumn_fillWidth-prop>`
   : bool
-  :ref:`maximumWidth <sdk_ubuntu_components_pagecolumn_maximumWidth-prop>`
   : real
-  :ref:`minimumWidth <sdk_ubuntu_components_pagecolumn_minimumWidth-prop>`
   : real
-  :ref:`preferredWidth <sdk_ubuntu_components_pagecolumn_preferredWidth-prop>`
   : real

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_ubuntu_components_pagecolumn_fillWidth-prop:

+--------------------------------------------------------------------------+
|        \ fillWidth : bool                                                |
+--------------------------------------------------------------------------+

Specifies whether the width of the column should fill the available
space of the
:ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` column
or not. Defaults to *false*.

| 

.. _sdk_ubuntu_components_pagecolumn_maximumWidth-prop:

+--------------------------------------------------------------------------+
|        \ maximumWidth : real                                             |
+--------------------------------------------------------------------------+

Specifies the maximum width of the column. A maximum value of 0 will be
ignored. Defaults to the maximum positive value.

| 

.. _sdk_ubuntu_components_pagecolumn_minimumWidth-prop:

+--------------------------------------------------------------------------+
|        \ minimumWidth : real                                             |
+--------------------------------------------------------------------------+

Specifies the minimum width of the column. Defaults to 0.

| 

.. _sdk_ubuntu_components_pagecolumn_preferredWidth-prop:

+--------------------------------------------------------------------------+
|        \ preferredWidth : real                                           |
+--------------------------------------------------------------------------+

Specifies the preferred width of the column when the layout is
initialized. Defaults to 0.
:ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` clamps
the given value between
:ref:`minimumWidth <sdk_ubuntu_components_pagecolumn#minimumWidth-prop>`
and
:ref:`maximumWidth <sdk_ubuntu_components_pagecolumn#maximumWidth-prop>`.
The value must be set if the
:ref:`fillWidth <sdk_ubuntu_components_pagecolumn#fillWidth-prop>` and
:ref:`minimumWidth <sdk_ubuntu_components_pagecolumn#minimumWidth-prop>`
are not set.

| 
