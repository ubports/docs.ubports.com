A result, including the category it belongs to.
`More... </sdk/scopes/cpp/unity.scopes.CategorisedResult#details>`__

``#include <unity/scopes/CategorisedResult.h>``

Inheritance diagram for unity::scopes::CategorisedResult:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult#a28968f35dc3dc3cc1d2d2407e180933c>`__
(Category::SCPtr
`category </sdk/scopes/cpp/unity.scopes.CategorisedResult#aa6d3def1bc1a254046d7c5a34ecefa85>`__)

 

| Creates a CategorisedResult with given category, with all base
  attributes initially empty.

 

void 

`set\_category </sdk/scopes/cpp/unity.scopes.CategorisedResult#a8978affd683add658580499c9e954dbe>`__
(Category::SCPtr
`category </sdk/scopes/cpp/unity.scopes.CategorisedResult#aa6d3def1bc1a254046d7c5a34ecefa85>`__)

 

| Updates the category of this result.

 

Category::SCPtr 

`category </sdk/scopes/cpp/unity.scopes.CategorisedResult#aa6d3def1bc1a254046d7c5a34ecefa85>`__
() const

 

| Return category of this result. Get the category instance this result
  belongs to.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**CategorisedResult**
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
const &other)

 

`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
& 

**operator=**
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
const &other)

 

         

**CategorisedResult**
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
&&)

 

`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
& 

**operator=**
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
&&)

 

|-| Public Member Functions inherited from
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`__

virtual 

`~Result </sdk/scopes/cpp/unity.scopes.Result#af50d9e95694cc46f4c76369e97aec927>`__
()

 

void 

`store </sdk/scopes/cpp/unity.scopes.Result#a744776333a9748ba41dace7c6943ca4d>`__
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const &other, bool
intercept\_activation=false)

 

| Stores a Result inside this Result instance.

 

bool 

`has\_stored\_result </sdk/scopes/cpp/unity.scopes.Result#a8213bb7b0aedae09af8d621e1a7e136b>`__
() const

 

| Check if this Result instance has a stored result.

 

`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ 

`retrieve </sdk/scopes/cpp/unity.scopes.Result#a99b158932252c709cb2d4861db566a0a>`__
() const

 

| Get a stored result.

 

        void 

`set\_uri </sdk/scopes/cpp/unity.scopes.Result#ad69c1e88a1245c4c1f13fcba333c8d7e>`__
(std::string const
&\ `uri </sdk/scopes/cpp/unity.scopes.Result#a5642d5984ba110c3b7d268cc2668f413>`__)

 

| Set the "uri" attribute of this result.

 

void 

`set\_title </sdk/scopes/cpp/unity.scopes.Result#adf8cf3d863babb02107fb5ef35acc925>`__
(std::string const
&\ `title </sdk/scopes/cpp/unity.scopes.Result#a318887472ccc1034a64a3ec1d3b0d7d6>`__)

 

| Set the "title" attribute of this result.

 

void 

`set\_art </sdk/scopes/cpp/unity.scopes.Result#a3f2e512b10dbf2ed867d260ec33a89a1>`__
(std::string const &image)

 

| Set the "art" attribute of this result.

 

void 

`set\_dnd\_uri </sdk/scopes/cpp/unity.scopes.Result#aaea2d65663a8553b90a87b5b92c47f8f>`__
(std::string const
&\ `dnd\_uri </sdk/scopes/cpp/unity.scopes.Result#af98171266eeac7360f1c1ef7b0f58958>`__)

 

| Set the "dnd\_uri" attribute of this result.

 

void 

`set\_intercept\_activation </sdk/scopes/cpp/unity.scopes.Result#a5a132eb82702829e2fd026e088e4aa08>`__
()

 

| Indicates to the receiver that this scope should intercept activation
  requests for this result.

 

bool 

