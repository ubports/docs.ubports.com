.. _sdk_objectnotexistexception:
ObjectNotExistException
=======================

Exception to indicate that a (twoway) request was sent to an object with
an unknown identity.
`More... </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/#details>`_ 

``#include <unity/scopes/ScopeExceptions.h>``

Inheritance diagram for unity::scopes::ObjectNotExistException:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`ObjectNotExistException </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/#a31beda1f8f1a97154618e97f4ab8e34f>`_ 
(std::string const &reason, std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/#a63a7640944e3799f065379800715580e>`_ )

 

| Constructs the exception.

 

virtual std::exception\_ptr 

`self </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/#af87f8d39791b7efb52cbba9dd0e4da25>`_ 
() const override

 

| Returns a ``std::exception_ptr`` to ``this``.

 

virtual std::string 

`id </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/#a63a7640944e3799f065379800715580e>`_ 
() const

 

| Returns the identity of the non-existent object.

 

Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

         

**ObjectNotExistException**
(`ObjectNotExistException </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/>`_ 
const &)

 

`ObjectNotExistException </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/>`_ 
& 

**operator=**
(`ObjectNotExistException </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/>`_ 
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

Exception to indicate that a (twoway) request was sent to an object with
an unknown identity.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | explicit                             |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | unity::scopes::Obj | (             |                                      |
|       | std::string const  | *reason |                                      |
| *,          |                        |                                      |
| | ectNotExistExcepti |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | on::ObjectNotExist |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | Exception          |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *id*    |                                      |
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

Constructs the exception.

Parameters
    +----------+-----------------------------------------------------+
    | reason   | Further details about the cause of the exception.   |
    +----------+-----------------------------------------------------+
    | id       | The identity of the unknown object.                 |
    +----------+-----------------------------------------------------+

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | string         | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ObjectNotExis |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | tException::id |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns the identity of the non-existent object.

Returns
    The identity of the non-existent object.

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
| | :ObjectNotExis |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | tException::se |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | lf             |                |  |                                      |
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

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ObjectNotExistException/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.ObjectNotExistException/closed.png

