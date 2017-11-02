.. _sdk_valuesliderlabels:
ValueSliderLabels
=================

Labels used by a
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`_ .
`More... </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#details>`_ 

``#include <unity/scopes/ValueSliderLabels.h>``

        Public Member Functions
-------------------------------

 

`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#aee36eeedc9ec3d756e4b093575a5431e>`_ 
(std::string const
&\ `min\_label </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#a199d67722ee50d4eec47c2f089670cf2>`_ ,
std::string const
&\ `max\_label </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#a5f471aecdaa04dbdf13112a74f524a86>`_ )

 

| Create a ValueSliderLabels instance with labels for minimum and
  maximum values only.

 

 

`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#a6b31441606d8e090cad12908800fb409>`_ 
(std::string const
&\ `min\_label </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#a199d67722ee50d4eec47c2f089670cf2>`_ ,
std::string const
&\ `max\_label </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#a5f471aecdaa04dbdf13112a74f524a86>`_ ,
:ref:`ValueLabelPairList <sdk_unity_scopes#aa2ccb5d7acadeb38f44e9405f1b55c6b>`
const
&\ `extra\_labels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#adcd0e3d956206f272b6fec704b87a386>`_ )

 

| Create a ValueSliderLabels instance with labels for minimum and
  maximum, as well as extra labels.

 

std::string 

`min\_label </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#a199d67722ee50d4eec47c2f089670cf2>`_ 
() const

 

| Get the label for the minimum value of the filter.

 

std::string 

`max\_label </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#a5f471aecdaa04dbdf13112a74f524a86>`_ 
() const

 

| Get the label for the maximum value of the filter.

 

:ref:`ValueLabelPairList <sdk_unity_scopes#aa2ccb5d7acadeb38f44e9405f1b55c6b>` 

`extra\_labels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#adcd0e3d956206f272b6fec704b87a386>`_ 
() const

 

| Get the labels for intermediate values of the filter.

 

Copy and assignment

Copy and assignment (move and non-move versions) have the usual value
semantics.

         

**ValueSliderLabels**
(`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
const &other)

 

         

**ValueSliderLabels**
(`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
&&)

 

`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
& 

**operator=**
(`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
const &other)

 

`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
& 

**operator=**
(`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
&&)

 

         

**~ValueSliderLabels** ()

 

Detailed Description
--------------------

Labels used by a
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`_ .

The
`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
class holds labels for a
`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`_ .
Labels for the minimum and maximum values must be provided. In addition,
an arbitrary number of extra labels can be defined; these labels mark
intermediate values between the minimum and maximum value.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Val | (                  | std::string const  | *min\_label*,      |
| ueSliderLabels::Va |                    | &                  |                    |
| lueSliderLabels    |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *max\_label*       |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create a
`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
instance with labels for minimum and maximum values only.

Exceptions
    +-----------------------------------+---------------------------------------------+
    | unity::InvalidArgumentException   | for invalid (empty or duplicated) labels.   |
    +-----------------------------------+---------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Val | (                  | std::string const  | *min\_label*,      |
| ueSliderLabels::Va |                    | &                  |                    |
| lueSliderLabels    |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *max\_label*,      |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `ValueLabelPairLis | *extra\_labels*    |
|                    |                    | t <sdk_unity_scope |                    |
|                    |                    | s#aa2ccb5d7acadeb3 |                    |
|                    |                    | 8f44e9405f1b55c6b> |                    |
|                    |                    | `_                 |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create a
`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 
instance with labels for minimum and maximum, as well as extra labels.

Note that any extra labels act only as a guidance for the user (i.e.
they do not limit the available choices). The Unity shell is free to
omit some or all of the labels depending on the available screen space.

Parameters
    +-----------------+---------------------------------------------------------------------------------------------------------------------------------+
    | min\_label      | The label for minimum value of the associated `ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`_  filter.   |
    +-----------------+---------------------------------------------------------------------------------------------------------------------------------+
    | max\_label      | The label for maximum value of the associated `ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`_  filter.   |
    +-----------------+---------------------------------------------------------------------------------------------------------------------------------+
    | extra\_labels   | Additional labels for values between minimum and maximum values.                                                                |
    +-----------------+---------------------------------------------------------------------------------------------------------------------------------+

Exceptions
    +-----------------------------------+-------------------------------------------------------------------------+
    | unity::InvalidArgumentException   | on invalid labels (empty or duplicate labels, non-increasing values).   |
    +-----------------------------------+-------------------------------------------------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ValueSliderLa |                |                |                |                |
| bels::max\_lab |                |                |                |                |
| el             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the label for the maximum value of the filter.

Returns
    The label for the maximum value

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ValueSliderLa |                |                |                |                |
| bels::min\_lab |                |                |                |                |
| el             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the label for the minimum value of the filter.

Returns
    The label for the minimum value

