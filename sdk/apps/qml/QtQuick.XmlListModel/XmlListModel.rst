.. _sdk_qtquick_xmllistmodel_xmllistmodel:

QtQuick.XmlListModel XmlListModel
=================================

For specifying a read-only model using XPath expressions

+---------------------+-----------------------------------+
| Import Statement:   | import QtQuick.XmlListModel 2.0   |
+---------------------+-----------------------------------+

Properties
----------

-  `count </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#count-prop>`_  : int
-  `namespaceDeclarations </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#namespaceDeclarations-prop>`_  : string
-  `progress </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#progress-prop>`_  : real
-  `query </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#query-prop>`_  : string
-  `roles </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#roles-prop>`_  : list<XmlRole>
-  `source </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#source-prop>`_  : url
-  `status </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#status-prop>`_  : enumeration
-  `xml </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#xml-prop>`_  : string

Methods
-------

-  void `errorString </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#errorString-method>`_ \ ()
-  object `get </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#get-method>`_ \ (int *index*)
-  void `reload </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#reload-method>`_ \ ()

Detailed Description
--------------------

To use this element, you will need to import the module with the following line:

.. code:: cpp

    import QtQuick.XmlListModel 2.0

`XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  is used to create a read-only model from XML data. It can be used as a data source for view elements (such as :ref:`ListView <sdk_qtquick_listview>`, :ref:`PathView <sdk_qtquick_pathview>`, `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ ) and other elements that interact with model data (such as :ref:`Repeater <sdk_qtquick_repeater>`).

For example, if there is a XML document at http://www.mysite.com/feed.xml like this:

.. code:: cpp

    <?xml version="1.0" encoding="utf-8"?>
    <rss version="2.0">
        ...
        <channel>
            <item>
                <title>A blog post</title>
                <pubDate>Sat, 07 Sep 2010 10:00:01 GMT</pubDate>
            </item>
            <item>
                <title>Another blog post</title>
                <pubDate>Sat, 07 Sep 2010 15:35:01 GMT</pubDate>
            </item>
        </channel>
    </rss>

A `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  could create a model from this data, like this:

.. code:: qml

    import QtQuick 2.0
    import QtQuick.XmlListModel 2.0
    XmlListModel {
        id: xmlModel
        source: "http://www.mysite.com/feed.xml"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
        XmlRole { name: "pubDate"; query: "pubDate/string()" }
    }

The `query </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#query-prop>`_  value of "/rss/channel/item" specifies that the `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  should generate a model item for each ``<item>`` in the XML document.

The `XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_  objects define the model item attributes. Here, each model item will have ``title`` and ``pubDate`` attributes that match the ``title`` and ``pubDate`` values of its corresponding ``<item>``. (See `XmlRole::query </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/#query-prop>`_  for more examples of valid XPath expressions for `XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_ .)

The model could be used in a :ref:`ListView <sdk_qtquick_listview>`, like this:

.. code:: qml

    ListView {
        width: 180; height: 300
        model: xmlModel
        delegate: Text { text: title + ": " + pubDate }
    }

The `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  data is loaded asynchronously, and `status </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#status-prop>`_  is set to ``XmlListModel.Ready`` when loading is complete. Note this means when `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  is used for a view, the view is not populated until the model is loaded.

Using key XML roles
~~~~~~~~~~~~~~~~~~~

You can define certain roles as "keys" so that when `reload() </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#reload-method>`_  is called, the model will only add and refresh data that contains new values for these keys.

For example, if above role for "pubDate" was defined like this instead:

.. code:: qml

        XmlRole { name: "pubDate"; query: "pubDate/string()"; isKey: true }

Then when `reload() </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#reload-method>`_  is called, the model will only add and reload items with a "pubDate" value that is not already present in the model.

This is useful when displaying the contents of XML documents that are incrementally updated (such as RSS feeds) to avoid repainting the entire contents of a model in a view.

