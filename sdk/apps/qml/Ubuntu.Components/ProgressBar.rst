The ProgressBar component visually indicates the progress of a process
of determinate or indeterminate duration.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  ****`indeterminate </sdk/apps/qml/Ubuntu.Components/ProgressBar#indeterminate-prop>`__****
   : bool
-  ****`maximumValue </sdk/apps/qml/Ubuntu.Components/ProgressBar#maximumValue-prop>`__****
   : real
-  ****`minimumValue </sdk/apps/qml/Ubuntu.Components/ProgressBar#minimumValue-prop>`__****
   : real
-  ****`value </sdk/apps/qml/Ubuntu.Components/ProgressBar#value-prop>`__****
   : real

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

+--------------------------------------------------------------------------+
|        \ indeterminate : bool                                            |
+--------------------------------------------------------------------------+

Specifies whether the progress interval is unknown. When set, altering
other properties do not have any effect on the component's behavior. By
default the property is set to false.

| 

+--------------------------------------------------------------------------+
|        \ maximumValue : real                                             |
+--------------------------------------------------------------------------+

Specifies the maximum value of the progress.

| 

+--------------------------------------------------------------------------+
|        \ minimumValue : real                                             |
+--------------------------------------------------------------------------+

Specifies the minimum value of the progress.

| 

+--------------------------------------------------------------------------+
|        \ value : real                                                    |
+--------------------------------------------------------------------------+

Specifies the current value of the progress

| 
