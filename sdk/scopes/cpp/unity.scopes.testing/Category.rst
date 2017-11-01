Implementation of
`Category </sdk/scopes/cpp/unity.scopes.testing/Category/>`__ class for
testing.
`More... </sdk/scopes/cpp/unity.scopes.testing/Category#details>`__

``#include <unity/scopes/testing/Category.h>``

Inheritance diagram for unity::scopes::testing::Category:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`Category </sdk/scopes/cpp/unity.scopes.testing/Category#ac3916483e349d40d917c679fbf3a554e>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.Category#aa14a4f95af60187f890ef475d0d8cabe>`__,
std::string const
&\ `title </sdk/scopes/cpp/unity.scopes.Category#a6f11a12253de78d61761b49b45951221>`__,
std::string const
&\ `icon </sdk/scopes/cpp/unity.scopes.Category#acb98bc96e054fcdf787684cc7d0422ca>`__,
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`__
const
&\ `renderer\_template </sdk/scopes/cpp/unity.scopes.Category#a2668bac76f600a009934faa8b7eeea6d>`__)

 

| Creates category instance.

 

 

`Category </sdk/scopes/cpp/unity.scopes.testing/Category#abb48fefd29c1b45b1877ac103a301328>`__
(`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__
const &variant\_map)

 

| Deserializes category from a variant data.

 

|-| Public Member Functions inherited from
`unity::scopes::Category </sdk/scopes/cpp/unity.scopes.Category/>`__

std::string 

`id </sdk/scopes/cpp/unity.scopes.Category#aa14a4f95af60187f890ef475d0d8cabe>`__
() const

 

| Get identifier of this Category.

 

std::string 

`title </sdk/scopes/cpp/unity.scopes.Category#a6f11a12253de78d61761b49b45951221>`__
() const

 

| Get title of this Category.

 

std::string 

`icon </sdk/scopes/cpp/unity.scopes.Category#acb98bc96e054fcdf787684cc7d0422ca>`__
() const

 

| Get icon of this Category.

 

CannedQuery::SCPtr 

`query </sdk/scopes/cpp/unity.scopes.Category#a88034923f3493c2cfb5500e7aeae35cc>`__
() const

 

| Query to perform when this category is expanded.

 

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`__
const & 

`renderer\_template </sdk/scopes/cpp/unity.scopes.Category#a2668bac76f600a009934faa8b7eeea6d>`__
() const

 

| Get renderer template of this Category.

 

Detailed Description
--------------------

Implementation of
`Category </sdk/scopes/cpp/unity.scopes.testing/Category/>`__ class for
testing.

This class inherits from the
`unity::scopes::Category </sdk/scopes/cpp/unity.scopes.Category/>`__ and
provides a public constructor that allows for creating categories with
no need to register them via a real instance of
`unity::scopes::SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`__.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | inline                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | unity::scopes::tes | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | ting::Category::Ca |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | tegory             |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *title* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *icon*, |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `CategoryRenderer  | *render |                                      |
| er\_templat |                        |                                      |
| |                    |               |                                      |
|       | </sdk/scopes/cpp/u | e*      |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | nity.scopes.Catego |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ryRenderer/>`__    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Creates category instance.

Parameters
    +----------------------+-----------------------------------+
    | id                   | The identifier of this category   |
    +----------------------+-----------------------------------+
    | title                | The title of this category        |
    +----------------------+-----------------------------------+
    | icon                 | The icon of this category         |
    +----------------------+-----------------------------------+
    | renderer\_template   | The renderer template             |
    +----------------------+-----------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | inline                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | `Var |                                      |
| iantMap  | *variant\_ma | )          |                                      |
|    |              |                  |                                      |
| | s::testing:: |              | </sd |                                      |
| k/scopes | p*           |            |                                      |
|    |              |                  |                                      |
| | Category::Ca |              | /cpp |                                      |
| /unity.s |              |            |                                      |
|    |              |                  |                                      |
| | tegory       |              | cope |                                      |
| s#ad5d8c |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cfa1 |                                      |
| 1a327fca |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 6f3e |                                      |
| 4cee11f4 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | c10> |                                      |
| `__      |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Deserializes category from a variant data.

Parameters
    +----------------+-----------------------+
    | variant\_map   | Serialized category   |
    +----------------+-----------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.testing/Category/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.testing/Category/closed.png

