This is a singleton type providing access to the system clipboard.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`data </sdk/apps/qml/Ubuntu.Components/Clipboard#data-prop>`__****
   : MimeData

Signals
-------

-  ****`dataChanged </sdk/apps/qml/Ubuntu.Components/Clipboard#dataChanged-signal>`__****\ ()

Methods
-------

-  ****`clear </sdk/apps/qml/Ubuntu.Components/Clipboard#clear-method>`__****\ ()
-  MimeData
   ****`newData </sdk/apps/qml/Ubuntu.Components/Clipboard#newData-method>`__****\ ()
-  ****`push </sdk/apps/qml/Ubuntu.Components/Clipboard#push-method>`__****\ (var
   *data*)

Detailed Description
--------------------

Clipboard data can be retrieved through data property, which returns an
object of `MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ type.
The actual content of the clipboard can be accessed through this object.
Data can be pushed to the clipboard using
`push() </sdk/apps/qml/Ubuntu.Components/Clipboard#push-method>`__
function.

The clipboard data cannot be modified through the type returned by the
data property, for this a new instance of
`MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ type must be
used. This instance can be either a standalone MimeDala component or an
object created using
`newData() </sdk/apps/qml/Ubuntu.Components/Clipboard#newData-method>`__
function. Remember that standalone
`MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ types duplicate
the clipboard data which may cause extensive memory use.

Examples of use:

1. Using standard MimeType component - the following example copies the
selected text from the text area into the clipboard pushing also a color

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

3. Pushing data using
`MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ object

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

+--------------------------------------------------------------------------+
|        \ data : `MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ |
+--------------------------------------------------------------------------+

Provides access to the Clipboard's current data.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ dataChanged()                                                   |
+--------------------------------------------------------------------------+

The signal is triggered when clipboard content gets changed.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ clear()                                                         |
+--------------------------------------------------------------------------+

The function clears the clipboard content.

| 

+--------------------------------------------------------------------------+
|        \ `MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__        |
| newData()                                                                |
+--------------------------------------------------------------------------+

The function returns a new
`MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ object that can
be used in Java script code to push pultiple MIME types at the same
time.

| 

+--------------------------------------------------------------------------+
|        \ push(`var <http://doc.qt.io/qt-5/qml-var.html>`__ *data*)       |
+--------------------------------------------------------------------------+

The function copies data provided as parameter to the clipboard. The
parameter can be a
`MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ instance or
object created using
`newData() </sdk/apps/qml/Ubuntu.Components/Clipboard#newData-method>`__
beside the ones listed at
`MimeData::data </sdk/apps/qml/Ubuntu.Components/MimeData#data-prop>`__.

When `MimeData </sdk/apps/qml/Ubuntu.Components/MimeData/>`__ instance
or object is given, the entire object content will be pushed to the
clipboard.

| 
