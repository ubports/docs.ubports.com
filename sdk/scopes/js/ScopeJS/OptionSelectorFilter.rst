.. _sdk_scopejs_optionselectorfilter:
ScopeJS OptionSelectorFilter
============================


A selection filter that displays a list of choices and allows one or
more of them to be selected

-  Methods

Array of FilterOption **``active_options``**\ ( ``filter_state `` )
Get active options from an instance of FilterState for this filter

**Parameters:**

-  ``filter_state`` **<Object>**

   FilterState

**Returns:** <Array of FilterOption>
LIst of active FilterOption

**``add_option``**\ ( ``  `` )
Add a new option to this filter

**Returns:**
FilterOption The added filter option

String **``filter_type``**\ ( ``  `` )
Get the type name of this filter

**Returns:** <String>
type name of this filter

Boolean **``has_active_option``**\ ( ``filter_state `` )
Check if an option is active for this filter

**Parameters:**

-  ``filter_state`` **<Object>**

   FilterState

**Returns:** <Boolean>
True if an option is active for this filter

String **``id``**\ ( ``  `` )
Get the identifier of this filter

**Returns:** <String>
identifier of this filter

String **``label``**\ ( ``  `` )
Get the label of this filter

**Returns:** <String>
label of this filter

Boolean **``multi_select``**\ ( ``  `` )
Check if this filter supports multiple options to be selected

**Returns:** <Boolean>
True if this filter multiple options to be selected

Array of FilterOption **``options``**\ ( ``  `` )
Get all options of this filter, in the order they were added

**Returns:** <Array of FilterOption>

**``set_display_hints``**\ ( ``hints `` )
Sets display hints for the Shell UI

**Parameters:**

-  ``hints`` **<Int>**

   0 is Default filter hint, 1 is Primary filter hint

**``update_state``**\ ( ``filter_state, option, active `` )
Marks given FilterOption of this filter instance as active (or not
active) in a FilterState object. Records the given FilterOption as
"selected" in the FilterState. This is meant to be used to modify a
FilterState received with a search request before sending it back to the
client (UI shell).

**Parameters:**

-  ``filter_state`` **<FilterState>**
-  :ref:``option`` **<`FilterOption <sdk_scopejs_filteroption>`>**
-  ``active`` **<Boolean>**

