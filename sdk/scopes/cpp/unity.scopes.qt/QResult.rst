The attributes of a result returned by a
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`__.
`More... </sdk/scopes/cpp/unity.scopes.qt/QResult#details>`__

``#include <unity/scopes/qt/QResult.h>``

Inheritance diagram for unity::scopes::qt::QResult:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual 

`~QResult </sdk/scopes/cpp/unity.scopes.qt/QResult#ad1bc050f67237c601821cc5836c76b94>`__
()

 

void 

`store </sdk/scopes/cpp/unity.scopes.qt/QResult#a56592ac2bbf7a752f9aa99ea26226cee>`__
(`QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__ const &other,
bool intercept\_activation=false)

 

| Stores a Result inside this Result instance.

 

bool 

`has\_stored\_result </sdk/scopes/cpp/unity.scopes.qt/QResult#affcb80d29930b57d8dc6aa268820d451>`__
() const

 

| Check if this Result instance has a stored result.

 

`QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__ 

`retrieve </sdk/scopes/cpp/unity.scopes.qt/QResult#a3827c6b06d202ca6079f08b666f2c0ea>`__
() const

 

| Get a stored result.

 

        void 

`set\_uri </sdk/scopes/cpp/unity.scopes.qt/QResult#a1aa2ae9082f1e6507d18dc650f4d6d9d>`__
(QString const
&\ `uri </sdk/scopes/cpp/unity.scopes.qt/QResult#a253c1f08aae4338a3f89e192538e99f8>`__)

 

| Set the "uri" attribute of this result.

 

void 

`set\_title </sdk/scopes/cpp/unity.scopes.qt/QResult#a1f3defe1265de15c763a591b0da87cf0>`__
(QString const
&\ `title </sdk/scopes/cpp/unity.scopes.qt/QResult#aafcb8c20516636cadb4be0e285ab20f6>`__)

 

| Set the "title" attribute of this result.

 

void 

`set\_art </sdk/scopes/cpp/unity.scopes.qt/QResult#a1f4f912a02b84f077bc85879a72a90be>`__
(QString const &image)

 

| Set the "art" attribute of this result.

 

void 

`set\_dnd\_uri </sdk/scopes/cpp/unity.scopes.qt/QResult#aa091842db377921d6b0dd388f823a245>`__
(QString const
&\ `dnd\_uri </sdk/scopes/cpp/unity.scopes.qt/QResult#a3da993e25ee4a714fc5feedb29892d05>`__)

 

| Set the "dnd\_uri" attribute of this result.

 

void 

`set\_intercept\_activation </sdk/scopes/cpp/unity.scopes.qt/QResult#a92fcf6ff2271c442c5190dab63ec4042>`__
()

 

| Indicates to the receiver that this scope should intercept activation
  requests for this result.

 

bool 

`direct\_activation </sdk/scopes/cpp/unity.scopes.qt/QResult#aa905c2b7854efd8d8031cb80044ccb9f>`__
() const

 

| Check if this result should be activated directly by the shell because
  the scope doesn't handle activation of this result.

 

`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__ 

`target\_scope\_proxy </sdk/scopes/cpp/unity.scopes.qt/QResult#a273100ac7b782044294250f939e3dba0>`__
() const

 

| Get the proxy of a scope that handles activation and preview of this
  result.

 

QVariant & 

`operator[] </sdk/scopes/cpp/unity.scopes.qt/QResult#a3b939c0d073ad78286e3cb8b8525ba2a>`__
(QString const &key)

 

| Returns reference of a Result attribute.

 

QVariant const & 

`operator[] </sdk/scopes/cpp/unity.scopes.qt/QResult#a205f7595cf44c96b610cc7813b126db2>`__
(QString const &key) const

 

| Returns a const reference to a Result attribute.

 

QString 

`uri </sdk/scopes/cpp/unity.scopes.qt/QResult#a253c1f08aae4338a3f89e192538e99f8>`__
() const noexcept

 

| Get the "uri" property of this Result.

 

QString 

`title </sdk/scopes/cpp/unity.scopes.qt/QResult#aafcb8c20516636cadb4be0e285ab20f6>`__
() const noexcept

 

| Get the "title" property of this Result.

 

QString 

`art </sdk/scopes/cpp/unity.scopes.qt/QResult#ada4ef189c8a95ceb96bcf777dc312b24>`__
() const noexcept

 

| Get the "art" property of this Result.

 

QString 

`dnd\_uri </sdk/scopes/cpp/unity.scopes.qt/QResult#a3da993e25ee4a714fc5feedb29892d05>`__
() const noexcept

 

| Get the "dnd\_uri" property of this Result.

 

bool 

`contains </sdk/scopes/cpp/unity.scopes.qt/QResult#adde088969220153fde8dca7a4c4d117a>`__
(QString const &key) const

 

| Check if this Result has an attribute.

 

QVariant const & 

`value </sdk/scopes/cpp/unity.scopes.qt/QResult#a7ed3240ad58f23d88e9de63e15062598>`__
(QString const &key) const

 

| Get the value of an attribute.

 

QVariantMap 

`serialize </sdk/scopes/cpp/unity.scopes.qt/QResult#a9188d2a2e431c71d85b142539f654e44>`__
() const

 

| Returns a dictionary of all attributes of this Result instance.

 

Copy and assignment

Copy and assignment (move and non-move versions) have the usual value
semantics.

         

**QResult** (`QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__
const &other)

 

         

**QResult** (`QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__ &&)

 

        `QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__ & 

**operator=** (`QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__
const &other)

 

        `QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__ & 

**operator=** (`QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__
&&)

 

