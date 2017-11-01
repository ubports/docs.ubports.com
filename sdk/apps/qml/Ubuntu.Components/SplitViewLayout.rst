Layout configuration for SplitView.

+---------------------+------------+
| Import Statement:   | import .   |
+---------------------+------------+

Properties
----------

-  ****`columns </sdk/apps/qml/Ubuntu.Components/SplitViewLayout#columns-prop>`__****
   : list<ViewColumn>
-  ****`when </sdk/apps/qml/Ubuntu.Components/SplitViewLayout#when-prop>`__****
   : bool

Detailed Description
--------------------

`SplitViewLayout </sdk/apps/qml/Ubuntu.Components/SplitViewLayout/>`__
defines a layout configuration and the condition when the layout is
expected to be applied. In case multiple layout conditions evaluate to
true, the first one in the list will be activated.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] columns :                                             |
| list<`ViewColumn </sdk/apps/qml/Ubuntu.Components/ViewColumn/>`__>       |
+--------------------------------------------------------------------------+

The property holds the column configurations for the layout. If the view
has more columns than the configuration specifies, the extra columns
will be hidden (their visible property will be set to false!). Also, the
hidden column sizes may change, therefore size-sensitive content must be
aware of this.

| 

+--------------------------------------------------------------------------+
|        \ when : bool                                                     |
+--------------------------------------------------------------------------+

Specifies the condition when to apply the layout. Usually holds a
binding which evaluates to true or false to activate the layout.

| 
