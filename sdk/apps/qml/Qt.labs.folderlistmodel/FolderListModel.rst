The FolderListModel provides a model of the contents of a file system
folder.

+---------------------+--------------------------------------+
| Import Statement:   | import Qt.labs.folderlistmodel 2.1   |
+---------------------+--------------------------------------+

Properties
----------

-  ****`count </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#count-prop>`__****
   : int
-  ****`folder </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#folder-prop>`__****
   : string
-  ****`nameFilters </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#nameFilters-prop>`__****
   : list<string>
-  ****`parentFolder </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#parentFolder-prop>`__****
   : url
-  ****`rootFolder </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#rootFolder-prop>`__****
   : url
-  ****`showDirs </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDirs-prop>`__****
   : bool
-  ****`showDirsFirst </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDirsFirst-prop>`__****
   : bool
-  ****`showDotAndDotDot </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDotAndDotDot-prop>`__****
   : bool
-  ****`showFiles </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showFiles-prop>`__****
   : bool
-  ****`showHidden </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showHidden-prop>`__****
   : bool
-  ****`showOnlyReadable </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showOnlyReadable-prop>`__****
   : bool
-  ****`sortField </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#sortField-prop>`__****
   : enumeration
-  ****`sortReversed </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#sortReversed-prop>`__****
   : bool

Methods
-------

-  var
   ****`get </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#get-method>`__****\ (int
   *index*, string *property*)
-  bool
   ****`isFolder </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#isFolder-method>`__****\ (int
   *index*)

Detailed Description
--------------------

`FolderListModel </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel/>`__
provides access to information about the contents of a folder in the
local file system, exposing a list of files to views and other data
components.

**Note:** This type is made available by importing the
``Qt.labs.folderlistmodel`` module. *Elements in the Qt.labs module are
not guaranteed to remain compatible in future versions.*

**import Qt.labs.folderlistmodel 2.1**

The
`folder </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#folder-prop>`__
property specifies the folder to access. Information about the files and
directories in the folder is supplied via the model's interface.
Components access names and paths via the following roles:

-  ``fileName``
-  ``filePath``
-  ``fileURL`` (since Qt 5.2)
-  ``fileBaseName``
-  ``fileSuffix``
-  ``fileSize``
-  ``fileModified``
-  ``fileAccessed``
-  ``fileIsDir``

Additionally a file entry can be differentiated from a folder entry via
the
`isFolder() </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#isFolder-method>`__
method.

Filtering
---------

Various properties can be set to filter the number of files and
directories exposed by the model.

The
`nameFilters </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#nameFilters-prop>`__
property can be set to contain a list of wildcard filters that are
applied to names of files and directories, causing only those that match
the filters to be exposed.

Directories can be included or excluded using the
`showDirs </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDirs-prop>`__
property, navigation directories can also be excluded by setting the
`showDotAndDotDot </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDotAndDotDot-prop>`__
property to false, hidden files can be included or excluded using the
`showHidden </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showHidden-prop>`__
property.

It is sometimes useful to limit the files and directories exposed to
those that the user can access. The
`showOnlyReadable </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showOnlyReadable-prop>`__
property can be set to enable this feature.

Example Usage
-------------

The following example shows a
`FolderListModel </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel/>`__
being used to provide a list of QML files in a
`ListView </sdk/apps/qml/QtQuick/ListView/>`__:

.. code:: qml

    import QtQuick 2.0
    import Qt.labs.folderlistmodel 2.1
    ListView {
        width: 200; height: 400
        FolderListModel {
            id: folderModel
            nameFilters: ["*.qml"]
        }
        Component {
            id: fileDelegate
            Text { text: fileName }
        }
        model: folderModel
        delegate: fileDelegate
    }

Path Separators
---------------

Qt uses "/" as a universal directory separator in the same way that "/"
is used as a path separator in URLs. If you always use "/" as a
directory separator, Qt will translate your paths to conform to the
underlying operating system.