Detailed Description
--------------------

The attributes of a result returned by a
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`__.

The `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ API provides
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
| | :qt::QResult:: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ~QResult       |                |  |                                      |
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
| | QString        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :qt::QResult:: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | art            |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "art" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`__.

This method returns an empty string if this attribute is not of type
Variant::Type::String (e.g. it was set with operator[]).

Returns
    The value of "art" or the empty string.

+---------------------------------------------+-----+--------------------+---------+-----+---------+
| bool unity::scopes::qt::QResult::contains   | (   | QString const &    | *key*   | )   | const   |
+---------------------------------------------+-----+--------------------+---------+-----+---------+

Check if this `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ has an
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
| :qt::QResult:: |                |                |                |                |
| direct\_activa |                |                |                |                |
| tion           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this result should be activated directly by the shell because
the scope doesn't handle activation of this result.

Returns
    True if this result needs to be activated directly.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | QString        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :qt::QResult:: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | dnd\_uri       |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "dnd\_uri" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`__.

This method returns an empty string if this attribute is not of type
Variant::Type::String type (e.g. it was set with operator[]).

Returns
    The value of "dnd\_uri" or the empty string.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QResult:: |                |                |                |                |
| has\_stored\_r |                |                |                |                |
| esult          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ instance
has a stored result.

Returns
    True if there is a stored result

+--------------+--------------+--------------+--------------+--------------+--------------+
| QVariant&    | (            | QString      | *key*        | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::qt::QResu |              |              |              |              |              |
| lt::operator |              |              |              |              |              |
| []           |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Returns reference of a `Result </sdk/scopes/cpp/unity.scopes.Result/>`__
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

+----------------------------------------------------------+-----+--------------------+---------+-----+---------+
| QVariant const& unity::scopes::qt::QResult::operator[]   | (   | QString const &    | *key*   | )   | const   |
+----------------------------------------------------------+-----+--------------------+---------+-----+---------+

Returns a const reference to a
`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ attribute.

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
| `QResult </sdk | (              |                | )              | const          |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.qt/ |                |                |                |                |
| QResult/>`__   |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QResult:: |                |                |                |                |
| retrieve       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a stored result.

Returns
    stored result

