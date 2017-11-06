.. _sdk_qt_labs_folderlistmodel_folderlistmodel:

Qt.labs.folderlistmodel FolderListModel
=======================================

The FolderListModel provides a model of the contents of a file system folder.

+---------------------+--------------------------------------+
| Import Statement:   | import Qt.labs.folderlistmodel 2.1   |
+---------------------+--------------------------------------+

Properties
----------

-  :ref:`count <sdk_qt_labs_folderlistmodel_folderlistmodel_count>` : int
-  :ref:`folder <sdk_qt_labs_folderlistmodel_folderlistmodel_folder>` : string
-  :ref:`nameFilters <sdk_qt_labs_folderlistmodel_folderlistmodel_nameFilters>` : list<string>
-  :ref:`parentFolder <sdk_qt_labs_folderlistmodel_folderlistmodel_parentFolder>` : url
-  :ref:`rootFolder <sdk_qt_labs_folderlistmodel_folderlistmodel_rootFolder>` : url
-  :ref:`showDirs <sdk_qt_labs_folderlistmodel_folderlistmodel_showDirs>` : bool
-  :ref:`showDirsFirst <sdk_qt_labs_folderlistmodel_folderlistmodel_showDirsFirst>` : bool
-  :ref:`showDotAndDotDot <sdk_qt_labs_folderlistmodel_folderlistmodel_showDotAndDotDot>` : bool
-  :ref:`showFiles <sdk_qt_labs_folderlistmodel_folderlistmodel_showFiles>` : bool
-  :ref:`showHidden <sdk_qt_labs_folderlistmodel_folderlistmodel_showHidden>` : bool
-  :ref:`showOnlyReadable <sdk_qt_labs_folderlistmodel_folderlistmodel_showOnlyReadable>` : bool
-  :ref:`sortField <sdk_qt_labs_folderlistmodel_folderlistmodel_sortField>` : enumeration
-  :ref:`sortReversed <sdk_qt_labs_folderlistmodel_folderlistmodel_sortReversed>` : bool

Methods
-------

-  var :ref:`get <sdk_qt_labs_folderlistmodel_folderlistmodel_get>`\ (int *index*, string *property*)
-  bool :ref:`isFolder <sdk_qt_labs_folderlistmodel_folderlistmodel_isFolder>`\ (int *index*)

Detailed Description
--------------------

:ref:`FolderListModel <sdk_qt_labs_folderlistmodel_folderlistmodel>` provides access to information about the contents of a folder in the local file system, exposing a list of files to views and other data components.

**Note:** This type is made available by importing the ``Qt.labs.folderlistmodel`` module. *Elements in the Qt.labs module are not guaranteed to remain compatible in future versions.*

**import Qt.labs.folderlistmodel 2.1**

The :ref:`folder <sdk_qt_labs_folderlistmodel_folderlistmodel_folder>` property specifies the folder to access. Information about the files and directories in the folder is supplied via the model's interface. Components access names and paths via the following roles:

-  ``fileName``
-  ``filePath``
-  ``fileURL`` (since Qt 5.2)
-  ``fileBaseName``
-  ``fileSuffix``
-  ``fileSize``
-  ``fileModified``
-  ``fileAccessed``
-  ``fileIsDir``

Additionally a file entry can be differentiated from a folder entry via the :ref:`isFolder() <sdk_qt_labs_folderlistmodel_folderlistmodel_isFolder>` method.

Filtering
---------

Various properties can be set to filter the number of files and directories exposed by the model.

The :ref:`nameFilters <sdk_qt_labs_folderlistmodel_folderlistmodel_nameFilters>` property can be set to contain a list of wildcard filters that are applied to names of files and directories, causing only those that match the filters to be exposed.

Directories can be included or excluded using the :ref:`showDirs <sdk_qt_labs_folderlistmodel_folderlistmodel_showDirs>` property, navigation directories can also be excluded by setting the :ref:`showDotAndDotDot <sdk_qt_labs_folderlistmodel_folderlistmodel_showDotAndDotDot>` property to false, hidden files can be included or excluded using the :ref:`showHidden <sdk_qt_labs_folderlistmodel_folderlistmodel_showHidden>` property.