**See also** `QML Data
Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

Returns the number of items in the current folder that match the filter
criteria.

| 

+--------------------------------------------------------------------------+
|        \ folder : string                                                 |
+--------------------------------------------------------------------------+

The *folder* property holds a URL for the folder that the model is
currently providing.

The value must be a ``file``: or ``qrc``: URL, or a relative URL.

By default, the value is an invalid URL.

| 

+--------------------------------------------------------------------------+
|        \ nameFilters : list<string>                                      |
+--------------------------------------------------------------------------+

The *nameFilters* property contains a list of file name filters. The
filters may include the ? and \* wildcards.

The example below filters on PNG and JPEG files:

.. code:: qml

    FolderListModel {
        nameFilters: [ "*.png", "*.jpg" ]
    }

**Note:** Directories are not excluded by filters.

| 

+--------------------------------------------------------------------------+
|        \ parentFolder : url                                              |
+--------------------------------------------------------------------------+

Returns the URL of the parent of the current
`folder </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#folder-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ rootFolder : url                                                |
+--------------------------------------------------------------------------+

When the rootFolder is set, then this folder will be threated as the
root in the file system, so that you can only travers sub folders from
this rootFolder.

| 

+--------------------------------------------------------------------------+
|        \ showDirs : bool                                                 |
+--------------------------------------------------------------------------+

If true, directories are included in the model; otherwise only files are
included.

By default, this property is true.

Note that the
`nameFilters </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#nameFilters-prop>`__
are not applied to directories.

**See also**
`showDotAndDotDot </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDotAndDotDot-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ showDirsFirst : bool                                            |
+--------------------------------------------------------------------------+

If true, if directories are included in the model they will always be
shown first, then the files.

By default, this property is false.

| 

+--------------------------------------------------------------------------+
|        \ showDotAndDotDot : bool                                         |
+--------------------------------------------------------------------------+

If true, the "." and ".." directories are included in the model;
otherwise they are excluded.

By default, this property is false.

**See also**
`showDirs </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDirs-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ showFiles : bool                                                |
+--------------------------------------------------------------------------+

If true, files are included in the model; otherwise only directories are
included.

By default, this property is true.

This QML property was introduced in Qt 5.2.

**See also**
`showDirs </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDirs-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ showHidden : bool                                               |
+--------------------------------------------------------------------------+

If true, hidden files and directories are included in the model;
otherwise they are excluded.

By default, this property is false.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ showOnlyReadable : bool                                         |
+--------------------------------------------------------------------------+

If true, only readable files and directories are shown; otherwise all
files and directories are shown.

By default, this property is false.

**See also**
`showDirs </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#showDirs-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ sortField : enumeration                                         |
+--------------------------------------------------------------------------+

The *sortField* property contains field to use for sorting. sortField
may be one of:

-  Unsorted - no sorting is applied.
-  Name - sort by filename
-  Time - sort by time modified
-  Size - sort by file size
-  Type - sort by file type (extension)

**See also**
`sortReversed </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#sortReversed-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ sortReversed : bool                                             |
+--------------------------------------------------------------------------+

If set to true, reverses the sort order. The default is false.

**See also**
`sortField </sdk/apps/qml/Qt.labs.folderlistmodel/FolderListModel#sortField-prop>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ var get(int *index*, string *property*)                         |
+--------------------------------------------------------------------------+

Get the folder property for the given index. The following properties
are available.

-  ``fileName``
-  ``filePath``
-  ``fileURL`` (since Qt 5.2)
-  ``fileBaseName``
-  ``fileSuffix``
-  ``fileSize``
-  ``fileModified``
-  ``fileAccessed``
-  ``fileIsDir``

| 

+--------------------------------------------------------------------------+
|        \ bool isFolder(int *index*)                                      |
+--------------------------------------------------------------------------+

Returns true if the entry *index* is a folder; otherwise returns false.

| 
