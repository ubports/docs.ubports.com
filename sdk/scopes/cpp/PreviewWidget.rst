.. _sdk_previewwidget:
PreviewWidget
=============

A widget for a preview.
`More... </sdk/scopes/cpp/unity.scopes.PreviewWidget/#details>`_ 

        Public Member Functions
-------------------------------

 

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ace84578d55583c7c21f82d53ff6f0ed9>`_ 
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a7706a5249a547ac55d77e815b9fe84af>`_ ,
std::string const
&\ `widget\_type </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ad3d85940faa7109a7736d3b2be66b65e>`_ )

 

| Create an empty widget definition with a specific id and type.

 

 

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a751fd8b5f9eb0a921333b3a85cbc9518>`_ 
(std::string const &definition)

 

| Create a widget from a JSON definition.

 

void 

`add\_attribute\_value </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a42dd64704890d72bcc6ecbd7bccbfcd9>`_ 
(std::string const &key,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const &value)

 

| Adds an attribute definition and its value.

 

void 

`add\_attribute\_mapping </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a8bb890267a69dd6bb5ca70b663c75e74>`_ 
(std::string const &key, std::string const &field\_name)

 

| Adds an attribute definition using a component mapping.

 

void 

`add\_widget </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a5607e323e7394cb8be842b79b5565205>`_ 
(`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_  const
&widget)

 

| Adds a widget into expandable widget.

 

std::string 

`id </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a7706a5249a547ac55d77e815b9fe84af>`_ 
() const

 

| Get the identifier of this widget.

 

std::string 

`widget\_type </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ad3d85940faa7109a7736d3b2be66b65e>`_ 
() const

 

| Get type name of this widget.

 

std::map< std::string, std::string > 

`attribute\_mappings </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a8a1ac22266b8827c5c5dcbb74dc81568>`_ 
() const

 

| Get the components of this widget.

 

:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

`attribute\_values </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ac2ec5ecc111bc73aabb8ee5a27dcce9e>`_ 
() const

 

| Get the attributes of this widget.

 

:ref:`PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>` 

`widgets </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a879e64d5ee205b4db8cb6ab9b66d18ee>`_ 
() const

 

| Get widgets of 'expandable' widget.

 

std::string 

`data </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a5ef4058058119df35be51c992da2c2a4>`_ 
() const

 

| Get a JSON representation of this widget.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**PreviewWidget**
(`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_  const
&other)

 

         

**PreviewWidget**
(`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ 
&&other)

 

        virtual 

**~PreviewWidget** ()

 

        `PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ 
& 

**operator=**
(`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_  const
&other)

 

        `PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ 
& 

**operator=**
(`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ 
&&other)

 

Detailed Description
--------------------

A widget for a preview.

This class describes an individual widget used when constructing a
preview for a result item. Note that the data that applies to particular
widget types is likely to change with different major versions of Unity;
therefore, attributes are of type
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ , that is, loosely
typed.

When Unity requests a preview for a particular result, the scope is
expected to construct the preview by instantiating a
`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ . Each
widget has a free-form id, a type, and a number of attributes whose
names and types depend on the specific widget type (see `Preview
Widgets </sdk/scopes/cpp/previewwidgets/>`_ ).

The attribute values can either be filled in directly before pushing the
widget to Unity (using
`add\_attribute\_value() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a42dd64704890d72bcc6ecbd7bccbfcd9>`_ ),
or they can be mapped from a result field in a similar fashion to the
components mapping when specifying a
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
(see
`add\_attribute\_mapping() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a8bb890267a69dd6bb5ca70b663c75e74>`_ ).
When using
`add\_attribute\_mapping() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a8bb890267a69dd6bb5ca70b663c75e74>`_ ,
the corresponding attribute need not be present in the result; instead,
its value can be pushed later using the
`PreviewReply::push() </sdk/scopes/cpp/unity.scopes.PreviewReply/#a9fc593618b83ec444fb6c9b2b298764a>`_ 
method, which accepts the name of the field and its value as a
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ .

Preview widget can also be created entirely from a JSON string. See the
documentation of
`unity::scopes::PreviewWidget::PreviewWidget(std::string
const&) </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a751fd8b5f9eb0a921333b3a85cbc9518>`_ 
constructor for details.

Here is an example that creates a preview and illustrates three ways to
associate a preview widget attribute with its value:

void
MyPreview::run(\ :ref:`PreviewReplyProxy <sdk_unity_scopes#a7b46ef0e880da4c75314fe60bdd55754>`
const& reply)

{

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ace84578d55583c7c21f82d53ff6f0ed9>`_ 
w1("img", "image");

// directly specify source URI for the image widget

w1.add\_attribute\_value("source",
Variant("http://www.example.org/graphics.png"));

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ace84578d55583c7c21f82d53ff6f0ed9>`_ 
w2("hdr", "header");

// the result associated with this preview already had a title
specified, so we'll just map it to the preview widget

w2.add\_attribute\_mapping("title", "title");

// description is not present in the result, but we'll push it later

w2.add\_attribute\_mapping("summary", "description");

:ref:`PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>`
`widgets </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a879e64d5ee205b4db8cb6ab9b66d18ee>`_ ;

widgets.push\_back(w1);

widgets.push\_back(w2);

reply->push(widgets);

// do a costly database lookup for the description

std::string description = fetch\_description(result().uri());

reply->push("description", Variant(description));

}

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Pre | (                  | std::string const  | *id*,              |
| viewWidget::Previe |                    | &                  |                    |
| wWidget            |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *widget\_type*     |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create an empty widget definition with a specific id and type.

Parameters
    +----------------+---------------------------------+
    | id             | The unique widget identifier.   |
    +----------------+---------------------------------+
    | widget\_type   | The type of the widget.         |
    +----------------+---------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | std::string  | *definition* | )            |              |
