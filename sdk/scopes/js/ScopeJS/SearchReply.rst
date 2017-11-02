.. _sdk_scopejs_searchreply:
ScopeJS SearchReply
===================


Allows the results of a preview to be sent to the preview requester.

-  Methods

**``error``**\ ( ``  `` )
Informs the source of a query that the query was terminated due to an
error

**Returns:**
error String error

**``finished``**\ ( ``  `` )
Informs the source of a query that the query results are complete

**``id``**\ ( ``id `` )
Returns a previously registered category

**Parameters:**

-  ``id`` **<Object>**

**``push``**\ ( ``result `` )
Sends a single result to the source of a query

**Parameters:**

-  ``result`` **<Object>**

   CategorisedResult

**``register_category``**\ ( ``id, title, icon, category_renderer `` )
Register new category and send it to the source of the query

**Parameters:**

-  ``id`` **<Object>**

   String id

-  ``title`` **<Object>**

   String title

-  ``icon`` **<Object>**

   String icon

-  ``category_renderer`` **<Object>**

   CategoryRenderer

