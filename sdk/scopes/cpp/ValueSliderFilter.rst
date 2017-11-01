A value slider filter that allows for selecting a value within a given
range.
`More... </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#details>`__

``#include <unity/scopes/ValueSliderFilter.h>``

Inheritance diagram for unity::scopes::ValueSliderFilter:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

void 

`set\_default\_value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#ac868b40a91520b9a56c2ed98152f1a1a>`__
(double val)

 

| Change the default value of this filter.

 

double 

`default\_value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a32344819474a1ef0956f63e87fb047a4>`__
() const

 

| Get the default value of this filter.

 

double 

`min </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#ab6a8d69f025709d3ee09d7cb362eba03>`__
() const

 

| Get the minimum allowed value.

 

double 

`max </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a5e2e527d77390dc02db1bd1cbdce6460>`__
() const

 

| Get the maximum allowed value.

 

bool 

`has\_value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a9a113cc7fbda26aed161067fb7892119>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state) const

 

| Check if filter state object holds a value of this filter.

 

double 

`value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a7a81dec2e0595cf95effa6f9f24259ba>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state) const

 

| Get value of this filter from filter state object.

 

`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`__
const & 

`labels </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a6dc105b666f967fa6a9bbf2eca2ee9dc>`__
() const

 

| Get value labeles for this slider filter.

 

void 

`update\_state </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a5b336122dcab4ed78974badb9016e622>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__
&filter\_state, double
`value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a7a81dec2e0595cf95effa6f9f24259ba>`__)
const

 

| Sets value of this filter instance in filter state object.

 

|-| Public Member Functions inherited from
`unity::scopes::FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`__

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

 

        Static Public Member Functions
--------------------------------------

static ValueSliderFilter::UPtr 

`create </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a5828d2bf89830af47ac5b2cd53cd4e57>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase#a1f2d96647b23af77b1ff1cffc80f3868>`__,
double
`min </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#ab6a8d69f025709d3ee09d7cb362eba03>`__,
double
`max </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a5e2e527d77390dc02db1bd1cbdce6460>`__,
double
`default\_value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a32344819474a1ef0956f63e87fb047a4>`__,
`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`__
const &value\_labels)

 

| Create ValueSliderFilter.

 

static ValueSliderFilter::UPtr 

`create </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#accaaa9011772ba4f297cb245b3d24738>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase#a1f2d96647b23af77b1ff1cffc80f3868>`__,
double
`min </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#ab6a8d69f025709d3ee09d7cb362eba03>`__,
double
`max </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a5e2e527d77390dc02db1bd1cbdce6460>`__,
double
`default\_value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a32344819474a1ef0956f63e87fb047a4>`__,
`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`__
const &value\_labels, FilterGroup::SCPtr const &group)

 

| Create ValueSliderFilter inside a FilterGroup.

 

static void 

`update\_state </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#ae72a0d0a94095bd3d2fb6950a2c9221e>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__
&filter\_state, std::string const &filter\_id, double
`value </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#a7a81dec2e0595cf95effa6f9f24259ba>`__)

 

| Sets value of this filter instance in filter state object, without
  having an instance of ValueSliderFilter.

 

        Additional Inherited Members
------------------------------------

|-| Public Types inherited from
`unity::scopes::FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`__

enum  

`DisplayHints </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159>`__
{
`Default </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f>`__
= 0,
`Primary </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56>`__
= 1 }

 

| Display hints for the Shell UI.
  `More... </sdk/scopes/cpp/unity.scopes.FilterBase#ab9e833d5e4029fed745d15ba63715159>`__

 

Detailed Description
--------------------

A value slider filter that allows for selecting a value within a given
range.

The
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__
allows for selecting a value within a range defined by minimum and
maximum values. Both minimum and maximum values can have labels and, in
addition, the scope may provide extra labels to mark other values from
that range - these label will serve as a guidance to the user.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | ValueSliderFilter: | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | :UPtr              |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Val |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ueSliderFilter::cr |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | eate               |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | double             | *min*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | double             | *max*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | double             | *defaul |                                      |
| t\_value*,  |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ValueSliderLabels | *value\ |                                      |
| _labels*    |                        |                                      |
| |                    |               |                                      |
|       |  </sdk/scopes/cpp/ |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | unity.scopes.Value |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | SliderLabels/>`__  |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
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

Create
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__.

Creates
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__
of ValueSliderFilter::SliderType::LessThan type.

Parameters
    +------------------+---------------------------------------------------------------------------------------------------+
    | id               | A unique identifier for the filter that can be used to later identify it among several filters.   |
    +------------------+---------------------------------------------------------------------------------------------------+
    | min              | The minimum allowed value                                                                         |
    +------------------+---------------------------------------------------------------------------------------------------+
    | max              | The maximum allowed value                                                                         |
    +------------------+---------------------------------------------------------------------------------------------------+
    | default\_value   | The default value of this filter, from the min..max range.                                        |
    +------------------+---------------------------------------------------------------------------------------------------+
    | value\_labels    | The labels for min and max values as well as optional extra labels.                               |
    +------------------+---------------------------------------------------------------------------------------------------+

Returns
    Instance of
    `ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__.

