.. _sdk_filteroption:
FilterOption
============

Holds definition of filter option for
`OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`_ .
`More... </sdk/scopes/cpp/unity.scopes.FilterOption/#details>`_ 

``#include <unity/scopes/FilterOption.h>``

        Public Member Functions
-------------------------------

std::string 

`id </sdk/scopes/cpp/unity.scopes.FilterOption/#af85bb24c630335f26a201e5d78af4fec>`_ 
() const

 

| Get the identifier of this filter option.

 

std::string 

`label </sdk/scopes/cpp/unity.scopes.FilterOption/#ac8b998f42e5dd144b235d8a8d1f38ab3>`_ 
() const

 

| Get the label of this filter option.

 

bool 

`default\_value </sdk/scopes/cpp/unity.scopes.FilterOption/#ae202dadd8615a4c416c169f702c4f711>`_ 
() const

 

| Return the default value of this filter option.

 

Detailed Description
--------------------

Holds definition of filter option for
`OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`_ .

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterOption: |                |                |                |                |
| :default\_valu |                |                |                |                |
| e              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the default value of this filter option.

Returns
    The default value.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterOption: |                |                |                |                |
| :id            |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the identifier of this filter option.

Returns
    The option identifier.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterOption: |                |                |                |                |
| :label         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the label of this filter option.

Returns
    The option label.

