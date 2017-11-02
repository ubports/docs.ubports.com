.. _sdk_scopejs_columnlayout:
ScopeJS ColumnLayout
====================


Describes a column layout for preview widgets.

-  Methods

**``add_column``**\ ( ``widget_ids `` )
Adds a new column and assigns widgets to it.

**Parameters:**

-  ``widget_ids`` **<Object>**

   ColumnLayout expects exactly the number of columns passed to the
   constructor to be created with the add\_column method.

**``column``**\ ( ``index `` )
Retrieve the list of widgets for given column.

**Parameters:**

-  ``index`` **<Object>**

   The index of a column.

**Returns:**
The widget identifiers for the given column index.

**``number_of_columns``**\ ( ``  `` )
Get the number of columns expected by this layout as specified in the
constructor.

**Returns:**
The number of columns expected by this layout.

**``size``**\ ( ``  `` )
Get the current number of columns in this layout.

**Returns:**
The number of columns added with add\_column()