If multiple key roles are specified, the model only adds and reload items with a combined value of all key roles that is not already present in the model.

**See also** `Qt Quick Demo - RSS News </sdk/apps/qml/QtQuick/demos-rssnews/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_xmllistmodel_xmllistmodel_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The number of data entries in the model.

.. _sdk_qtquick_xmllistmodel_xmllistmodel_namespaceDeclarations:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| namespaceDeclarations : string                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The namespace declarations to be used in the XPath queries.

The namespaces should be declared as in XQuery. For example, if a requested document at http://mysite.com/feed.xml uses the namespace "http://www.w3.org/2005/Atom", this can be declared as the default namespace:

.. code:: qml

    XmlListModel {
        source: "http://mysite.com/feed.xml"
        query: "/feed/entry"
        namespaceDeclarations: "declare default element namespace 'http://www.w3.org/2005/Atom';"
        XmlRole { name: "title"; query: "title/string()" }
    }

.. _sdk_qtquick_xmllistmodel_xmllistmodel_progress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| progress : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This indicates the current progress of the downloading of the XML data source. This value ranges from 0.0 (no data downloaded) to 1.0 (all data downloaded). If the XML data is not from a remote source, the progress becomes 1.0 as soon as the data is read.

Note that when the progress is 1.0, the XML data has been downloaded, but it is yet to be loaded into the model at this point. Use the status property to find out when the XML data has been read and loaded into the model.

**See also** `status </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#status-prop>`_  and `source </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#source-prop>`_ .

.. _sdk_qtquick_xmllistmodel_xmllistmodel_query:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| query : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

An absolute XPath query representing the base query for creating model items from this model's `XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_  objects. The query should start with '/' or '//'.

.. _sdk_qtquick_xmllistmodel_xmllistmodel_roles:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| roles : list<`XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_ >                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The roles to make available for this model.

.. _sdk_qtquick_xmllistmodel_xmllistmodel_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The location of the XML data source.

If both ``source`` and `xml </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#xml-prop>`_  are set, `xml </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#xml-prop>`_  is used.

.. _sdk_qtquick_xmllistmodel_xmllistmodel_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the model loading status, which can be one of the following:

-  `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ .Null - No XML data has been set for this model.
-  `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ .Ready - The XML data has been loaded into the model.
-  `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ .Loading - The model is in the process of reading and loading XML data.
-  `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ .Error - An error occurred while the model was loading. See `errorString() </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#errorString-method>`_  for details about the error.

**See also** `progress </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#progress-prop>`_ .

.. _sdk_qtquick_xmllistmodel_xmllistmodel_xml:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| xml : string                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the XML data for this model, if set.

The text is assumed to be UTF-8 encoded.

If both `source </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#source-prop>`_  and ``xml`` are set, ``xml`` is used.

Method Documentation
--------------------

.. _sdk_qtquick_xmllistmodel_xmllistmodel_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void errorString()                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a string description of the last error that occurred if `status </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#status-prop>`_  is XmlListModel::Error.

.. _sdk_qtquick_xmllistmodel_xmllistmodel_get:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object get(int *index*)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the item at *index* in the model.

For example, for a model like this:

.. code:: qml

    XmlListModel {
        id: model
        source: "http://mysite.com/feed.xml"
        query: "/feed/entry"
        XmlRole { name: "title"; query: "title/string()" }
    }

This will access the ``title`` value for the first item in the model:

.. code:: js

    var title = model.get(0).title;

.. _sdk_qtquick_xmllistmodel_xmllistmodel_reload:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void reload()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Reloads the model.

If no key roles have been specified, all existing model data is removed, and the model is rebuilt from scratch.

Otherwise, items are only added if the model does not already contain items with matching key role values.

**See also** `Using key XML roles </sdk/apps/qml/QtQuick/XmlListModel.XmlListModel/#using-key-xml-roles>`_  and `XmlRole::isKey </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/#isKey-prop>`_ .

