.. _sdk_unity_scopes_qt_qscopebaseapi:
unity.scopes.qt QScopeBaseAPI
=============================

``#include <unity/scopes/qt/QScopeBaseAPI.h>``

Inheritance diagram for unity::scopes::qt::QScopeBaseAPI:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

:ref:`start <sdk_unity_scopes_qt_qscopebaseapi#aefcd8d1262a89d1c9b6c63dbdc8bfcea>`
(std::string const &scope\_id) override

 

| Called by the scopes run time after the create function completes.

 

virtual void 

:ref:`stop <sdk_unity_scopes_qt_qscopebaseapi#a7cfc17b94cc01761ac53acc1613ab8ce>`
() override

 

| Called by the scopes run time when the scope should shut down.

 

virtual unity::scopes::PreviewQueryBase::UPtr 

:ref:`preview <sdk_unity_scopes_qt_qscopebaseapi#a839ca01a0085c27edc5ee6fa060f7b75>`
(const `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ 
&, const
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ 
&) override

 

virtual unity::scopes::SearchQueryBase::UPtr 

:ref:`search <sdk_unity_scopes_qt_qscopebaseapi#ac5023d43f3169eb51283ebd6488da631>`
(`unity::scopes::CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
const &q,
`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
const &) override

 

|-| Public Member Functions inherited from
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ 

virtual void 

`run </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
()

 

| Called by the scopes runtime after it has called start() to hand a
  thread of control to the scope.

 

virtual ActivationQueryBase::UPtr 

`activate </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata)

 

| Called by the scopes runtime when a scope needs to respond to a result
  activation request.

 

virtual ActivationQueryBase::UPtr 

`perform\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata, std::string const &widget\_id, std::string const &action\_id)

 

| Invoked when a scope is requested to handle a preview action.

 

virtual std::string 

`scope\_directory </sdk/scopes/cpp/unity.scopes.ScopeBase/#a32744a21076d9dacc98362412c6a63d5>`_ 
() const final

 

| Returns the directory that stores the scope's configuration files and
  shared library.

 

virtual std::string 

`cache\_directory </sdk/scopes/cpp/unity.scopes.ScopeBase/#a36cfdda42db58da399390e7c5df2385e>`_ 
() const final

 

| Returns a directory that is (exclusively) writable for the scope.

 

virtual std::string 

`app\_directory </sdk/scopes/cpp/unity.scopes.ScopeBase/#a4f54564b752a3451e05bd11171abb27e>`_ 
() const final

 

| Returns a directory that is shared with an app in the same click
  package.

 

virtual std::string 

`tmp\_directory </sdk/scopes/cpp/unity.scopes.ScopeBase/#ade8de1dca94e10aa9788624710ab49eb>`_ 
() const final

 

| Returns a tmp directory that is (exclusively) writable for the scope.

 

virtual
:ref:`unity::scopes::RegistryProxy <sdk_unity_scopes#a45babc254d3548863d79ee54f266e84d>` 

`registry </sdk/scopes/cpp/unity.scopes.ScopeBase/#af874b8b3c5c28dcaacc416076c9dfc35>`_ 
() const final

 

| Returns the proxy to the registry.

 

virtual
:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

`settings </sdk/scopes/cpp/unity.scopes.ScopeBase/#acddeebb3357c6941b3b77617133cda23>`_ 
() const final

 

| Returns a dictionary with the scope's current settings.

 

virtual
:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>` 

`find\_child\_scopes </sdk/scopes/cpp/unity.scopes.ScopeBase/#abc864e2fa714b9424a89293fea6972bc>`_ 
() const

 

| Returns a defaulted list of child scopes aggregated by this scope.

 

virtual
:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>` 

`child\_scopes </sdk/scopes/cpp/unity.scopes.ScopeBase/#a4016075ab95bbf1b5dfa1444e9d750e0>`_ 
() const final

 

| Returns the current list of child scopes aggregated by this scope.

 

virtual ActivationQueryBase::UPtr 

`activate\_result\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata, std::string const &action\_id)

 

| Invoked when a scope is requested to handle a result in-card action.

 

        Additional Inherited Members
------------------------------------

|-| Static Public Member Functions inherited from
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ 

        static void 

`runtime\_version </sdk/scopes/cpp/unity.scopes.ScopeBase/#a4cbdf8cb790e6f44e388e70ab456e686>`_ 
(int &v\_major, int &v\_minor, int &v\_micro) noexcept

 