| s::PreviewWi |              | const &      |              |              |              |
| dget::Previe |              |              |              |              |              |
| wWidget      |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Create a widget from a JSON definition.

The JSON definition must be a dictionary that includes widget "id" and
all the values of attributes required by desired `widget
type </sdk/scopes/cpp/previewwidgets/>`_ . For example, a definition of
image widget may look as follows:

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ace84578d55583c7c21f82d53ff6f0ed9>`_ 
img(R"({"id": "img", "type": "image", "source": "http://imageuri",

 "fallback": "file:///tmp/image.png"})");

For cases where attribute mappings are to be used instead of direct
values, they need to be enclosed in the "components" dictionary, e.g.

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/#ace84578d55583c7c21f82d53ff6f0ed9>`_ 
img(R"({"id": "img", "type": "image", "fallback":
"file:///tmp/image.png",

 "components": { "source": "screenshot-url" } })");

(this example assumes "screenshot-url" value is either available in the
result object that's being previewed, or it will be pushed with
`unity::scopes::PreviewReply::push() </sdk/scopes/cpp/unity.scopes.PreviewReply/#a9fc593618b83ec444fb6c9b2b298764a>`_ 
method)

Note
    It is recommended to create widgets via
    `unity::scopes::PreviewWidget(std::string const&, std::string
    const&) </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_  constructor
    and
    `unity::scopes::PreviewWidget::add\_attribute\_value() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a42dd64704890d72bcc6ecbd7bccbfcd9>`_ 
    /
    `unity::scopes::PreviewWidget::add\_attribute\_mapping() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a8bb890267a69dd6bb5ca70b663c75e74>`_ 
    methods, rather than via JSON definition.

Parameters
    +--------------+------------------------+
    | definition   | The JSON definition.   |
    +--------------+------------------------+

Member Function Documentation
-----------------------------

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | std::string const  | *key*,             |
| unity::scopes::Pre |                    | &                  |                    |
| viewWidget::add\_a |                    |                    |                    |
| ttribute\_mapping  |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *field\_name*      |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Adds an attribute definition using a component mapping.

If an attribute value is either not known, or the value is already
present in a result field, this method creates a mapping between the
attribute name and given the field name.

If an attribute value is not known, the scope is expected to push the
attribute value using
`unity::scopes::PreviewReply::push() </sdk/scopes/cpp/unity.scopes.PreviewReply/#a9fc593618b83ec444fb6c9b2b298764a>`_ ;
otherwise, the value is automatically mapped from the result.

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | std::string const  | *key*,             |
| unity::scopes::Pre |                    | &                  |                    |
| viewWidget::add\_a |                    |                    |                    |
| ttribute\_value    |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Variant </sdk/sco | *value*            |
|                    |                    | pes/cpp/unity.scop |                    |
|                    |                    | es.Variant/>`_     |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Adds an attribute definition and its value.

Parameters
    +---------+-------------------------------+
    | key     | The name of the attribute.    |
    +---------+-------------------------------+
    | value   | The value of the attribute.   |
    +---------+-------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `PreviewWidg | *widget*     | )            |              |
| unity::scope |              | et </sdk/sco |              |              |              |
| s::PreviewWi |              | pes/cpp/unit |              |              |              |
| dget::add\_w |              | y.scopes.Pre |              |              |              |
| idget        |              | viewWidget/> |              |              |              |
|              |              | `_           |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Adds a widget into expandable widget.

Adds a widget into this widget, which needs to be of 'expandable' type.
This method throws if adding a widget into any other widget type. Also,
adding an 'expandable' widget into another 'expandable' is not allowed.

Exceptions
    +-------------------------+---------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if type of this widget is other than 'expandable', or when adding 'expandable' to 'expandable'.   |
    +-------------------------+---------------------------------------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::map<std:: | (              |                | )              | const          |
| string,        |                |                |                |                |
| std::string>   |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :PreviewWidget |                |                |                |                |
| ::attribute\_m |                |                |                |                |
| appings        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the components of this widget.

The returned map is a dictionary of (key, field name) pairs, as defined
by calls to
`add\_attribute\_mapping() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a8bb890267a69dd6bb5ca70b663c75e74>`_ .

Returns
    The components map.

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#ad5d8ccfa11a |                |                |                |                |
| 327fca6f3e4cee |                |                |                |                |
| 11f4c10>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :PreviewWidget |                |                |                |                |
| ::attribute\_v |                |                |                |                |
| alues          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the attributes of this widget.

The returned map is a dictionary of (key, value) pairs, as defined by
calls to
`add\_attribute\_value() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a42dd64704890d72bcc6ecbd7bccbfcd9>`_ .

Returns
    The attribute map.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :PreviewWidget |                |                |                |                |
| ::data         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a JSON representation of this widget.

Returns
    The JSON string.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :PreviewWidget |                |                |                |                |
| ::id           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the identifier of this widget.

Returns
    The widget identifier.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :PreviewWidget |                |                |                |                |
| ::widget\_type |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get type name of this widget.

Returns
    The widget type.

+----------------+----------------+----------------+----------------+----------------+
| `PreviewWidget | (              |                | )              | const          |
| List <sdk_unit |                |                |                |                |
| y_scopes#aed3b |                |                |                |                |
| 7b1daf2e49d0a8 |                |                |                |                |
| 20ef931caa792d |                |                |                |                |
| >`_            |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :PreviewWidget |                |                |                |                |
| ::widgets      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get widgets of 'expandable' widget.

Returns the list of widget attached to this widget, which must be of
'expandable' type. This list is always empty for other widget types.

