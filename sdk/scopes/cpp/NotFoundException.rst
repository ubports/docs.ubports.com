Exception to indicate that an object wasn't found by a lookup function.
`More... </sdk/scopes/cpp/unity.scopes.NotFoundException#details>`__

``#include <unity/scopes/ScopeExceptions.h>``

Inheritance diagram for unity::scopes::NotFoundException:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException#adcda23015482c9a3fd7d7890ab152b9f>`__
(std::string const &reason, std::string const
&\ `name </sdk/scopes/cpp/unity.scopes.NotFoundException#a7a27983f2cfa8034f2dccb67a996730b>`__)

 

| Constructs the exception.

 

virtual std::exception\_ptr 

`self </sdk/scopes/cpp/unity.scopes.NotFoundException#a649bfe3375d8e276394a73c07908411d>`__
() const override

 

| Returns a ``std::exception_ptr`` to ``this``.

 

virtual std::string 

`name </sdk/scopes/cpp/unity.scopes.NotFoundException#a7a27983f2cfa8034f2dccb67a996730b>`__
() const

 

| Returns the name that was passed to the constructor.

 

Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

         

**NotFoundException**
(`NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__
const &)

 

`NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__
& 

**operator=**
(`NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__
const &)

 

Detailed Description
--------------------

Exception to indicate that an object wasn't found by a lookup function.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | explicit                             |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | unity::scopes::Not | (             |                                      |
|       | std::string const  | *reason |                                      |
| *,          |                        |                                      |
| | FoundException::No |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | tFoundException    |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *name*  |                                      |
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
    | name     | The name of the object that was not found.          |
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
| | :NotFoundExcep |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | tion::name     |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns the name that was passed to the constructor.

Returns
    The name that was passed to the constructor.

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
| | :NotFoundExcep |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | tion::self     |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a ``std::exception_ptr`` to ``this``.

Returns
    ``std::exception_ptr`` to ``this``.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.NotFoundException/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png

