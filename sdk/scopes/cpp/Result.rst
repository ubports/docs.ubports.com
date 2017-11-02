.. _sdk_result:
Result
======

The attributes of a result returned by a
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`_ .
`More... </sdk/scopes/cpp/unity.scopes.Result/#details>`_ 

``#include <unity/scopes/Result.h>``

Inheritance diagram for unity::scopes::Result:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual 

`~Result </sdk/scopes/cpp/unity.scopes.Result/#af50d9e95694cc46f4c76369e97aec927>`_ 
()

 

void 

`store </sdk/scopes/cpp/unity.scopes.Result/#a744776333a9748ba41dace7c6943ca4d>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const &other, bool
intercept\_activation=false)

 

| Stores a Result inside this Result instance.

 

bool 

`has\_stored\_result </sdk/scopes/cpp/unity.scopes.Result/#a8213bb7b0aedae09af8d621e1a7e136b>`_ 
() const

 

| Check if this Result instance has a stored result.

 

`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  

`retrieve </sdk/scopes/cpp/unity.scopes.Result/#a99b158932252c709cb2d4861db566a0a>`_ 
() const

 

| Get a stored result.

 

        void 

`set\_uri </sdk/scopes/cpp/unity.scopes.Result/#ad69c1e88a1245c4c1f13fcba333c8d7e>`_ 
(std::string const
&\ `uri </sdk/scopes/cpp/unity.scopes.Result/#a5642d5984ba110c3b7d268cc2668f413>`_ )

 

| Set the "uri" attribute of this result.

 

void 

`set\_title </sdk/scopes/cpp/unity.scopes.Result/#adf8cf3d863babb02107fb5ef35acc925>`_ 
(std::string const
&\ `title </sdk/scopes/cpp/unity.scopes.Result/#a318887472ccc1034a64a3ec1d3b0d7d6>`_ )

 

| Set the "title" attribute of this result.

 

void 

`set\_art </sdk/scopes/cpp/unity.scopes.Result/#a3f2e512b10dbf2ed867d260ec33a89a1>`_ 
(std::string const &image)

 

| Set the "art" attribute of this result.

 

void 

`set\_dnd\_uri </sdk/scopes/cpp/unity.scopes.Result/#aaea2d65663a8553b90a87b5b92c47f8f>`_ 
(std::string const
&\ `dnd\_uri </sdk/scopes/cpp/unity.scopes.Result/#af98171266eeac7360f1c1ef7b0f58958>`_ )

 

| Set the "dnd\_uri" attribute of this result.

 

void 

`set\_intercept\_activation </sdk/scopes/cpp/unity.scopes.Result/#a5a132eb82702829e2fd026e088e4aa08>`_ 
()

 

| Indicates to the receiver that this scope should intercept activation
  requests for this result.

 

bool 

`direct\_activation </sdk/scopes/cpp/unity.scopes.Result/#ac3e57ec9bf9a3bc5a517f91ff9605f6b>`_ 
() const

 

| Check if this result should be activated directly by the shell because
  the scope doesn't handle activation of this result.

 

:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>` 

`target\_scope\_proxy </sdk/scopes/cpp/unity.scopes.Result/#a1a91e1cbb08e91366e92b7bcd76861d2>`_ 
() const

 

| Get the proxy of a scope that handles activation and preview of this
  result.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

`operator[] </sdk/scopes/cpp/unity.scopes.Result/#a157ebfcc5c28649af2761ef58f68de76>`_ 
(std::string const &key)

 

| Returns reference of a Result attribute.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const & 

`operator[] </sdk/scopes/cpp/unity.scopes.Result/#a4e0664aba7b2613883a24f98450b71c0>`_ 
(std::string const &key) const

 

| Returns a const reference to a Result attribute.

 

std::string 

`uri </sdk/scopes/cpp/unity.scopes.Result/#a5642d5984ba110c3b7d268cc2668f413>`_ 
() const noexcept

 

| Get the "uri" property of this Result.

 

std::string 

`title </sdk/scopes/cpp/unity.scopes.Result/#a318887472ccc1034a64a3ec1d3b0d7d6>`_ 
() const noexcept

 

| Get the "title" property of this Result.

 

std::string 

`art </sdk/scopes/cpp/unity.scopes.Result/#aeaeafd3fd83172104e501474191a6e4d>`_ 
() const noexcept

 

| Get the "art" property of this Result.

 

std::string 

`dnd\_uri </sdk/scopes/cpp/unity.scopes.Result/#af98171266eeac7360f1c1ef7b0f58958>`_ 
() const noexcept

 

| Get the "dnd\_uri" property of this Result.

 

bool 

`contains </sdk/scopes/cpp/unity.scopes.Result/#a442b87e28f762addb0d81ccd03a11532>`_ 
(std::string const &key) const

 

| Check if this Result has an attribute.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const & 

`value </sdk/scopes/cpp/unity.scopes.Result/#a490b5b5da2c3d7b122cfadae25cde3af>`_ 
(std::string const &key) const

 

