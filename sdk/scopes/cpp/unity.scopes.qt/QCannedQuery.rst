.. _sdk_unity_scopes_qt_qcannedquery:
unity.scopes.qt QCannedQuery
============================

Parameters of a search query.
:ref:`More... <sdk_unity_scopes_qt_qcannedquery#details>`

``#include <unity/scopes/qt/QCannedQuery.h>``

        Public Member Functions
-------------------------------

         

:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery#adb7856712be37746fdc0038b4602b111>`
(QString const
&\ :ref:`scope\_id <sdk_unity_scopes_qt_qcannedquery#adf35e301629964cea60a0933e6d52110>`)

 

| Creates a query for given scope with empty query string.

 

         

:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery#a80403c0f728ed7af60a04c0debb06d6d>`
(QString const
&\ :ref:`scope\_id <sdk_unity_scopes_qt_qcannedquery#adf35e301629964cea60a0933e6d52110>`,
QString const &query\_str, QString const
&\ :ref:`department\_id <sdk_unity_scopes_qt_qcannedquery#aa8de764af79922d974e1bef6186be9ed>`)

 

| Creates a query for given scope with specific query string and in
  given department.

 

        void 

:ref:`set\_department\_id <sdk_unity_scopes_qt_qcannedquery#a848d48689bffc6f96cb70848201b8696>`
(QString const &dep\_id)

 

| Sets or updates the department.

 

        void 

:ref:`set\_query\_string <sdk_unity_scopes_qt_qcannedquery#aecb3afcf45e6a7e1a17d81786b665bda>`
(QString const &query\_str)

 

| Sets or updates the query string.

 

        void 

:ref:`set\_filter\_state <sdk_unity_scopes_qt_qcannedquery#adab1469e1be84e02b0d2d2170b095673>`
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&\ :ref:`filter\_state <sdk_unity_scopes_qt_qcannedquery#a4d9c022cf212f83907fc9cac6c314586>`)

 

| Sets filter state.

 

QString 

:ref:`scope\_id <sdk_unity_scopes_qt_qcannedquery#adf35e301629964cea60a0933e6d52110>`
() const

 

| Returns the scope identifier of this CannedQuery.

 

QString 

:ref:`department\_id <sdk_unity_scopes_qt_qcannedquery#aa8de764af79922d974e1bef6186be9ed>`
() const

 

| Returns the department id of this CannedQuery.

 

QString 

:ref:`query\_string <sdk_unity_scopes_qt_qcannedquery#ad819a186fa6ad212959cd5c93b6fbf7e>`
() const

 

| Returns the query string of this CannedQuery.

 

QString 

:ref:`to\_uri <sdk_unity_scopes_qt_qcannedquery#a1ff2ee31add772d96a954a61b0d1d6f6>`
() const

 

| Returns a string representation of this CannedQuery object as a URI
  using scope:// schema.

 

`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  

:ref:`filter\_state <sdk_unity_scopes_qt_qcannedquery#a4d9c022cf212f83907fc9cac6c314586>`
() const

 

| Get state of the filters for this CannedQuery.

 

bool 

:ref:`has\_user\_data <sdk_unity_scopes_qt_qcannedquery#acc27503e32e26b584c831435c485763c>`
() const

 

| Checks if user data has been attached to this query.

 

QVariant 

:ref:`user\_data <sdk_unity_scopes_qt_qcannedquery#acac6151094bc731f152490b468a03471>`
() const

 

| Get user data attached to this query.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QCannedQuery** (:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>`
const &other)

 

         

**QCannedQuery** (:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>`
&&)

 

:ref:` <>` `QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` & 

**operator=** (:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` const
&other)

 

:ref:` <>` `QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` & 

**operator=** (:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` &&)

 

        Static Public Member Functions
--------------------------------------

static :ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` 

:ref:`from\_uri <sdk_unity_scopes_qt_qcannedquery#a7b049394639516f3895da0bc17b19bfc>`
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
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Returns
    The department id.

+----------------+----------------+----------------+----------------+----------------+
| `FilterState < | (              |                | )              | const          |
| /sdk/scopes/cp |                |                |                |                |
| p/unity.scopes |                |                |                |                |
| .FilterState/> |                |                |                |                |
| `_             |                |                |                |                |
| QCannedQuery:: |                |                |                |                |
| filter\_state  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get state of the filters for this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Pass this state to methods of specific filter instances (such as
`unity::scopes::OptionSelectorFilter::active\_options() </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a3015abeb0439ccd29bd61afa9b7059df>`_ )to
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
| | y <sdk_unity |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | _scopes_qt_q |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | cannedquery> |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | `_           |              |      |                                      |
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

Recreates a `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
object from a scope:// URI.

Returns
    a `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
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
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Returns
    The query string.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| scope\_id      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the scope identifier of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Returns
    The scope identifier.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QCannedQuery:: |                |                |                |                |
| to\_uri        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a string representation of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  object as a
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

