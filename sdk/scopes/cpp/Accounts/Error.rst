Base object definition for accounts error handling.
`More... </sdk/scopes/cpp/Accounts/Error#details>`__

``#include <Accounts/Error>``

        Public Types
--------------------

enum  

| `ErrorType </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45a>`__
  {
|   **NoError** = 0, **Unknown**,
  `Database </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45aa31884bb2cfbd4d8e2d428904eb1c3f98>`__,
  `Deleted </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45aa04ba35ff69a05b2a16733a01fc003d88>`__,
|   `DatabaseLocked </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45aa155f5bb6520a1d872efe0563428315bf>`__,
  `AccountNotFound </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45aab49b276755b64c7a63a391e03aebbf49>`__
| }

 

| `Error </sdk/scopes/cpp/Accounts/Error/>`__ codes for all the accounts
  errors.
  `More... </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45a>`__

 

        Public Member Functions
-------------------------------

         

`Error </sdk/scopes/cpp/Accounts/Error#a17be1abe802fb9ab3acebe900748cf79>`__
()

 

| Basic constructor.

 

 

`Error </sdk/scopes/cpp/Accounts/Error#abc095ef325fbb7c22399270e62f400ca>`__
(const `Error </sdk/scopes/cpp/Accounts/Error/>`__ &src)

 

| Copy constructor.

 

 

`Error </sdk/scopes/cpp/Accounts/Error#a43fd5cb964997186acb7f0297cefd666>`__
(`ErrorType </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45a>`__
`type </sdk/scopes/cpp/Accounts/Error#ac3b58ce6dc3ba4cbfbabd9d7d7774567>`__,
const QString
&\ `message </sdk/scopes/cpp/Accounts/Error#aba2e3009745c37baeaf086e1bc6a3b8d>`__\ =QString())

 

| Constructor.

 

`Error </sdk/scopes/cpp/Accounts/Error/>`__ & 

`operator= </sdk/scopes/cpp/Accounts/Error#a25f9ffea919d1d0c265a93df49ee3b32>`__
(const `Error </sdk/scopes/cpp/Accounts/Error/>`__ &src)

 

| Assignment operator.

 

        virtual 

`~Error </sdk/scopes/cpp/Accounts/Error#a810251c55fc575f642cf343c4413c2b1>`__
()

 

| Destructor.

 

`ErrorType </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45a>`__ 

`type </sdk/scopes/cpp/Accounts/Error#ac3b58ce6dc3ba4cbfbabd9d7d7774567>`__
() const

 

QString 

`message </sdk/scopes/cpp/Accounts/Error#aba2e3009745c37baeaf086e1bc6a3b8d>`__
() const

 

Detailed Description
--------------------

Base object definition for accounts error handling.

Definition at line 42 of file error.h.

Member Enumeration Documentation
--------------------------------

+-----------------------------------------------------------------------------------------+
| enum `ErrorType </sdk/scopes/cpp/Accounts/Error#ab0df38968e4f03a3f1f6d6df0f31f45a>`__   |
+-----------------------------------------------------------------------------------------+

`Error </sdk/scopes/cpp/Accounts/Error/>`__ codes for all the accounts
errors.

Enumerator
       \ Database 
Generic database error

       \ Deleted 
The account object refers to an account which has been deleted

       \ DatabaseLocked 
The database is locked

       \ AccountNotFound 
The account couldn't be found

Definition at line 48 of file error.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | inline                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | `Error </sdk | (            | cons |                                      |
| t        | *src*        | )          |                                      |
|    |              |                  |                                      |
| | /scopes/cpp/ |              | `Err |                                      |
| or </sdk |              |            |                                      |
|    |              |                  |                                      |
| | Accounts/Err |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | or/>`__      |              | Acco |                                      |
| unts/Err |              |            |                                      |
|    |              |                  |                                      |
| |              |              | or/> |                                      |
| `__      |              |            |                                      |
|    |              |                  |                                      |
| |              |              | &    |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Copy constructor.

Parameters
    +-------+--------------------------------------------------------------------+
    | src   | `Error </sdk/scopes/cpp/Accounts/Error/>`__ object to be copied.   |
    +-------+--------------------------------------------------------------------+

Definition at line 67 of file error.h.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | inline                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `Error </sdk/scope | (             |                                      |
|       | `ErrorType </sdk/s | *type*, |                                      |
|             |                        |                                      |
| | s/cpp/Accounts/Err |               |                                      |
|       | copes/cpp/Accounts |         |                                      |
|             |                        |                                      |
| | or/>`__            |               |                                      |
|       | /Error#ab0df38968e |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | 4f03a3f1f6d6df0f31 |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | f45a>`__           |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | const QString &    | *messag |                                      |
| e* =        |                        |                                      |
| |                    |               |                                      |
|       |                    | ``QStri |                                      |
| ng()``      |                        |                                      |
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

Constructor.

Parameters
    +-----------+------------------------+
    | type      | The error's type.      |
    +-----------+------------------------+
    | message   | The error's message.   |
    +-----------+------------------------+

Definition at line 75 of file error.h.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | inline                               |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | QString        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | message        |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns
    The error's message.

Definition at line 99 of file error.h.

Referenced by Error::operator=().

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | inline                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | `Error </sdk | (            | cons |                                      |
| t        | *src*        | )          |                                      |
|    |              |                  |                                      |
| | /scopes/cpp/ |              | `Err |                                      |
| or </sdk |              |            |                                      |
|    |              |                  |                                      |
| | Accounts/Err |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | or/>`__\ &   |              | Acco |                                      |
| unts/Err |              |            |                                      |
|    |              |                  |                                      |
| | operator=    |              | or/> |                                      |
| `__      |              |            |                                      |
|    |              |                  |                                      |
| |              |              | &    |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Assignment operator.

Parameters
    +-------+-----------------------------------------------------+
    | src   | The error object to be assigned to this instance.   |
    +-------+-----------------------------------------------------+

Definition at line 83 of file error.h.

References Error::message(), and Error::type().

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | inline                               |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `ErrorType </s | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | dk/scopes/cpp/ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | Accounts/Error |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | #ab0df38968e4f |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 03a3f1f6d6df0f |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 31f45a>`__     |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | type           |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns
    The error's type.

Definition at line 94 of file error.h.

Referenced by Error::operator=().

