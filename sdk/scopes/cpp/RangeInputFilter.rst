A range filter allows a start and end value to be entered by the user.
`More... </sdk/scopes/cpp/unity.scopes.RangeInputFilter#details>`__

``#include <unity/scopes/RangeInputFilter.h>``

Inheritance diagram for unity::scopes::RangeInputFilter:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

std::string 

`start\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a1a4cf761c6bfa2e07eb24b6f584ec05b>`__
() const

 

| Get the prefix label of start value.

 

std::string 

`start\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a9e2a6ec4e9c06234ee4759dce2644008>`__
() const

 

| Get the postfix label of start value.

 

std::string 

`end\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a8acb48c94b3e9b6ca228a0e7ebb26ae5>`__
() const

 

| Get the prefix label of end value.

 

std::string 

`end\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a81dde713bcfb2b2ca24683ba9e808e34>`__
() const

 

| Get the postfix label of end value.

 

std::string 

`central\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a41f517d0071ca0f953c478f8272bf41b>`__
() const

 

| Get the central label for this filter.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ 

`default\_start\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#adf545096dacbea4303361527450321fa>`__
() const

 

| Get the default start value if set (int, double or null).

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ 

`default\_end\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#aaf471258f02a8af0f7bfdb186ed61b0e>`__
() const

 

| Get default end value if set (int, double or null).

 

bool 

`has\_start\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a64f2c9ff7ed484f49d26f601f30e8616>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state) const

 

| Check if filter state holds a start value for this filter instance.

 

bool 

`has\_end\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#ae459a665a5dae27445547b1c0be8c7c3>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state) const

 

| Check if filter state holds an end value for this filter instance.

 

double 

`start\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#afd86208a5f8fe8a81877bd0bf4588758>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state) const

 

| Get the start value for this filter instance.

 

double 

`end\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#af5bee0ddf65a375a4a5e19b4313de940>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state) const

 

| Get end value for this filter instance.

 

void 

`update\_state </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a5fa97b63d86a89e7144a89e0996d1304>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__
&filter\_state, `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__
const
&\ `start\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#afd86208a5f8fe8a81877bd0bf4588758>`__,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const
&\ `end\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#af5bee0ddf65a375a4a5e19b4313de940>`__)
const

 

| Store start and end value for this filter in the filter state.

 

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

static RangeInputFilter::SPtr 

`create </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a0717644ec86abcdc9dabf30302fead5d>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase#a1f2d96647b23af77b1ff1cffc80f3868>`__,
std::string const
&\ `start\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a1a4cf761c6bfa2e07eb24b6f584ec05b>`__,
std::string const
&\ `start\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a9e2a6ec4e9c06234ee4759dce2644008>`__,
std::string const
&\ `central\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a41f517d0071ca0f953c478f8272bf41b>`__,
std::string const
&\ `end\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a8acb48c94b3e9b6ca228a0e7ebb26ae5>`__,
std::string const
&\ `end\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a81dde713bcfb2b2ca24683ba9e808e34>`__)

 

| Creates a RangeInputFilter.

 

static RangeInputFilter::SPtr 

`create </sdk/scopes/cpp/unity.scopes.RangeInputFilter#af011c6e541e7a3776cccacf88fdba2b5>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase#a1f2d96647b23af77b1ff1cffc80f3868>`__,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const
&\ `default\_start\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#adf545096dacbea4303361527450321fa>`__,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const
&\ `default\_end\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#aaf471258f02a8af0f7bfdb186ed61b0e>`__,
std::string const
&\ `start\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a1a4cf761c6bfa2e07eb24b6f584ec05b>`__,
std::string const
&\ `start\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a9e2a6ec4e9c06234ee4759dce2644008>`__,
std::string const
&\ `central\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a41f517d0071ca0f953c478f8272bf41b>`__,
std::string const
&\ `end\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a8acb48c94b3e9b6ca228a0e7ebb26ae5>`__,
std::string const
&\ `end\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a81dde713bcfb2b2ca24683ba9e808e34>`__)

 

| Creates a RangeInputFilter with specific default values for start and
  end.

 

