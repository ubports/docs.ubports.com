.. _sdk_unity_scopes_qt_qvariantbuilder:
unity.scopes.qt QVariantBuilder
===============================

Helper class for creating and populating QVariant containers.
:ref:`More... <sdk_unity_scopes_qt_qvariantbuilder#details>`

``#include <unity/scopes/qt/QVariantBuilder.h>``

        Public Member Functions
-------------------------------

void 

:ref:`add\_tuple <sdk_unity_scopes_qt_qvariantbuilder#a379142f075b92183acf729798ebc5794>`
(std::initializer\_list< QPair< QString, QVariant >> const &tuple)

 

| Adds a tuple of key-value pairs to an array.

 

void 

:ref:`add\_tuple <sdk_unity_scopes_qt_qvariantbuilder#a0fd901e8b0b1c7f6e78a993fd445b55c>`
(QVector< QPair< QString, QVariant >> const &tuple)

 

| Adds a tuple of key-value pairs to an array.

 

QVariant 

:ref:`end <sdk_unity_scopes_qt_qvariantbuilder#aaf11b857f040eb86cda244190166ee5b>`
()

 

| Retrieves a completed variant.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QVariantBuilder**
(:ref:`QVariantBuilder <sdk_unity_scopes_qt_qvariantbuilder>` const &other)

 

         

**QVariantBuilder**
(:ref:`QVariantBuilder <sdk_unity_scopes_qt_qvariantbuilder>` &&other)

 

:ref:` <>` `QVariantBuilder <sdk_unity_scopes_qt_qvariantbuilder>` & 

**operator=** (:ref:`QVariantBuilder <sdk_unity_scopes_qt_qvariantbuilder>`
const &other)

 

:ref:` <>` `QVariantBuilder <sdk_unity_scopes_qt_qvariantbuilder>` & 

**operator=** (:ref:`QVariantBuilder <sdk_unity_scopes_qt_qvariantbuilder>`
&&other)

 

Detailed Description
--------------------

Helper class for creating and populating QVariant containers.

The main purpose of this class is to ease creation of variant containers
needed for :ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>`
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
:ref:`QVariantBuilder <sdk_unity_scopes_qt_qvariantbuilder>` as follows:

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

