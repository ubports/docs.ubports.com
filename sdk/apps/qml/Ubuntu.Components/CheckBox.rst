.. _sdk_ubuntu_components_checkbox:
Ubuntu.Components CheckBox
==========================

CheckBox is a component with two states, checked or unchecked. It can be
used to set boolean options. The behavior is the same as Switch, the
only difference is the graphical style.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`AbstractButton <sdk_ubuntu_componen |
|                                      | ts_abstractbutton>`_                 |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`Switch <sdk_ubuntu_components_switc |
|                                      | h>`_ .                               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`checked <sdk_ubuntu_components_checkbox_checked-prop>` :
   bool

Detailed Description
--------------------

`See also the Design Guidelines on
selection <https://design.ubuntu.com/apps/building-blocks/selection>`_ .

Example:

.. code:: qml

    Item {
        CheckBox {
            checked: true
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_checkbox_checked-prop:

+--------------------------------------------------------------------------+
|        \ checked : bool                                                  |
+--------------------------------------------------------------------------+

Specifies whether the checkbox is checked or not. By default the
property is set to false.

| 