static RangeInputFilter::SPtr 

`create </sdk/scopes/cpp/unity.scopes.RangeInputFilter#aba826b77159d4d51ec804c2132ff0f62>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase#a1f2d96647b23af77b1ff1cffc80f3868>`__,
std::string const
&\ `start\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a1a4cf761c6bfa2e07eb24b6f584ec05b>`__,
std::string const
&\ `start\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a9e2a6ec4e9c06234ee4759dce2644008>`__,
std::string const
&\ `central\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a41f517d0071ca0f953c478f8272bf41b>`__,
std::string const
&\ `end\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a8acb48c94b3e9b6ca228a0e7ebb26ae5>`__,
std::string const
&\ `end\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a81dde713bcfb2b2ca24683ba9e808e34>`__,
FilterGroup::SCPtr const &group)

 

| Creates a RangeInputFilter inside a FilterGroup.

 

static RangeInputFilter::SPtr 

`create </sdk/scopes/cpp/unity.scopes.RangeInputFilter#ac782e01462c0f1868fca744119da91c6>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterBase#a1f2d96647b23af77b1ff1cffc80f3868>`__,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const
&\ `default\_start\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#adf545096dacbea4303361527450321fa>`__,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const
&\ `default\_end\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#aaf471258f02a8af0f7bfdb186ed61b0e>`__,
std::string const
&\ `start\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a1a4cf761c6bfa2e07eb24b6f584ec05b>`__,
std::string const
&\ `start\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a9e2a6ec4e9c06234ee4759dce2644008>`__,
std::string const
&\ `central\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a41f517d0071ca0f953c478f8272bf41b>`__,
std::string const
&\ `end\_prefix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a8acb48c94b3e9b6ca228a0e7ebb26ae5>`__,
std::string const
&\ `end\_postfix\_label </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a81dde713bcfb2b2ca24683ba9e808e34>`__,
FilterGroup::SCPtr const &group)

 

| Creates a RangeInputFilter with specific default values for start and
  end, inside a FilterGroup.

 

static void 

`update\_state </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a7cb0b4523641ea4dec9b3c619f5b9c21>`__
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__
&filter\_state, std::string const &filter\_id,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const
&\ `start\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#afd86208a5f8fe8a81877bd0bf4588758>`__,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const
&\ `end\_value </sdk/scopes/cpp/unity.scopes.RangeInputFilter#af5bee0ddf65a375a4a5e19b4313de940>`__)

 

| Store start and end value in the filter state, without having an
  instance of RangeInputFilter.

 

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

A range filter allows a start and end value to be entered by the user.

A `RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__
is composed of two input boxes that accept numeric values (both of them
optional). The filter can have prefix and/or postfix labels for the
start and end value, respectively, plus a single label that is displayed
between the two input boxes. The filter can provide defaults for that
start and end value, which are used by the UI if the user does not enter
explicit values.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :RangeInputFil |                |                |                |                |
| ter::central\_ |                |                |                |                |
| label          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the central label for this filter.

Returns
    The central label.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | RangeInputFilter:: | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | SPtr               |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Ran |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | geInputFilter::cre |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ate                |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _prefix\_la |                        |                                      |
| |                    |               |                                      |
|       | &                  | bel*,   |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _postfix\_l |                        |                                      |
| |                    |               |                                      |
|       | &                  | abel*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *centra |                                      |
| l\_label*,  |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| refix\_labe |                        |                                      |
| |                    |               |                                      |
|       | &                  | l*,     |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| ostfix\_lab |                        |                                      |
| |                    |               |                                      |
|       | &                  | el*     |                                      |
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

Creates a
`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__.

Parameters
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | id                      | A unique identifier for the filter that can be used to later identify it among several filters.   |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_prefix\_label    | A display label for the input box for the start value, displayed to the left (can be empty).      |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_postfix\_label   | A display label for the input box for the start value, displayed to the right (can be empty).     |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | central\_label          | A display label that is displayed between the two input boxes (can be empty).                     |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_prefix\_label      | A display label for the input box for the end value, displayed to the left (can be empty).        |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_postfix\_label     | A display label for the input box for the end value, displayed to the right (can be empty).       |
    +-------------------------+---------------------------------------------------------------------------------------------------+

