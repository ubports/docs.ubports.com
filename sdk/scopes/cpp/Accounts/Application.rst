Information on the client applications of libaccounts.
`More... </sdk/scopes/cpp/Accounts/Application#details>`__

``#include <Accounts/Application>``

        Public Member Functions
-------------------------------

         

`Application </sdk/scopes/cpp/Accounts/Application#aec7d6461aa7be31d98eff24b9d69ae3d>`__
()

 

| Construct an invalid application.

 

 

`Application </sdk/scopes/cpp/Accounts/Application#af5e0a77dad01833eddabf0def1caa475>`__
(const `Application </sdk/scopes/cpp/Accounts/Application/>`__ &other)

 

| Copy constructor.

 

        `Application </sdk/scopes/cpp/Accounts/Application/>`__ & 

**operator=** (const
`Application </sdk/scopes/cpp/Accounts/Application/>`__ &other)

 

         

`~Application </sdk/scopes/cpp/Accounts/Application#a713b51c450f3ae9db74cd857c2419173>`__
()

 

| Destructor.

 

bool 

`isValid </sdk/scopes/cpp/Accounts/Application#aac1b70a2ed67ead038c4d3f5ac4d8a81>`__
() const

 

| Check whether this object represents an Application.

 

QString 

`name </sdk/scopes/cpp/Accounts/Application#a2b0a198f837184bf6fff555cee3ce770>`__
() const

 

| Get the unique ID of the application.

 

QString 

`displayName </sdk/scopes/cpp/Accounts/Application#a9def71dea12661002bb3a63b3b91d08d>`__
() const

 

| Get the display name of the application.

 

QString 

`description </sdk/scopes/cpp/Accounts/Application#aeaebc63d2181b1a4506603f4e03f1275>`__
() const

 

| Get the description of the application.

 

QString 

`iconName </sdk/scopes/cpp/Accounts/Application#a038b22680aca535f9972908fe2f1f6a1>`__
() const

 

| Get the icon name of the application.

 

QString 

`desktopFilePath </sdk/scopes/cpp/Accounts/Application#a8e3558c6d34db1186be87e3483ff59f8>`__
() const

 

| Get the .desktop file associated with this application.

 

QString 

`trCatalog </sdk/scopes/cpp/Accounts/Application#a6c73afd4753195ea4eee794c95a770dd>`__
() const

 

| Get the translation catalog for the texts returned by the methods of
  this class.

 

QString 

`serviceUsage </sdk/scopes/cpp/Accounts/Application#a3e79b6f20785764a31a750544fde6f39>`__
(const `Service </sdk/scopes/cpp/Accounts/Service/>`__ &service) const

 

| Get the description from the application XML file, for the specified
  service; if not found, get the service-type description instead.

 

Detailed Description
--------------------

Information on the client applications of libaccounts.

The `Application </sdk/scopes/cpp/Accounts/Application/>`__ structure
holds information on the client applications registered with
libaccounts. It is instantiated by
`Manager::application() </sdk/scopes/cpp/Accounts/Manager#a28ff538d5abd52ff691e30ed75a6b41f>`__
and
`Manager::applicationList() </sdk/scopes/cpp/Accounts/Manager#ae18f9f8c59a4e15e8849dd832c54b874>`__.

Definition at line 40 of file application.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Application | (            | const        | *other*      | )            |              |
|  </sdk/scope |              | `Application |              |              |              |
| s/cpp/Accoun |              |  </sdk/scope |              |              |              |
| ts/Applicati |              | s/cpp/Accoun |              |              |              |
| on/>`__      |              | ts/Applicati |              |              |              |
|              |              | on/>`__      |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying an `Application </sdk/scopes/cpp/Accounts/Application/>`__
object is very cheap, because the data is shared among copies.

Definition at line 62 of file application.cpp.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| description    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the description of the application.

Returns
    The application description.

Definition at line 131 of file application.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| desktopFilePat |                |                |                |                |
| h              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the .desktop file associated with this application.

Returns
    The full path to the .desktop file.

Definition at line 160 of file application.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| displayName    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the display name of the application.

Returns
    The application display name.

Definition at line 115 of file application.cpp.

References Application::name().

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| iconName       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the icon name of the application.

Returns
    The application icon name.

Definition at line 140 of file application.cpp.

+----------------+----------------+----------------+----------------+----------------+
| bool isValid   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Check whether this object represents an
`Application </sdk/scopes/cpp/Accounts/Application/>`__.

Returns
    true if the `Application </sdk/scopes/cpp/Accounts/Application/>`__
    is a valid one.

Definition at line 95 of file application.cpp.

Referenced by Application::name().

+----------------+----------------+----------------+----------------+----------------+
| QString name   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Get the unique ID of the application.

This is the name of the .application file minus the .application suffix.

Returns
    The application unique ID.

Definition at line 105 of file application.cpp.

References Application::isValid().

Referenced by Application::displayName().

+------------------------+-----+------------------------------------------------------------+-------------+-----+---------+
| QString serviceUsage   | (   | const `Service </sdk/scopes/cpp/Accounts/Service/>`__ &    | *service*   | )   | const   |
+------------------------+-----+------------------------------------------------------------+-------------+-----+---------+

Get the description from the application XML file, for the specified
service; if not found, get the service-type description instead.

Returns
    Usage description of the service.

Definition at line 187 of file application.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| trCatalog      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the translation catalog for the texts returned by the methods of
this class.

Returns
    The translation catalog name.

Definition at line 177 of file application.cpp.

