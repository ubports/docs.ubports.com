.. _sdk_accounts_application:
Accounts Application
====================

Information on the client applications of libaccounts.
:ref:`More... <sdk_accounts_application#details>`

``#include <Accounts/Application>``

        Public Member Functions
-------------------------------

         

:ref:`Application <sdk_accounts_application#aec7d6461aa7be31d98eff24b9d69ae3d>`
()

 

| Construct an invalid application.

 

 

:ref:`Application <sdk_accounts_application#af5e0a77dad01833eddabf0def1caa475>`
(const :ref:`Application <sdk_accounts_application>` &other)

 

| Copy constructor.

 

:ref:` <>` `Application <sdk_accounts_application>` & 

**operator=** (const :ref:`Application <sdk_accounts_application>` &other)

 

         

:ref:`~Application <sdk_accounts_application#a713b51c450f3ae9db74cd857c2419173>`
()

 

| Destructor.

 

bool 

:ref:`isValid <sdk_accounts_application#aac1b70a2ed67ead038c4d3f5ac4d8a81>`
() const

 

| Check whether this object represents an Application.

 

QString 

:ref:`name <sdk_accounts_application#a2b0a198f837184bf6fff555cee3ce770>` ()
const

 

| Get the unique ID of the application.

 

QString 

:ref:`displayName <sdk_accounts_application#a9def71dea12661002bb3a63b3b91d08d>`
() const

 

| Get the display name of the application.

 

QString 

:ref:`description <sdk_accounts_application#aeaebc63d2181b1a4506603f4e03f1275>`
() const

 

| Get the description of the application.

 

QString 

:ref:`iconName <sdk_accounts_application#a038b22680aca535f9972908fe2f1f6a1>`
() const

 

| Get the icon name of the application.

 

QString 

:ref:`desktopFilePath <sdk_accounts_application#a8e3558c6d34db1186be87e3483ff59f8>`
() const

 

| Get the .desktop file associated with this application.

 

QString 

:ref:`trCatalog <sdk_accounts_application#a6c73afd4753195ea4eee794c95a770dd>`
() const

 

| Get the translation catalog for the texts returned by the methods of
  this class.

 

QString 

:ref:`serviceUsage <sdk_accounts_application#a3e79b6f20785764a31a750544fde6f39>`
(const :ref:`Service <sdk_accounts_service>` &service) const

 

| Get the description from the application XML file, for the specified
  service; if not found, get the service-type description instead.

 

Detailed Description
--------------------

Information on the client applications of libaccounts.

The :ref:`Application <sdk_accounts_application>` structure holds
information on the client applications registered with libaccounts. It
is instantiated by
:ref:`Manager::application() <sdk_accounts_manager#a28ff538d5abd52ff691e30ed75a6b41f>`
and
:ref:`Manager::applicationList() <sdk_accounts_manager#ae18f9f8c59a4e15e8849dd832c54b874>`.

Definition at line 40 of file application.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Application | (            | const        | *other*      | )            |              |
|  <sdk_accoun |              | :ref:`Application |              |              |              |
| ts_applicati |              |  <sdk_accoun |              |              |              |
| on>`_        |              | ts_applicati |              |              |              |
|              |              | on>`_        |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying an :ref:`Application <sdk_accounts_application>` object is very
cheap, because the data is shared among copies.

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
:ref:`Application <sdk_accounts_application>`.

Returns
    true if the :ref:`Application <sdk_accounts_application>` is a valid
    one.

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

+------------------------+-----+-----------------------------------------------+-------------+-----+---------+
| QString serviceUsage   | (   | const :ref:`Service <sdk_accounts_service>` &    | *service*   | )   | const   |
+------------------------+-----+-----------------------------------------------+-------------+-----+---------+

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