Returns
    Instance of
    `RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | RangeInputFilter:: | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | SPtr               |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Ran |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | geInputFilter::cre |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ate                |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `Variant </sdk/sco | *defaul |                                      |
| t\_start\_v |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/unity.scop | alue*,  |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | es.Variant/>`__    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `Variant </sdk/sco | *defaul |                                      |
| t\_end\_val |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/unity.scop | ue*,    |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | es.Variant/>`__    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _prefix\_la |                        |                                      |
| |                    |               |                                      |
|       | &                  | bel*,   |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _postfix\_l |                        |                                      |
| |                    |               |                                      |
|       | &                  | abel*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *centra |                                      |
| l\_label*,  |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| refix\_labe |                        |                                      |
| |                    |               |                                      |
|       | &                  | l*,     |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| ostfix\_lab |                        |                                      |
| |                    |               |                                      |
|       | &                  | el*     |                                      |
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

Creates a
`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__
with specific default values for start and end.

Parameters
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | id                      | A unique identifier for the filter that can be used to later identify it among several filters.   |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | default\_start\_value   | A default start value (double, int, or null).                                                     |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | default\_end\_value     | A default end value (double, int, or null).                                                       |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_prefix\_label    | A display label for the input box for the start value, displayed to the left (can be empty).      |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_postfix\_label   | A display label for the input box for the start value, displayed to the right (can be empty).     |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | central\_label          | A display label displayed between the two input boxes (can be empty).                             |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_prefix\_label      | A display label for the input box for the end value, displayed to the left (can be empty).        |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_postfix\_label     | A display label for the input box for the end value, displayed to the right (can be empty).       |
    +-------------------------+---------------------------------------------------------------------------------------------------+

Returns
    Instance of
    `RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | RangeInputFilter:: | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | SPtr               |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Ran |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | geInputFilter::cre |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ate                |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _prefix\_la |                        |                                      |
| |                    |               |                                      |
|       | &                  | bel*,   |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _postfix\_l |                        |                                      |
| |                    |               |                                      |
|       | &                  | abel*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *centra |                                      |
| l\_label*,  |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| refix\_labe |                        |                                      |
| |                    |               |                                      |
|       | &                  | l*,     |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| ostfix\_lab |                        |                                      |
| |                    |               |                                      |
|       | &                  | el*,    |                                      |
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

Creates a
`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__
inside a `FilterGroup </sdk/scopes/cpp/unity.scopes.FilterGroup/>`__.

Parameters
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | id                      | A unique identifier for the filter that can be used to later identify it among several filters.   |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_prefix\_label    | A display label for the input box for the start value, displayed to the left (can be empty).      |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_postfix\_label   | A display label for the input box for the start value, displayed to the right (can be empty).     |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | central\_label          | A display label displayed between the two input boxes (can be empty).                             |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_prefix\_label      | A display label for the input box for the end value, displayed to the left (can be empty).        |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_postfix\_label     | A display label for the input box for the end value, displayed to the right (can be empty).       |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | group                   | A filter group this filter should be added to.                                                    |
    +-------------------------+---------------------------------------------------------------------------------------------------+

Returns
    Instance of
    `RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | RangeInputFilter:: | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | SPtr               |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Ran |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | geInputFilter::cre |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ate                |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `Variant </sdk/sco | *defaul |                                      |
| t\_start\_v |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/unity.scop | alue*,  |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | es.Variant/>`__    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `Variant </sdk/sco | *defaul |                                      |
| t\_end\_val |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/unity.scop | ue*,    |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | es.Variant/>`__    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _prefix\_la |                        |                                      |
| |                    |               |                                      |
|       | &                  | bel*,   |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *start\ |                                      |
| _postfix\_l |                        |                                      |
| |                    |               |                                      |
|       | &                  | abel*,  |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *centra |                                      |
| l\_label*,  |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| refix\_labe |                        |                                      |
| |                    |               |                                      |
|       | &                  | l*,     |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *end\_p |                                      |
| ostfix\_lab |                        |                                      |
| |                    |               |                                      |
|       | &                  | el*,    |                                      |
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

Creates a
`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__
with specific default values for start and end, inside a
`FilterGroup </sdk/scopes/cpp/unity.scopes.FilterGroup/>`__.

