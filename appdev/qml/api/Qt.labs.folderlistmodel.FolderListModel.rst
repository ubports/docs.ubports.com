Qt.labs.folderlistmodel.FolderListModel
=======================================

.. raw:: html

   <p>

The FolderListModel provides a model of the contents of a file system
folder. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FolderListModel -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Qt.labs.folderlistmodel 2.1

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

folder : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nameFilters : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parentFolder : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rootFolder : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showDirs : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showDirsFirst : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showDotAndDotDot : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showFiles : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showHidden : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showOnlyReadable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sortField : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sortReversed : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

var get(int index, string property)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool isFolder(int index)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$FolderListModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

FolderListModel provides access to information about the contents of a
folder in the local file system, exposing a list of files to views and
other data components.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This type is made available by importing the
Qt.labs.folderlistmodel module. Elements in the Qt.labs module are not
guaranteed to remain compatible in future versions.

.. raw:: html

   </p>

.. raw:: html

   <p>

import Qt.labs.folderlistmodel 2.1

.. raw:: html

   </p>

.. raw:: html

   <p>

The folder property specifies the folder to access. Information about
the files and directories in the folder is supplied via the model's
interface. Components access names and paths via the following roles:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

fileName

.. raw:: html

   </li>

.. raw:: html

   <li>

filePath

.. raw:: html

   </li>

.. raw:: html

   <li>

fileURL (since Qt 5.2)

.. raw:: html

   </li>

.. raw:: html

   <li>

fileBaseName

.. raw:: html

   </li>

.. raw:: html

   <li>

fileSuffix

.. raw:: html

   </li>

.. raw:: html

   <li>

fileSize

.. raw:: html

   </li>

.. raw:: html

   <li>

fileModified

.. raw:: html

   </li>

.. raw:: html

   <li>

fileAccessed

.. raw:: html

   </li>

.. raw:: html

   <li>

fileIsDir

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Additionally a file entry can be differentiated from a folder entry via
the isFolder() method.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="filtering">

Filtering

.. raw:: html

   </h2>

.. raw:: html

   <p>

Various properties can be set to filter the number of files and
directories exposed by the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

The nameFilters property can be set to contain a list of wildcard
filters that are applied to names of files and directories, causing only
those that match the filters to be exposed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Directories can be included or excluded using the showDirs property,
navigation directories can also be excluded by setting the
showDotAndDotDot property to false, hidden files can be included or
excluded using the showHidden property.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is sometimes useful to limit the files and directories exposed to
those that the user can access. The showOnlyReadable property can be set
to enable this feature.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows a FolderListModel being used to provide a
list of QML files in a ListView:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import Qt.labs.folderlistmodel 2.1
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">400</span>
   <span class="type"><a href="index.html">FolderListModel</a></span> {
   <span class="name">id</span>: <span class="name">folderModel</span>
   <span class="name">nameFilters</span>: [<span class="string">&quot;*.qml&quot;</span>]
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">fileDelegate</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">fileName</span> }
   }
   <span class="name">model</span>: <span class="name">folderModel</span>
   <span class="name">delegate</span>: <span class="name">fileDelegate</span>
   }</pre>

.. raw:: html

   <h2 id="path-separators">

Path Separators

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt uses "/" as a universal directory separator in the same way that "/"
is used as a path separator in URLs. If you always use "/" as a
directory separator, Qt will translate your paths to conform to the
underlying operating system.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QML Data Models.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FolderListModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the number of items in the current folder that match the filter
criteria.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="folder-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

folder : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The folder property holds a URL for the folder that the model is
currently providing.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value must be a file: or qrc: URL, or a relative URL.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the value is an invalid URL.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@folder -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nameFilters-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

nameFilters : list<string>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The nameFilters property contains a list of file name filters. The
filters may include the ? and \* wildcards.

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below filters on PNG and JPEG files:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">FolderListModel</a></span> {
   <span class="name">nameFilters</span>: [ <span class="string">&quot;*.png&quot;</span>, <span class="string">&quot;*.jpg&quot;</span> ]
   }</pre>

.. raw:: html

   <p>

Note: Directories are not excluded by filters.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nameFilters -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parentFolder-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

parentFolder : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the URL of the parent of the current folder.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parentFolder -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rootFolder-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rootFolder : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When the rootFolder is set, then this folder will be threated as the
root in the file system, so that you can only travers sub folders from
this rootFolder.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rootFolder -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showDirs-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showDirs : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, directories are included in the model; otherwise only files are
included.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is true.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the nameFilters are not applied to directories.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also showDotAndDotDot.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showDirs -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showDirsFirst-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showDirsFirst : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, if directories are included in the model they will always be
shown first, then the files.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showDirsFirst -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showDotAndDotDot-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showDotAndDotDot : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, the "." and ".." directories are included in the model;
otherwise they are excluded.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also showDirs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showDotAndDotDot -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showFiles-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showFiles : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, files are included in the model; otherwise only directories are
included.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is true.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also showDirs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showFiles -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showHidden-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showHidden : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, hidden files and directories are included in the model;
otherwise they are excluded.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showHidden -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showOnlyReadable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showOnlyReadable : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, only readable files and directories are shown; otherwise all
files and directories are shown.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also showDirs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showOnlyReadable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sortField-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sortField : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The sortField property contains field to use for sorting. sortField may
be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Unsorted - no sorting is applied.

.. raw:: html

   </li>

.. raw:: html

   <li>

Name - sort by filename

.. raw:: html

   </li>

.. raw:: html

   <li>

Time - sort by time modified

.. raw:: html

   </li>

.. raw:: html

   <li>

Size - sort by file size

.. raw:: html

   </li>

.. raw:: html

   <li>

Type - sort by file type (extension)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also sortReversed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sortField -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sortReversed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sortReversed : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If set to true, reverses the sort order. The default is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also sortField.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sortReversed -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

var get(int index, string property)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Get the folder property for the given index. The following properties
are available.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

fileName

.. raw:: html

   </li>

.. raw:: html

   <li>

filePath

.. raw:: html

   </li>

.. raw:: html

   <li>

fileURL (since Qt 5.2)

.. raw:: html

   </li>

.. raw:: html

   <li>

fileBaseName

.. raw:: html

   </li>

.. raw:: html

   <li>

fileSuffix

.. raw:: html

   </li>

.. raw:: html

   <li>

fileSize

.. raw:: html

   </li>

.. raw:: html

   <li>

fileModified

.. raw:: html

   </li>

.. raw:: html

   <li>

fileAccessed

.. raw:: html

   </li>

.. raw:: html

   <li>

fileIsDir

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isFolder-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool isFolder(int index)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns true if the entry index is a folder; otherwise returns false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isFolder -->


