CheckBox is a component with two states, checked or unchecked. It can be
used to set boolean options. The behavior is the same as Switch, the
only difference is the graphical style.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `AbstractButton </sdk/apps/qml/Ubunt |
|                                      | u.Components/AbstractButton/>`__     |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `Switch </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Switch/>`__.                    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`checked </sdk/apps/qml/Ubuntu.Components/CheckBox#checked-prop>`__****
   : bool

Detailed Description
--------------------

`See also the Design Guidelines on
selection <https://design.ubuntu.com/apps/building-blocks/selection>`__.

Example:

.. code:: qml

    Item {
        CheckBox {
            checked: true
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ checked : bool                                                  |
+--------------------------------------------------------------------------+

Specifies whether the checkbox is checked or not. By default the
property is set to false.

| 
