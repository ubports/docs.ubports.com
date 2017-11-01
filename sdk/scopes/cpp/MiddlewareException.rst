Exception to indicate that something went wrong with the middleware
layer.
`More... </sdk/scopes/cpp/unity.scopes.MiddlewareException#details>`__

``#include <unity/scopes/ScopeExceptions.h>``

Inheritance diagram for unity::scopes::MiddlewareException:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException#af6250d2e529d103d30d3ebf06689c146>`__
(std::string const &reason)

 

| Constructs the exception.

 

virtual std::exception\_ptr 

`self </sdk/scopes/cpp/unity.scopes.MiddlewareException#a5317c0215a98eb896d1d706450d2919e>`__
() const override

 

| Returns a ``std::exception_ptr`` to ``this``.

 

Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

         

**MiddlewareException**
(`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`__
const &)

 

`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`__
& 

**operator=**
(`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`__
const &)

 

Detailed Description
--------------------

Exception to indicate that something went wrong with the middleware
layer.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | std: |                                      |
| :string  | *reason*     | )          |                                      |
|    |              |                  |                                      |
| | s::Middlewar |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | eException:: |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | MiddlewareEx |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ception      |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Constructs the exception.

Parameters
    +----------+-----------------------------------------------------+
    | reason   | Further details about the cause of the exception.   |
    +----------+-----------------------------------------------------+

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | overridevirtual                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | exception\_ptr | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :MiddlewareExc |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | eption::self   |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a ``std::exception_ptr`` to ``this``.

Returns
    ``std::exception_ptr`` to ``this``.

Reimplemented in
`unity::scopes::TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException#a5b6ef04ea037bacfe594028306482720>`__,
and
`unity::scopes::ObjectNotExistException </sdk/scopes/cpp/unity.scopes.ObjectNotExistException#af87f8d39791b7efb52cbba9dd0e4da25>`__.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.MiddlewareException/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png