| Get the value of an attribute.

 

:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

`serialize </sdk/scopes/cpp/unity.scopes.Result/#acd3c05fe73b442facc1cb8d0fc0ffce2>`_ 
() const

 

| Returns a dictionary of all attributes of this Result instance.

 

bool 

`is\_account\_login\_result </sdk/scopes/cpp/unity.scopes.Result/#a454b78b004b954575c159deda871dd97>`_ 
() const

 

| Check if this result is an online account login result.

 

bool 

`operator== </sdk/scopes/cpp/unity.scopes.Result/#aa60fe8b5e2b5959b5f6f3883e5f2facf>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const &other) const

 

| Compare result.

 

Copy and assignment

Copy and assignment (move and non-move versions) have the usual value
semantics.

         

**Result** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const
&other)

 

         

**Result** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  &&)

 

        `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  & 

**operator=** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const
&other)

 

        `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  & 

**operator=** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  &&)

 

Detailed Description
--------------------

The attributes of a result returned by a
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`_ .

The `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  API provides
convenience methods for some typical attributes (title, art), but scopes
are free to add and use any custom attributes with ``operator[]``. The
only required attribute is 'uri' and it must not be empty before calling
Reply::push().

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Result::~Resu |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | lt             |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Destructor.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Result::art   |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "art" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

This method returns an empty string if this attribute is not of type
Variant::Type::String (e.g. it was set with operator[]).

Returns
    The value of "art" or the empty string.

+----------------------------------------+-----+------------------------+---------+-----+---------+
| bool unity::scopes::Result::contains   | (   | std::string const &    | *key*   | )   | const   |
+----------------------------------------+-----+------------------------+---------+-----+---------+

Check if this `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  has an
attribute.

Parameters
    +-------+-----------------------+
    | key   | The attribute name.   |
    +-------+-----------------------+

Returns
    True if the attribute is set.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Result::direc |                |                |                |                |
| t\_activation  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this result should be activated directly by the shell because
the scope doesn't handle activation of this result.

Returns
    True if this result needs to be activated directly.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Result::dnd\_ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | uri            |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "dnd\_uri" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

This method returns an empty string if this attribute is not of type
Variant::Type::String type (e.g. it was set with operator[]).

Returns
    The value of "dnd\_uri" or the empty string.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Result::has\_ |                |                |                |                |
| stored\_result |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance
has a stored result.

Returns
    True if there is a stored result

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Result::is\_a |                |                |                |                |
| ccount\_login\ |                |                |                |                |
| _result        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this result is an online account login result.

Returns
    True if this result is an online account login result.

