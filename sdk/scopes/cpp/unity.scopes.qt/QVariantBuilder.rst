Helper class for creating and populating QVariant containers.
`More... </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder#details>`__

``#include <unity/scopes/qt/QVariantBuilder.h>``

        Public Member Functions
-------------------------------

void 

`add\_tuple </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder#a379142f075b92183acf729798ebc5794>`__
(std::initializer\_list< QPair< QString, QVariant >> const &tuple)

 

| Adds a tuple of key-value pairs to an array.

 

void 

`add\_tuple </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder#a0fd901e8b0b1c7f6e78a993fd445b55c>`__
(QVector< QPair< QString, QVariant >> const &tuple)

 

| Adds a tuple of key-value pairs to an array.

 

QVariant 

`end </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder#aaf11b857f040eb86cda244190166ee5b>`__
()

 

| Retrieves a completed variant.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QVariantBuilder**
(`QVariantBuilder </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder/>`__
const &other)

 

         

**QVariantBuilder**
(`QVariantBuilder </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder/>`__
&&other)

 

`QVariantBuilder </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder/>`__
& 

**operator=**
(`QVariantBuilder </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder/>`__
const &other)

 

`QVariantBuilder </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder/>`__
& 

**operator=**
(`QVariantBuilder </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder/>`__
&&other)

 

Detailed Description
--------------------

Helper class for creating and populating QVariant containers.

The main purpose of this class is to ease creation of variant containers
needed for
`QPreviewWidget </sdk/scopes/cpp/unity.scopes.qt/QPreviewWidget/>`__
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
`QVariantBuilder </sdk/scopes/cpp/unity.scopes.qt/QVariantBuilder/>`__
as follows:

VariantBuilder builder;

builder.add\_tuple({{"rating", QVariant()}, {"review", QVariant()},
{"author", QVariant()}});

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::initial | *tuple*      | )            |              |
| QVariantBuil |              | izer\_list<  |              |              |              |
| der::add\_tu |              | QPair<       |              |              |              |
| ple          |              | QString,     |              |              |              |
|              |              | QVariant >>  |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Adds a tuple of key-value pairs to an array.

It can be used multiple times to create an array of tuples, for example:

[{"a": 1, "b": 2}, {"c": 2, "d" : 3}]

can be created with:

QVariantBuilder builder;

builder.add\_tuple({{"a", QVariant(1)}, {"b", QVariant(2)}});

builder.add\_tuple({{"c", QVariant(2)}, {"d", QVariant(3)}});

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QVector<     | *tuple*      | )            |              |
| QVariantBuil |              | QPair<       |              |              |              |
| der::add\_tu |              | QString,     |              |              |              |
| ple          |              | QVariant >>  |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Adds a tuple of key-value pairs to an array.

This is an overloaded version of add\_tuple that accepts ``QVector``
instead of ``std::initializer_list``.

+----------------+----------------+----------------+----------------+----------------+
| QVariant       | (              |                | )              |                |
| QVariantBuilde |                |                |                |                |
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