It is sometimes useful to limit the files and directories exposed to those that the user can access. The :ref:`showOnlyReadable <sdk_qt_labs_folderlistmodel_folderlistmodel_showOnlyReadable>` property can be set to enable this feature.

Example Usage
-------------

The following example shows a :ref:`FolderListModel <sdk_qt_labs_folderlistmodel_folderlistmodel>` being used to provide a list of QML files in a :ref:`ListView <sdk_qtquick_listview>`:

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

Qt uses "/" as a universal directory separator in the same way that "/" is used as a path separator in URLs. If you always use "/" as a directory separator, Qt will translate your paths to conform to the underlying operating system.

**See also** `QML Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

Property Documentation
----------------------

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the number of items in the current folder that match the filter criteria.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_folder:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| folder : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The *folder* property holds a URL for the folder that the model is currently providing.

The value must be a ``file``: or ``qrc``: URL, or a relative URL.

By default, the value is an invalid URL.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_nameFilters:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| nameFilters : list<string>                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The *nameFilters* property contains a list of file name filters. The filters may include the ? and \* wildcards.

The example below filters on PNG and JPEG files:

.. code:: qml

    FolderListModel {
        nameFilters: [ "*.png", "*.jpg" ]
    }

**Note:** Directories are not excluded by filters.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_parentFolder:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| parentFolder : url                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the URL of the parent of the current :ref:`folder <sdk_qt_labs_folderlistmodel_folderlistmodel_folder>`.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_rootFolder:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rootFolder : url                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When the rootFolder is set, then this folder will be threated as the root in the file system, so that you can only travers sub folders from this rootFolder.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_showDirs:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showDirs : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, directories are included in the model; otherwise only files are included.

By default, this property is true.

Note that the :ref:`nameFilters <sdk_qt_labs_folderlistmodel_folderlistmodel_nameFilters>` are not applied to directories.

**See also** :ref:`showDotAndDotDot <sdk_qt_labs_folderlistmodel_folderlistmodel_showDotAndDotDot>`.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_showDirsFirst:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showDirsFirst : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, if directories are included in the model they will always be shown first, then the files.

By default, this property is false.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_showDotAndDotDot:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showDotAndDotDot : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, the "." and ".." directories are included in the model; otherwise they are excluded.

By default, this property is false.

**See also** :ref:`showDirs <sdk_qt_labs_folderlistmodel_folderlistmodel_showDirs>`.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_showFiles:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showFiles : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, files are included in the model; otherwise only directories are included.

By default, this property is true.

This QML property was introduced in Qt 5.2.

**See also** :ref:`showDirs <sdk_qt_labs_folderlistmodel_folderlistmodel_showDirs>`.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_showHidden:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showHidden : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, hidden files and directories are included in the model; otherwise they are excluded.

By default, this property is false.

This QML property was introduced in Qt 5.2.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_showOnlyReadable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showOnlyReadable : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, only readable files and directories are shown; otherwise all files and directories are shown.

By default, this property is false.

**See also** :ref:`showDirs <sdk_qt_labs_folderlistmodel_folderlistmodel_showDirs>`.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_sortField:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sortField : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The *sortField* property contains field to use for sorting. sortField may be one of:

-  Unsorted - no sorting is applied.
-  Name - sort by filename
-  Time - sort by time modified
-  Size - sort by file size
-  Type - sort by file type (extension)

**See also** :ref:`sortReversed <sdk_qt_labs_folderlistmodel_folderlistmodel_sortReversed>`.

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_sortReversed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sortReversed : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to true, reverses the sort order. The default is false.

**See also** :ref:`sortField <sdk_qt_labs_folderlistmodel_folderlistmodel_sortField>`.

Method Documentation
--------------------

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_get:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| var get(int *index*, string *property*)                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Get the folder property for the given index. The following properties are available.

-  ``fileName``
-  ``filePath``
-  ``fileURL`` (since Qt 5.2)
-  ``fileBaseName``
-  ``fileSuffix``
-  ``fileSize``
-  ``fileModified``
-  ``fileAccessed``
-  ``fileIsDir``

.. _sdk_qt_labs_folderlistmodel_folderlistmodel_isFolder:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool isFolder(int *index*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the entry *index* is a folder; otherwise returns false.

