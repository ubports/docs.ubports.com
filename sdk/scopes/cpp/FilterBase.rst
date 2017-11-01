Base class for all implementations of filters.
`More... </sdk/scopes/cpp/unity.scopes.FilterBase#details>`__

``#include <unity/scopes/FilterBase.h>``

Inheritance diagram for unity::scopes::FilterBase:

|Inheritance graph|

[legend]

        Public Types
--------------------

enum  

`DisplayHints </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159>`__
{
`Default </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f>`__
= 0,
`Primary </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56>`__
= 1 }

 

| Display hints for the Shell UI.
  `More... </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159>`__

 

        Public Member Functions
-------------------------------

void 

`set\_display\_hints </sdk/scopes/cpp/unity.scopes.FilterBase#ab4ab1b600ce3967dc50255e736c6d02e>`__
(int hints)

 

| Sets display hints for the Shell UI.

 

int 

`display\_hints </sdk/scopes/cpp/unity.scopes.FilterBase#a8f20819591155edaab29d535c5c4c261>`__
() const

 

| Get display hints of this filter.

 

std::string 

`id </sdk/scopes/cpp/unity.scopes.FilterBase#a1f2d96647b23af77b1ff1cffc80f3868>`__
() const

 

| Get the identifier of this filter.

 

std::string 

`filter\_type </sdk/scopes/cpp/unity.scopes.FilterBase#aadc7344c951961331dcbe67149d56c78>`__
() const

 

| Get the type name of this filter.

 

void 

`set\_title </sdk/scopes/cpp/unity.scopes.FilterBase#aec8ceae8141811833af087ba2ebe086c>`__
(std::string const
&\ `title </sdk/scopes/cpp/unity.scopes.FilterBase#a3f0c324b3aac39bb8967fc900f3a909e>`__)

 

| Set an optional title of this filter.

 

std::string 

`title </sdk/scopes/cpp/unity.scopes.FilterBase#a3f0c324b3aac39bb8967fc900f3a909e>`__
() const

 

| Get the optional title of this filter.

 

FilterGroup::SCPtr 

`filter\_group </sdk/scopes/cpp/unity.scopes.FilterBase#afff4685371fe67e6f87f58e31f69a037>`__
() const

 

| Get the filter group this filter belongs to.

 

Detailed Description
--------------------

Base class for all implementations of filters.

All implementations of
`FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`__ define the
"look" of a filter in the UI and do not hold any state information. The
actual state of a filters is kept by a
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ object.

Member Enumeration Documentation
--------------------------------

+--------------------------------------------------------------------------------------------------------------------------------+
| enum `unity::scopes::FilterBase::DisplayHints </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159>`__   |
+--------------------------------------------------------------------------------------------------------------------------------+

Display hints for the Shell UI.

Enumerator
       \ Default 
Default value (no hint)

       \ Primary 
Display this filter as a primary navigation, if possible. Currently only
the
`OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`__
can act as primary navigation.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| int            | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterBase::d |                |                |                |                |
| isplay\_hints  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get display hints of this filter.

Returns
    Display hints flags.

+----------------+----------------+----------------+----------------+----------------+
| FilterGroup::S | (              |                | )              | const          |
| CPtr           |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :FilterBase::f |                |                |                |                |
| ilter\_group   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the filter group this filter belongs to.

Returns
    The filter group (or null)

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterBase::f |                |                |                |                |
| ilter\_type    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the type name of this filter.

Returns
    The filter type string.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterBase::i |                |                |                |                |
| d              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the identifier of this filter.

Returns
    The filter id.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | int          | *hints*      | )            |              |
| unity::scope |              |              |              |              |              |
| s::FilterBas |              |              |              |              |              |
| e::set\_disp |              |              |              |              |              |
| lay\_hints   |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Sets display hints for the Shell UI.

Parameters
    +---------+--------------------------------------------------+
    | hints   | A combination of DisplayHints for this filter.   |
    +---------+--------------------------------------------------+

Exceptions
    +-----------------------------------+---------------------------------------------------------------+
    | unity::InvalidArgumentException   | if given hints value is unsupported by current filter type.   |
    +-----------------------------------+---------------------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *title*      | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::FilterBas |              |              |              |              |              |
| e::set\_titl |              |              |              |              |              |
| e            |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set an optional title of this filter.

Parameters
    +---------+--------------+
    | title   | The title.   |
    +---------+--------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterBase::t |                |                |                |                |
| itle           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the optional title of this filter.

Returns
    Filter title (can be empty).

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.FilterBase/classunity_1_1scopes_1_1_filter_base__inherit__graph.png