`direct\_activation </sdk/scopes/cpp/unity.scopes.Result#ac3e57ec9bf9a3bc5a517f91ff9605f6b>`__
() const

 

| Check if this result should be activated directly by the shell because
  the scope doesn't handle activation of this result.

 

`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__ 

`target\_scope\_proxy </sdk/scopes/cpp/unity.scopes.Result#a1a91e1cbb08e91366e92b7bcd76861d2>`__
() const

 

| Get the proxy of a scope that handles activation and preview of this
  result.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ & 

`operator[] </sdk/scopes/cpp/unity.scopes.Result#a157ebfcc5c28649af2761ef58f68de76>`__
(std::string const &key)

 

| Returns reference of a Result attribute.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const & 

`operator[] </sdk/scopes/cpp/unity.scopes.Result#a4e0664aba7b2613883a24f98450b71c0>`__
(std::string const &key) const

 

| Returns a const reference to a Result attribute.

 

std::string 

`uri </sdk/scopes/cpp/unity.scopes.Result#a5642d5984ba110c3b7d268cc2668f413>`__
() const noexcept

 

| Get the "uri" property of this Result.

 

std::string 

`title </sdk/scopes/cpp/unity.scopes.Result#a318887472ccc1034a64a3ec1d3b0d7d6>`__
() const noexcept

 

| Get the "title" property of this Result.

 

std::string 

`art </sdk/scopes/cpp/unity.scopes.Result#aeaeafd3fd83172104e501474191a6e4d>`__
() const noexcept

 

| Get the "art" property of this Result.

 

std::string 

`dnd\_uri </sdk/scopes/cpp/unity.scopes.Result#af98171266eeac7360f1c1ef7b0f58958>`__
() const noexcept

 

| Get the "dnd\_uri" property of this Result.

 

bool 

`contains </sdk/scopes/cpp/unity.scopes.Result#a442b87e28f762addb0d81ccd03a11532>`__
(std::string const &key) const

 

| Check if this Result has an attribute.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const & 

`value </sdk/scopes/cpp/unity.scopes.Result#a490b5b5da2c3d7b122cfadae25cde3af>`__
(std::string const &key) const

 

| Get the value of an attribute.

 

`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__ 

`serialize </sdk/scopes/cpp/unity.scopes.Result#acd3c05fe73b442facc1cb8d0fc0ffce2>`__
() const

 

| Returns a dictionary of all attributes of this Result instance.

 

bool 

`is\_account\_login\_result </sdk/scopes/cpp/unity.scopes.Result#a454b78b004b954575c159deda871dd97>`__
() const

 

| Check if this result is an online account login result.

 

bool 

`operator== </sdk/scopes/cpp/unity.scopes.Result#aa60fe8b5e2b5959b5f6f3883e5f2facf>`__
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const &other) const

 

| Compare result.

 

         

**Result** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const
&other)

 

         

**Result** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ &&)

 

        `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ & 

**operator=** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const
&other)

 

        `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ & 

**operator=** (`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ &&)

 

Detailed Description
--------------------

A result, including the category it belongs to.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | Cate |                                      |
| gory::SC | *category*   | )          |                                      |
|    |              |                  |                                      |
| | s::Categoris |              | Ptr  |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | edResult::Ca |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | tegorisedRes |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ult          |              |      |                                      |
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
| Category::SCPt | (              |                | )              | const          |
| r              |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :CategorisedRe |                |                |                |                |
| sult::category |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return category of this result. Get the category instance this result
belongs to.

Returns
    The category instance.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | Category::SC | *category*   | )            |              |
| unity::scope |              | Ptr          |              |              |              |
| s::Categoris |              |              |              |              |              |
| edResult::se |              |              |              |              |              |
| t\_category  |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Updates the category of this result.

Parameters
    +------------+--------------------------------+
    | category   | The category for the result.   |
    +------------+--------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.CategorisedResult/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.CategorisedResult/closed.png

