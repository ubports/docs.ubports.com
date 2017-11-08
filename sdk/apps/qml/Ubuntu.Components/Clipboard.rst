.. _sdk_ubuntu_components_clipboard:

Ubuntu.Components Clipboard
===========================

This is a singleton type providing access to the system clipboard.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`data <sdk_ubuntu_components_clipboard_data>` : MimeData

Signals
-------

-  :ref:`dataChanged <sdk_ubuntu_components_clipboard_dataChanged>`\ ()

Methods
-------

-  :ref:`clear <sdk_ubuntu_components_clipboard_clear>`\ ()
-  MimeData :ref:`newData <sdk_ubuntu_components_clipboard_newData>`\ ()
-  :ref:`push <sdk_ubuntu_components_clipboard_push>`\ (var *data*)

Detailed Description
--------------------

Clipboard data can be retrieved through data property, which returns an object of :ref:`MimeData <sdk_ubuntu_components_mimedata>` type. The actual content of the clipboard can be accessed through this object. Data can be pushed to the clipboard using :ref:`push() <sdk_ubuntu_components_clipboard_push>` function.

The clipboard data cannot be modified through the type returned by the data property, for this a new instance of :ref:`MimeData <sdk_ubuntu_components_mimedata>` type must be used. This instance can be either a standalone MimeDala component or an object created using :ref:`newData() <sdk_ubuntu_components_clipboard_newData>` function. Remember that standalone :ref:`MimeData <sdk_ubuntu_components_mimedata>` types duplicate the clipboard data which may cause extensive memory use.

Examples of use:

1. Using standard MimeType component - the following example copies the selected text from the text area into the clipboard pushing also a color

.. code:: qml

    Item {
        TextArea {
            id: editor
        }
        MimeData {
            id: mimeData
            color: "green"
            text: editor.text
        }
        Button {
            text: "Copy"
            onClicked: Clipboard.push(mimeData)
        }
    }

2. Pushing data straight to clipboard

.. code:: qml

    Item {
        TextArea {
            id: editor
        }
        Button {
            text: "Copy"
            onClicked: {
                Clipboard.push(editor.text);
                Clipboard.push(["application/x-color", "green"]);
            }
        }
    }

3. Pushing data using :ref:`MimeData <sdk_ubuntu_components_mimedata>` object

.. code:: qml

    Item {
        TextArea {
            id: editor
        }
        Button {
            text: "Copy"
            onClicked: {
                var mimeData = Clipboard.newData();
                mimeData.text = editor.text;
                mimeData.color = "green";
                Clipboard.push(mimeData);
            }
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_clipboard_data:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| data : :ref:`MimeData <sdk_ubuntu_components_mimedata>`                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Provides access to the Clipboard's current data.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_clipboard_dataChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dataChanged()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The signal is triggered when clipboard content gets changed.

Method Documentation
--------------------

.. _sdk_ubuntu_components_clipboard_clear:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clear()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function clears the clipboard content.

.. _sdk_ubuntu_components_clipboard_:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MimeData <sdk_ubuntu_components_mimedata>` newData()                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function returns a new :ref:`MimeData <sdk_ubuntu_components_mimedata>` object that can be used in Java script code to push pultiple MIME types at the same time.

.. _sdk_ubuntu_components_clipboard_push:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| push(`var <http://doc.qt.io/qt-5/qml-var.html>`_  *data*)                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function copies data provided as parameter to the clipboard. The parameter can be a :ref:`MimeData <sdk_ubuntu_components_mimedata>` instance or object created using :ref:`newData() <sdk_ubuntu_components_clipboard_newData>` beside the ones listed at :ref:`MimeData::data <sdk_ubuntu_components_mimedata_data>`.

When :ref:`MimeData <sdk_ubuntu_components_mimedata>` instance or object is given, the entire object content will be pushed to the clipboard.

