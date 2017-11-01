Base class for a scope implementation.
`More... </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#details>`__

``#include <unity/scopes/qt/QScopeBase.h>``

Inheritance diagram for unity::scopes::qt::QScopeBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`start </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#a948bd6ed6f465292db9ffb0eff11f1de>`__
(QString const &)

 

virtual void 

`stop </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#a4cd139ca1b5cb8a1943b39d0729d8ca5>`__
()

 

virtual QPreviewQueryBase::UPtr 

`preview </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#afdedf1ba41623c1ac060ecc4b014f67f>`__
(const `QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__ &, const
`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__
&)=0

 

virtual QSearchQueryBase::UPtr 

`search </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#a5132deae23a3916170dcfe6fa41810f4>`__
(`unity::scopes::CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__
const &q,
`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__
const &)=0

 

Detailed Description
--------------------

Base class for a scope implementation.

Scopes are accessed by the scopes run time as a shared library (one
library per scope). Each scope must implement a class that derives from
`QScopeBase </sdk/scopes/cpp/unity.scopes.qt/QScopeBase/>`__, for
example:

#include <unity/scopes/qt/QScopeBase.h>

class MyScope : public
`unity::scopes::qt::QScopeBase </sdk/scopes/cpp/unity.scopes.qt/QScopeBase/>`__

{

public:

MyScope();

virtual ~MyScope();

virtual void
`start </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#a948bd6ed6f465292db9ffb0eff11f1de>`__\ (QString
const& scope\_id); // Optional

virtual void
`stop </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#a4cd139ca1b5cb8a1943b39d0729d8ca5>`__\ ();
// Optional

// ...

};

In addition, the library must provide two functions with "C" linkage:

-  a create function that must return a pointer to the derived instance
-  a destroy function that is passed the pointer returned by the create
   function

If the create function throws an exception, the destroy function will
not be called. If the create function returns NULL, the destroy function
*will* be called with NULL as its argument.

Rather than hard-coding the names of the functions, use the
UNITY\_SCOPE\_CREATE\_FUNCTION and UNITY\_SCOPE\_DESTROY\_FUNCTION
macros, for example:

// You must provide a function that creates your scope on the heap and

// pass this function to the QScopeBaseAPI constructor.

`unity::scopes::qt::QScopeBase </sdk/scopes/cpp/unity.scopes.qt/QScopeBase/>`__
\*create\_my\_scope()

{

return new MyScope();

}

`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__\ \*

UNITY\_SCOPE\_CREATE\_FUNCTION()

{

// You must return a dynamically allocated QScopeBaseAPI instance here.

// In turn, that instance calls your creation function to instantiate

// your scope in the correct Qt thread.

return new QScopeBaseAPI(create\_my\_scope);

}

// The runtime, once it has stopped your scope, calls the destroy
function.

void

UNITY\_SCOPE\_DESTROY\_FUNCTION(unity::scopes::ScopeBase\* scope)

{

delete scope;

}

After the scopes run time has obtained a pointer to the class instance
from the create function, it calls
`start() </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#a948bd6ed6f465292db9ffb0eff11f1de>`__,
which allows the scope to initialize itself.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | const              | ,       |                                      |
|             |                        |                                      |
| | QPreviewQueryBase: |               |                                      |
|       | `QResult </sdk/sco |         |                                      |
|             |                        |                                      |
| | :UPtr              |               |                                      |
|       | pes/cpp/unity.scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | es.qt/QResult/>`__ |         |                                      |
|             |                        |                                      |
| | :QScopeBase::previ |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | ew                 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | const              |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | `QActionMetadata < |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | /sdk/scopes/cpp/un |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ity.scopes.qt/QAct |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ionMetadata/>`__   |         |                                      |
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

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `unity::scopes::Ca | *q*,    |                                      |
|             |                        |                                      |
| | QSearchQueryBase:: |               |                                      |
|       | nnedQuery </sdk/sc |         |                                      |
|             |                        |                                      |
| | UPtr               |               |                                      |
|       | opes/cpp/unity.sco |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | pes.CannedQuery/>` |         |                                      |
|             |                        |                                      |
| | :QScopeBase::searc |               |                                      |
|       | __                 |         |                                      |
|             |                        |                                      |
| | h                  |               |                                      |
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
|       | ata/>`__           |         |                                      |
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

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | QStr |                                      |
| ing      | *start\_stri | )          |                                      |
|    |              |                  |                                      |
| | QScopeBase:: |              | cons |                                      |
| t &      | ng*          |            |                                      |
|    |              |                  |                                      |
| | start        |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called once at startup

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | void           | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | QScopeBase::st |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | op             |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Called at shutdown

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QScopeBase/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png

