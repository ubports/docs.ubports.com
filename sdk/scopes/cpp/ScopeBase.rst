.. _sdk_scopebase:
ScopeBase
=========

Base class for a scope implementation.
`More... </sdk/scopes/cpp/unity.scopes.ScopeBase/#details>`_ 

``#include <unity/scopes/ScopeBase.h>``

Inheritance diagram for unity::scopes::ScopeBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`start </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ 
(std::string const &scope\_id)

 

| Called by the scopes runtime after the create function completes.

 

virtual void 

`stop </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
()

 

| Called by the scopes runtime when the scope should shut down.

 

virtual void 

`run </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
()

 

| Called by the scopes runtime after it has called start() to hand a
  thread of control to the scope.

 

virtual SearchQueryBase::UPtr 

`search </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ 
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  const
&query,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&metadata)=0

 

| Called by the scopes runtime when a scope needs to instantiate a
  query.

 

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

 

virtual PreviewQueryBase::UPtr 

`preview </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata)=0

 

| Invoked when a scope is requested to create a preview for a particular
  result.

 

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

 

        Static Public Member Functions
--------------------------------------

        static void 

`runtime\_version </sdk/scopes/cpp/unity.scopes.ScopeBase/#a4cbdf8cb790e6f44e388e70ab456e686>`_ 
(int &v\_major, int &v\_minor, int &v\_micro) noexcept

 

| Returns the version information for the scopes API that the scope was
  linked with.

 

Detailed Description
--------------------

Base class for a scope implementation.

Scopes are accessed by the scopes runtime as a shared library (one
library per scope). Each scope must implement a class that derives from
`ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ , for example:

#include <unity/scopes/ScopeBase.h>

class MyScope : public
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ 

{

public:

MyScope();

virtual ~MyScope();

virtual void
`start </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ \ (std::string
const& scope\_id); // Optional

virtual void
`stop </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ \ ();
// Optional

virtual void
`run </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ \ ();
// Optional

// ...

};

In addition, the library must provide two functions with "C" linkage:

-  a create function that must return a pointer to the derived instance
-  a destroy function that is passed the pointer returned by the create
   function

Typically, the create and destroy functions will simply call ``new`` and
``delete``, respectively. If the create function throws an exception,
the destroy function will not be called. If the create function returns
NULL, the destroy function *will* be called with NULL as its argument.

Rather than hard-coding the names of the functions, use the
UNITY\_SCOPE\_CREATE\_FUNCTION and UNITY\_SCOPE\_DESTROY\_FUNCTION
macros, for example:

`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ \ \*

UNITY\_SCOPE\_CREATE\_FUNCTION()

{

return new MyScope;

}

void

UNITY\_SCOPE\_DESTROY\_FUNCTION(unity::scopes::ScopeBase\* scope)

{

delete scope;

}

After the scopes runtime has obtained a pointer to the class instance
from the create function, it calls
`start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ ,
which allows the scope to intialize itself. This is followed by a call
to
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ .
The call to
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
is made by a separate thread; its only purpose is to pass a thread of
control to the scope, for example, to run an event loop. When the scope
should complete its activities, the runtime calls
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ .
The calls to the create function,
`start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ ,
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ ,
and the destroy function) are made by the same thread.

The scope implementation, if it does not return from
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ ,
is expected to return from
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
in response to a call to
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
in a timely manner.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | virtual                              |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | ActivationQueryBas | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | e::UPtr            |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       | s.Result/>`_       |         |                                      |
|             |                        |                                      |
| | peBase::activate   |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*         |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.ActionMe |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | tadata/>`_         |         |                                      |
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

Called by the scopes runtime when a scope needs to respond to a result
activation request.

This method must return an instance that is derived from
``ActivationQueryBase``. The implementation of this method must return
in a timely manner, that is, it should perform only minimal
initialization that is guaranteed to complete quickly. The call to
`activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
is made by an arbitrary thread. The default implementation returns an
instance of
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
that responds with ActivationResponse::Status::NotHandled.

Parameters
    +------------+----------------------------------------+
    | result     | The result that should be activated.   |
    +------------+----------------------------------------+
    | metadata   | additional data sent by the client.    |
    +------------+----------------------------------------+

Returns
    The activation instance.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | virtual                              |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | ActivationQueryBas | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | e::UPtr            |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       | s.Result/>`_       |         |                                      |
|             |                        |                                      |
| | peBase::activate\_ |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | result\_action     |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.ActionMe |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | tadata/>`_         |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *action |                                      |
| \_id*       |                        |                                      |
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

Invoked when a scope is requested to handle a result in-card action.

