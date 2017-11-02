.. _sdk_unity_scopes_qt_qcolumnlayout:
unity.scopes.qt QColumnLayout
=============================

Represents a column layout.
:ref:`More... <sdk_unity_scopes_qt_qcolumnlayout#details>`

``#include <unity/scopes/qt/QColumnLayout.h>``

        Public Member Functions
-------------------------------

 

:ref:`QColumnLayout <sdk_unity_scopes_qt_qcolumnlayout#a89f72698ef94dd4db26d286df0e5eb05>`
(int num\_of\_columns)

 

| Creates a layout definition that expects num\_of\_columns columns to
  be added with ColumnLayout::add\_column.

 

void 

:ref:`add\_column <sdk_unity_scopes_qt_qcolumnlayout#ad7e3e39240dc8dc5a24cbe19235a0752>`
(QVector< QString > widget\_ids)

 

| Adds a new column and assigns widgets to it.

 

int 

:ref:`size <sdk_unity_scopes_qt_qcolumnlayout#af062c78bd61aad7d0bfa03b8b06f7f20>`
() const noexcept

 

| Get the current number of columns in this layout.

 

int 

:ref:`number\_of\_columns <sdk_unity_scopes_qt_qcolumnlayout#a5a989ce965336941a2e24fcd763f0596>`
() const noexcept

 

| Get the number of columns expected by this layout as specified in the
  constructor.

 

QVector< QString > 

:ref:`column <sdk_unity_scopes_qt_qcolumnlayout#afa169274d04b70956761ca55451e5921>`
(int index) const

 

| Retrieve the list of widgets for given column.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QColumnLayout** (:ref:`QColumnLayout <sdk_unity_scopes_qt_qcolumnlayout>`
const &other)

 

         

**QColumnLayout** (:ref:`QColumnLayout <sdk_unity_scopes_qt_qcolumnlayout>`
&&)

 

:ref:` <>` `QColumnLayout <sdk_unity_scopes_qt_qcolumnlayout>` & 

**operator=** (:ref:`QColumnLayout <sdk_unity_scopes_qt_qcolumnlayout>`
const &other)

 

:ref:` <>` `QColumnLayout <sdk_unity_scopes_qt_qcolumnlayout>` & 

**operator=** (:ref:`QColumnLayout <sdk_unity_scopes_qt_qcolumnlayout>` &&)

 

Detailed Description
--------------------

Represents a column layout.

Column layouts are used to represent the view in different ways
depending on the device we are running our application.

If, for example, you run the application in a tablet that has more
screen the application could use more columns than running in a phone.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | int  |                                      |
|          | *num\_of\_co | )          |                                      |
|    |              |                  |                                      |
| | s::qt::QColu |              |      |                                      |
|          | lumns*       |            |                                      |
|    |              |                  |                                      |
| | mnLayout::QC |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | olumnLayout  |              |      |                                      |
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
| void         | (            | QVector<     | *widget\_ids | )            |              |
| unity::scope |              | QString >    | *            |              |              |
| s::qt::QColu |              |              |              |              |              |
| mnLayout::ad |              |              |              |              |              |
| d\_column    |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Adds a new column and assigns widgets to it.

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  expects
exactly the number of columns passed to the constructor to be created
with the add\_column method.

Exceptions
    +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if an attempt is made to add more columns than specified in the constructor.                                                                                                                         |
    +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | from :ref:`unity::scopes::qt::QPreviewReply::register\_layout <sdk_unity_scopes_qt_qpreviewreply#abe5967042a22327f6ec9d5a1f595968c>` if a layout has fewer columns than specified in the constructor.   |
    +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+-------------------------------------------------------------+-----+--------+-----------+-----+---------+
| QVector<QString> unity::scopes::qt::QColumnLayout::column   | (   | int    | *index*   | )   | const   |
+-------------------------------------------------------------+-----+--------+-----------+-----+---------+

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
| | :qt::QColumnLa |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | yout::number\_ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | of\_columns    |                |  |                                      |
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
| | :qt::QColumnLa |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | yout::size     |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the current number of columns in this layout.

Returns
    The number of columns added with
    :ref:`add\_column() <sdk_unity_scopes_qt_qcolumnlayout#ad7e3e39240dc8dc5a24cbe19235a0752>`.

