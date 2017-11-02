.. _sdk_scopejs_categorisedresult:
ScopeJS CategorisedResult
=========================


A result, including the category it belongs to.

-  Methods

String **``art``**\ ( ``  `` )
Get the "art" property of this Result. This method returns an empty
string if this attribute is not of type String.

**Returns:** <String>
The value of "art" or the empty string.

:ref:`Category <sdk_scopejs_category>` **``category``**\ ( ``  `` )
Get the category instance this result belongs to.

**Returns:** <:ref:`Category <sdk_scopejs_category>`>
The category instance.

Boolean **``contains``**\ ( ``key `` )
Check if this Result has an attribute.

**Parameters:**

-  ``key`` **<Object>**

   The attribute name.

**Returns:** <Boolean>
True if the attribute is set.

Boolean **``direct_activation``**\ ( ``  `` )
Check if this result should be activated directly by the shell because
the scope doesn't handle activation of this result.

**Returns:** <Boolean>
True if this result needs to be activated directly.

String **``dnd_uri``**\ ( ``  `` )
Get the "dnd\_uri" property of this Result. This method returns an empty
string if this attribute is not of type String.

**Returns:** <String>
The value of "dnd\_uri" or the empty string.

**``get``**\ ( ``key `` )
Gets the value of a custom metadata attribute.

**Parameters:**

-  ``key`` **<String>**

   The name of the attribute.

**Returns:**
Attribute value or null

Boolean **``has_stored_result``**\ ( ``  `` )
Check if this Result instance has a stored result.

**Returns:** <Boolean>
True if there is a stored result

Boolean **``is_account_login_result``**\ ( ``  `` )
Check if this result is an online account login result.

**Returns:** <Boolean>
True if this result is an online account login result.

:ref:`Result <sdk_scopejs_result>` **``retrieve``**\ ( ``  `` )
Get a stored result.

**Returns:** <:ref:`Result <sdk_scopejs_result>`>
stored result

**``set``**\ ( ``key, value `` )
Sets the value of a custom metadata attribute.

**Parameters:**

-  ``key`` **<String>**

   The name of the attribute.

-  ``value`` **<Object>**

   The value of the attribute.

**``set_art``**\ ( ``art `` )
Set the "art" attribute of this result.

**Parameters:**

-  ``art`` **<String>**

**``set_category``**\ ( ``category `` )
Updates the category of this result.

**Parameters:**

-  ``category`` **<Object>**

   The category for the result.

**``set_dnd_uri``**\ ( ``dnd_uri `` )
Set the "dnd\_uri" attribute of this result.

**Parameters:**

-  ``dnd_uri`` **<String>**

**``set_intercept_activation``**\ ( ``  `` )
Indicates to the receiver that this scope should intercept activation
requests for this result. By default, a scope receives preview requests
for the results it creates, but does not receive activation requests
(they are handled directly by the shell). Intercepting activation
implies intercepting preview requests as well; this is important for
scopes that forward results from other scopes and call
set\_intercept\_activation() on these scopes. A scope that sets
intercept activation flag for a result should re-implement
Scope.activate() and provide an implementation of ActivationQuery that
handles the actual activation. If not called, the result will be
activated directly by the Unity shell whithout involving the scope,
assuming an appropriate URI schema handler is present on the system.

**``set_title``**\ ( ``title `` )
Set the "title" attribute of this result.

**Parameters:**

-  ``title`` **<String>**

**``set_uri``**\ ( ``uri `` )
Set the "uri" attribute of this result.

**Parameters:**

-  ``uri`` **<String>**

**``store``**\ ( ``The, intercept_activation `` )
This method is meant to be used by aggregator scopes which want to
modify results they receive, but want to keep a copy of the original
result so that they can be correctly handled by the original scopes who
created them when it comes to activation or previews. Scopes middleware
will automatically pass the correct inner stored result to the
activation or preview request handler

**Parameters:**

-  :ref:``The`` **<`Result <sdk_scopejs_result>`>**

   original result to store within this result.

-  ``intercept_activation`` **<Boolean>**

   True if this scope should receive activation and preview requests.

String **``title``**\ ( ``  `` )
Get the "title" property of this Result. This method returns an empty
string if this attribute is not of type String.

**Returns:** <String>
The value of "title" or the empty string.

String **``uri``**\ ( ``  `` )
Get the "uri" property of this Result. This method returns an empty
string if this attribute is not of type String.

**Returns:** <String>
The value of "uri" or the empty string.