This method must return an instance that is derived from
``ActivationQueryBase``. The implementation of this method must return
in a timely manner, that is, it should perform only minimal
initialization that is guaranteed to complete quickly. The call to
`activate\_result\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ 
is made by an arbitrary thread. The default implementation returns an
instance of
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
that responds with ActivationResponse::Status::NotHandled.

Parameters
    +--------------+----------------------------------------------------+
    | result       | The result whose action was activated.             |
    +--------------+----------------------------------------------------+
    | metadata     | Additional data sent by the client.                |
    +--------------+----------------------------------------------------+
    | action\_id   | The identifier of the action that was activated.   |
    +--------------+----------------------------------------------------+

Returns
    The activation instance.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::ap |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | p\_directory   |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a directory that is shared with an app in the same click
package.

If a scope and an app share a single click package, this directory and
the files in it are writable by the app, and read-only to the scope.
This allows the app to write information into the filesystem that can be
read by the scope (but not vice versa).

Note
    The app directory is available only after this
    `ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  is
    instantiated; do not call this method from the constructor!

Returns
    The root directory of a filesystem sub-tree that the scope shares
    with an application installed from the same click-package.

Exceptions
    +------------------+----------------------------------------------------+
    | LogicException   | if called from the constructor of this instance.   |
    +------------------+----------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::ca |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | che\_directory |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a directory that is (exclusively) writable for the scope.

This directory allows scopes to store persistent information, such as
cached content or similar.

Note
    The cache directory is available only after this
    `ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  is
    instantiated; do not call this method from the constructor!

Returns
    The root directory of a filesystem sub-tree that is writable for the
    scope.

Exceptions
    +------------------+----------------------------------------------------+
    | LogicException   | if called from the constructor of this instance.   |
    +------------------+----------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `ChildScopeLis | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | t <sdk_unity_s |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | copes#a4daaa9a |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | d07daf596af4da |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | cd6e0b7be9a>`_ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | _              |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::ch |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ild\_scopes    |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns the current list of child scopes aggregated by this scope.

An aggregator should respect the "enabled" states of each child scope,
returning results only for the child scopes that are enabled.

Returns
    The list of child scopes aggregated by this scope.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `ChildScopeLis | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | t <sdk_unity_s |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | copes#a4daaa9a |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | d07daf596af4da |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | cd6e0b7be9a>`_ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | _              |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::fi |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | nd\_child\_sco |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | pes            |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a defaulted list of child scopes aggregated by this scope.

The scope author must ensure that the list returned by this method
contains all scopes that this aggregator may collect results from. The
"enabled" state for each child returned should be set to a default value
(i.e. whether the child is enabled or disabled by default when newly
discovered).

The default behaviour of this method is to simply return all available
scopes on the system in enabled state. This translates to: "Any scope
may potentially be aggregated by this scope".

Note
    Only aggregator scopes should implement this method.

Returns
    The list of child scopes aggregated by this scope.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | virtual                              |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | ActivationQueryBas | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | e::UPtr            |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       | s.Result/>`_       |         |                                      |
|             |                        |                                      |
| | peBase::perform\_a |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | ction              |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.ActionMe |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | tadata/>`_         |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *widget |                                      |
| \_id*,      |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *action |                                      |
| \_id*       |                        |                                      |
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

Invoked when a scope is requested to handle a preview action.

This method must return an instance that is derived from
``ActivationQueryBase``. The implementation of this method must return
in a timely manner, that is, it should perform only minimal
initialization that is guaranteed to complete quickly. The call to
`activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
is made by an arbitrary thread. The default implementation returns an
instance of
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
that responds with ActivationResponse::Status::NotHandled.

Parameters
    +--------------+-------------------------------------------------------------------+
    | result       | The result that was previewed.                                    |
    +--------------+-------------------------------------------------------------------+
    | metadata     | Additional data sent by client.                                   |
    +--------------+-------------------------------------------------------------------+
    | widget\_id   | The identifier of the 'actions' widget of the activated action.   |
    +--------------+-------------------------------------------------------------------+
    | action\_id   | The identifier of the action that was activated.                  |
    +--------------+-------------------------------------------------------------------+

Returns
    The activation instance.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | PreviewQueryBase:: |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | UPtr               |               |                                      |
|       | s.Result/>`_       |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | peBase::preview    |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*         |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.ActionMe |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | tadata/>`_         |         |                                      |
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

Invoked when a scope is requested to create a preview for a particular
result.

This method must return an instance that is derived from
``PreviewQueryBase``. The implementation of this method must return in a
timely manner, that is, it should perform only minimal initialization
that is guaranteed to complete quickly. The call to
`activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
is made by an arbitrary thread.

Parameters
    +------------+----------------------------------------+
    | result     | The result that should be previewed.   |
    +------------+----------------------------------------+
    | metadata   | Additional data sent by the client.    |
    +------------+----------------------------------------+

Returns
    The preview instance.

Implemented in
:ref:`unity::scopes::qt::QScopeBaseAPI <sdk_unity_scopes_qt_qscopebaseapi#a839ca01a0085c27edc5ee6fa060f7b75>`.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `RegistryProxy | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| |  <sdk_unity_sc |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | opes#a45babc25 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 4d3548863d79ee |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 54f266e84d>`_  |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::re |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | gistry         |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns the proxy to the registry.

Note
    The registry proxy is available only after this
    `ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  is
    instantiated; do not call this method from the constructor!

Returns
    The proxy to the registry.

Exceptions
    +------------------+----------------------------------------------------+
    | LogicException   | if called from the constructor of this instance.   |
    +------------------+----------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | void           | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::ru |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | n              |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Called by the scopes runtime after it has called
`start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ 
to hand a thread of control to the scope.

