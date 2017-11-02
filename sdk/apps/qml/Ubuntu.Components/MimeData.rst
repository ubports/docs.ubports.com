.. _sdk_ubuntu_components_mimedata:
Ubuntu.Components MimeData
==========================

MimeData type provides interface to access and store data to the
Clipboard.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`color <sdk_ubuntu_components_mimedata_color-prop>` : color
-  :ref:`data <sdk_ubuntu_components_mimedata_data-prop>` : var
-  :ref:`format <sdk_ubuntu_components_mimedata_format-prop>` :
   list<string>
-  :ref:`html <sdk_ubuntu_components_mimedata_html-prop>` : string
-  :ref:`text <sdk_ubuntu_components_mimedata_text-prop>` : string
-  :ref:`urls <sdk_ubuntu_components_mimedata_urls-prop>` :
   list<url>

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_ubuntu_components_mimedata_color-prop:

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

| 

.. _sdk_ubuntu_components_mimedata_data-prop:

+--------------------------------------------------------------------------+
|        \ data : `var <http://doc.qt.io/qt-5/qml-var.html>`_              |
+--------------------------------------------------------------------------+

Reading the property returns a list of MIME type and data pairs
representing the data stored in the object. Users can set custom MIME
types which are not covered by the other properties.

When setting the property value can take one of the following types:

-  - string - the data will be set as ``text/plain`` MIME type, or as
   ``text/html`` in case HTML tags are detected
-  - color - the data will be set as ``application/x-color`` MIME type
-  - list<url> - the data will be set as ``text/uri-list``
-  - list<string> - the data will be set as ``text/uri-list`` in case
   the first element of the list is a valid URL with scheme; otherwise
   if the list size is even, the list will be set as pairs of (MIME
   type,data)
-  - list<var> - same as list<url> or list<string>

| 

.. _sdk_ubuntu_components_mimedata_format-prop:

+--------------------------------------------------------------------------+
|        \ format : list<string>                                           |
+--------------------------------------------------------------------------+

Returns a list of formats supported by the object. This is a list of
MIME types for which the object can return suitable data. The formats in
the list are in a priority order.

**See also** :ref:`data <sdk_ubuntu_components_mimedata#data-prop>`.

| 

.. _sdk_ubuntu_components_mimedata_html-prop:

+--------------------------------------------------------------------------+
|        \ html : string                                                   |
+--------------------------------------------------------------------------+

Contains a string if the data stored in the object is HTML (MIME type
text/html); otherwise contains an empty string.

| 

.. _sdk_ubuntu_components_mimedata_text-prop:

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

Contains a plain text (MIME type text/plain) representation of the data.

| 

.. _sdk_ubuntu_components_mimedata_urls-prop:

+--------------------------------------------------------------------------+
|        \ urls : list<`url <http://doc.qt.io/qt-5/qml-url.html>`_ >       |
+--------------------------------------------------------------------------+

Contains a list of URLs contained within the MIME data object. URLs
correspond to the MIME type text/uri-list.

| 
