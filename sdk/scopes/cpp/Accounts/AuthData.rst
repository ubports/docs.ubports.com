Information for account authentication.
`More... </sdk/scopes/cpp/Accounts/AuthData#details>`__

``#include <Accounts/AuthData>``

        Public Member Functions
-------------------------------

 

`AuthData </sdk/scopes/cpp/Accounts/AuthData#aeba8fdc4a52c97afb61f49b9a4d6b9c4>`__
(const `AuthData </sdk/scopes/cpp/Accounts/AuthData/>`__ &other)

 

| Copy constructor.

 

        virtual 

`~AuthData </sdk/scopes/cpp/Accounts/AuthData#a5bbaeb60e91e492e40be40271b3f4194>`__
()

 

| Destructor.

 

uint 

`credentialsId </sdk/scopes/cpp/Accounts/AuthData#a9fe8b6778698b1949275326717f35b02>`__
() const

 

QString 

`method </sdk/scopes/cpp/Accounts/AuthData#a47b45cea7d4fbacc4d751adaeb1e8d79>`__
() const

 

| Get the authentication method which must be used when logging in with
  this account.

 

QString 

`mechanism </sdk/scopes/cpp/Accounts/AuthData#aaff7a936205f9c8044c0093f6497c514>`__
() const

 

| Get the authentication mechanism which must be used when logging in
  with this account.

 

QVariantMap 

`parameters </sdk/scopes/cpp/Accounts/AuthData#a149775212ebd051147314d4a3bfff30d>`__
() const

 

| Get the dictionary of authentication parameters which must be used
  when logging in with this account.

 

Detailed Description
--------------------

Information for account authentication.

The `AuthData </sdk/scopes/cpp/Accounts/AuthData/>`__ class holds
information on the authentication parameters used by an account. It is
an implicitly shared object which can be created with the
`AccountService::authData </sdk/scopes/cpp/Accounts/AccountService#a49a9f7deccedeebacadc37ae01ac83ab>`__
method.

Definition at line 49 of file auth-data.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `AuthData </ | (            | const        | *other*      | )            |              |
| sdk/scopes/c |              | `AuthData </ |              |              |              |
| pp/Accounts/ |              | sdk/scopes/c |              |              |              |
| AuthData/>`_ |              | pp/Accounts/ |              |              |              |
| _            |              | AuthData/>`_ |              |              |              |
|              |              | _            |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying an `AuthData </sdk/scopes/cpp/Accounts/AuthData/>`__ object is
very cheap, because the data is shared among copies.

Definition at line 48 of file auth-data.cpp.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| uint           | (              |                | )              | const          |
| credentialsId  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The ID of the credentials associated with this account.

Definition at line 74 of file auth-data.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| mechanism      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the authentication mechanism which must be used when logging in with
this account.

Returns
    The authentication mechanism.

Definition at line 94 of file auth-data.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString method | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Get the authentication method which must be used when logging in with
this account.

Returns
    The authentication method.

Definition at line 84 of file auth-data.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QVariantMap    | (              |                | )              | const          |
| parameters     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the dictionary of authentication parameters which must be used when
logging in with this account.

Returns
    The authentication parameters.

Definition at line 104 of file auth-data.cpp.

