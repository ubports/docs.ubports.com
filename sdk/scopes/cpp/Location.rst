Holds location attributes such as latitude, longitude, etc.
`More... </sdk/scopes/cpp/unity.scopes.Location#details>`__

``#include <unity/scopes/Location.h>``

        Public Member Functions
-------------------------------

 

`Location </sdk/scopes/cpp/unity.scopes.Location#a29785026741614382c49237af463b134>`__
(double
`latitude </sdk/scopes/cpp/unity.scopes.Location#a50f5c02d7bab4a0d8dd57295a83d30a5>`__,
double
`longitude </sdk/scopes/cpp/unity.scopes.Location#a29476cb6bb6134f775ced08f49653fbf>`__)

 

| Construct a new Location with the specified latitude and longitude.

 

         

`Location </sdk/scopes/cpp/unity.scopes.Location#acd547c0fd175dc09af7f21c2510455d8>`__
(`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__
const &variant)

 

| Construct a `Location </sdk/scopes/cpp/unity.scopes.Location/>`__ from
  a the given serialized VariantMap.

 

double 

`altitude </sdk/scopes/cpp/unity.scopes.Location#a835ec1dcd3c73decf26efe07edde7de1>`__
() const

 

| Get the altitude.

 

bool 

`has\_altitude </sdk/scopes/cpp/unity.scopes.Location#acd12460c91fdfe505ca7c48c6d9ff8e0>`__
() const

 

| Is there an altitude property.

 

std::string 

`area\_code </sdk/scopes/cpp/unity.scopes.Location#a62e2b1a20fca9c7aa7e193d35fc0de1d>`__
() const

 

| Get the area code.

 

bool 

`has\_area\_code </sdk/scopes/cpp/unity.scopes.Location#a8f50b410a669b84fabe6b2fb335322e9>`__
() const

 

| Is there an area code property.

 

std::string 

`city </sdk/scopes/cpp/unity.scopes.Location#af57bae33c7f02bb3aae6f3afdd8751b4>`__
() const

 

| Get the city name.

 

bool 

`has\_city </sdk/scopes/cpp/unity.scopes.Location#ad87381d174720bdf4098ab073ad3036c>`__
() const

 

| Is there a city property.

 

std::string 

`country\_code </sdk/scopes/cpp/unity.scopes.Location#a12d1ffb8ebf540f09937f39bd93cf7a3>`__
() const

 

| Get the country code.

 

bool 

`has\_country\_code </sdk/scopes/cpp/unity.scopes.Location#afa933efd7a44f0e28757d132c480091e>`__
() const

 

| Is there a country code property.

 

std::string 

`country\_name </sdk/scopes/cpp/unity.scopes.Location#a8545a7b5d50011c18068f2a90ae7440a>`__
() const

 

| Get the country name.

 

bool 

`has\_country\_name </sdk/scopes/cpp/unity.scopes.Location#ade946afbcfe219ad046e35b9818bc6c2>`__
() const

 

| Is there a country name property.

 

double 

`horizontal\_accuracy </sdk/scopes/cpp/unity.scopes.Location#ab8cae20de2053fd966a895a72b4c4d23>`__
() const

 

| Get the horizontal accuracy.

 

bool 

`has\_horizontal\_accuracy </sdk/scopes/cpp/unity.scopes.Location#a849365d5a0a161e282badac69aa38e40>`__
() const

 

| Is there a horizontal accuracy property.

 

double 

`latitude </sdk/scopes/cpp/unity.scopes.Location#a50f5c02d7bab4a0d8dd57295a83d30a5>`__
() const

 

| Get the latitude.

 

double 

`longitude </sdk/scopes/cpp/unity.scopes.Location#a29476cb6bb6134f775ced08f49653fbf>`__
() const

 

| Get the longitude.

 

`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__ 

`serialize </sdk/scopes/cpp/unity.scopes.Location#a2d17dfecd743f6777e39f9e06653b7cd>`__
() const

 

| Return a dictionary of all location attributes.

 

std::string 

`region\_code </sdk/scopes/cpp/unity.scopes.Location#a16f0fbcf4a0811506c64452289878539>`__
() const

 

| Get the region code.

 

bool 

`has\_region\_code </sdk/scopes/cpp/unity.scopes.Location#a18aa845b15b710fb32fa65bb02fcc8ec>`__
() const

 

| Is there a region code property.

 

std::string 

`region\_name </sdk/scopes/cpp/unity.scopes.Location#a4d13ccb82265c0622092d78fb708578c>`__
() const

 

| Get the region name.

 

bool 

`has\_region\_name </sdk/scopes/cpp/unity.scopes.Location#a244f6d61af0d09c6649ff352fd0da1e8>`__
() const

 

| Is there a region name property.

 

double 

`vertical\_accuracy </sdk/scopes/cpp/unity.scopes.Location#a99f86caa4eecfeb278b1f8ec0ab640ed>`__
() const

 

| Get the vertical accuracy.

 

bool 

`has\_vertical\_accuracy </sdk/scopes/cpp/unity.scopes.Location#a734214294d31266e581aceba1c43fa04>`__
() const

 

| Is there a vertical accuracy property.

 

std::string 

`zip\_postal\_code </sdk/scopes/cpp/unity.scopes.Location#a2b7a689928e29c415a894dbc1cf640af>`__
() const

 

| Get the zip or postal code.

 

bool 

`has\_zip\_postal\_code </sdk/scopes/cpp/unity.scopes.Location#aa49d5fcd4e67a86aea6a5354f01682a3>`__
() const

 

| Is there a zip / postal code property.

 

void 

`set\_altitude </sdk/scopes/cpp/unity.scopes.Location#a6fe5248e04481732f75e2f51625ebf23>`__
(double
`altitude </sdk/scopes/cpp/unity.scopes.Location#a835ec1dcd3c73decf26efe07edde7de1>`__)

 

| Set the altitude.

 

void 

`set\_area\_code </sdk/scopes/cpp/unity.scopes.Location#aa2ae4c88a310152f375048fa9e109a70>`__
(std::string const
&\ `area\_code </sdk/scopes/cpp/unity.scopes.Location#a62e2b1a20fca9c7aa7e193d35fc0de1d>`__)

 

| Set the area code.

 

void 

`set\_city </sdk/scopes/cpp/unity.scopes.Location#aa8518fd0a3eb35fbe6242fd3bdbe7635>`__
(std::string const
&\ `city </sdk/scopes/cpp/unity.scopes.Location#af57bae33c7f02bb3aae6f3afdd8751b4>`__)

 

| Set the city name.

 

void 

`set\_country\_code </sdk/scopes/cpp/unity.scopes.Location#a458adf562171b91a27cb8402364bd505>`__
(std::string const
&\ `country\_code </sdk/scopes/cpp/unity.scopes.Location#a12d1ffb8ebf540f09937f39bd93cf7a3>`__)

 

| Set the country code.

 

void 

`set\_country\_name </sdk/scopes/cpp/unity.scopes.Location#a6848dccd62f563a2ed7f3afe7deed9bf>`__
(std::string const
&\ `country\_name </sdk/scopes/cpp/unity.scopes.Location#a8545a7b5d50011c18068f2a90ae7440a>`__)

 

| Set the country name.

 

void 

`set\_horizontal\_accuracy </sdk/scopes/cpp/unity.scopes.Location#a9874386c93fa5864fc459fc88e311ee5>`__
(double
`horizontal\_accuracy </sdk/scopes/cpp/unity.scopes.Location#ab8cae20de2053fd966a895a72b4c4d23>`__)

 

| Set the horizontal accuracy.

 

void 

`set\_latitude </sdk/scopes/cpp/unity.scopes.Location#aef5aacbc207c4fff67c0fb5fbb3414be>`__
(double
`latitude </sdk/scopes/cpp/unity.scopes.Location#a50f5c02d7bab4a0d8dd57295a83d30a5>`__)

 

| Set the latitude.

 

void 

`set\_longitude </sdk/scopes/cpp/unity.scopes.Location#ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2>`__
(double
`longitude </sdk/scopes/cpp/unity.scopes.Location#a29476cb6bb6134f775ced08f49653fbf>`__)

 

| Set the longitude.

 

void 

`set\_region\_code </sdk/scopes/cpp/unity.scopes.Location#a35ba30e0a576f416854f5962ae292a02>`__
(std::string const
&\ `region\_code </sdk/scopes/cpp/unity.scopes.Location#a16f0fbcf4a0811506c64452289878539>`__)

 

| Set the region code.

 

void 

`set\_region\_name </sdk/scopes/cpp/unity.scopes.Location#aeebff1a970e84a44f5f1cda7c8a9cdd9>`__
(std::string const
&\ `region\_name </sdk/scopes/cpp/unity.scopes.Location#a4d13ccb82265c0622092d78fb708578c>`__)

 

| Set the region name.

 

void 

`set\_vertical\_accuracy </sdk/scopes/cpp/unity.scopes.Location#aa7e876729fdd07d5141203ad1a805e8c>`__
(double
`vertical\_accuracy </sdk/scopes/cpp/unity.scopes.Location#a99f86caa4eecfeb278b1f8ec0ab640ed>`__)

 

| Set the vertical\_accuracy.

 

void 

`set\_zip\_postal\_code </sdk/scopes/cpp/unity.scopes.Location#af0e7c149082d5d55ea6364b921fefcdf>`__
(std::string const
&\ `zip\_postal\_code </sdk/scopes/cpp/unity.scopes.Location#a2b7a689928e29c415a894dbc1cf640af>`__)

 

| Set the zip/postal code.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**Location** (`Location </sdk/scopes/cpp/unity.scopes.Location/>`__
const &other)

 

         

**Location** (`Location </sdk/scopes/cpp/unity.scopes.Location/>`__ &&)

 

        `Location </sdk/scopes/cpp/unity.scopes.Location/>`__ & 

**operator=** (`Location </sdk/scopes/cpp/unity.scopes.Location/>`__
const &other)

 

        `Location </sdk/scopes/cpp/unity.scopes.Location/>`__ & 

**operator=** (`Location </sdk/scopes/cpp/unity.scopes.Location/>`__ &&)

 

Detailed Description
--------------------

Holds location attributes such as latitude, longitude, etc.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Loc | (                  | double             | *latitude*,        |
| ation::Location    |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | double             | *longitude*        |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Construct a new `Location </sdk/scopes/cpp/unity.scopes.Location/>`__
with the specified latitude and longitude.

Parameters
    +-------------+-------------+
    | latitude    | Latitude    |
    +-------------+-------------+
    | longitude   | Longitude   |
    +-------------+-------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::alt |                |                |                |                |
| itude          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the altitude.

Returns
    The altitude.

Exceptions
    +------------------------------------------------------------------------------------------+---------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if altitude is not set.   |
    +------------------------------------------------------------------------------------------+---------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::are |                |                |                |                |
| a\_code        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the area code.

Returns
    The area code.

Exceptions
    +------------------------------------------------------------------------------------------+----------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if area code is not set.   |
    +------------------------------------------------------------------------------------------+----------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::cit |                |                |                |                |
| y              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the city name.

Returns
    The city name.

Exceptions
    +------------------------------------------------------------------------------------------+-----------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if city is not set.   |
    +------------------------------------------------------------------------------------------+-----------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::cou |                |                |                |                |
| ntry\_code     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the country code.

Returns
    The country code.

Exceptions
    +------------------------------------------------------------------------------------------+-------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if country code is not set.   |
    +------------------------------------------------------------------------------------------+-------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::cou |                |                |                |                |
| ntry\_name     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the country name.

Returns
    The country name.

Exceptions
    +------------------------------------------------------------------------------------------+-------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if country name is not set.   |
    +------------------------------------------------------------------------------------------+-------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_altitude     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there an altitude property.

Returns
    True if there is an altitude property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_area\_code   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there an area code property.

Returns
    True if there is an area code property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_city         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a city property.

Returns
    True if there is a city property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_country\_cod |                |                |                |                |
| e              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a country code property.

Returns
    True if there is a country code property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_country\_nam |                |                |                |                |
| e              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a country name property.

Returns
    True if there is a country name property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_horizontal\_ |                |                |                |                |
| accuracy       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a horizontal accuracy property.

Returns
    True if there is a horizontal accuracy property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_region\_code |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a region code property.

Returns
    True if there is a region code property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_region\_name |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a region name property.

Returns
    True if there is a region name property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_vertical\_ac |                |                |                |                |
| curacy         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a vertical accuracy property.

Returns
    True if there is a vertical accuracy property.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::has |                |                |                |                |
| \_zip\_postal\ |                |                |                |                |
| _code          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Is there a zip / postal code property.

Returns
    True if there is a zip / postal code property.

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::hor |                |                |                |                |
| izontal\_accur |                |                |                |                |
| acy            |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the horizontal accuracy.

Returns
    The horizontal accuracy.

Exceptions
    +------------------------------------------------------------------------------------------+--------------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if horizontal accuracy is not set.   |
    +------------------------------------------------------------------------------------------+--------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::lat |                |                |                |                |
| itude          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the latitude.

Returns
    The latitude.

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::lon |                |                |                |                |
| gitude         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the longitude.

Returns
    The longitude.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::reg |                |                |                |                |
| ion\_code      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the region code.

Returns
    The region code.

Exceptions
    +------------------------------------------------------------------------------------------+------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if region code is not set.   |
    +------------------------------------------------------------------------------------------+------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::reg |                |                |                |                |
| ion\_name      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the region name.

Returns
    The region name.

Exceptions
    +------------------------------------------------------------------------------------------+------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if region name is not set.   |
    +------------------------------------------------------------------------------------------+------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap </ | (              |                | )              | const          |
| sdk/scopes/cpp |                |                |                |                |
| /unity.scopes# |                |                |                |                |
| ad5d8ccfa11a32 |                |                |                |                |
| 7fca6f3e4cee11 |                |                |                |                |
| f4c10>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Location::ser |                |                |                |                |
| ialize         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return a dictionary of all location attributes.

Returns
    Dictionary of all location attributes.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | double       | *altitude*   | )            |              |
| unity::scope |              |              |              |              |              |
| s::Location: |              |              |              |              |              |
| :set\_altitu |              |              |              |              |              |
| de           |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the altitude.

Parameters
    +------------+--------------+
    | altitude   | In meters.   |
    +------------+--------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *area\_code* | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::Location: |              |              |              |              |              |
| :set\_area\_ |              |              |              |              |              |
| code         |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the area code.

Parameters
    +--------------+-----------------------+
    | area\_code   | FIPS10-4 area code.   |
    +--------------+-----------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *city*       | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::Location: |              |              |              |              |              |
| :set\_city   |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the city name.

Parameters
    +--------+---------------------+
    | city   | Name of the city.   |
    +--------+---------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *country\_co | )            |              |