| Returns the version information for the scopes API that the scope was
  linked with.

 

Detailed Description
--------------------

Defines the lifecycle of scope plugin, and acts as a factory for Query
and Preview objects.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | const              | ,       |                                      |
|             |                        |                                      |
| | unity::scopes::Pre |               |                                      |
|       | `unity::scopes::Re |         |                                      |
|             |                        |                                      |
| | viewQueryBase::UPt |               |                                      |
|       | sult </sdk/scopes/ |         |                                      |
|             |                        |                                      |
| | r                  |               |                                      |
|       | cpp/unity.scopes.R |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | esult/>`_          |         |                                      |
|             |                        |                                      |
| | :QScopeBaseAPI::pr |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | eview              |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | const              |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | `unity::scopes::Ac |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | tionMetadata </sdk |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.ActionMetad |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ata/>`_            |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
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

Called each time a new preview is requested

Implements
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ .

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `unity::scopes::Ca | *q*,    |                                      |
|             |                        |                                      |
| | unity::scopes::Sea |               |                                      |
|       | nnedQuery </sdk/sc |         |                                      |
|             |                        |                                      |
| | rchQueryBase::UPtr |               |                                      |
|       | opes/cpp/unity.sco |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | pes.CannedQuery/>` |         |                                      |
|             |                        |                                      |
| | :QScopeBaseAPI::se |               |                                      |
|       | __                 |         |                                      |
|             |                        |                                      |
| | arch               |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `unity::scopes::Se |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | archMetadata </sdk |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.SearchMetad |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ata/>`_            |         |                                      |
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

Called each time a new query is requested

Implements
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ .

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | overridevirtual                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | std: |                                      |
| :string  | *scope\_id*  | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | s::qt::QScop |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | eBaseAPI::st |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | art          |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called by the scopes run time after the create function completes.

If
:ref:`start() <sdk_unity_scopes_qt_qscopebaseapi#aefcd8d1262a89d1c9b6c63dbdc8bfcea>`
throws an exception,
:ref:`stop() <sdk_unity_scopes_qt_qscopebaseapi#a7cfc17b94cc01761ac53acc1613ab8ce>`
will *not* be called.

The call to
:ref:`start() <sdk_unity_scopes_qt_qscopebaseapi#aefcd8d1262a89d1c9b6c63dbdc8bfcea>`
is made by the same thread that calls the create function.

Parameters
    +-------------+-----------------------------------------------------------------------+
    | scope\_id   | The name of the scope as defined by the scope's configuration file.   |
    +-------------+-----------------------------------------------------------------------+

Reimplemented from
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ .

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | overridevirtual                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual void   | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :qt::QScopeBas |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | eAPI::stop     |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Called by the scopes run time when the scope should shut down.

A scope should deallocate as many resources as possible when
:ref:`stop() <sdk_unity_scopes_qt_qscopebaseapi#a7cfc17b94cc01761ac53acc1613ab8ce>`
is called, for example, deallocate any caches and close network
connections. In addition, if the scope implements
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
and did not return from
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ ,
it must return from
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
in response to the call to
:ref:`stop() <sdk_unity_scopes_qt_qscopebaseapi#a7cfc17b94cc01761ac53acc1613ab8ce>`.

Exceptions from
:ref:`stop() <sdk_unity_scopes_qt_qscopebaseapi#a7cfc17b94cc01761ac53acc1613ab8ce>`
are ignored.

The call to
:ref:`stop() <sdk_unity_scopes_qt_qscopebaseapi#a7cfc17b94cc01761ac53acc1613ab8ce>`
is made by the same thread that calls the create function and
:ref:`start() <sdk_unity_scopes_qt_qscopebaseapi#aefcd8d1262a89d1c9b6c63dbdc8bfcea>`.

Reimplemented from
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ .

.. |Inheritance graph| image:: /mediasdk_unity_scopes_qt_qscopebaseapiclassunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png
.. |-| image:: /mediasdk_unity_scopes_qt_qscopebaseapiclosed.png

