.. _sdk_unity_scopes_qt_qsearchmetadata:
unity.scopes.qt QSearchMetadata
===============================

Metadata passed with search requests.
:ref:`More... <sdk_unity_scopes_qt_qsearchmetadata#details>`

``#include <unity/scopes/qt/QSearchMetadata.h>``

        Public Member Functions
-------------------------------

 

:ref:`QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata#a92db05ea573b0c55c5b73c5c1576e51e>`
(QString const &locale, QString const &form\_factor)

 

| Create SearchMetadata with the given locale and form factor.

 

 

:ref:`QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata#aac638e4b40c119cd9b6f43f693cda2af>`
(int
:ref:`cardinality <sdk_unity_scopes_qt_qsearchmetadata#ac560e26fbc8376625de16031c863afe8>`,
QString const &locale, QString const &form\_factor)

 

| Create SearchMetadata with the given cardinality, locale, and form
  factor.

 

void 

:ref:`set\_cardinality <sdk_unity_scopes_qt_qsearchmetadata#ab0dcad3fa29fb7553ede65ef20b0255d>`
(int
:ref:`cardinality <sdk_unity_scopes_qt_qsearchmetadata#ac560e26fbc8376625de16031c863afe8>`)

 

| Set cardinality.

 

int 

:ref:`cardinality <sdk_unity_scopes_qt_qsearchmetadata#ac560e26fbc8376625de16031c863afe8>`
() const

 

| Get cardinality.

 

void 

:ref:`set\_location <sdk_unity_scopes_qt_qsearchmetadata#a4479bd25415f2c9e0bdd4e80e9c8a9e2>`
(`Location </sdk/scopes/cpp/unity.scopes.Location/>`_  const
&\ :ref:`location <sdk_unity_scopes_qt_qsearchmetadata#a844f3a8b081df7482120acd39725a7f9>`)

 

| Set location.

 

`Location </sdk/scopes/cpp/unity.scopes.Location/>`_  

:ref:`location <sdk_unity_scopes_qt_qsearchmetadata#a844f3a8b081df7482120acd39725a7f9>`
() const

 

| Get location.

 

bool 

:ref:`has\_location <sdk_unity_scopes_qt_qsearchmetadata#ab61ff7b56a2c6a2f5b951c2d317180a8>`
() const

 

| Does the SearchMetadata have a location.

 

void 

:ref:`remove\_location <sdk_unity_scopes_qt_qsearchmetadata#a7268b98c17357bbcba30d2bd85a5f0b3>`
()

 

| Remove location data entirely.

 

void 

:ref:`set\_hint <sdk_unity_scopes_qt_qsearchmetadata#adb6bfe57d0d7a421fa2b19c498728d50>`
(QString const &key, QVariant const &value)

 

| Sets a hint.

 

QVariantMap 

:ref:`hints <sdk_unity_scopes_qt_qsearchmetadata#a10ea65002ca32ec982be76758c5d951b>`
() const

 

| Get all hints.

 

bool 

:ref:`contains\_hint <sdk_unity_scopes_qt_qsearchmetadata#acfdb14b65570a7d83a0c477dc7fb7d2c>`
(QString const &key) const

 

| Check if this SearchMetadata has a hint.

 

QVariant & 

:ref:`operator[] <sdk_unity_scopes_qt_qsearchmetadata#a10eac0fb5b37277479a6953f52314560>`
(QString const &key)

 

| Returns a reference to a hint.

 

QVariant const & 

:ref:`operator[] <sdk_unity_scopes_qt_qsearchmetadata#a04baf06aa57a85811dae85093d688911>`
(QString const &key) const

 

| Returns a const reference to a hint.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QSearchMetadata**
(:ref:`QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata>` const &other)

 

         

**QSearchMetadata**
(:ref:`QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata>` &&)

 

:ref:` <>` `QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata>` & 

**operator=** (:ref:`QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata>`
const &other)

 

:ref:` <>` `QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata>` & 

**operator=** (:ref:`QSearchMetadata <sdk_unity_scopes_qt_qsearchmetadata>`
&&)

 

Detailed Description
--------------------