Exceptions
    +-------------------------+-----------------------------------------------------------+
    | unity::LogicException   | on invalid (min, max) range or erroneous value\_labels.   |
    +-------------------------+-----------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | ValueSliderFilter: | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | :UPtr              |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Val |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ueSliderFilter::cr |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | eate               |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | double             | *min*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | double             | *max*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | double             | *defaul |                                      |
| t\_value*,  |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ValueSliderLabels | *value\ |                                      |
| _labels*,   |                        |                                      |
| |                    |               |                                      |
|       |  </sdk/scopes/cpp/ |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | unity.scopes.Value |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | SliderLabels/>`__  |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | FilterGroup::SCPtr | *group* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
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

Create
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__
inside a `FilterGroup </sdk/scopes/cpp/unity.scopes.FilterGroup/>`__.

Creates
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__
of ValueSliderFilter::SliderType::LessThan type.

Parameters
    +------------------+---------------------------------------------------------------------------------------------------+
    | id               | A unique identifier for the filter that can be used to later identify it among several filters.   |
    +------------------+---------------------------------------------------------------------------------------------------+
    | min              | The minimum allowed value                                                                         |
    +------------------+---------------------------------------------------------------------------------------------------+
    | max              | The maximum allowed value                                                                         |
    +------------------+---------------------------------------------------------------------------------------------------+
    | default\_value   | The default value of this filter, from the min..max range.                                        |
    +------------------+---------------------------------------------------------------------------------------------------+
    | value\_labels    | The labels for min and max values as well as optional extra labels.                               |
    +------------------+---------------------------------------------------------------------------------------------------+
    | group            | A filter group this filter should be added to.                                                    |
    +------------------+---------------------------------------------------------------------------------------------------+

Returns
    Instance of
    `ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__.

Exceptions
    +-------------------------+-----------------------------------------------------------+
    | unity::LogicException   | on invalid (min, max) range or erroneous value\_labels.   |
    +-------------------------+-----------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ValueSliderFi |                |                |                |                |
| lter::default\ |                |                |                |                |
| _value         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the default value of this filter.

The default value will be used by the shell if no value is present for
this filter in the
`unity::scopes::FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__
(no value has been set by the user).

Returns
    The default value

+-----------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| bool unity::scopes::ValueSliderFilter::has\_value   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const &    | *filter\_state*   | )   | const   |
+-----------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Check if filter state object holds a value of this filter.

Returns
    true if filter\_state has a value of this filter.

+----------------+----------------+----------------+----------------+----------------+
| `ValueSliderLa | (              |                | )              | const          |
| bels </sdk/sco |                |                |                |                |
| pes/cpp/unity. |                |                |                |                |
| scopes.ValueSl |                |                |                |                |
| iderLabels/>`_ |                |                |                |                |
| _              |                |                |                |                |
| const &        |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ValueSliderFi |                |                |                |                |
| lter::labels   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get value labeles for this slider filter.

Returns
    the value labels.

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ValueSliderFi |                |                |                |                |
| lter::max      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the maximum allowed value.

Returns
    maximum value

+----------------+----------------+----------------+----------------+----------------+
| double         | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ValueSliderFi |                |                |                |                |
| lter::min      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the minimum allowed value.

Returns
    mimimum value

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | double       | *val*        | )            |              |
| unity::scope |              |              |              |              |              |
| s::ValueSlid |              |              |              |              |              |
| erFilter::se |              |              |              |              |              |
| t\_default\_ |              |              |              |              |              |
| value        |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Change the default value of this filter.

The default value will be used by the shell if no value is present for
this filter in the
`unity::scopes::FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__
(no value has been set by the user).

Parameters
    +-------+--------------------------+
    | val   | The new default value.   |
    +-------+--------------------------+

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `FilterState </sdk | *filter\_state*,   |
| unity::scopes::Val |                    | /scopes/cpp/unity. |                    |
| ueSliderFilter::up |                    | scopes.FilterState |                    |
| date\_state        |                    | />`__              |                    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | double             | *value*            |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Sets value of this filter instance in filter state object.

This is meant to be used to modify a
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ received
with a search request before sending it back to the client (UI shell).

Exceptions
    +-------------------------+----------------------------------------+
    | unity::LogicException   | if value is out of (min, max) range.   |
    +-------------------------+----------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | void               | (             |                                      |
|       | `FilterState </sdk | *filter |                                      |
| \_state*,   |                        |                                      |
| | unity::scopes::Val |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| | ueSliderFilter::up |               |                                      |
|       | scopes.FilterState |         |                                      |
|             |                        |                                      |
| | date\_state        |               |                                      |
|       | />`__              |         |                                      |
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
|       | double             | *value* |                                      |
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

Sets value of this filter instance in filter state object, without
having an instance of
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__.

Updates an instance of
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__, without the
need for an
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__
instance. This is meant to be used when creating a canned Query that
references another scope.

+--------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| double unity::scopes::ValueSliderFilter::value   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const &    | *filter\_state*   | )   | const   |
+--------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Get value of this filter from filter state object.

Returns
    value of this filter or the default value if value is not present in
    the filter\_state.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ValueSliderFilter/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.ValueSliderFilter/closed.png

