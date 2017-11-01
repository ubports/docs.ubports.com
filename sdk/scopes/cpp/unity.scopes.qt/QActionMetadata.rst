Metadata passed to scopes for preview and activation.
`More... </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#details>`__

``#include <unity/scopes/qt/QActionMetadata.h>``

        Public Member Functions
-------------------------------

 

`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#acc36c52fac186af3571cb29745d3981c>`__
(QString const &locale, QString const &form\_factor)

 

| Create ActionMetadata with the given locale and form factor.

 

void 

`set\_scope\_data </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#a5913d97d109db7b2e4596bc1b3f53ed1>`__
(QVariant const &data)

 

| Attach arbitrary data to this ActionMetadata.

 

QVariant 

`scope\_data </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#ae1103e2a369e300f05f8fd3dea8020f7>`__
() const

 

| Get data attached to this ActionMetadata.

 

void 

`set\_hint </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#ab2b595bf273926b0bc5a00df98ff38e1>`__
(QString const &key, QVariant const &value)

 

| Sets a hint.

 

QVariantMap 

`hints </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#a62be4635a002af1c69cb9a105009a6c2>`__
() const

 

| Get all hints.

 

bool 

`contains\_hint </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#a9016175d5f8ffe9725d95a68b1939553>`__
(QString const &key) const

 

| Check if this SearchMetadata has a hint.

 

QVariant & 

`operator[] </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#a666efb6091fba93a007736ffe1487c82>`__
(QString const &key)

 

| Returns a reference to a hint.

 

QVariant const & 

`operator[] </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata#a607f33913139706424e925dac02a1a3d>`__
(QString const &key) const

 

| Returns a const reference to a hint.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QActionMetadata**
(`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__
const &other)

 

         

**QActionMetadata**
(`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__
&&)

 

`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__
& 

**operator=**
(`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__
const &other)

 

`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__
& 

**operator=**
(`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__
&&)

 

Detailed Description
--------------------

Metadata passed to scopes for preview and activation.

See also
    `unity::scopes::qt::QScopeBase::preview </sdk/scopes/cpp/unity.scopes.qt/QScopeBase#afdedf1ba41623c1ac060ecc4b014f67f>`__,
    `unity::scopes::ScopeBase::activate </sdk/scopes/cpp/unity.scopes.ScopeBase#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`__,
    `unity::scopes::ScopeBase::perform\_action </sdk/scopes/cpp/unity.scopes.ScopeBase#a2f4d476fa790349c9a7de52be3232d11>`__

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::qt: | (                  | QString const &    | *locale*,          |
| :QActionMetadata:: |                    |                    |                    |
| QActionMetadata    |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QString const &    | *form\_factor*     |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create `ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__
with the given locale and form factor.

Parameters
    +----------------+-------------------------------------------------------------+
    | locale         | locale string, eg. en\_EN                                   |
    +----------------+-------------------------------------------------------------+
    | form\_factor   | form factor name, e.g. phone, desktop, phone-version etc.   |
    +----------------+-------------------------------------------------------------+

Member Function Documentation
-----------------------------

+-----------------------------------------------------------+-----+--------------------+---------+-----+---------+
| bool unity::scopes::qt::QActionMetadata::contains\_hint   | (   | QString const &    | *key*   | )   | const   |
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
| QVariantMap    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QActionMe |                |                |                |                |
| tadata::hints  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get all hints.

Returns
    Hints dictionary.

Exceptions
    +----------------------------+------------------------------+
    | unity::NotFoundException   | if no hints are available.   |
    +----------------------------+------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| QVariant&    | (            | QString      | *key*        | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::qt::QActi |              |              |              |              |              |
| onMetadata:: |              |              |              |              |              |
| operator[]   |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an
existing hint overwrites its previous value. Referencing a non-existing
hint automatically creates it with a default value of
QVariant::Type::Null.

Parameters
    +-------+-------------------------+
    | key   | The name of the hint.   |
    +-------+-------------------------+

Returns
    A reference to the hint.

+------------------------------------------------------------------+-----+--------------------+---------+-----+---------+
| QVariant const& unity::scopes::qt::QActionMetadata::operator[]   | (   | QString const &    | *key*   | )   | const   |
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
| QVariant       | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QActionMe |                |                |                |                |
| tadata::scope\ |                |                |                |                |
| _data          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get data attached to this
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__.

Returns
    The attached data, or QVariant::null.

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | QString const &    | *key*,             |
| unity::scopes::qt: |                    |                    |                    |
| :QActionMetadata:: |                    |                    |                    |
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
| void         | (            | QVariant     | *data*       | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::qt::QActi |              |              |              |              |              |
| onMetadata:: |              |              |              |              |              |
| set\_scope\_ |              |              |              |              |              |
| data         |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Attach arbitrary data to this
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__.

Parameters
    +--------+-----------------------------+
    | data   | The data value to attach.   |
    +--------+-----------------------------+

