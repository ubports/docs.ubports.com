
Allows the results of a preview to be sent to the preview requester.

-  Methods

**``error``**\ ( ``  `` )
Informs the source of a query that the query was terminated due to an
error

**Returns:**
error String error

**``finished``**\ ( ``  `` )
Informs the source of a query that the query results are complete

**Returns:**
Boolean

**``push``**\ ( ``widget_list `` )
Sends widget definitions to the sender of the preview query

**Parameters:**

-  ``widget_list`` **<Array of PreviewWidget>**

**``register_layout``**\ ( ``layout `` )
Registers a list of column layouts for the current preview

**Parameters:**

-  ``layout`` **<Array of Column layout>**

