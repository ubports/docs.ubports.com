.. _sdk_columnlayout:
ColumnLayout
============

Defines a layout for preview widgets with given column setup.
`More... </sdk/scopes/cpp/unity.scopes.ColumnLayout/#details>`_ 

        Public Member Functions
-------------------------------

 

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/#ac93fd7c6681f2013b4dcf2ed16f95401>`_ 
(int num\_of\_columns)

 

| Creates a layout definition that expects num\_of\_columns columns to
  be added with ColumnLayout::add\_column.

 

void 

`add\_column </sdk/scopes/cpp/unity.scopes.ColumnLayout/#a0a8db9f2725f9c56f8639c55412d931d>`_ 
(std::vector< std::string > widget\_ids)

 

| Adds a new column and assigns widgets to it.

 

int 

`size </sdk/scopes/cpp/unity.scopes.ColumnLayout/#abd5129b6d56ad2aaaeb4f454f13176dd>`_ 
() const noexcept

 

| Get the current number of columns in this layout.

 

int 

`number\_of\_columns </sdk/scopes/cpp/unity.scopes.ColumnLayout/#a3213620bbddcab29eb32a2eeff2bb8dd>`_ 
() const noexcept

 

| Get the number of columns expected by this layout as specified in the
  constructor.

 

std::vector< std::string > 

`column </sdk/scopes/cpp/unity.scopes.ColumnLayout/#a7457b565bd76d573f40241450a1f839f>`_ 
(int index) const

 

| Retrieve the list of widgets for given column.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**ColumnLayout**
(`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  const
&other)

 

         

**ColumnLayout**
(`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  &&)

 

        `ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  & 

**operator=**
(`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  const
&other)

 

        `ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  & 

**operator=**
(`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  &&)

 

Detailed Description
--------------------

Defines a layout for preview widgets with given column setup.

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  defines
how widgets should be laid out on a display with a given number of
columns. In typical use cases, a scope creates
`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  instances
for all supported displays (number of columns), and defines for every
instance what widgets belong to which columns. The shell uses the layout
that is most appropriate for the device in use. Column layout
definitions are optional. However, we recommend that scopes define
layouts for the best visual appearance.

An example of creating two layouts, one for a screen with one column and
and one for a screen with two columns.

void
MyPreview::run(\ :ref:`PreviewReplyProxy <sdk_unity_scopes#a7b46ef0e880da4c75314fe60bdd55754>`
const& reply)

// layout definition for a screen with just 1 column

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/#ac93fd7c6681f2013b4dcf2ed16f95401>`_ 
layout1col(1);

layout1col.add\_column({"art", "header", "actions"}); // all widgets in
a single column

// layout definition for a screen with 2 columns

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/#ac93fd7c6681f2013b4dcf2ed16f95401>`_ 
layout2col(2);

layout2col.add\_column({"art"}); // widget in 1st column

layout2col.add\_column({"header", "actions"}); // widgets in 2nd column

reply->register\_layout({layout1col, layout2col});

// create widgets

PreviewWidget w1("art", "image");

...

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | int  |                                      |
|          | *num\_of\_co | )          |                                      |
|    |              |                  |                                      |
| | s::ColumnLay |              |      |                                      |
|          | lumns*       |            |                                      |
|    |              |                  |                                      |
| | out::ColumnL |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ayout        |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Creates a layout definition that expects num\_of\_columns columns to be
added with
`ColumnLayout::add\_column </sdk/scopes/cpp/unity.scopes.ColumnLayout/#a0a8db9f2725f9c56f8639c55412d931d>`_ .

Parameters
    +--------------------+-----------------------------------------+
    | num\_of\_columns   | The number of columns for the layout.   |
    +--------------------+-----------------------------------------+

Exceptions
    +-----------------------------------+-------------------------------------+
    | unity::InvalidArgumentException   | for an invalid number of columns.   |
    +-----------------------------------+-------------------------------------+

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::vector< | *widget\_ids | )            |              |
| unity::scope |              | std::string  | *            |              |              |
| s::ColumnLay |              | >            |              |              |              |
| out::add\_co |              |              |              |              |              |
| lumn         |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Adds a new column and assigns widgets to it.

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  expects
exactly the number of columns passed to the constructor to be created
with the add\_column method.

Exceptions
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if an attempt is made to add more columns than specified in the constructor.                                                                                                                             |
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | from `unity::scopes::PreviewReply::register\_layout </sdk/scopes/cpp/unity.scopes.PreviewReply/#a16a757d821bd3792d1a69112b1f13964>`_  if a layout has fewer columns than specified in the constructor.   |
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+------------------------------------------------------------------+-----+--------+-----------+-----+---------+
| std::vector< std::string > unity::scopes::ColumnLayout::column   | (   | int    | *index*   | )   | const   |
+------------------------------------------------------------------+-----+--------+-----------+-----+---------+

Retrieve the list of widgets for given column.

Parameters
    +---------+--------------------------+
    | index   | The index of a column.   |
    +---------+--------------------------+

Returns
    The widget identifiers for the given column index.

Exceptions
    +-----------------------------------+----------------------------+
    | unity::InvalidArgumentException   | if the index is invalid.   |
    +-----------------------------------+----------------------------+

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | int            | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ColumnLayout: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :number\_of\_c |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | olumns         |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the number of columns expected by this layout as specified in the
constructor.

Returns
    The number of columns expected by this layout.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | int            | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ColumnLayout: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :size          |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the current number of columns in this layout.

Returns
    The number of columns added with
    `add\_column() </sdk/scopes/cpp/unity.scopes.ColumnLayout/#a0a8db9f2725f9c56f8639c55412d931d>`_ .

