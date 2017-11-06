.. _sdk_qtquick_xmllistmodel_xmlrole:

QtQuick.XmlListModel XmlRole
============================

For specifying a role to an XmlListModel

+---------------------+-----------------------------------+
| Import Statement:   | import QtQuick.XmlListModel 2.0   |
+---------------------+-----------------------------------+

Properties
----------

-  `isKey </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/#isKey-prop>`_  : bool
-  `name </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/#name-prop>`_  : string
-  `query </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/#query-prop>`_  : string

Detailed Description
--------------------

**See also** Qt QML.

Property Documentation
----------------------

.. _sdk_qtquick_xmllistmodel_xmlrole_isKey:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| isKey : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines whether this is a key role. Key roles are used to determine whether a set of values should be updated or added to the XML list model when `XmlListModel::reload() </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#reload-method>`_  is called.

**See also** `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ .

.. _sdk_qtquick_xmllistmodel_xmlrole_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The name for the role. This name is used to access the model data for this role.

For example, the following model has a role named "title", which can be accessed from the view's delegate:

.. code:: qml

    XmlListModel {
        id: xmlModel
        // ...
        XmlRole {
            name: "title"
            query: "title/string()"
        }
    }

.. code:: qml

    ListView {
        model: xmlModel
        delegate: Text { text: title }
    }

.. _sdk_qtquick_xmllistmodel_xmlrole_query:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| query : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The relative XPath expression query for this role. The query must be relative; it cannot start with a '/'.

For example, if there is an XML document like this:

.. code:: cpp

    <?xml version="1.0" encoding="iso-8859-1" ?>
    <catalog>
        <book type="Online" wanted="true">
            <title>Qt 5 Cadaques</title>
            <year>2014</year>
            <author>Juergen Bocklage-Ryannel</author>
            <author>Johan Thelin</author>
        </book>
        <book type="Hardcover">
            <title>C++ GUI Programming with Qt 4</title>
            <year>2006</year>
            <author>Jasmin Blanchette</author>
            <author>Mark Summerfield</author>
        </book>
        <book type="Paperback">
            <title>Programming with Qt</title>
            <year>2002</year>
            <author>Matthias Kalle Dalheimer</author>
        </book>
     </catalog>

Here are some valid XPath expressions for `XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_  queries on this document:

.. code:: qml

    XmlListModel {
        id: model
        ...
        // XmlRole queries will be made on <book> elements
        query: "/catalog/book"
        // query the book title
        XmlRole { name: "title"; query: "title/string()" }
        // query the book's year
        XmlRole { name: "year"; query: "year/number()" }
        // query the book's type (the '@' indicates 'type' is an attribute, not an element)
        XmlRole { name: "type"; query: "@type/string()" }
        // query the book's first listed author (note in XPath the first index is 1, not 0)
        XmlRole { name: "first_author"; query: "author[1]/string()" }
        // query the wanted attribute as a boolean
        XmlRole { name: "wanted"; query: "boolean(@wanted)" }
    }

Accessing the model data for the above roles from a delegate:

.. code:: qml

    ListView {
        width: 300; height: 200
        model: model
        delegate: Column {
            Text { text: title + " (" + type + ")"; font.bold: wanted }
            Text { text: first_author }
            Text { text: year }
        }

See the `W3C XPath 2.0 specification <http://www.w3.org/TR/xpath20/>`_  for more information.