`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
passes a thread of control to the scope to do with as it sees fit, for
example, to run an event loop. During finalization, the scopes runtime
joins with the thread that called
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ .
This means that, if the scope implementation does not return from
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ ,
it is expected to arrange for
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
to complete in a timely manner in response to a call to
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ .
Failure to do so will cause deadlock during finalization.

If
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
throws an exception, the runtime handles the exception and calls
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
in response.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::sc |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ope\_directory |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns the directory that stores the scope's configuration files and
shared library.

Note
    The scope directory is available only after this
    `ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  is
    instantiated; do not call this method from the constructor!

Returns
    The scope's configuration directory.

Exceptions
    +------------------+----------------------------------------------------+
    | LogicException   | if called from the constructor of this instance.   |
    +------------------+----------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `CannedQuery </sdk | *query* |                                      |
| ,           |                        |                                      |
| | SearchQueryBase::U |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| | Ptr                |               |                                      |
|       | scopes.CannedQuery |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       | />`_               |         |                                      |
|             |                        |                                      |
| | peBase::search     |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `SearchMetadata </ | *metada |                                      |
| ta*         |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.SearchMe |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | tadata/>`_         |         |                                      |
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

Called by the scopes runtime when a scope needs to instantiate a query.

This method must return an instance that is derived from ``QueryBase``.
The implementation of this method must return in a timely manner, that
is, it should perform only minimal initialization that is guaranteed to
complete quickly. The call to
`search() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ 
is made by an arbitrary thread.

Parameters
    +------------+--------------------------------------------------------------------+
    | query      | The query string to be executed by the returned object instance.   |
    +------------+--------------------------------------------------------------------+
    | metadata   | additional data sent by the client.                                |
    +------------+--------------------------------------------------------------------+

Returns
    The query instance.

Implemented in
:ref:`unity::scopes::qt::QScopeBaseAPI <sdk_unity_scopes_qt_qscopebaseapi#ac5023d43f3169eb51283ebd6488da631>`.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `unity::scopes | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | ::VariantMap < |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | sdk_unity_scop |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | es#ad5d8ccfa11 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | a327fca6f3e4ce |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | e11f4c10>`_    |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::se |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ttings         |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a dictionary with the scope's current settings.

Instead of storing the return value, it is preferable to call
`settings() </sdk/scopes/cpp/unity.scopes.ScopeBase/#acddeebb3357c6941b3b77617133cda23>`_ 
each time your implementation requires a settings value. This ensures
that, if a user changes settings while the scope is running, the new
settings take effect with the next query.

Note
    The settings are available only after this
    `ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  is
    instantiated; do not call this method from the constructor!

Returns
    The scope's current settings.

Exceptions
    +---------------------+----------------------------------------------------+
    | LogicException      | if called from the constructor of this instance.   |
    +---------------------+----------------------------------------------------+
    | ResourceException   | if settings database file is corrupted.            |
    +---------------------+----------------------------------------------------+
    | FileException       | if settings database file is not readable.         |
    +---------------------+----------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | std: |                                      |
| :string  | *scope\_id*  | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | s::ScopeBase |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ::start      |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called by the scopes runtime after the create function completes.

If
`start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ 
throws an exception,
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
will *not* be called.

The call to
`start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ 
is made by the same thread that calls the create function.

Parameters
    +-------------+-----------------------------------------------------------------------+
    | scope\_id   | The name of the scope as defined by the scope's configuration file.   |
    +-------------+-----------------------------------------------------------------------+

Reimplemented in
:ref:`unity::scopes::qt::QScopeBaseAPI <sdk_unity_scopes_qt_qscopebaseapi#aefcd8d1262a89d1c9b6c63dbdc8bfcea>`.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | void           | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::st |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | op             |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Called by the scopes runtime when the scope should shut down.

A scope should deallocate as many resources as possible when
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
is called, for example, deallocate any caches and close network
connections. In addition, if the scope implements
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
and did not return from
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ ,
it must return from
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
in response to the call to
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ .

Exceptions from
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
are ignored.

The call to
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
is made by the same thread that calls the create function and
`start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ .

Reimplemented in
:ref:`unity::scopes::qt::QScopeBaseAPI <sdk_unity_scopes_qt_qscopebaseapi#a7cfc17b94cc01761ac53acc1613ab8ce>`.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | std::string    | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ScopeBase::tm |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | p\_directory   |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a tmp directory that is (exclusively) writable for the scope.

This directory is periodically cleaned of unused files. The exact amount
of time may vary, but is on the order of a few hours. The directory is
also cleaned during reboot.

Note
    The tmp directory is available only after this
    `ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  is
    instantiated; do not call this method from the constructor!

Returns
    A directory for temporary files.

Exceptions
    +------------------+----------------------------------------------------+
    | LogicException   | if called from the constructor of this instance.   |
    +------------------+----------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ScopeBase/classunity_1_1scopes_1_1_scope_base__inherit__graph.png

