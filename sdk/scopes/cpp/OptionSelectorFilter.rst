.. _sdk_optionselectorfilter:
OptionSelectorFilter
====================

A selection filter that displays a list of choices and allows one or
more of them to be selected.
`More... </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#details>`_ 

``#include <unity/scopes/OptionSelectorFilter.h>``

Inheritance diagram for unity::scopes::OptionSelectorFilter:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

std::string 

`label </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a125c5b43a776bb80f02293ae6d1801d3>`_ 
() const

 

| Get the label of this filter.

 

bool 

`multi\_select </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#aa1799eafbae1d5228d4520a2dc74f146>`_ 
() const

 

| Check if this filter supports multiple options to be selected.

 

FilterOption::SCPtr 

`add\_option </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#adeebc09dbf919d0ba9015eae669a0d33>`_ 
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase/#a1f2d96647b23af77b1ff1cffc80f3868>`_ ,
std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a125c5b43a776bb80f02293ae6d1801d3>`_ )

 

| Add a new option to this filter. The option is 'off' by default.

 

std::list< FilterOption::SCPtr > 

`options </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a773c6364c3cee05042e975e927faf808>`_ 
() const

 

| Get all options of this filter, in the order they were added.

 

bool 

`has\_active\_option </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a6b80b908411779b8bb402c9cbfa2f576>`_ 
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state) const

 

| Check if an option is active for this filter.

 

std::set< FilterOption::SCPtr > 

`active\_options </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a3015abeb0439ccd29bd61afa9b7059df>`_ 
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state) const

 

| Get the active options from a FilterState instance for this filter.

 

void 

`update\_state </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a616c09732a25a01fc97341a74aac62f6>`_ 
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ 
&filter\_state, FilterOption::SCPtr option, bool active) const

 

| Marks given FilterOption of this filter instance as active (or not
  active) in a FilterState object.

 

FilterOption::SCPtr 

`add\_option </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a02124402ba7551b06a10398850343109>`_ 
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase/#a1f2d96647b23af77b1ff1cffc80f3868>`_ ,
std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a125c5b43a776bb80f02293ae6d1801d3>`_ ,
bool value)

 

| Add a new option to this filter and provide its default value.

 

|-| Public Member Functions inherited from
`unity::scopes::FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`_ 

void 

`set\_display\_hints </sdk/scopes/cpp/unity.scopes.FilterBase/#ab4ab1b600ce3967dc50255e736c6d02e>`_ 
(int hints)

 

| Sets display hints for the Shell UI.

 

int 

`display\_hints </sdk/scopes/cpp/unity.scopes.FilterBase/#a8f20819591155edaab29d535c5c4c261>`_ 
() const

 

| Get display hints of this filter.

 

std::string 

`id </sdk/scopes/cpp/unity.scopes.FilterBase/#a1f2d96647b23af77b1ff1cffc80f3868>`_ 
() const

 

| Get the identifier of this filter.

 

std::string 

`filter\_type </sdk/scopes/cpp/unity.scopes.FilterBase/#aadc7344c951961331dcbe67149d56c78>`_ 
() const

 

| Get the type name of this filter.

 

void 

`set\_title </sdk/scopes/cpp/unity.scopes.FilterBase/#aec8ceae8141811833af087ba2ebe086c>`_ 
(std::string const
&\ `title </sdk/scopes/cpp/unity.scopes.FilterBase/#a3f0c324b3aac39bb8967fc900f3a909e>`_ )

 

| Set an optional title of this filter.

 

std::string 

`title </sdk/scopes/cpp/unity.scopes.FilterBase/#a3f0c324b3aac39bb8967fc900f3a909e>`_ 
() const

 

| Get the optional title of this filter.

 

FilterGroup::SCPtr 

`filter\_group </sdk/scopes/cpp/unity.scopes.FilterBase/#afff4685371fe67e6f87f58e31f69a037>`_ 
() const

 

| Get the filter group this filter belongs to.

 

        Static Public Member Functions
--------------------------------------

static OptionSelectorFilter::UPtr 

`create </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a2930156d8f60172c9e926a3d6ebc85ee>`_ 
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase/#a1f2d96647b23af77b1ff1cffc80f3868>`_ ,
std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a125c5b43a776bb80f02293ae6d1801d3>`_ ,
bool
`multi\_select </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#aa1799eafbae1d5228d4520a2dc74f146>`_ \ =false)

 

