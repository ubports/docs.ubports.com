.. _sdk_timeoutexception:
TimeoutException
================

Exception to indicate that a twoway request timed out.
`More... </sdk/scopes/cpp/unity.scopes.TimeoutException/#details>`_ 

``#include <unity/scopes/ScopeExceptions.h>``

Inheritance diagram for unity::scopes::TimeoutException:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException/#a76573760d4c9c8b019675302000d4f1a>`_ 
(std::string const &reason)

 

| Constructs the exception.

 

virtual std::exception\_ptr 

`self </sdk/scopes/cpp/unity.scopes.TimeoutException/#a5b6ef04ea037bacfe594028306482720>`_ 
() const override

 

| Returns a ``std::exception_ptr`` to ``this``.

 

Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

         

**TimeoutException**
(`TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException/>`_ 
const &)

 

`TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException/>`_  & 

**operator=**
(`TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException/>`_ 
const &)

 

|-| Public Member Functions inherited from
`unity::scopes::MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`_ 

 

`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/#af6250d2e529d103d30d3ebf06689c146>`_ 
(std::string const &reason)

 

| Constructs the exception.

 

         

**MiddlewareException**
(`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`_ 
const &)

 

`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`_ 
& 

**operator=**
(`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`_ 
const &)

 

Detailed Description
--------------------

Exception to indicate that a twoway request timed out.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | std: |                                      |
| :string  | *reason*     | )          |                                      |
|    |              |                  |                                      |
| | s::TimeoutEx |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | ception::Tim |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | eoutExceptio |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | n            |              |      |                                      |
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
| | :TimeoutExcept |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ion::self      |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a ``std::exception_ptr`` to ``this``.

Returns
    ``std::exception_ptr`` to ``this``.

Reimplemented from
`unity::scopes::MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/#a5317c0215a98eb896d1d706450d2919e>`_ .

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.TimeoutException/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.TimeoutException/closed.png