Parameters
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | id                      | A unique identifier for the filter that can be used to later identify it among several filters.   |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | default\_start\_value   | The default start value (double, int, or null).                                                   |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | default\_end\_value     | The default end value (double, int, or null).                                                     |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_prefix\_label    | A display label for the input box for the start value, displayed to the left (can be empty).      |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | start\_postfix\_label   | A display label for the input box for the start value, displayed to the right (can be empty).     |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | central\_label          | A display label displayed between the two input boxes (can be empty).                             |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_prefix\_label      | A display label for the input box for the end value, displayed to the left (can be empty).        |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | end\_postfix\_label     | A display label for the input box for the end value, displayed to the right (can be empty).       |
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | group                   | A filter group this filter should be added to.                                                    |
    +-------------------------+---------------------------------------------------------------------------------------------------+

Returns
    Instance of
    `RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__.

+----------------+----------------+----------------+----------------+----------------+
| `Variant </sdk | (              |                | )              | const          |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.Var |                |                |                |                |
| iant/>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :RangeInputFil |                |                |                |                |
| ter::default\_ |                |                |                |                |
| end\_value     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get default end value if set (int, double or null).

The default value should be used unless a value is present in the
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ - use
`unity::scopes::RangeInputFilter::has\_end\_value() </sdk/scopes/cpp/unity.scopes.RangeInputFilter#ae459a665a5dae27445547b1c0be8c7c3>`__
and
`unity::scopes::RangeInputFilter::end\_value() </sdk/scopes/cpp/unity.scopes.RangeInputFilter#af5bee0ddf65a375a4a5e19b4313de940>`__
before resorting to the default value.

+----------------+----------------+----------------+----------------+----------------+
| `Variant </sdk | (              |                | )              | const          |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.Var |                |                |                |                |
| iant/>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :RangeInputFil |                |                |                |                |
| ter::default\_ |                |                |                |                |
| start\_value   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the default start value if set (int, double or null).

The default value should be used unless a value is present in the
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ - use
`unity::scopes::RangeInputFilter::has\_start\_value() </sdk/scopes/cpp/unity.scopes.RangeInputFilter#a64f2c9ff7ed484f49d26f601f30e8616>`__
and
`unity::scopes::RangeInputFilter::start\_value() </sdk/scopes/cpp/unity.scopes.RangeInputFilter#afd86208a5f8fe8a81877bd0bf4588758>`__
before resorting to the default value.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :RangeInputFil |                |                |                |                |
| ter::end\_post |                |                |                |                |
| fix\_label     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the postfix label of end value.

Returns
    The postfix label of end value.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :RangeInputFil |                |                |                |                |
| ter::end\_pref |                |                |                |                |
| ix\_label      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the prefix label of end value.

Returns
    The prefix label of end value.

+------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| double unity::scopes::RangeInputFilter::end\_value   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const &    | *filter\_state*   | )   | const   |
+------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Get end value for this filter instance.

Returns
    The end value or the default end value if not null.

Exceptions
    +------------------------------------------------------------------------------------------+------------------------------------------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if the end value is not set and the default end value is null.   |
    +------------------------------------------------------------------------------------------+------------------------------------------------------------------+

+---------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| bool unity::scopes::RangeInputFilter::has\_end\_value   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const &    | *filter\_state*   | )   | const   |
+---------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Check if filter state holds an end value for this filter instance.

Parameters
    +-----------------+-------------------------+
    | filter\_state   | The state of filters.   |
    +-----------------+-------------------------+

Returns
    ``true`` if filter\_state has an end value for this filter.

+-----------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| bool unity::scopes::RangeInputFilter::has\_start\_value   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const &    | *filter\_state*   | )   | const   |
+-----------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Check if filter state holds a start value for this filter instance.

Parameters
    +-----------------+-------------------------+
    | filter\_state   | The state of filters.   |
    +-----------------+-------------------------+

