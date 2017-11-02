.. _sdk_scopemetadata:
ScopeMetadata
=============

Holds scope attributes such as name, description, icon etc.
`More... </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#details>`_ 

``#include <unity/scopes/ScopeMetadata.h>``

        Public Types
--------------------

       \ enum  

`ResultsTtlType </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a6fb29deb86215b969a721b9c67328eeb>`_ 
{ **None**, **Small**, **Medium**, **Large** }

 

| Enum representing the expected valid lifetime of results from the
  scope.

 

        Public Member Functions
-------------------------------

std::string 

`scope\_id </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#abc13282db1a0d899e6a1daf2a40beba8>`_ 
() const

 

| Get the scope identifier.

 

:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>` 

`proxy </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a2d3a7700ed04e0f4b6ccb054d869d8c2>`_ 
() const

 

| Get the proxy object for this scope.

 

std::string 

`display\_name </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a7aca280ea8e8b1a96ac24b8f7efabfe8>`_ 
() const

 

| Get the display name for this scope.

 

std::string 

`description </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#adc16d2c66411956f96a6ba3f0b33d811>`_ 
() const

 

| Get the description for this scope.

 

std::string 

`author </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a67465b69a72c548c1c46919dff6809d7>`_ 
() const

 

| Get the author for this scope.

 

std::string 

`art </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#aabeec6ec7dad68309af95c5a1731673c>`_ 
() const

 

| Get the art for this scope.

 

std::string 

`icon </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#af6d6753b013551a2d465a21f8f8bf131>`_ 
() const

 

| Get the icon for this scope.

 

std::string 

`search\_hint </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a5c8ae76986842475d4eaf4d2304f6143>`_ 
() const

 

| Get the search hint for this scope.

 

std::string 

`hot\_key </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#abdeacf5f5dbdb8c75b5a2cbc32e80d82>`_ 
() const

 

| Get the hot key for this scope.

 

bool 

`invisible </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a24360dffb0183b75e064148d5952fdcb>`_ 
() const

 

| Check if this scope should be hidden in the Dash.

 

:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

`appearance\_attributes </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a5929e9ed85eabc03a1bd2324a1234fd6>`_ 
() const

 

| Get optional display attributes.

 

std::string 

`scope\_directory </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a6c4592204ef51a8a6eec2f6cc65ba8cb>`_ 
() const

 

| Get directory where scope config files and .so file lives.

 

:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

`serialize </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#af2aaf529613cd41a1a9a3895271eab32>`_ 
() const

 

| Return a dictionary of all metadata attributes.

 

`ResultsTtlType </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a6fb29deb86215b969a721b9c67328eeb>`_  

`results\_ttl\_type </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#aab63ca25ab0e3ff312908e07d3334ae0>`_ 
() const

 

| Return the TTL for the results this scope produces.

 

:ref:`VariantArray <sdk_unity_scopes#aa3bf32d584efd902bca79698a07dd934>` 

`settings\_definitions </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a6351dda2c91889a06f0ec31e669ab385>`_ 
() const

 

| Return the settings definitions for this scope.

 

bool 

`location\_data\_needed </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a688ff4dbec4f71d8b6bcd3b0879b737b>`_ 
() const

 

| Check if this scope wants location data.

 

std::vector< std::string > 

`child\_scope\_ids </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#ae804c65fc5a6a3fdf85d6c2a0280c3af>`_ 
() const

 

| Return the list of scope identifiers aggregated by this scope.

 

int 

`version </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#ac7a2cf80883ad3de1d726728fc0b8e72>`_ 
() const

 

| Return the version of the scope.

 

std::set< std::string > 

`keywords </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#ad195fd0f83a5afb2aaaf738ee237b045>`_ 
() const

 

| Return the set of keywords specified by this scope.

 

bool 

`is\_aggregator </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#a80ba381c5b402b3c4cd57f0f52271cab>`_ 
() const

 

| Check if this scope is an aggregator.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**ScopeMetadata**
(`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  const
&other)

 

         

**ScopeMetadata**
(`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  &&)

 

        `ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_ 
& 

**operator=**
(`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  const
&other)

 

        `ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_ 
& 

**operator=**
(`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  &&)

 

Detailed Description
--------------------

Holds scope attributes such as name, description, icon etc.

