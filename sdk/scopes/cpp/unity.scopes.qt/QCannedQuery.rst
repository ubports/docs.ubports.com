Parameters of a search query.
`More... </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#details>`__

``#include <unity/scopes/qt/QCannedQuery.h>``

        Public Member Functions
-------------------------------

         

`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#adb7856712be37746fdc0038b4602b111>`__
(QString const
&\ `scope\_id </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#adf35e301629964cea60a0933e6d52110>`__)

 

| Creates a query for given scope with empty query string.

 

         

`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#a80403c0f728ed7af60a04c0debb06d6d>`__
(QString const
&\ `scope\_id </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#adf35e301629964cea60a0933e6d52110>`__,
QString const &query\_str, QString const
&\ `department\_id </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#aa8de764af79922d974e1bef6186be9ed>`__)

 

| Creates a query for given scope with specific query string and in
  given department.

 

        void 

`set\_department\_id </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#a848d48689bffc6f96cb70848201b8696>`__
(QString const &dep\_id)

 

| Sets or updates the department.

 

        void 

`set\_query\_string </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#aecb3afcf45e6a7e1a17d81786b665bda>`__
(QString const &query\_str)

 

| Sets or updates the query string.

 

        void 

`set\_filter\_state </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#adab1469e1be84e02b0d2d2170b095673>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&\ `filter\_state </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#a4d9c022cf212f83907fc9cac6c314586>`__)

 

| Sets filter state.

 

QString 

`scope\_id </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#adf35e301629964cea60a0933e6d52110>`__
() const

 

| Returns the scope identifier of this CannedQuery.

 

QString 

`department\_id </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#aa8de764af79922d974e1bef6186be9ed>`__
() const

 

| Returns the department id of this CannedQuery.

 

QString 

`query\_string </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#ad819a186fa6ad212959cd5c93b6fbf7e>`__
() const

 

| Returns the query string of this CannedQuery.

 

QString 

`to\_uri </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#a1ff2ee31add772d96a954a61b0d1d6f6>`__
() const

 

| Returns a string representation of this CannedQuery object as a URI
  using scope:// schema.

 

`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ 

`filter\_state </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#a4d9c022cf212f83907fc9cac6c314586>`__
() const

 

| Get state of the filters for this CannedQuery.

 

bool 

`has\_user\_data </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#acc27503e32e26b584c831435c485763c>`__
() const

 

| Checks if user data has been attached to this query.

 

QVariant 

`user\_data </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#acac6151094bc731f152490b468a03471>`__
() const

 

| Get user data attached to this query.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QCannedQuery**
(`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ const
&other)

 

         

**QCannedQuery**
(`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ &&)

 

        `QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__
& 

**operator=**
(`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ const
&other)

 

        `QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__
& 

**operator=**
(`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ &&)

 

        Static Public Member Functions
--------------------------------------

static `QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ 

`from\_uri </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#a7b049394639516f3895da0bc17b19bfc>`__
(QString const &uri)

 

| Recreates a CannedQuery object from a scope:// URI.

 

Detailed Description
--------------------

Parameters of a search query.

Holds all parameters of a search query: the target scope id, query
string, department id, and state of the filters. Can be converted
to/from scope:// uri schema string.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| department\_id |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the department id of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__.

Returns
    The department id.

+----------------+----------------+----------------+----------------+----------------+
| `FilterState < | (              |                | )              | const          |
| /sdk/scopes/cp |                |                |                |                |
| p/unity.scopes |                |                |                |                |
| .FilterState/> |                |                |                |                |
| `__            |                |                |                |                |
| QCannedQuery:: |                |                |                |                |
| filter\_state  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get state of the filters for this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__.

Pass this state to methods of specific filter instances (such as
`unity::scopes::OptionSelectorFilter::active\_options() </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter#a3015abeb0439ccd29bd61afa9b7059df>`__)to
examine filter state.

Returns
    The state of the filters.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | static                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | `QCannedQuer | (            | QStr |                                      |
| ing      | *uri*        | )          |                                      |
|    |              |                  |                                      |
| | y </sdk/scop |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | es/cpp/unity |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | .scopes.qt/Q |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | CannedQuery/ |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | >`__         |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | QCannedQuery |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ::from\_uri  |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Recreates a `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__
object from a scope:// URI.

Returns
    a `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__
    instance

Exceptions
    +----------------------------+--------------------------------+
    | InvalidArgumentException   | if the URI cannot be parsed.   |
    +----------------------------+--------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| has\_user\_dat |                |                |                |                |
| a              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Checks if user data has been attached to this query.

Returns
    true if data is available.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| query\_string  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the query string of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__.

Returns
    The query string.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| scope\_id      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the scope identifier of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__.

Returns
    The scope identifier.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| to\_uri        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a string representation of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__ object as a
URI using scope:// schema.

Returns
    The URI for the query.

+----------------+----------------+----------------+----------------+----------------+
| QVariant       | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| user\_data     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get user data attached to this query.

Returns
    Data variant

Exceptions
    +-------------------------+-----------------------------+
    | unity::LogicException   | if data is not available.   |
    +-------------------------+-----------------------------+

