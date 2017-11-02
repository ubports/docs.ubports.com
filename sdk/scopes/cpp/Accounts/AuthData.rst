.. _sdk_accounts_authdata:
Accounts AuthData
=================

Information for account authentication.
:ref:`More... <sdk_accounts_authdata#details>`

``#include <Accounts/AuthData>``

        Public Member Functions
-------------------------------

 

:ref:`AuthData <sdk_accounts_authdata#aeba8fdc4a52c97afb61f49b9a4d6b9c4>`
(const :ref:`AuthData <sdk_accounts_authdata>` &other)

 

| Copy constructor.

 

        virtual 

:ref:`~AuthData <sdk_accounts_authdata#a5bbaeb60e91e492e40be40271b3f4194>`
()

 

| Destructor.

 

uint 

:ref:`credentialsId <sdk_accounts_authdata#a9fe8b6778698b1949275326717f35b02>`
() const

 

QString 

:ref:`method <sdk_accounts_authdata#a47b45cea7d4fbacc4d751adaeb1e8d79>` ()
const

 

| Get the authentication method which must be used when logging in with
  this account.

 

QString 

:ref:`mechanism <sdk_accounts_authdata#aaff7a936205f9c8044c0093f6497c514>`
() const

 

| Get the authentication mechanism which must be used when logging in
  with this account.

 

QVariantMap 

:ref:`parameters <sdk_accounts_authdata#a149775212ebd051147314d4a3bfff30d>`
() const

 

| Get the dictionary of authentication parameters which must be used
  when logging in with this account.

 

Detailed Description
--------------------

Information for account authentication.

The :ref:`AuthData <sdk_accounts_authdata>` class holds information on the
authentication parameters used by an account. It is an implicitly shared
object which can be created with the
:ref:`AccountService::authData <sdk_accounts_accountservice#a49a9f7deccedeebacadc37ae01ac83ab>`
method.

Definition at line 49 of file auth-data.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `AuthData <s | (            | const        | *other*      | )            |              |
| dk_accounts_ |              | `AuthData <s |              |              |              |
| authdata>`_  |              | dk_accounts_ |              |              |              |
|              |              | authdata>`_  |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying an :ref:`AuthData <sdk_accounts_authdata>` object is very cheap,
because the data is shared among copies.

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

