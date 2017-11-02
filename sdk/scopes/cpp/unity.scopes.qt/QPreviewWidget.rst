.. _sdk_unity_scopes_qt_qpreviewwidget:
unity.scopes.qt QPreviewWidget
==============================

Widget used in Preview.
:ref:`More... <sdk_unity_scopes_qt_qpreviewwidget#details>`

``#include <unity/scopes/qt/QPreviewWidget.h>``

        Public Member Functions
-------------------------------

 

:ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget#aba81db48085e0528f1112941fb547c4a>`
(QString const
&\ :ref:`id <sdk_unity_scopes_qt_qpreviewwidget#a3b230204123aa720d925f85fd51425a0>`,
QString const
&\ :ref:`widget\_type <sdk_unity_scopes_qt_qpreviewwidget#a600705e26341af0ef375830665462a47>`)

 

| Create an empty widget definition with a specific id and type.

 

 

:ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget#a3b1daf6806081a727875ce0f4384f612>`
(QString const &definition)

 

| Create a widget from a JSON definition.

 

void 

:ref:`add\_attribute\_value <sdk_unity_scopes_qt_qpreviewwidget#a708df5ca5097de8f6b81a71958cf9b75>`
(QString const &key, QVariant const &value)

 

| Adds an attribute definition and its value.

 

void 

:ref:`add\_attribute\_mapping <sdk_unity_scopes_qt_qpreviewwidget#a7ebeecb9c8cc66f871692bd19eb8cfe6>`
(QString const &key, QString const &field\_name)

 

| Adds an attribute definition using a component mapping.

 

void 

:ref:`add\_widget <sdk_unity_scopes_qt_qpreviewwidget#ae9d8c0c5d81c827b84cda80df49dc70e>`
(:ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>` const &widget)

 

| Adds a widget into expandable widget.

 

QString 

:ref:`id <sdk_unity_scopes_qt_qpreviewwidget#a3b230204123aa720d925f85fd51425a0>`
() const

 

| Get the identifier of this widget.

 

QString 

:ref:`widget\_type <sdk_unity_scopes_qt_qpreviewwidget#a600705e26341af0ef375830665462a47>`
() const

 

| Get type name of this widget.

 

QMap< QString, QString > 

:ref:`attribute\_mappings <sdk_unity_scopes_qt_qpreviewwidget#ae6d2278216cc638cc8869e12fdf619fc>`
() const

 

| Get the components of this widget.

 

QVariantMap 

:ref:`attribute\_values <sdk_unity_scopes_qt_qpreviewwidget#a1af3433d81deca2a1c5de44cec693412>`
() const

 

| Get the attributes of this widget.

 

QPreviewWidgetList 

:ref:`widgets <sdk_unity_scopes_qt_qpreviewwidget#a5732c60c89fa86e08e86fd62f5649ce3>`
() const

 

| Get widgets of 'expandable' widget.

 

QString 

:ref:`data <sdk_unity_scopes_qt_qpreviewwidget#a4be99753312de446095968767eb46bbe>`
() const

 

| Get a JSON representation of this widget.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QPreviewWidget**
(:ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>` const &other)

 

         

**QPreviewWidget**
(:ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>` &&other)

 

        virtual 

**~QPreviewWidget** ()

 

:ref:` <>` `QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>` & 

**operator=** (:ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>`
const &other)

 

:ref:` <>` `QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>` & 

**operator=** (:ref:`QPreviewWidget <sdk_unity_scopes_qt_qpreviewwidget>`
&&other)

 

Detailed Description
--------------------

Widget used in Preview.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::qt: | (                  | QString const &    | *id*,              |
| :QPreviewWidget::Q |                    |                    |                    |
| PreviewWidget      |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QString const &    | *widget\_type*     |
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
| unity::scope | (            | QString      | *definition* | )            |              |
| s::qt::QPrev |              | const &      |              |              |              |
| iewWidget::Q |              |              |              |              |              |
| PreviewWidge |              |              |              |              |              |
| t            |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Create a widget from a JSON definition.

The JSON definition must be a dictionary that includes widget "id" and
all the values of attributes required by desired `widget
type <sdk_unity_scopes_qt_qpreviewwidget>:ref:`. For example, a definition
of image widget may look as follows:

PreviewWidget img(R"({"id": "img", "type": "image", "source":
"http://imageuri"})");

For cases where attribute mappings are to be used instead of direct
values, they need to be enclosed in the "components" dictionary, e.g.

PreviewWidget img(R"({"id": "img", "type": "image", "components": {
"source": "screenshot-url" } })");

(this example assumes "screenshot-url" value is either available in the
result object that's being previewed, or it will be pushed with
`unity::scopes::PreviewReply::push() </sdk/scopes/cpp/unity.scopes.PreviewReply/#a9fc593618b83ec444fb6c9b2b298764a>`_ 
method)

Note
    It is recommended to create widgets via
    `unity::scopes::PreviewWidget(QString const&, QString
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
| void               | (                  | QString const &    | *key*,             |
| unity::scopes::qt: |                    |                    |                    |
| :QPreviewWidget::a |                    |                    |                    |
| dd\_attribute\_map |                    |                    |                    |
| ping               |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QString const &    | *field\_name*      |
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
| void               | (                  | QString const &    | *key*,             |
| unity::scopes::qt: |                    |                    |                    |
| :QPreviewWidget::a |                    |                    |                    |
| dd\_attribute\_val |                    |                    |                    |
| ue                 |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QVariant const &   | *value*            |
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
| void         | (            | `QPreviewWid | *widget*     | )            |              |
| unity::scope |              | get <sdk_uni |              |              |              |
| s::qt::QPrev |              | ty_scopes_qt |              |              |              |
| iewWidget::a |              | _qpreviewwid |              |              |              |
| dd\_widget   |              | get>`_       |              |              |              |
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
| QMap<QString,  | (              |                | )              | const          |
| QString>       |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewW |                |                |                |                |
| idget::attribu |                |                |                |                |
| te\_mappings   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the components of this widget.

The returned map is a dictionary of (key, field name) pairs, as defined
by calls to
:ref:`add\_attribute\_mapping() <sdk_unity_scopes_qt_qpreviewwidget#a7ebeecb9c8cc66f871692bd19eb8cfe6>`.

Returns
    The components map.

+----------------+----------------+----------------+----------------+----------------+
| QVariantMap    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewW |                |                |                |                |
| idget::attribu |                |                |                |                |
| te\_values     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the attributes of this widget.

The returned map is a dictionary of (key, value) pairs, as defined by
calls to
:ref:`add\_attribute\_value() <sdk_unity_scopes_qt_qpreviewwidget#a708df5ca5097de8f6b81a71958cf9b75>`.

Returns
    The attribute map.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewW |                |                |                |                |
| idget::data    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a JSON representation of this widget.

Returns
    The JSON string.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewW |                |                |                |                |
| idget::id      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the identifier of this widget.

Returns
    The widget identifier.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewW |                |                |                |                |
| idget::widget\ |                |                |                |                |
| _type          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get type name of this widget.

Returns
    The widget type.

+----------------+----------------+----------------+----------------+----------------+
| QPreviewWidget | (              |                | )              | const          |
| List           |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewW |                |                |                |                |
| idget::widgets |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get widgets of 'expandable' widget.

Returns the list of widget attached to this widget, which must be of
'expandable' type. This list is always empty for other widget types.

