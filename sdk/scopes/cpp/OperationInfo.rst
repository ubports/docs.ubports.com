A container for details about something of interest that occurs during
the operation of a request.
`More... </sdk/scopes/cpp/unity.scopes.OperationInfo#details>`__

``#include <unity/scopes/OperationInfo.h>``

        Public Types
--------------------

enum  

| `InfoCode </sdk/scopes/cpp/unity.scopes.OperationInfo#a57178085d8ea6d116347b8fa3fe8878d>`__
  {
|   **Unknown**, **NoInternet**, **PoorInternet**, **NoLocationData**,
|   **InaccurateLocationData**, **ResultsIncomplete**,
  **DefaultSettingsUsed**, **SettingsProblem**,
|   **LastInfoCode\_** = SettingsProblem
| }

 

| Indicates the type of / cause for the information being reported.
  `More... </sdk/scopes/cpp/unity.scopes.OperationInfo#a57178085d8ea6d116347b8fa3fe8878d>`__

 

        Public Member Functions
-------------------------------

 

`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo#a38875517344af4ca90565cc523af918b>`__
(`InfoCode </sdk/scopes/cpp/unity.scopes.OperationInfo#a57178085d8ea6d116347b8fa3fe8878d>`__
`code </sdk/scopes/cpp/unity.scopes.OperationInfo#a7e00ec86a3a0974df981146cea0202f9>`__)

 

| Create OperationInfo with the given info code.

 

 

`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo#a711cd4c4d7ca4a4ff884b81440fd3934>`__
(`InfoCode </sdk/scopes/cpp/unity.scopes.OperationInfo#a57178085d8ea6d116347b8fa3fe8878d>`__
`code </sdk/scopes/cpp/unity.scopes.OperationInfo#a7e00ec86a3a0974df981146cea0202f9>`__,
std::string
`message </sdk/scopes/cpp/unity.scopes.OperationInfo#a2676a34824fc6c2481dbc30836d7ebf2>`__)

 

| Create OperationInfo with the given info code and message.

 

`InfoCode </sdk/scopes/cpp/unity.scopes.OperationInfo#a57178085d8ea6d116347b8fa3fe8878d>`__ 

`code </sdk/scopes/cpp/unity.scopes.OperationInfo#a7e00ec86a3a0974df981146cea0202f9>`__
() const noexcept

 

| Get the info code.

 

std::string 

`message </sdk/scopes/cpp/unity.scopes.OperationInfo#a2676a34824fc6c2481dbc30836d7ebf2>`__
() const

 

| Get the message string.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**OperationInfo**
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ const
&other)

 

         

**OperationInfo**
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ &&)

 

        `OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__
& 

**operator=**
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ const
&other)

 

        `OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__
& 

**operator=**
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ &&)

 

Detailed Description
--------------------

A container for details about something of interest that occurs during
the operation of a request.

Member Enumeration Documentation
--------------------------------

+----------------------------------------------------------------------------------------------------------------------------------+
| enum `unity::scopes::OperationInfo::InfoCode </sdk/scopes/cpp/unity.scopes.OperationInfo#a57178085d8ea6d116347b8fa3fe8878d>`__   |
+----------------------------------------------------------------------------------------------------------------------------------+

Indicates the type of / cause for the information being reported.

For example, the ``NoInternet`` enumerator may indicate that access to
the internet was required in order to properly evaluate a request, but
no internet connectivity was available.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | `InfoCode </ | *code*       | )            |              |
| s::Operation |              | sdk/scopes/c |              |              |              |
| Info::Operat |              | pp/unity.sco |              |              |              |
| ionInfo      |              | pes.Operatio |              |              |              |
|              |              | nInfo#a57178 |              |              |              |
|              |              | 085d8ea6d116 |              |              |              |
|              |              | 347b8fa3fe88 |              |              |              |
|              |              | 78d>`__      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Create `OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__
with the given info code.

Parameters
    +--------+------------------------------------------------------+
    | code   | Indicates the type of / cause for the information.   |
    +--------+------------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Ope | (                  | `InfoCode </sdk/sc | *code*,            |
| rationInfo::Operat |                    | opes/cpp/unity.sco |                    |
| ionInfo            |                    | pes.OperationInfo# |                    |
|                    |                    | a57178085d8ea6d116 |                    |
|                    |                    | 347b8fa3fe8878d>`_ |                    |
|                    |                    | _                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string        | *message*          |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create `OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__
with the given info code and message.

Parameters
    +-----------+------------------------------------------------------+
    | code      | Indicates the type of / cause for the information.   |
    +-----------+------------------------------------------------------+
    | message   | Contains further details about the info code.        |
    +-----------+------------------------------------------------------+

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `OperationInfo | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | ::InfoCode </s |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | dk/scopes/cpp/ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity.scopes.O |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | perationInfo#a |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 57178085d8ea6d |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 116347b8fa3fe8 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 878d>`__       |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :OperationInfo |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ::code         |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the info code.

Returns
    Enum indicating the type of info contained.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :OperationInfo |                |                |                |                |
| ::message      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the message string.

Returns
    The message string.

