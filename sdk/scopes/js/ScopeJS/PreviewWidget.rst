.. _sdk_scopejs_previewwidget:
ScopeJS PreviewWidget
=====================


A widget for a preview.

-  Methods

**``add_attribute_mapping``**\ ( ``key, value `` )
Adds an attribute definition using a component mapping

**Parameters:**

-  ``key`` **<String>**

   Attribute definition

-  ``value`` **<String>**

   Value

**``add_attribute_value``**\ ( ``key, value `` )
Adds an attribute definition and its value

**Parameters:**

-  ``key`` **<String>**

   Attribute definition

-  ``value`` **<String>**

   , {Number}, {Object}. The value can be a string, number, object

**``add_widget``**\ ( ``widget `` )
Adds a widget into expandable widget

**Parameters:**

-  :ref:``widget`` **<`PreviewWidget <sdk_scopejs_previewwidget>`>**

   The widget that needs to be added

**``attribute_mappings``**\ ( ``  `` )
Get the components of this widget

**Returns:**
Dictionary of widget components

**``attribute_values``**\ ( ``  `` )
Get the attributes of this widget

**Returns:**
Object corresponding to attributes of this widget

**``data``**\ ( ``  `` )
Get a JSON representation of this widget

**Returns:**
String representation of widget

String **``id``**\ ( ``  `` )
Get the identifier of this widget

**Returns:** <String>
Id

String **``widget_type``**\ ( ``  `` )
Get type name of this widget

**Returns:** <String>
Widget type

**``widgets``**\ ( ``  `` )
Get widgets of 'expandable' widget

**Returns:**
List of PreviewWidget

