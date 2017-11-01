Stores the state of multiple filters.
`More... </sdk/scopes/cpp/unity.scopes.FilterState#details>`__

``#include <unity/scopes/FilterState.h>``

        Public Member Functions
-------------------------------

         

`FilterState </sdk/scopes/cpp/unity.scopes.FilterState#a766de68bf8b5c99774dcd2f2e7e2ed39>`__
()

 

| Constructs a an empty filter state instance.

 

bool 

`has\_filter </sdk/scopes/cpp/unity.scopes.FilterState#a7c624fcc70cf767fdb6d6dc54e8a5015>`__
(std::string const &id) const

 

| Check if state for the given filter has been stored.

 

void 

`remove </sdk/scopes/cpp/unity.scopes.FilterState#a15c5759e79b6c75fcdd2cf802b6ffac2>`__
(std::string const &id)

 

| Removes the state for a specific filter.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**FilterState**
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&other)

 

         

**FilterState**
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ &&)

 

        `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ & 

**operator=**
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&other)

 

        `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ & 

**operator=**
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ &&other)

 

Detailed Description
--------------------

Stores the state of multiple filters.

The state can be examined by passing an instance of
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ to the
appropriate methods of classes derived from
`FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`__.

Member Function Documentation
-----------------------------

+------------------------------------------------+-----+------------------------+--------+-----+---------+
| bool unity::scopes::FilterState::has\_filter   | (   | std::string const &    | *id*   | )   | const   |
+------------------------------------------------+-----+------------------------+--------+-----+---------+

Check if state for the given filter has been stored.

Returns
    True if state for a filter with the given ID is present; false
    otherwise.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *id*         | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::FilterSta |              |              |              |              |              |
| te::remove   |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Removes the state for a specific filter.

Parameters
    +------+-----------------------------------------+
    | id   | The identity of the filter to remove.   |
    +------+-----------------------------------------+

