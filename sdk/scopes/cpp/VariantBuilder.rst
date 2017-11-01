Helper class for creating and populating
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ containers.
`More... </sdk/scopes/cpp/unity.scopes.VariantBuilder#details>`__

``#include <unity/scopes/VariantBuilder.h>``

        Public Member Functions
-------------------------------

void 

`add\_tuple </sdk/scopes/cpp/unity.scopes.VariantBuilder#a6636c251658079d95b2c9da9fac297d5>`__
(std::initializer\_list< std::pair< std::string,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ >> const &tuple)

 

| Adds a tuple of key-value pairs to an array.

 

void 

`add\_tuple </sdk/scopes/cpp/unity.scopes.VariantBuilder#aea54406435e03542d10da70cd04a6b80>`__
(std::vector< std::pair< std::string,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ >> const &tuple)

 

| Adds a tuple of key-value pairs to an array.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ 

`end </sdk/scopes/cpp/unity.scopes.VariantBuilder#abc6c1133cffc6730df7470185460e802>`__
()

 

| Retrieves a completed variant.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**VariantBuilder**
(`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__ const
&other)

 

         

**VariantBuilder**
(`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__
&&other)

 

`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__ & 

**operator=**
(`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__ const
&other)

 

`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__ & 

**operator=**
(`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__
&&other)

 

Detailed Description
--------------------

Helper class for creating and populating
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ containers.

The main purpose of this class is to ease creation of variant containers
needed for
`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`__
instances or any other classes that require non-trivial variant
definitions.

For example, the value of the "rating" key of the following JSON
template

{

"type": "reviews",

...

"reviews": [{"rating": null, "review": null, "author": null}]

}

can be created with
`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__ as
follows:

VariantBuilder builder;

builder.add\_tuple({{"rating",
`Variant::null </sdk/scopes/cpp/unity.scopes.Variant#a2bd2d5425fdec9af9340c22e3b47ac1c>`__\ ())},
{"review",
`Variant::null </sdk/scopes/cpp/unity.scopes.Variant#a2bd2d5425fdec9af9340c22e3b47ac1c>`__\ ()},
{"author",
`Variant::null </sdk/scopes/cpp/unity.scopes.Variant#a2bd2d5425fdec9af9340c22e3b47ac1c>`__\ ()}});

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::initial | *tuple*      | )            |              |
| unity::scope |              | izer\_list<  |              |              |              |
| s::VariantBu |              | std::pair<   |              |              |              |
| ilder::add\_ |              | std::string, |              |              |              |
| tuple        |              | `Variant </s |              |              |              |
|              |              | dk/scopes/cp |              |              |              |
|              |              | p/unity.scop |              |              |              |
|              |              | es.Variant/> |              |              |              |
|              |              | `__          |              |              |              |
|              |              | >> const &   |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Adds a tuple of key-value pairs to an array.

It can be used multiple times to create an array of tuples, for example:

[{"a": 1, "b": 2}, {"c": 2, "d" : 3}]

can be created with:

VariantBuilder builder;

builder.add\_tuple({{"a", Variant(1)}, {"b", Variant(2)}});

builder.add\_tuple({{"c", Variant(2)}, {"d", Variant(3)}});

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::vector< | *tuple*      | )            |              |
| unity::scope |              | std::pair<   |              |              |              |
| s::VariantBu |              | std::string, |              |              |              |
| ilder::add\_ |              | `Variant </s |              |              |              |
| tuple        |              | dk/scopes/cp |              |              |              |
|              |              | p/unity.scop |              |              |              |
|              |              | es.Variant/> |              |              |              |
|              |              | `__          |              |              |              |
|              |              | >> const &   |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Adds a tuple of key-value pairs to an array.

This is an overloaded version of add\_tuple that accepts ``std::vector``
instead of ``std::initializer_list``, making it more convenient for
language bindings.

+----------------+----------------+----------------+----------------+----------------+
| `Variant </sdk | (              |                | )              |                |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.Var |                |                |                |                |
| iant/>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :VariantBuilde |                |                |                |                |
| r::end         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Retrieves a completed variant.

Returns the completed variant and resets this builder, so the builder
can be re-used.

Returns
    The completed variant.

Exceptions
    +-------------------------+-------------------------------------------+
    | unity::LogicException   | if the builder does not hold a variant.   |
    +-------------------------+-------------------------------------------+

