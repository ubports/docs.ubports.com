.. _sdk_unity_scopes_qt_qscopebase:
unity.scopes.qt QScopeBase
==========================

Base class for a scope implementation.
:ref:`More... <sdk_unity_scopes_qt_qscopebase#details>`

``#include <unity/scopes/qt/QScopeBase.h>``

Inheritance diagram for unity::scopes::qt::QScopeBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

:ref:`start <sdk_unity_scopes_qt_qscopebase#a948bd6ed6f465292db9ffb0eff11f1de>`
(QString const &)

 

virtual void 

:ref:`stop <sdk_unity_scopes_qt_qscopebase#a4cd139ca1b5cb8a1943b39d0729d8ca5>`
()

 

virtual QPreviewQueryBase::UPtr 

:ref:`preview <sdk_unity_scopes_qt_qscopebase#afdedf1ba41623c1ac060ecc4b014f67f>`
(const :ref:`QResult <sdk_unity_scopes_qt_qresult>` &, const
:ref:`QActionMetadata <sdk_unity_scopes_qt_qactionmetadata>` &)=0

 

virtual QSearchQueryBase::UPtr 

:ref:`search <sdk_unity_scopes_qt_qscopebase#a5132deae23a3916170dcfe6fa41810f4>`
(`unity::scopes::CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
const &q,
`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
const &)=0

 

Detailed Description
--------------------

Base class for a scope implementation.

Scopes are accessed by the scopes run time as a shared library (one
library per scope). Each scope must implement a class that derives from
:ref:`QScopeBase <sdk_unity_scopes_qt_qscopebase>`, for example:

#include <unity/scopes/qt/QScopeBase.h>

class MyScope : public
:ref:`unity::scopes::qt::QScopeBase <sdk_unity_scopes_qt_qscopebase>`

{

public:

MyScope();

virtual ~MyScope();

virtual void
:ref:`start <sdk_unity_scopes_qt_qscopebase#a948bd6ed6f465292db9ffb0eff11f1de>`\ (QString
const& scope\_id); // Optional

virtual void
:ref:`stop <sdk_unity_scopes_qt_qscopebase#a4cd139ca1b5cb8a1943b39d0729d8ca5>`\ ();
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

:ref:`unity::scopes::qt::QScopeBase <sdk_unity_scopes_qt_qscopebase>`
\*create\_my\_scope()

{

return new MyScope();

}

`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ \ \*

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
:ref:`start() <sdk_unity_scopes_qt_qscopebase#a948bd6ed6f465292db9ffb0eff11f1de>`,
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
|       | :ref:`QResult <sdk_unit |         |                                      |
|             |                        |                                      |
| | :UPtr              |               |                                      |
|       | y_scopes_qt_qresul |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | t>`_               |         |                                      |
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
|       | sdk_unity_scopes_q |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | t_qactionmetadata> |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | `_                 |         |                                      |
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

.. |Inheritance graph| image:: /mediasdk_unity_scopes_qt_qscopebaseclassunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png

