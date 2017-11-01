Groups several filters into an expandable widget in the UI.
`More... </sdk/scopes/cpp/unity.scopes.FilterGroup#details>`__

``#include <unity/scopes/FilterGroup.h>``

        Public Member Functions
-------------------------------

std::string 

`id </sdk/scopes/cpp/unity.scopes.FilterGroup#a0a42c7ad65a4115dfdfbdf2aa32a6ca4>`__
() const

 

| Get the id of the widget group.

 

std::string 

`label </sdk/scopes/cpp/unity.scopes.FilterGroup#aef99f5048cc090da4b96f68c39020f44>`__
() const

 

| Get the label of the widget group.

 

        Static Public Member Functions
--------------------------------------

static FilterGroup::SCPtr 

`create </sdk/scopes/cpp/unity.scopes.FilterGroup#a8438bee537e5b4624875233f9e6ad4a9>`__
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.FilterGroup#a0a42c7ad65a4115dfdfbdf2aa32a6ca4>`__,
std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.FilterGroup#aef99f5048cc090da4b96f68c39020f44>`__)

 

| Create a WidgetGroup.

 

Detailed Description
--------------------

Groups several filters into an expandable widget in the UI.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | FilterGroup::SCPtr | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | unity::scopes::Fil |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | terGroup::create   |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *label* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
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

Create a WidgetGroup.

Returns
    An instance of WidgetGroup.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterGroup:: |                |                |                |                |
| id             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the id of the widget group.

Returns
    The identifier.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :FilterGroup:: |                |                |                |                |
| label          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the label of the widget group.

Returns
    The label.

