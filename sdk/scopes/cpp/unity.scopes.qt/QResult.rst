.. _sdk_unity_scopes_qt_qresult:
unity.scopes.qt QResult
=======================

The attributes of a result returned by a
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`_ .
:ref:`More... <sdk_unity_scopes_qt_qresult#details>`

``#include <unity/scopes/qt/QResult.h>``

Inheritance diagram for unity::scopes::qt::QResult:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual 

:ref:`~QResult <sdk_unity_scopes_qt_qresult#ad1bc050f67237c601821cc5836c76b94>`
()

 

void 

:ref:`store <sdk_unity_scopes_qt_qresult#a56592ac2bbf7a752f9aa99ea26226cee>`
(:ref:`QResult <sdk_unity_scopes_qt_qresult>` const &other, bool
intercept\_activation=false)

 

| Stores a Result inside this Result instance.

 

bool 

:ref:`has\_stored\_result <sdk_unity_scopes_qt_qresult#affcb80d29930b57d8dc6aa268820d451>`
() const

 

| Check if this Result instance has a stored result.

 

:ref:`QResult <sdk_unity_scopes_qt_qresult>` 

:ref:`retrieve <sdk_unity_scopes_qt_qresult#a3827c6b06d202ca6079f08b666f2c0ea>`
() const

 

| Get a stored result.

 

        void 

:ref:`set\_uri <sdk_unity_scopes_qt_qresult#a1aa2ae9082f1e6507d18dc650f4d6d9d>`
(QString const
&\ :ref:`uri <sdk_unity_scopes_qt_qresult#a253c1f08aae4338a3f89e192538e99f8>`)

 

| Set the "uri" attribute of this result.

 

void 

:ref:`set\_title <sdk_unity_scopes_qt_qresult#a1f3defe1265de15c763a591b0da87cf0>`
(QString const
&\ :ref:`title <sdk_unity_scopes_qt_qresult#aafcb8c20516636cadb4be0e285ab20f6>`)

 

| Set the "title" attribute of this result.

 

void 

:ref:`set\_art <sdk_unity_scopes_qt_qresult#a1f4f912a02b84f077bc85879a72a90be>`
(QString const &image)

 

| Set the "art" attribute of this result.

 

void 

:ref:`set\_dnd\_uri <sdk_unity_scopes_qt_qresult#aa091842db377921d6b0dd388f823a245>`
(QString const
&\ :ref:`dnd\_uri <sdk_unity_scopes_qt_qresult#a3da993e25ee4a714fc5feedb29892d05>`)

 

| Set the "dnd\_uri" attribute of this result.

 

void 

:ref:`set\_intercept\_activation <sdk_unity_scopes_qt_qresult#a92fcf6ff2271c442c5190dab63ec4042>`
()

 

| Indicates to the receiver that this scope should intercept activation
  requests for this result.

 

bool 

:ref:`direct\_activation <sdk_unity_scopes_qt_qresult#aa905c2b7854efd8d8031cb80044ccb9f>`
() const

 

| Check if this result should be activated directly by the shell because
  the scope doesn't handle activation of this result.

 

:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>` 

:ref:`target\_scope\_proxy <sdk_unity_scopes_qt_qresult#a273100ac7b782044294250f939e3dba0>`
() const

 

| Get the proxy of a scope that handles activation and preview of this
  result.

 

QVariant & 

:ref:`operator[] <sdk_unity_scopes_qt_qresult#a3b939c0d073ad78286e3cb8b8525ba2a>`
(QString const &key)

 

| Returns reference of a Result attribute.

 

QVariant const & 

:ref:`operator[] <sdk_unity_scopes_qt_qresult#a205f7595cf44c96b610cc7813b126db2>`
(QString const &key) const

 

| Returns a const reference to a Result attribute.

 

QString 

:ref:`uri <sdk_unity_scopes_qt_qresult#a253c1f08aae4338a3f89e192538e99f8>`
() const noexcept

 

| Get the "uri" property of this Result.

 

QString 