Metadata passed with search requests.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::qt: | (                  | QString const &    | *locale*,          |
| :QSearchMetadata:: |                    |                    |                    |
| QSearchMetadata    |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QString const &    | *form\_factor*     |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create `SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
with the given locale and form factor.

Parameters
    +----------------+-------------------------------------------------------------+
    | locale         | locale string, eg. en\_EN                                   |
    +----------------+-------------------------------------------------------------+
    | form\_factor   | form factor name, e.g. phone, desktop, phone-version etc.   |
    +----------------+-------------------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::qt: | (                  | int                | *cardinality*,     |
| :QSearchMetadata:: |                    |                    |                    |
| QSearchMetadata    |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QString const &    | *locale*,          |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QString const &    | *form\_factor*     |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create `SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
with the given cardinality, locale, and form factor.

Parameters
    +----------------+-------------------------------------------------------------+
    | cardinality    | maximum number of search results                            |
    +----------------+-------------------------------------------------------------+
    | locale         | locale string, eg. en\_EN                                   |
    +----------------+-------------------------------------------------------------+
    | form\_factor   | form factor name, e.g. phone, desktop, phone-version etc.   |
    +----------------+-------------------------------------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| int            | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QSearchMe |                |                |                |                |
| tadata::cardin |                |                |                |                |
| ality          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get cardinality.

Returns
    The maxmium number of search results, or 0 for no limit.

+-----------------------------------------------------------+-----+--------------------+---------+-----+---------+
| bool unity::scopes::qt::QSearchMetadata::contains\_hint   | (   | QString const &    | *key*   | )   | const   |
+-----------------------------------------------------------+-----+--------------------+---------+-----+---------+

Check if this
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  has a
hint.

Parameters
    +-------+------------------+
    | key   | The hint name.   |
    +-------+------------------+

Returns
    True if the hint is set.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QSearchMe |                |                |                |                |
| tadata::has\_l |                |                |                |                |
| ocation        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Does the
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  have a
location.

Returns
    True if there is a location property.

+----------------+----------------+----------------+----------------+----------------+
| QVariantMap    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QSearchMe |                |                |                |                |
| tadata::hints  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get all hints.

Returns
    Hints dictionary.

Exceptions
    +----------------------------+------------------------------+
    | unity::NotFoundException   | if no hints are available.   |
    +----------------------------+------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `Location </sd | (              |                | )              | const          |
| k/scopes/cpp/u |                |                |                |                |
| nity.scopes.Lo |                |                |                |                |
| cation/>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QSearchMe |                |                |                |                |
| tadata::locati |                |                |                |                |
| on             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get location.

Returns
    `Location </sdk/scopes/cpp/unity.scopes.Location/>`_  data
    representing the current location, including attributes such as city
    and country.

Exceptions
    +----------------------------+-------------------------------------+
    | unity::NotFoundException   | if no location data is available.   |
    +----------------------------+-------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| QVariant&    | (            | QString      | *key*        | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::qt::QSear |              |              |              |              |              |
| chMetadata:: |              |              |              |              |              |
| operator[]   |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an
existing hint overwrites its previous value. Referencing a non-existing
hint automatically creates it with a default value of
Variant::Type::Null.

Parameters
    +-------+-------------------------+
    | key   | The name of the hint.   |
    +-------+-------------------------+

Returns
    A reference to the hint.

+------------------------------------------------------------------+-----+--------------------+---------+-----+---------+
| QVariant const& unity::scopes::qt::QSearchMetadata::operator[]   | (   | QString const &    | *key*   | )   | const   |
+------------------------------------------------------------------+-----+--------------------+---------+-----+---------+

Returns a const reference to a hint.

This method can be used for read-only access to hints. Referencing a
non-existing hint throws unity::InvalidArgumentException.

Parameters
    +-------+-------------------------+
    | key   | The name of the hint.   |
    +-------+-------------------------+

Returns
    A const reference to the hint.

Exceptions
    +----------------------------+------------------------------------------+
    | unity::NotFoundException   | if no hint with the given name exists.   |
    +----------------------------+------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| void           | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :qt::QSearchMe |                |                |                |                |
| tadata::remove |                |                |                |                |
| \_location     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Remove location data entirely.

This method does nothing if no location data is present.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | int          | *cardinality | )            |              |
| unity::scope |              |              | *            |              |              |
| s::qt::QSear |              |              |              |              |              |
| chMetadata:: |              |              |              |              |              |
| set\_cardina |              |              |              |              |              |
| lity         |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set cardinality.

Parameters
    +---------------+-----------------------------------------+
    | cardinality   | The maximum number of search results.   |
    +---------------+-----------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | QString const &    | *key*,             |
| unity::scopes::qt: |                    |                    |                    |
| :QSearchMetadata:: |                    |                    |                    |
| set\_hint          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QVariant const &   | *value*            |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Sets a hint.

Parameters
    +---------+-------------------------+
    | key     | The name of the hint.   |
    +---------+-------------------------+
    | value   | Hint value              |
    +---------+-------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `Location </ | *location*   | )            |              |
| unity::scope |              | sdk/scopes/c |              |              |              |
| s::qt::QSear |              | pp/unity.sco |              |              |              |
| chMetadata:: |              | pes.Location |              |              |              |
| set\_locatio |              | />`_         |              |              |              |
| n            |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set location.

Parameters
    +------------+---------------------------------------------------------------+
    | location   | `Location </sdk/scopes/cpp/unity.scopes.Location/>`_  data.   |
    +------------+---------------------------------------------------------------+