| Creates an OpionSelectorFilter.

 

static void 

`update\_state </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#ad2f90f01ea9d197dbc089c9b64f0b5a7>`_ 
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ 
&filter\_state, std::string const &filter\_id, std::string const
&option\_id, bool value)

 

| Marks an option of a filter active/inactive in a FilterState object,
  without having an instance of OptionSelectorFilter.

 

static OptionSelectorFilter::UPtr 

`create </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a2b1dfa99fc949df95c7e4a5601aceaf6>`_ 
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase/#a1f2d96647b23af77b1ff1cffc80f3868>`_ ,
std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a125c5b43a776bb80f02293ae6d1801d3>`_ ,
FilterGroup::SCPtr const &group, bool
`multi\_select </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#aa1799eafbae1d5228d4520a2dc74f146>`_ \ =false)

 

| Creates an OpionSelectorFilter inside a FilterGroup.

 

        Additional Inherited Members
------------------------------------

|-| Public Types inherited from
`unity::scopes::FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`_ 

enum  

`DisplayHints </sdk/scopes/cpp/unity.scopes.FilterBase/#ab9e833d5e4029fed745d15ba63715159>`_ 
{
`Default </sdk/scopes/cpp/unity.scopes.FilterBase/#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f>`_ 
= 0,
`Primary </sdk/scopes/cpp/unity.scopes.FilterBase/#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56>`_ 
= 1 }

 

| Display hints for the Shell UI.
  `More... </sdk/scopes/cpp/unity.scopes.FilterBase/#ab9e833d5e4029fed745d15ba63715159>`_ 

 

Detailed Description
--------------------

A selection filter that displays a list of choices and allows one or
more of them to be selected.

Member Function Documentation
-----------------------------

+----------------------------------------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| std::set< FilterOption::SCPtr > unity::scopes::OptionSelectorFilter::active\_options   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const &    | *filter\_state*   | )   | const   |
+----------------------------------------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Get the active options from a
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  instance for
this filter.

The returned set may be empty if the user de-selected all options.
However, if there is no state recorded for this filter in the
filter\_state instance, then all the options enabled by default are
returned.

Returns
    The set of selected filter options (or options enabled by default if
    the filter is not present in the filter\_state).

