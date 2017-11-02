.. _sdk_unity_scopes_qt_qcategorisedresult:
unity.scopes.qt QCategorisedResult
==================================

A result, including the category it belongs to.
:ref:`More... <sdk_unity_scopes_qt_qcategorisedresult#details>`

``#include <unity/scopes/qt/QCategorisedResult.h>``

Inheritance diagram for unity::scopes::qt::QCategorisedResult:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

:ref:`QCategorisedResult <sdk_unity_scopes_qt_qcategorisedresult#aaa0d31b18c65dff255c13ff014d11b7d>`
(QCategory::SCPtr
:ref:`category <sdk_unity_scopes_qt_qcategorisedresult#a8516116413e83bdedb978c71f803f118>`)

 

| Creates a CategorisedResult with given category, with all base
  attributes initially empty.

 

void 

:ref:`set\_category <sdk_unity_scopes_qt_qcategorisedresult#ab24057bbd0ee446a40cb0b9d38ef696d>`
(QCategory::SCPtr
:ref:`category <sdk_unity_scopes_qt_qcategorisedresult#a8516116413e83bdedb978c71f803f118>`)

 

| Updates the category of this result.

 

QCategory::SCPtr 

:ref:`category <sdk_unity_scopes_qt_qcategorisedresult#a8516116413e83bdedb978c71f803f118>`
() const

 

| Return category of this result. Get the category instance this result
  belongs to.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QCategorisedResult**
(:ref:`QCategorisedResult <sdk_unity_scopes_qt_qcategorisedresult>` const
&other)

 

:ref:` <>` `QCategorisedResult <sdk_unity_scopes_qt_qcategorisedresult>`
& 

**operator=**
(:ref:`QCategorisedResult <sdk_unity_scopes_qt_qcategorisedresult>` const
&other)

 

         

**QCategorisedResult**
(:ref:`QCategorisedResult <sdk_unity_scopes_qt_qcategorisedresult>` &&)

 

:ref:` <>` `QCategorisedResult <sdk_unity_scopes_qt_qcategorisedresult>`
& 

**operator=**
(:ref:`QCategorisedResult <sdk_unity_scopes_qt_qcategorisedresult>` &&)

 

|-| Public Member Functions inherited from
:ref:`unity::scopes::qt::QResult <sdk_unity_scopes_qt_qresult>`

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

 

         

**QResult** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` const &other)

 

         

**QResult** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` &&)

 

:ref:` <>` `QResult <sdk_unity_scopes_qt_qresult>` & 

**operator=** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` const &other)

 

:ref:` <>` `QResult <sdk_unity_scopes_qt_qresult>` & 

**operator=** (:ref:`QResult <sdk_unity_scopes_qt_qresult>` &&)

 

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
`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`_ 
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

.. |Inheritance graph| image:: /mediasdk_unity_scopes_qt_qcategorisedresultclassunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png
.. |-| image:: /mediasdk_unity_scopes_qt_qcategorisedresultclosed.png

