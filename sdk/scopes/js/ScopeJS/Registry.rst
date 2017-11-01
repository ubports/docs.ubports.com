
White pages service for available scopes

-  Methods

`ScopeMetadata </sdk/scopes/js/ScopeJS/ScopeMetadata/>`__
**``get_metadata``**\ ( ``id `` )
Returns the metadata for the scope with the given ID

**Parameters:**

-  ``id`` **<String>**

   Attribute definition

**Returns:** <`ScopeMetadata </sdk/scopes/js/ScopeJS/ScopeMetadata/>`__>

Boolean **``is_scope_running``**\ ( ``scope_id `` )
Returns whether a scope is currently running or not

**Parameters:**

-  ``scope_id`` **<String>**

   The ID of the scope from which we wish to retrieve state

**Returns:** <Boolean>
True if the scope is running, and False if it is not running

Dictionary of String -> ScopeMetadata **``list``**\ ( ``  `` )
Returns a map containing the metadata for all scopes

**Returns:** <Dictionary of String -> ScopeMetadata>

Dictionary of String -> ScopeMetadata **``list_if``**\ ( ``predicate ``
)
Returns a map containing only those scopes for which predicate returns
true

**Parameters:**

-  ``predicate`` **<Function(ScopeMetadata)>**

   a function that must return true for each metadata item to be
   included in the map.

**Returns:** <Dictionary of String -> ScopeMetadata>

**``set_list_update_callback``**\ ( ``callback `` )
Assigns a callback method to be executed when the registry's scope list
changes

Note: Upon receiving this callback, you should retrieve the updated
scopes list via the list() method if you wish to retain synchronisation
between client and server

**Parameters:**

-  ``callback`` **<Function()>**

   The function that is invoked when an update occurs

**``set_scope_state_callback``**\ ( ``scope_id, callback `` )
Assigns a callback method to be executed when a scope's running state
(started / stopped) changes

**Parameters:**

-  ``scope_id`` **<String>**

   The ID of the scope from which we wish to retrieve state changes

-  ``callback`` **<Function(is\_running: Boolean)>**

   The function that is invoked when a scope changes running state