+--------------------+--------------------+--------------------+--------------------+
| FilterOption::SCPt | (                  | std::string const  | *id*,              |
| r                  |                    | &                  |                    |
| unity::scopes::Opt |                    |                    |                    |
| ionSelectorFilter: |                    |                    |                    |
| :add\_option       |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *label*            |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Add a new option to this filter. The option is 'off' by default.

Exceptions
    +-----------------------------------+--------------------------+
    | unity::InvalidArgumentException   | on invalid id or label   |
    +-----------------------------------+--------------------------+

Returns
    The new option instance.

+--------------------+--------------------+--------------------+--------------------+
| FilterOption::SCPt | (                  | std::string const  | *id*,              |
| r                  |                    | &                  |                    |
| unity::scopes::Opt |                    |                    |                    |
| ionSelectorFilter: |                    |                    |                    |
| :add\_option       |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *label*,           |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | bool               | *value*            |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Add a new option to this filter and provide its default value.

Exceptions
    +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException             | if multiple options with value of 'true' are provided for a single-selection `OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`_ .   |
    +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::InvalidArgumentException   | on invalid id or label                                                                                                                                        |
    +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns
    The new option instance.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | OptionSelectorFilt | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | er::UPtr           |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Opt |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ionSelectorFilter: |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | :create            |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *label* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | bool               | *multi\ |                                      |
| _select* =  |                        |                                      |
| |                    |               |                                      |
|       |                    | ``false |                                      |
| ``          |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Creates an OpionSelectorFilter.

Parameters
    +-----------------+-----------------------------------------------------------------------------------------------------------------+
    | id              | A unique identifier for the filter that can be used to later identify it among several filters.                 |
    +-----------------+-----------------------------------------------------------------------------------------------------------------+
    | label           | A display label for the filter.                                                                                 |
    +-----------------+-----------------------------------------------------------------------------------------------------------------+
    | multi\_select   | If true, the filter permits more than option to be selected; otherwise, only a single option can be selected.   |
    +-----------------+-----------------------------------------------------------------------------------------------------------------+

Note
    The multi-selection cannot be combined with
    unity::scopes::FilterBase::DisplayHints::Primary flag set via
    `unity::scopes::FilterBase::set\_display\_hints() </sdk/scopes/cpp/unity.scopes.FilterBase/#ab4ab1b600ce3967dc50255e736c6d02e>`_ .

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | OptionSelectorFilt | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | er::UPtr           |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Opt |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ionSelectorFilter: |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | :create            |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *label* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | FilterGroup::SCPtr | *group* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | bool               | *multi\ |                                      |
| _select* =  |                        |                                      |
| |                    |               |                                      |
|       |                    | ``false |                                      |
| ``          |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Creates an OpionSelectorFilter inside a
`FilterGroup </sdk/scopes/cpp/unity.scopes.FilterGroup/>`_ .

Parameters
    +-----------------+-----------------------------------------------------------------------------------------------------------------+
    | id              | A unique identifier for the filter that can be used to later identify it among several filters.                 |
    +-----------------+-----------------------------------------------------------------------------------------------------------------+
    | label           | A display label for the filter.                                                                                 |
    +-----------------+-----------------------------------------------------------------------------------------------------------------+
    | group           | A filter group this filter should be added to.                                                                  |
    +-----------------+-----------------------------------------------------------------------------------------------------------------+
    | multi\_select   | If true, the filter permits more than option to be selected; otherwise, only a single option can be selected.   |
    +-----------------+-----------------------------------------------------------------------------------------------------------------+

Exceptions
    +-----------------------------------+--------------------------+
    | unity::InvalidArgumentException   | on invalid null group.   |
    +-----------------------------------+--------------------------+

Note
    The multi-selection cannot be combined with
    unity::scopes::FilterBase::DisplayHints::Primary flag set via
    `unity::scopes::FilterBase::set\_display\_hints() </sdk/scopes/cpp/unity.scopes.FilterBase/#ab4ab1b600ce3967dc50255e736c6d02e>`_ .

+-----------------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| bool unity::scopes::OptionSelectorFilter::has\_active\_option   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const &    | *filter\_state*   | )   | const   |
+-----------------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Check if an option is active for this filter.

Parameters
    +-----------------+------------------------+
    | filter\_state   | The state of filters   |
    +-----------------+------------------------+

Returns
    true if an option is active

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :OptionSelecto |                |                |                |                |
| rFilter::label |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the label of this filter.

Returns
    The filter label.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :OptionSelecto |                |                |                |                |
| rFilter::multi |                |                |                |                |
| \_select       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this filter supports multiple options to be selected.

Returns
    True if multi-selection is enabled.

+----------------+----------------+----------------+----------------+----------------+
| std::list<     | (              |                | )              | const          |
| FilterOption:: |                |                |                |                |
| SCPtr          |                |                |                |                |
| >              |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :OptionSelecto |                |                |                |                |
| rFilter::optio |                |                |                |                |
| ns             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get all options of this filter, in the order they were added.

Returns
    The list of options.

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `FilterState </sdk | *filter\_state*,   |
| unity::scopes::Opt |                    | /scopes/cpp/unity. |                    |
| ionSelectorFilter: |                    | scopes.FilterState |                    |
| :update\_state     |                    | />`_               |                    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | FilterOption::SCPt | *option*,          |
|                    |                    | r                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | bool               | *active*           |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Marks given
`FilterOption </sdk/scopes/cpp/unity.scopes.FilterOption/>`_  of this
filter instance as active (or not active) in a
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  object.

Records the given
`FilterOption </sdk/scopes/cpp/unity.scopes.FilterOption/>`_  as
"selected" in the
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ . This is
meant to be used to modify a
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  received
with a search request before sending it back to the client (UI shell).

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | void               | (             |                                      |
|       | `FilterState </sdk | *filter |                                      |
| \_state*,   |                        |                                      |
| | unity::scopes::Opt |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| | ionSelectorFilter: |               |                                      |
|       | scopes.FilterState |         |                                      |
|             |                        |                                      |
| | :update\_state     |               |                                      |
|       | />`_               |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *filter |                                      |
| \_id*,      |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *option |                                      |
| \_id*,      |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | bool               | *value* |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Marks an option of a filter active/inactive in a
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  object,
without having an instance of
`OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`_ .

Updates an instance of
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ , without the
need for an
`OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`_ 
instance. This is meant to be used when creating a canned Query that
references another scope.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/closed.png

