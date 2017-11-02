.. _sdk_accounts_error:
Accounts Error
==============

Base object definition for accounts error handling.
:ref:`More... <sdk_accounts_error#details>`

``#include <Accounts/Error>``

        Public Types
--------------------

enum  

| :ref:`ErrorType <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45a>` {
|   **NoError** = 0, **Unknown**,
  :ref:`Database <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45aa31884bb2cfbd4d8e2d428904eb1c3f98>`,
  :ref:`Deleted <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45aa04ba35ff69a05b2a16733a01fc003d88>`,
|   :ref:`DatabaseLocked <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45aa155f5bb6520a1d872efe0563428315bf>`,
  :ref:`AccountNotFound <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45aab49b276755b64c7a63a391e03aebbf49>`
| }

 

| :ref:`Error <sdk_accounts_error>` codes for all the accounts errors.
  :ref:`More... <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45a>`

 

        Public Member Functions
-------------------------------

         

:ref:`Error <sdk_accounts_error#a17be1abe802fb9ab3acebe900748cf79>` ()

 

| Basic constructor.

 

 

:ref:`Error <sdk_accounts_error#abc095ef325fbb7c22399270e62f400ca>` (const
:ref:`Error <sdk_accounts_error>` &src)

 

| Copy constructor.

 

 

:ref:`Error <sdk_accounts_error#a43fd5cb964997186acb7f0297cefd666>`
(:ref:`ErrorType <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45a>`
:ref:`type <sdk_accounts_error#ac3b58ce6dc3ba4cbfbabd9d7d7774567>`, const
QString
&\ :ref:`message <sdk_accounts_error#aba2e3009745c37baeaf086e1bc6a3b8d>`\ =QString())

 

| Constructor.

 

:ref:`Error <sdk_accounts_error>` & 

:ref:`operator= <sdk_accounts_error#a25f9ffea919d1d0c265a93df49ee3b32>`
(const :ref:`Error <sdk_accounts_error>` &src)

 

| Assignment operator.

 

        virtual 

:ref:`~Error <sdk_accounts_error#a810251c55fc575f642cf343c4413c2b1>` ()

 

| Destructor.

 

:ref:`ErrorType <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45a>` 

:ref:`type <sdk_accounts_error#ac3b58ce6dc3ba4cbfbabd9d7d7774567>` () const

 

QString 

:ref:`message <sdk_accounts_error#aba2e3009745c37baeaf086e1bc6a3b8d>` ()
const

 

Detailed Description
--------------------

Base object definition for accounts error handling.

Definition at line 42 of file error.h.

Member Enumeration Documentation
--------------------------------

+-----------------------------------------------------------------------------+
| enum :ref:`ErrorType <sdk_accounts_error#ab0df38968e4f03a3f1f6d6df0f31f45a>`|
+-----------------------------------------------------------------------------+

:ref:`Error <sdk_accounts_error>` codes for all the accounts errors.

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
| | :ref:`Error <sdk_ | (            | cons |                                      |
| t        | *src*        | )          |                                      |
|    |              |                  |                                      |
| | accounts_err |              | `Err |                                      |
| or <sdk_ |              |            |                                      |
|    |              |                  |                                      |
| | or>`_        |              | acco |                                      |
| unts_err |              |            |                                      |
|    |              |                  |                                      |
| |              |              | or>` |                                      |
| __       |              |            |                                      |
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
    +-------+-------------------------------------------------------+
    | src   | :ref:`Error <sdk_accounts_error>` object to be copied.   |
    +-------+-------------------------------------------------------+

Definition at line 67 of file error.h.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | inline                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | :ref:`Error <sdk_accoun | (             |                                      |
|       | :ref:`ErrorType <sdk_ac | *type*, |                                      |
|             |                        |                                      |
| | ts_error>`_        |               |                                      |
|       | counts_error#ab0df |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | 38968e4f03a3f1f6d6 |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | df0f31f45a>`_      |         |                                      |
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
| | :ref:`Error <sdk_ | (            | cons |                                      |
| t        | *src*        | )          |                                      |
|    |              |                  |                                      |
| | accounts_err |              | `Err |                                      |
| or <sdk_ |              |            |                                      |
|    |              |                  |                                      |
| | or>`_ \ &    |              | acco |                                      |
| unts_err |              |            |                                      |
|    |              |                  |                                      |
| | operator=    |              | or>` |                                      |
| __       |              |            |                                      |
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
| | `ErrorType <sd | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | k_accounts_err |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | or#ab0df38968e |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 4f03a3f1f6d6df |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 0f31f45a>`_    |                |  |                                      |
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

