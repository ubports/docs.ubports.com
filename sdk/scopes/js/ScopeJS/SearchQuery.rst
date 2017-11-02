.. _sdk_scopejs_searchquery:
ScopeJS SearchQuery
===================


Represents a particular query

A scope must return an instance of this class from its implementation of
Scope.search().

-  Methods

**``query``**\ ( ``  `` )
Get a canned query for this search request

**Returns:**
CannedQuery

**``search_metadata``**\ ( ``  `` )
Get metadata for this search request

**Returns:**
SearchMetadata

**``settings``**\ ( ``  `` )
Returns a dictionary with the scope's current settings

**Returns:**
Dictionary

**``valid``**\ ( ``  `` )
Check whether this query is still valid

**Returns:**
Boolean False if the query is finished or was cancelled ealier.