| unity::scope |              | const &      | de*          |              |              |
| s::Location: |              |              |              |              |              |
| :set\_countr |              |              |              |              |              |
| y\_code      |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the country code.

Parameters
    +-----------------+--------------------------+
    | country\_code   | FIPS10-4 country code.   |
    +-----------------+--------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *country\_na | )            |              |
| unity::scope |              | const &      | me*          |              |              |
| s::Location: |              |              |              |              |              |
| :set\_countr |              |              |              |              |              |
| y\_name      |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the country name.

Parameters
    +-----------------+--------------------------------+
    | country\_name   | Human readable country name.   |
    +-----------------+--------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | double       | *horizontal\ | )            |              |
| unity::scope |              |              | _accuracy*   |              |              |
| s::Location: |              |              |              |              |              |
| :set\_horizo |              |              |              |              |              |
| ntal\_accura |              |              |              |              |              |
| cy           |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the horizontal accuracy.

Parameters
    +------------------------+-------------------------+
    | horizontal\_accuracy   | Horizontal accouracy.   |
    +------------------------+-------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | double       | *latitude*   | )            |              |
| unity::scope |              |              |              |              |              |
| s::Location: |              |              |              |              |              |
| :set\_latitu |              |              |              |              |              |
| de           |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the latitude.