The information stored by
`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  comes
from the .ini file for the given scope (for local scopes) or is fetched
from the remote server (for scopes running on Smart Scopes Server). Use
`unity::scopes::Registry </sdk/scopes/cpp/unity.scopes.Registry/>`_  to
get the metadata for a specific scope or all scopes.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#ad5d8ccfa11a |                |                |                |                |
| 327fca6f3e4cee |                |                |                |                |
| 11f4c10>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::appearance\_ |                |                |                |                |
| attributes     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get optional display attributes.

Appearance attributes define customized look of the scope in Scopes
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`_ .

Returns
    Map of attributes (may be empty)

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::art          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the art for this scope.

Returns
    The scope art.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::author       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the author for this scope.

Returns
    The scope author.

+----------------+----------------+----------------+----------------+----------------+
| std::vector<st | (              |                | )              | const          |
| d::string>     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::child\_scope |                |                |                |                |
| \_ids          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the list of scope identifiers aggregated by this scope.

The list returned by this method comes from the .ini file. The scope
author must ensure that it contains all scopes that an aggregator might
collect results from. This list may contain scopes that are not
currently installed and are optional for proper functioning of the
aggregator scope.

Returns
    The list of scopes ids aggregated by this scope.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::description  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the description for this scope.

Returns
    The scope description.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::display\_nam |                |                |                |                |
| e              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the display name for this scope.

Returns
    The scope display name.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::hot\_key     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the hot key for this scope.

Returns
    The hot key.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::icon         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the icon for this scope.

Returns
    The scope icon.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::invisible    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this scope should be hidden in the Dash.

Returns
    True if this scope is invisible.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::is\_aggregat |                |                |                |                |
| or             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this scope is an aggregator.

Returns
    True if this scope is an aggregator.

+----------------+----------------+----------------+----------------+----------------+
| std::set<std:: | (              |                | )              | const          |
| string>        |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::keywords     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the set of keywords specified by this scope.

The set returned by this method is formulated from the value specified
under the "Keywords" key in the scope's .ini file.

Returns
    The set of keywords specified by this scope.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::location\_da |                |                |                |                |
| ta\_needed     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this scope wants location data.

Returns
    True if this scope wants location data.

+----------------+----------------+----------------+----------------+----------------+
| `ScopeProxy <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#a94db15da410 |                |                |                |                |
| f8419e4da711db |                |                |                |                |
| 842aaae>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::proxy        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the proxy object for this scope.

Returns
    The scope proxy.

+----------------+----------------+----------------+----------------+----------------+
| `ResultsTtlTyp | (              |                | )              | const          |
| e </sdk/scopes |                |                |                |                |
| /cpp/unity.sco |                |                |                |                |
| pes.ScopeMetad |                |                |                |                |
| ata/#a6fb29deb |                |                |                |                |
| 86215b969a721b |                |                |                |                |
| 9c67328eeb>`_  |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::results\_ttl |                |                |                |                |
| \_type         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the TTL for the results this scope produces.

Returns
    Enum of timeout type.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::scope\_direc |                |                |                |                |
| tory           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get directory where scope config files and .so file lives.

Note that the directory is not set for remote scopes; in such case this
method throws
`unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`_ .

Exceptions
    +------------------------------------------------------------------------------------------+---------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`_    | if directory is not set   |
    +------------------------------------------------------------------------------------------+---------------------------+

Returns
    path string

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::scope\_id    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the scope identifier.

Returns
    The ID of the scope.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::search\_hint |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the search hint for this scope.

Returns
    The search hint.

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#ad5d8ccfa11a |                |                |                |                |
| 327fca6f3e4cee |                |                |                |                |
| 11f4c10>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::serialize    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return a dictionary of all metadata attributes.

Returns
    Dictionary of all metadata attributes.

+----------------+----------------+----------------+----------------+----------------+
| `VariantArray  | (              |                | )              | const          |
| <sdk_unity_sco |                |                |                |                |
| pes#aa3bf32d58 |                |                |                |                |
| 4efd902bca7969 |                |                |                |                |
| 8a07dd934>`_   |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::settings\_de |                |                |                |                |
| finitions      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the settings definitions for this scope.

Returns
    The settings definition as a VariantArray. The array contains the
    definition of the settings in their original order.

Exceptions
    +------------------------------------------------------------------------------------------+--------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`_    | if the scope has no settings   |
    +------------------------------------------------------------------------------------------+--------------------------------+

See also
    TBD TODO

+----------------+----------------+----------------+----------------+----------------+
| int            | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ScopeMetadata |                |                |                |                |
| ::version      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the version of the scope.

Returns
    The version or, if the scope does not define its version, the value
    ``0``.

