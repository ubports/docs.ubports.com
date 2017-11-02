.. _sdk_ubuntu_components_progressbar:
Ubuntu.Components ProgressBar
=============================

The ProgressBar component visually indicates the progress of a process
of determinate or indeterminate duration.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`indeterminate <sdk_ubuntu_components_progressbar_indeterminate-prop>`
   : bool
-  :ref:`maximumValue <sdk_ubuntu_components_progressbar_maximumValue-prop>`
   : real
-  :ref:`minimumValue <sdk_ubuntu_components_progressbar_minimumValue-prop>`
   : real
-  :ref:`value <sdk_ubuntu_components_progressbar_value-prop>` :
   real

Detailed Description
--------------------

Example:

.. code:: qml

    Item {
        ProgressBar {
            id: indeterminateBar
            indeterminate: true
        }
        ProgressBar {
            id: determinateBar
            minimumValue: -3.0
            maximumValue: 15
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_progressbar_indeterminate-prop:

+--------------------------------------------------------------------------+
|        \ indeterminate : bool                                            |
+--------------------------------------------------------------------------+

Specifies whether the progress interval is unknown. When set, altering
other properties do not have any effect on the component's behavior. By
default the property is set to false.

| 

.. _sdk_ubuntu_components_progressbar_maximumValue-prop:

+--------------------------------------------------------------------------+
|        \ maximumValue : real                                             |
+--------------------------------------------------------------------------+

Specifies the maximum value of the progress.

| 

.. _sdk_ubuntu_components_progressbar_minimumValue-prop:

+--------------------------------------------------------------------------+
|        \ minimumValue : real                                             |
+--------------------------------------------------------------------------+

Specifies the minimum value of the progress.

| 

.. _sdk_ubuntu_components_progressbar_value-prop:

+--------------------------------------------------------------------------+
|        \ value : real                                                    |
+--------------------------------------------------------------------------+

Specifies the current value of the progress

| 
