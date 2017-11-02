.. _sdk_scopejs_result:
ScopeJS Result
==============


The attributes of a result returned by a Scope The Result API provides
convenience methods for some typical attributes (title, art), but scopes
are free to add and use any custom attributes with set/get methods. The
only required attribute is 'uri' and it must not be empty before calling
Reply.push().

-  Methods

String **``art``**\ ( ``  `` )
Get the "art" property of this Result

**Returns:** <String>

Boolean **``contains``**\ ( ``  `` )
Check if this Result has an attribute

**Returns:** <Boolean>

Boolean **``direct_activation``**\ ( ``  `` )
Check if this result should be activated directly by the shell because
the scope doesn't handle activation of this result

**Returns:** <Boolean>

String **``dnd_uri``**\ ( ``  `` )
Get the "dnd\_uri" property of this Result

**Returns:** <String>

String **``get``**\ ( ``key `` )
Get the value of an attribute

**Parameters:**

-  ``key`` **<String>**

**Returns:** <String>
, {Number} or {Object}

Boolean **``has_stored_result``**\ ( ``  `` )
Check if this Result instance has a stored result

**Returns:** <Boolean>

:ref:`Result <sdk_scopejs_result>` **``retrieve``**\ ( ``  `` )
Get a stored result

**Returns:** <:ref:`Result <sdk_scopejs_result>`>

**``set``**\ ( ``key, value `` )
Set the value of an attribute

**Parameters:**

-  ``key`` **<String>**
-  ``value`` **<String>**

**``set_art``**\ ( ``art `` )
Set the "art" attribute of this result.

**Parameters:**

-  ``art`` **<String>**

**``set_dnd_uri``**\ ( ``dnd_uri `` )
Set the "dnd\_uri" attribute of this result.

**Parameters:**

-  ``dnd_uri`` **<String>**

**``set_intercept_activation``**\ ( ``  `` )
Indicates to the receiver that this scope should intercept activation
requests for this result

**``set_title``**\ ( ``title `` )
Set the "title" attribute of this result.

**Parameters:**

-  ``title`` **<String>**

**``set_uri``**\ ( ``uri `` )
Set the "uri" attribute of this result.

**Parameters:**

-  ``uri`` **<String>**

String **``title``**\ ( ``  `` )
Get the "title" property of this Result

**Returns:** <String>

String **``uri``**\ ( ``  `` )
Get the "uri" property of this Result

**Returns:** <String>

Dictonary **``value``**\ ( ``value `` )
Get the value of an attribute

**Parameters:**

-  ``value`` **<String>**

**Returns:** <Dictonary>