+------------------------------------------+-----+--------------------------------------------------------------+-----------+-----+---------+
| bool unity::scopes::Result::operator==   | (   | `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const &    | *other*   | )   | const   |
+------------------------------------------+-----+--------------------------------------------------------------+-----------+-----+---------+

Compare result.

Returns
    True if results have all attributes equal.

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Variant </s | (            | std::string  | *key*        | )            |              |
| dk/scopes/cp |              | const &      |              |              |              |
| p/unity.scop |              |              |              |              |              |
| es.Variant/> |              |              |              |              |              |
| `_ \ &       |              |              |              |              |              |
| unity::scope |              |              |              |              |              |
| s::Result::o |              |              |              |              |              |
| perator[]    |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Returns reference of a `Result </sdk/scopes/cpp/unity.scopes.Result/>`_ 
attribute.

This method can be used to read or initialize both standard ("uri",
"title", "art", "dnd\_uri") and custom metadata attributes. Referencing
a non-existing attribute automatically creates it with a default value
of Variant::Type::Null.

Parameters
    +-------+------------------------------+
    | key   | The name of the attribute.   |
    +-------+------------------------------+

Returns
    A reference to the attribute.

Exceptions
    +--------------------------+-----------------------------------------------+
    | unity::Invalidargument   | if no attribute with the given name exists.   |
    +--------------------------+-----------------------------------------------+

+------------------------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+
| `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const& unity::scopes::Result::operator[]   | (   | std::string const &    | *key*   | )   | const   |
+------------------------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+

Returns a const reference to a
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  attribute.

This method can be used for read-only access to both standard ("uri",
"title", "art", "dnd\_uri") and custom metadata attributes. Referencing
a non-existing attribute throws unity::InvalidArgumentException.

Parameters
    +-------+------------------------------+
    | key   | The name of the attribute.   |
    +-------+------------------------------+

Returns
    A const reference to the attribute.

Exceptions
    +--------------------------+-----------------------------------------------+
    | unity::Invalidargument   | if no attribute with the given name exists.   |
    +--------------------------+-----------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `Result </sdk/ | (              |                | )              | const          |
| scopes/cpp/uni |                |                |                |                |
| ty.scopes.Resu |                |                |                |                |
| lt/>`_         |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Result::retri |                |                |                |                |
| eve            |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a stored result.

Returns
    stored result

Exceptions
    +-----------------------------------+-----------------------------------------------------------------------------------------------+
    | unity::InvalidArgumentException   | if no result was stored in this `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance.   |
    +-----------------------------------+-----------------------------------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#ad5d8ccfa11a |                |                |                |                |
| 327fca6f3e4cee |                |                |                |                |
| 11f4c10>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Result::seria |                |                |                |                |
| lize           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a dictionary of all attributes of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance.

Returns
    All base attributes and custom attributes set with add\_metadata().

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *image*      | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::Result::s |              |              |              |              |              |
| et\_art      |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the "art" attribute of this result.

Equivalent to calling ``result["art"] = image;``

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *dnd\_uri*   | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::Result::s |              |              |              |              |              |
| et\_dnd\_uri |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the "dnd\_uri" attribute of this result.

Equivalent to calling ``result["dnd_uri"] = dnd_uri;``

+----------------+----------------+----------------+----------------+----------------+
| void           | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :Result::set\_ |                |                |                |                |
| intercept\_act |                |                |                |                |
| ivation        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Indicates to the receiver that this scope should intercept activation
requests for this result.

By default, a scope receives preview requests for the results it
creates, but does not receive activation requests (they are handled
directly by the shell). Intercepting activation implies intercepting
preview requests as well; this is important for scopes that forward
results from other scopes and call
`set\_intercept\_activation() </sdk/scopes/cpp/unity.scopes.Result/#a5a132eb82702829e2fd026e088e4aa08>`_ 
on these scopes. A scope that sets intercept activation flag for a
result should re-implement
`ScopeBase::activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
and provide an implementation of
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
that handles the actual activation. If not called, the result will be
activated directly by the Unity shell whithout involving the scope,
assuming an appropriate URI schema handler is present on the system.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *title*      | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::Result::s |              |              |              |              |              |
| et\_title    |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the "title" attribute of this result.

Equivalent to calling ``result["title"] = title;``

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `Result </sdk/scop | *other*,           |
| unity::scopes::Res |                    | es/cpp/unity.scope |                    |
| ult::store         |                    | s.Result/>`_       |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | bool               | *intercept\_activa |
|                    |                    |                    | tion*              |
|                    |                    |                    | = ``false``        |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Stores a `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  inside this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance.

This method is meant to be used by aggregator scopes which want to
modify results they receive, but want to keep a copy of the original
result so that they can be correctly handled by the original scopes who
created them when it comes to activation or previews. Scopes middleware
will automatically pass the correct inner stored result to the
activation or preview request handler of a scope which created it.

Parameters
    +-------------------------+----------------------------------------------------------------------+
    | other                   | The original result to store within this result.                     |
    +-------------------------+----------------------------------------------------------------------+
    | intercept\_activation   | True if this scope should receive activation and preview requests.   |
    +-------------------------+----------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `ScopeProxy <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#a94db15da410 |                |                |                |                |
| f8419e4da711db |                |                |                |                |
| 842aaae>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Result::targe |                |                |                |                |
| t\_scope\_prox |                |                |                |                |
| y              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the proxy of a scope that handles activation and preview of this
result.

The proxy is available only when receiving this result from a scope,
otherwise this method throws LogicException. Activation requests should
be sent to a scope returned by this method only if
`direct\_activation() </sdk/scopes/cpp/unity.scopes.Result/#ac3e57ec9bf9a3bc5a517f91ff9605f6b>`_ 
is false.

Returns
    The scope proxy.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Result::title |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "title" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

This method returns an empty string if this attribute is not of type
Variant::Type::String (e.g. it was set with operator[]).

Returns
    The value of "title" or the empty string.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Result::uri   |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "uri" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

This method returns an empty string if this attribute is not of type
Variant::Type::String (e.g. it was set with operator[]).

Returns
    The value of "uri" or the empty string.

+-------------------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+
| `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const& unity::scopes::Result::value   | (   | std::string const &    | *key*   | )   | const   |
+-------------------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+

Get the value of an attribute.

Note: if int64\_t value has been stored in the
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  but it doesn't exceed
maxium range of 32 bit integer and if results come from the cache (see
`SearchReply::push\_surfacing\_results\_from\_cache() </sdk/scopes/cpp/unity.scopes.SearchReply/#a4ba805136164b11bb358917070cde24d>`_ ),
then the value may be made available as 32 bit int; therefore the code
should always check the type of returned
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  and depending on
that use Variant::get\_int() or Variant::get\_int\_64\_t() when dealing
with 64-bit integers. This is not needed when using 32 bit integers
only.

Parameters
    +-------+-----------------------+
    | key   | The attribute name.   |
    +-------+-----------------------+

Returns
    The attribute value.

Exceptions
    +-----------------------------------+---------------------------------------+
    | unity::InvalidArgumentException   | if given attribute hasn't been set.   |
    +-----------------------------------+---------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.Result/classunity_1_1scopes_1_1_result__inherit__graph.png