Exceptions
    +-----------------------------------+-----------------------------------------------------------------------------------------------+
    | unity::InvalidArgumentException   | if no result was stored in this `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ instance.   |
    +-----------------------------------+-----------------------------------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| QVariantMap    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QResult:: |                |                |                |                |
| serialize      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a dictionary of all attributes of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ instance.

Returns
    All base attributes and custom attributes set with add\_metadata().

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QString      | *image*      | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::qt::QResu |              |              |              |              |              |
| lt::set\_art |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the "art" attribute of this result.

Equivalent to calling ``result["art"] = image;``

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QString      | *dnd\_uri*   | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::qt::QResu |              |              |              |              |              |
| lt::set\_dnd |              |              |              |              |              |
| \_uri        |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the "dnd\_uri" attribute of this result.

Equivalent to calling ``result["dnd_uri"] = dnd_uri;``

+----------------+----------------+----------------+----------------+----------------+
| void           | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :qt::QResult:: |                |                |                |                |
| set\_intercept |                |                |                |                |
| \_activation   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Indicates to the receiver that this scope should intercept activation
requests for this result.

By default, a scope receives preview requests for the results it
creates, but does not receive activation requests (they are handled
directly by the shell). Intercepting activation implies intercepting
preview requests as well; this is important for scopes that forward
results from other scopes and call
`set\_intercept\_activation() </sdk/scopes/cpp/unity.scopes.qt/QResult#a92fcf6ff2271c442c5190dab63ec4042>`__
on these scopes. A scope that sets intercept activation flag for a
result should re-implement
`ScopeBase::activate() </sdk/scopes/cpp/unity.scopes.ScopeBase#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`__
and provide an implementation of
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`__
that handles the actual activation. If not called, the result will be
activated directly by the Unity shell whithout involving the scope,
assuming an appropriate URI schema handler is present on the system.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QString      | *title*      | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::qt::QResu |              |              |              |              |              |
| lt::set\_tit |              |              |              |              |              |
| le           |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the "title" attribute of this result.

Equivalent to calling ``result["title"] = title;``

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `QResult </sdk/sco | *other*,           |
| unity::scopes::qt: |                    | pes/cpp/unity.scop |                    |
| :QResult::store    |                    | es.qt/QResult/>`__ |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | bool               | *intercept\_activa |
|                    |                    |                    | tion*              |
|                    |                    |                    | = ``false``        |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Stores a `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ inside this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ instance.

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
| `ScopeProxy </ | (              |                | )              | const          |
| sdk/scopes/cpp |                |                |                |                |
| /unity.scopes# |                |                |                |                |
| a94db15da410f8 |                |                |                |                |
| 419e4da711db84 |                |                |                |                |
| 2aaae>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QResult:: |                |                |                |                |
| target\_scope\ |                |                |                |                |
| _proxy         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the proxy of a scope that handles activation and preview of this
result.

The proxy is available only when receiving this result from a scope,
otherwise this method throws LogicException. Activation requests should
be sent to a scope returned by this method only if
`direct\_activation() </sdk/scopes/cpp/unity.scopes.qt/QResult#aa905c2b7854efd8d8031cb80044ccb9f>`__
is false.

Returns
    The scope proxy.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | QString        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :qt::QResult:: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | title          |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "title" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`__.

This method returns an empty string if this attribute is not of type
Variant::Type::String (e.g. it was set with operator[]).

Returns
    The value of "title" or the empty string.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | QString        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :qt::QResult:: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | uri            |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the "uri" property of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`__.

This method returns an empty string if this attribute is not of type
Variant::Type::String (e.g. it was set with operator[]).

Returns
    The value of "uri" or the empty string.

+-----------------------------------------------------+-----+--------------------+---------+-----+---------+
| QVariant const& unity::scopes::qt::QResult::value   | (   | QString const &    | *key*   | )   | const   |
+-----------------------------------------------------+-----+--------------------+---------+-----+---------+

Get the value of an attribute.

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

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QResult/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png

