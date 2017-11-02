.. _sdk_unity_scopes_testing_result:
unity.scopes.testing Result
===========================

A simple class implementation of
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_  that
provides a default constructor.
:ref:`More... <sdk_unity_scopes_testing_result#details>`

``#include <unity/scopes/testing/Result.h>``

Inheritance diagram for unity::scopes::testing::Result:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

         

:ref:`Result <sdk_unity_scopes_testing_result#a66e95120f4af1ab4eb0f6676080ba34f>`
()

 

| Default constructor, creates
  :ref:`Result <sdk_unity_scopes_testing_result>` instance with no
  attributes.

 

|-| Public Member Functions inherited from
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ 

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

A simple class implementation of
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_  that
provides a default constructor.

.. |Inheritance graph| image:: /mediasdk_unity_scopes_testing_resultclassunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png
.. |-| image:: /mediasdk_unity_scopes_testing_resultclosed.png