Returns
    ``true`` if filter\_state has a start value for this filter.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :RangeInputFil |                |                |                |                |
| ter::start\_po |                |                |                |                |
| stfix\_label   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the postfix label of start value.

Returns
    The postfix label of start value.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :RangeInputFil |                |                |                |                |
| ter::start\_pr |                |                |                |                |
| efix\_label    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the prefix label of start value.

Returns
    The prefix label of start value.

+--------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+
| double unity::scopes::RangeInputFilter::start\_value   | (   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const &    | *filter\_state*   | )   | const   |
+--------------------------------------------------------+-----+------------------------------------------------------------------------+-------------------+-----+---------+

Get the start value for this filter instance.

Returns
    The start value or the default start value if not null.

Exceptions
    +------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
    | `unity::scopes::NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if the start value is not set and the default start value is null.   |
    +------------------------------------------------------------------------------------------+----------------------------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `FilterState </sdk | *filter\_state*,   |
| unity::scopes::Ran |                    | /scopes/cpp/unity. |                    |
| geInputFilter::upd |                    | scopes.FilterState |                    |
| ate\_state         |                    | />`__              |                    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Variant </sdk/sco | *start\_value*,    |
|                    |                    | pes/cpp/unity.scop |                    |
|                    |                    | es.Variant/>`__    |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Variant </sdk/sco | *end\_value*       |
|                    |                    | pes/cpp/unity.scop |                    |
|                    |                    | es.Variant/>`__    |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Store start and end value for this filter in the filter state.

Updates filter\_state with start and end values for this filter
instance. Allowed data types for start\_value and end\_value are
Variant::Type::Null, Variant::Type::Double and Variant::Type::Int.
Integer values are converted to double when returned via
`unity::scopes::RangeInputFilter::start\_value() </sdk/scopes/cpp/unity.scopes.RangeInputFilter#afd86208a5f8fe8a81877bd0bf4588758>`__
and
`unity::scopes::RangeInputFilter::end\_value() </sdk/scopes/cpp/unity.scopes.RangeInputFilter#af5bee0ddf65a375a4a5e19b4313de940>`__
methods. Pass
`Variant::null() </sdk/scopes/cpp/unity.scopes.Variant#a2bd2d5425fdec9af9340c22e3b47ac1c>`__
as start\_value or end\_value if that value is unspecified (hasn't been
entered or was erased by the user from the input box).

Parameters
    +-----------------+----------------------------------------------------------------------------------+
    | filter\_state   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ instance to update   |
    +-----------------+----------------------------------------------------------------------------------+
    | start\_value    | Start value                                                                      |
    +-----------------+----------------------------------------------------------------------------------+
    | end\_value      | End value                                                                        |
    +-----------------+----------------------------------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | void               | (             |                                      |
|       | `FilterState </sdk | *filter |                                      |
| \_state*,   |                        |                                      |
| | unity::scopes::Ran |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| | geInputFilter::upd |               |                                      |
|       | scopes.FilterState |         |                                      |
|             |                        |                                      |
| | ate\_state         |               |                                      |
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
|       | `Variant </sdk/sco | *start\ |                                      |
| _value*,    |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/unity.scop |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | es.Variant/>`__    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `Variant </sdk/sco | *end\_v |                                      |
| alue*       |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/unity.scop |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | es.Variant/>`__    |         |                                      |
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

Store start and end value in the filter state, without having an
instance of
`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__.

Updates filter\_state with start and end values without an instance of
`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__.
This is meant to be used when creating a
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__ that
references another scope.

Parameters
    +-----------------+----------------------------------------------------------------------------------+
    | filter\_state   | `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ instance to update   |
    +-----------------+----------------------------------------------------------------------------------+
    | filter\_id      | Unique identifier of filter                                                      |
    +-----------------+----------------------------------------------------------------------------------+
    | start\_value    | Start value                                                                      |
    +-----------------+----------------------------------------------------------------------------------+
    | end\_value      | End value                                                                        |
    +-----------------+----------------------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.RangeInputFilter/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.RangeInputFilter/closed.png

