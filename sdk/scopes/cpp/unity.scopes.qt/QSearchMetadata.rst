Metadata passed with search requests.
`More... </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#details>`__

``#include <unity/scopes/qt/QSearchMetadata.h>``

        Public Member Functions
-------------------------------

 

`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a92db05ea573b0c55c5b73c5c1576e51e>`__
(QString const &locale, QString const &form\_factor)

 

| Create SearchMetadata with the given locale and form factor.

 

 

`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#aac638e4b40c119cd9b6f43f693cda2af>`__
(int
`cardinality </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#ac560e26fbc8376625de16031c863afe8>`__,
QString const &locale, QString const &form\_factor)

 

| Create SearchMetadata with the given cardinality, locale, and form
  factor.

 

void 

`set\_cardinality </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#ab0dcad3fa29fb7553ede65ef20b0255d>`__
(int
`cardinality </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#ac560e26fbc8376625de16031c863afe8>`__)

 

| Set cardinality.

 

int 

`cardinality </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#ac560e26fbc8376625de16031c863afe8>`__
() const

 

| Get cardinality.

 

void 

`set\_location </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a4479bd25415f2c9e0bdd4e80e9c8a9e2>`__
(`Location </sdk/scopes/cpp/unity.scopes.Location/>`__ const
&\ `location </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a844f3a8b081df7482120acd39725a7f9>`__)

 

| Set location.

 

`Location </sdk/scopes/cpp/unity.scopes.Location/>`__ 

`location </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a844f3a8b081df7482120acd39725a7f9>`__
() const

 

| Get location.

 

bool 

`has\_location </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#ab61ff7b56a2c6a2f5b951c2d317180a8>`__
() const

 

| Does the SearchMetadata have a location.

 

void 

`remove\_location </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a7268b98c17357bbcba30d2bd85a5f0b3>`__
()

 

| Remove location data entirely.

 

void 

`set\_hint </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#adb6bfe57d0d7a421fa2b19c498728d50>`__
(QString const &key, QVariant const &value)

 

| Sets a hint.

 

QVariantMap 

`hints </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a10ea65002ca32ec982be76758c5d951b>`__
() const

 

| Get all hints.

 

bool 

`contains\_hint </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#acfdb14b65570a7d83a0c477dc7fb7d2c>`__
(QString const &key) const

 

| Check if this SearchMetadata has a hint.

 

QVariant & 

`operator[] </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a10eac0fb5b37277479a6953f52314560>`__
(QString const &key)

 

| Returns a reference to a hint.

 

QVariant const & 

`operator[] </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata#a04baf06aa57a85811dae85093d688911>`__
(QString const &key) const

 

| Returns a const reference to a hint.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QSearchMetadata**
(`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata/>`__
const &other)

 

         

**QSearchMetadata**
(`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata/>`__
&&)

 

`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata/>`__
& 

**operator=**
(`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata/>`__
const &other)

 

`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata/>`__
& 

**operator=**
(`QSearchMetadata </sdk/scopes/cpp/unity.scopes.qt/QSearchMetadata/>`__
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

Create `SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__
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

Create `SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__
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
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ has a
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
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ have a
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
| cation/>`__    |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QSearchMe |                |                |                |                |
| tadata::locati |                |                |                |                |
| on             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get location.

Returns
    `Location </sdk/scopes/cpp/unity.scopes.Location/>`__ data
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
| set\_locatio |              | />`__        |              |              |              |
| n            |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set location.

Parameters
    +------------+---------------------------------------------------------------+
    | location   | `Location </sdk/scopes/cpp/unity.scopes.Location/>`__ data.   |
    +------------+---------------------------------------------------------------+

