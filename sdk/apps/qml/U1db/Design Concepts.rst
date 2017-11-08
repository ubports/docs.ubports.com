.. _sdk_u1db_design_concepts:

U1db Design Concepts
====================


This concept guide will describe a wide variety of U1Db-Qt functionality and usage. It will cover:

#. Overview of U1Db Documents and Databases
#. Creating Documents and Databases
#. Database keys and Document contents
#. Listing docId values in a Database
#. Retrieving Documents
#. Searching and retrieving Documents by docId
#. Modifying Existing Documents
#. Document Functions
#. Index expressions
#. Querying an index
#. Index functions
#. Blending the U1Db-Qt plugin with QML and Javascript
#. U1Db-Qt with QML Elements and Components
#. Using U1Db-Qt with elements and components that support models
#. Using U1Db-Qt with elements and components that do not utilize models
#. Using a Document without a Database

U1DB is a database API for synchronised databases of JSON documents. Itâ€™s simple to use in applications, and allows apps to store documents and synchronise them between machines and devices. U1DB is the database designed to work everywhere, backed by the platformâ€™s native data storage capabilities. This means that you can use u1db on different platforms, from different languages, and backed on to different databases, and sync between all of them.

U1Db-Qt is the QML implementation of U1DB. It is a QML plugin written in C++ and allows for creating and manipulating U1DB databases via a more declarative approach within a QML application.

A Database is very simple to create. It only needs an id and a path where the file will be created. A Database is a model, which can be used by elements, such as the ListView further in this example.

.. code:: qml

    U1db.Database {
        id: aDatabase
        path: "aU1DbDSatabase2"
    }

A Document can be declared at runtime. It requires at the very least a unique 'docId', but that alone won't do anything special. The snipet below snippet demonstrates the basic requirements.

In addition to this, this example displays text from the database for a specific docId and id key in a text area called 'documentContent. To update the text area at startup with either the default value or a value from the database the onCompleted function is utilized, which is also demonstrated below.

.. code:: qml

    U1db.Document {
        id: aDocument
        database: aDatabase
        docId: 'helloworld'
        create: true
        defaults: { "helloworld":"Hello World" }
        Component.onCompleted: {
            documentContent.text = aDocument.contents.helloworld
        }
    }

It should be possible to use a document without a database, as demonstrated in this snippet. Additionally this document will use the concept of sub-keys, as exemplified by the "bookmarks" id key + contents. This example will attempt to use the bookmark document to store docId values from the database, which will be displayed in a ListView on the second tab of the application. The user will be able to select a value from the ListView and the first tab will be modified accordingly.

.. code:: qml

    U1db.Document {
         id: aBookmarkDocument
         docId: 'bookmarks'
         create: true
         defaults: { "bookmarks": [{}] }
    }

The listDocs method retrieves all the docId values from the current database. In this demonstration the values are put into an array, which is then checked to locate the docId for the current and previous documents within the database.

.. code:: cpp

            var documentIds = documentObject.database.listDocs()
            for(var i = 0; i < documentIds.length; i++){
                if(documentIds[i]===documentObject.docId && i > 0){
                    return documentIds[i-1]
                }
                else if(documentIds[i]===documentObject.docId && i==0){
                    return documentIds[documentIds.length-1]
                }
            }

These steps demonstrate the creation of a temporary document, based on a copy of the global document. This will then be used to determine if there is already a document in the database with the same docId as the address bar, and additionally with a key id with the same name.

.. code:: cpp

             var tempFieldName = addressBarText;
             var tempDocument = aDocument
             tempDocument.docId = addressBarText;
             var tempContents = tempDocument.contents

**Note: For simplicity sake this example sometimes uses the same value for both the docId and the key id, as seen here. Real life implimentations can and will differ, and this will be demonstrated elsewhere in the example code.**

Here the contents of the temporary document are modified, which then replaces the global document.

.. code:: cpp

                 documentContent.text = 'More Hello World...';
                 var tempContents = {}
                 tempContents[tempFieldName] = documentContent.text
                 tempDocument.contents = tempContents
                 aDocument = tempDocument

In this instance the current document's content is updated from the text view. The unique key and docId are not modified because the database already contains a record with those properties.

.. code:: cpp

             var tempContents = {}
             tempFieldName = getCurrentDocumentKey(aDocument.contents)
             tempContents[tempFieldName] = documentContent.text
             aDocument.contents = tempContents

Here a rectangle is defined that represents the lower portion of our application. It will contain all the main parts of the application.

.. code:: qml

                 Rectangle {
                      width: units.gu(45)
                      height: units.gu(70)
                      anchors.bottom: parent.bottom
                      color: "#00FFFFFF"
                      // The remainder of the main part of the application goes here ...
                      }

The following :ref:`TextArea <sdk_ubuntu_components_textarea>` is for displaying contents for the current state of the global document, as defined by the key / name in the address bar.

.. code:: qml

                         TextArea{
                             id: documentContent
                             selectByMouse : false
                             x: units.gu(1)
                             y: units.gu(1)
                             width: units.gu(43)
                             height: units.gu(58)
                             color: "#000000"
                         }

There is an object within in the 'aDocument' model defined earlier called 'contents', which contains a key called 'hello', which represents a search string. In this example the key will represent the name of a document in the database, which will be displayed in the address bar. Displaying the key is demonstrated here:

.. code:: qml

                         TextArea{
                                 text: displayKey(aDocument.contents)
                                 function displayKey(documentObject){
                                     var keys = Object.keys(documentObject);
                                     return keys[0]
                                 }
                         }

