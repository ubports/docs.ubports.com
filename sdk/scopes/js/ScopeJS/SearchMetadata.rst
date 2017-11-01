
Metadata passed with search requests. Two forms of construction are
allowed depending on the number and types of the parameters:

-  with locale and form factor or
-  with cardinality, locale, and form factor.

-  Methods

Array of String **``aggregated_keywords``**\ ( ``  `` )
Get the list of scope keywords used to initiate this search request.

**Returns:** <Array of String>
The list of scope keywords used to initiate this search request.

Int **``cardinality``**\ ( ``  `` )
Get cardinality.

**Returns:** <Int>

Boolean **``contains_hint``**\ ( ``key `` )
Check if this SearchMetadata has a hint.

**Parameters:**

-  ``key`` **<String>**

   The hint name.

**Returns:** <Boolean>
True if the hint is set.

**``form_factor``**\ ( ``  `` )
Get the form factor string.

**Returns:**
The form factor string

String **``get``**\ ( ``key `` )
Get the value of an attribute

**Parameters:**

-  ``key`` **<String>**

**Returns:** <String>
, {Number} or {Object}

Boolean **``has_location``**\ ( ``  `` )
Does the SearchMetadata have a location.

**Returns:** <Boolean>
True if there is a location property.

Dictionary **``hints``**\ ( ``  `` )
Get all hints.

**Returns:** <Dictionary>

ConnectivityStatus **``internet_connectivity``**\ ( ``  `` )
Get internet connectivity status.

**Returns:** <ConnectivityStatus>
The internet connectivity status.

Boolean **``is_aggregated``**\ ( ``  `` )
Check if this search request originated from an aggregator scope.

**Returns:** <Boolean>
True if this search request originated from an aggregator scope.

**``locale``**\ ( ``  `` )
Get the locale string.

**Returns:**
The locale string

Location **``location``**\ ( ``  `` )
Get location.

**Returns:** <Location>
data representing the current location, including attributes such as
city and country.

**``remove_location``**\ ( ``  `` )
Remove location data entirely. This method does nothing if no location
data is present.

**``set``**\ ( ``key, value `` )
Set the value of an attribute

**Parameters:**

-  ``key`` **<String>**
-  ``value`` **<String>**

   , {Number} or {Object}

**``set_aggregated_keywords``**\ ( ``aggregated_keywords `` )
Set the list of scope keywords used to initiate this search request.

**Parameters:**

-  ``aggregated_keywords`` **<Array of String>**

   The list of scope keywords used to initiate this search request.

**``set_cardinality``**\ ( ``cardinality `` )
Set cardinality.

**Parameters:**

-  ``cardinality`` **<Int>**

**``set_hint``**\ ( ``key, value `` )
Sets a hint.

**Parameters:**

-  ``key`` **<String>**

   The name of the hint.

-  ``value`` **<Object>**

   Hint value

**``set_internet_connectivity``**\ ( ``The `` )
Set internet connectivity status.

**Parameters:**

-  ``The`` **<ConnectivityStatus>**

   internet connectivity status.

**``set_location``**\ ( ``location `` )
Set location.

**Parameters:**

-  ``location`` **<Location>**

   data

