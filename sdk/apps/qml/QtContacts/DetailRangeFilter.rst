The DetailRangeFilter element provides a filter based around a detail
value range criterion.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`detail </sdk/apps/qml/QtContacts/DetailRangeFilter#detail-prop>`__****
   : enumeration
-  ****`field </sdk/apps/qml/QtContacts/DetailRangeFilter#field-prop>`__****
   : int
-  ****`matchFlags </sdk/apps/qml/QtContacts/DetailRangeFilter#matchFlags-prop>`__****
   : enumeration
-  ****`max </sdk/apps/qml/QtContacts/DetailRangeFilter#max-prop>`__****
   : variant
-  ****`min </sdk/apps/qml/QtContacts/DetailRangeFilter#min-prop>`__****
   : variant
-  ****`rangeFlags </sdk/apps/qml/QtContacts/DetailRangeFilter#rangeFlags-prop>`__****
   : enumeration

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactDetailRangeFilter.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ detail : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the detail type of which details will be matched to.

**See also**
`ContactDetail::type </sdk/apps/qml/QtContacts/ContactDetail#type-prop>`__
and
`DetailFilter::detail </sdk/apps/qml/QtContacts/DetailFilter#detail-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ field : int                                                     |
+--------------------------------------------------------------------------+

This property holds the detail field type of which detail fields will be
matched to. Detail field types are enumeration values defined in each
detail elements.

**See also**
`DetailFilter::field </sdk/apps/qml/QtContacts/DetailFilter#field-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ matchFlags : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds the match flags of the criterion, which define
semantics such as case sensitivity, and exact matching.

**See also**
`DetailFilter::matchFlags </sdk/apps/qml/QtContacts/DetailFilter#matchFlags-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ max : variant                                                   |
+--------------------------------------------------------------------------+

This property holds the upper bound of the value range criterion. By
default, there is no upper bound.

| 

+--------------------------------------------------------------------------+
|        \ min : variant                                                   |
+--------------------------------------------------------------------------+

This property holds the lower bound of the value range criterion. By
default, there is no lower bound.

| 

+--------------------------------------------------------------------------+
|        \ rangeFlags : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds a set of flags which defines the boundary condition
semantics of the value range criterion.The valid range flags include:

-  `DetailRangeFilter </sdk/apps/qml/QtContacts/DetailRangeFilter/>`__.IncludeLower
-  `DetailRangeFilter </sdk/apps/qml/QtContacts/DetailRangeFilter/>`__.IncludeUpper
-  `DetailRangeFilter </sdk/apps/qml/QtContacts/DetailRangeFilter/>`__.ExcludeLower
-  `DetailRangeFilter </sdk/apps/qml/QtContacts/DetailRangeFilter/>`__.ExcludeUpper

| 
