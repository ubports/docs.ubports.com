A result, including the category it belongs to.
`More... </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult#details>`__

``#include <unity/scopes/qt/QCategorisedResult.h>``

Inheritance diagram for unity::scopes::qt::QCategorisedResult:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult#aaa0d31b18c65dff255c13ff014d11b7d>`__
(QCategory::SCPtr
`category </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult#a8516116413e83bdedb978c71f803f118>`__)

 

| Creates a CategorisedResult with given category, with all base
  attributes initially empty.

 

void 

`set\_category </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult#ab24057bbd0ee446a40cb0b9d38ef696d>`__
(QCategory::SCPtr
`category </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult#a8516116413e83bdedb978c71f803f118>`__)

 

| Updates the category of this result.

 

QCategory::SCPtr 

`category </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult#a8516116413e83bdedb978c71f803f118>`__
() const

 

| Return category of this result. Get the category instance this result
  belongs to.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QCategorisedResult**
(`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/>`__
const &other)

 

`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/>`__
& 

**operator=**
(`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/>`__
const &other)

 

         

**QCategorisedResult**
(`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/>`__
&&)

 

`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/>`__
& 

**operator=**
(`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/>`__
&&)

 

|-| Public Member Functions inherited from
`unity::scopes::qt::QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__

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

A result, including the category it belongs to.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | QCat |                                      |
| egory::S | *category*   | )          |                                      |
|    |              |                  |                                      |
| | s::qt::QCate |              | CPtr |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | gorisedResul |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | t::QCategori |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | sedResult    |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Creates a
`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
with given category, with all base attributes initially empty.

Parameters
    +------------+--------------------------------+
    | category   | The category for the result.   |
    +------------+--------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QCategory::SCP | (              |                | )              | const          |
| tr             |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QCategori |                |                |                |                |
| sedResult::cat |                |                |                |                |
| egory          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return category of this result. Get the category instance this result
belongs to.

Returns
    The category instance.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QCategory::S | *category*   | )            |              |
| unity::scope |              | CPtr         |              |              |              |
| s::qt::QCate |              |              |              |              |              |
| gorisedResul |              |              |              |              |              |
| t::set\_cate |              |              |              |              |              |
| gory         |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Updates the category of this result.

Parameters
    +------------+--------------------------------+
    | category   | The category for the result.   |
    +------------+--------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/closed.png