:ref:`title <sdk_unity_scopes_qt_qresult#aafcb8c20516636cadb4be0e285ab20f6>`
() const noexcept

 

| Get the "title" property of this Result.

 

QString 

:ref:`art <sdk_unity_scopes_qt_qresult#ada4ef189c8a95ceb96bcf777dc312b24>`
() const noexcept

 

| Get the "art" property of this Result.

 

QString 

:ref:`dnd\_uri <sdk_unity_scopes_qt_qresult#a3da993e25ee4a714fc5feedb29892d05>`
() const noexcept

 

| Get the "dnd\_uri" property of this Result.

 

bool 

:ref:`contains <sdk_unity_scopes_qt_qresult#adde088969220153fde8dca7a4c4d117a>`
(QString const &key) const

 

| Check if this Result has an attribute.

 

QVariant const & 

:ref:`value <sdk_unity_scopes_qt_qresult#a7ed3240ad58f23d88e9de63e15062598>`
(QString const &key) const

 

| Get the value of an attribute.

 

QVariantMap 

:ref:`serialize <sdk_unity_scopes_qt_qresult#a9188d2a2e431c71d85b142539f654e44>`
() const

 

| Returns a dictionary of all attributes of this Result instance.

 

Copy and assignment

Copy and assignment (move and non-move versions) have the usual value
semantics.

         

**QResult** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` const &other)

 

         

**QResult** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` &&)

 

:ref:` <>` `QResult <sdk_unity_scopes_qt_qresult>` & 

**operator=** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` const &other)

 

:ref:` <>` `QResult <sdk_unity_scopes_qt_qresult>` & 

**operator=** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` &&)

 

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
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

This method returns an empty string if this attribute is not of type
Variant::Type::String (e.g. it was set with operator[]).

Returns
    The value of "art" or the empty string.

+---------------------------------------------+-----+--------------------+---------+-----+---------+
| bool unity::scopes::qt::QResult::contains   | (   | QString const &    | *key*   | )   | const   |
+---------------------------------------------+-----+--------------------+---------+-----+---------+

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
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

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

Check if this `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance
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

+----------------------------------------------------------+-----+--------------------+---------+-----+---------+
| QVariant const& unity::scopes::qt::QResult::operator[]   | (   | QString const &    | *key*   | )   | const   |
+----------------------------------------------------------+-----+--------------------+---------+-----+---------+

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
| :ref:`QResult <sdk_ | (              |                | )              | const          |
| unity_scopes_q |                |                |                |                |
| t_qresult>`_   |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QResult:: |                |                |                |                |
| retrieve       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a stored result.

Returns
    stored result

Exceptions
    +-----------------------------------+-----------------------------------------------------------------------------------------------+
    | unity::InvalidArgumentException   | if no result was stored in this `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance.   |
    +-----------------------------------+-----------------------------------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| QVariantMap    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QResult:: |                |                |                |                |
| serialize      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a dictionary of all attributes of this
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance.

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
:ref:`set\_intercept\_activation() <sdk_unity_scopes_qt_qresult#a92fcf6ff2271c442c5190dab63ec4042>`
on these scopes. A scope that sets intercept activation flag for a
result should re-implement
`ScopeBase::activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
and provide an implementation of
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
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
| void               | (                  | :ref:`QResult <sdk_unit | *other*,           |
| unity::scopes::qt: |                    | y_scopes_qt_qresul |                    |
| :QResult::store    |                    | t>`_               |                    |
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
| :qt::QResult:: |                |                |                |                |
| target\_scope\ |                |                |                |                |
| _proxy         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the proxy of a scope that handles activation and preview of this
result.

The proxy is available only when receiving this result from a scope,
otherwise this method throws LogicException. Activation requests should
be sent to a scope returned by this method only if
:ref:`direct\_activation() <sdk_unity_scopes_qt_qresult#aa905c2b7854efd8d8031cb80044ccb9f>`
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
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

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
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ .

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

.. |Inheritance graph| image:: /mediasdk_unity_scopes_qt_qresultclassunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png

