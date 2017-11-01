Exception to indicate that something went wrong with the contents of
configuration files.
`More... </sdk/scopes/cpp/unity.scopes.ConfigException#details>`__

``#include <unity/scopes/ScopeExceptions.h>``

Inheritance diagram for unity::scopes::ConfigException:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`ConfigException </sdk/scopes/cpp/unity.scopes.ConfigException#a5478ebe647b1aa386d17fa079f573cb3>`__
(std::string const &reason)

 

| Constructs the exception.

 

virtual std::exception\_ptr 

`self </sdk/scopes/cpp/unity.scopes.ConfigException#a413ff3265dff664dabae83f73a58c58b>`__
() const override

 

| Returns a ``std::exception_ptr`` to ``this``.

 

Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

         

**ConfigException**
(`ConfigException </sdk/scopes/cpp/unity.scopes.ConfigException/>`__
const &)

 

`ConfigException </sdk/scopes/cpp/unity.scopes.ConfigException/>`__ & 

**operator=**
(`ConfigException </sdk/scopes/cpp/unity.scopes.ConfigException/>`__
const &)

 

Detailed Description
--------------------

Exception to indicate that something went wrong with the contents of
configuration files.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | std: |                                      |
| :string  | *reason*     | )          |                                      |
|    |              |                  |                                      |
| | s::ConfigExc |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | eption::Conf |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | igException  |              |      |                                      |
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
| | :ConfigExcepti |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | on::self       |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a ``std::exception_ptr`` to ``this``.

Returns
    ``std::exception_ptr`` to ``this``.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ConfigException/classunity_1_1scopes_1_1_config_exception__inherit__graph.png