Parameters
    +------------+-------------+
    | latitude   | Latitude.   |
    +------------+-------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | double       | *longitude*  | )            |              |
| unity::scope |              |              |              |              |              |
| s::Location: |              |              |              |              |              |
| :set\_longit |              |              |              |              |              |
| ude          |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the longitude.

Parameters
    +-------------+-------------+
    | longitude   | Latitude.   |
    +-------------+-------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *region\_cod | )            |              |
| unity::scope |              | const &      | e*           |              |              |
| s::Location: |              |              |              |              |              |
| :set\_region |              |              |              |              |              |
| \_code       |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the region code.

Parameters
    +----------------+-------------------------+
    | region\_code   | FIPS10-4 region code.   |
    +----------------+-------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *region\_nam | )            |              |
| unity::scope |              | const &      | e*           |              |              |
| s::Location: |              |              |              |              |              |
| :set\_region |              |              |              |              |              |
| \_name       |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the region name.

Parameters
    +----------------+-------------------------------+
    | region\_name   | Human readable region name.   |
    +----------------+-------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | double       | *vertical\_a | )            |              |
| unity::scope |              |              | ccuracy*     |              |              |
| s::Location: |              |              |              |              |              |
| :set\_vertic |              |              |              |              |              |
| al\_accuracy |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the vertical\_accuracy.

Parameters
    +----------------------+--------------------------------+
    | vertical\_accuracy   | Vertical accuracy in meters.   |
    +----------------------+--------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *zip\_postal | )            |              |
| unity::scope |              | const &      | \_code*      |              |              |
| s::Location: |              |              |              |              |              |
| :set\_zip\_p |              |              |              |              |              |
| ostal\_code  |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the zip/postal code.

Parameters
    +---------------------+--------------------------------+
    | zip\_postal\_code   | Either a zip or postal code.   |
    +---------------------+--------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::ver |                |                |                |                |
| tical\_accurac |                |                |                |                |
| y              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the vertical accuracy.

Returns
    The vertical accuracy.

Exceptions
    +------------------------------------------------------------------------------------------+------------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if vertical accuracy is not set.   |
    +------------------------------------------------------------------------------------------+------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Location::zip |                |                |                |                |
| \_postal\_code |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the zip or postal code.

Returns
    The zip or postal code.

Exceptions
    +------------------------------------------------------------------------------------------+------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if postal code is not set.   |
    +------------------------------------------------------------------------------------------+------------------------------+

