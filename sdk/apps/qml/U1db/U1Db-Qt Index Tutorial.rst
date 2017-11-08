.. _sdk_u1db_u1db-qt_index_tutorial:

U1db U1Db-Qt Index Tutorial
===========================


This tutorial is designed to demonstrate a variety of essential U1Db-Qt functionality and usage, including:

#. Utilizing the U1db-Qt Index element
#. Various approaches to define U1db-Qt Document elements when using the Index element
#. Partnering the U1db-Qt Index element and a QML ListView element

A Database is very simple to create. It only needs an id and a path where the file will be created. A Database is a model, which can be used by elements, such as the ListView further in this example.

.. code:: cpp

    U1db.Database {
        id: aDatabase
        path: "aDatabase4"
    }

A Document can be instantiated at runtime, or generated dynamically. The examples below demonstrate the former.

A very basic Document could include its unique 'id' and 'docId' properties. While it is not mandatory to define these properties, in some cases they can be convenient references. More advanced applications would likely find these very useful, and in some cases may be an absolute necessity to achieve the objectives of the program.

This example of a very simple Document will not initially do anything, until more properties are added and defined:

.. code:: cpp

    U1db.Document {
        id: aDocument1
        docId: 'helloworld1'
    }

A basic but still practical Document definition contains several essential properties. In addition to 'id' and 'docId' (discussed above), the 'database', 'create', and 'defaults' properties are also very important, and are introduced below.

The 'database' property ensures that the Document is attached to an already defined (or possibly soon to be defined one) identified by its id (in this case 'aDatabase'). For example:

.. code:: cpp

    U1db.Document {
        id: aDocument1
        database: aDatabase
        docId: 'helloworld1'
    }

Should the Database not already contain a Document with the same docId ('hellowworld1' in this example) when a 'create' property is present and set to true it will be generated. For example:

.. code:: cpp

    U1db.Document {
        id: aDocument1
        database: aDatabase
        docId: 'helloworld1'
        create: true
    }

However, the Document still requires some data to be useful, which is what the 'defaults' property provides. The value of 'defaults' is a map of data that will be stored in the database (again when the create property is et to true). It contain key:value pairs, where the value can be a string, number, or nested object (e.g. additional fields, lists). For example:

.. code:: cpp

    U1db.Document {
        id: aDocument1
        database: aDatabase
        docId: 'helloworld1'
        create: true
        defaults:{"hello": { "world": { "message":"Hello World", "id": 1 } } }
    }

As mentioned above, lists can also be nested in Document data. Lists provide a convenient method for producing multiple instances of the same key (AKA 'field' or 'sub-field'). The example code below shows valid use of the 'message' and 'id' sub-fields multiple times within the same object.

.. code:: cpp

    U1db.Document {
        id: aDocument2
        database: aDatabase
        docId: 'helloworld2'
        create: true
        defaults:{"hello": { "world": [
                                { "message":"Hello World", "id": 2 },
                                { "message":"Hello World", "id": 2.5 }
                            ] } }
    }

When the default Javascript Object Notation itself is formatted with appropriate line breaks and indentation, it becomes easier to visualize an embedded list, containing sub-fields 'message' and 'id' (and their respective values):

.. code:: cpp

    {"hello":
        { "world":
            [
                { "message":"Hello World", "id": 2 },
                { "message":"Hello World", "id": 2.5 }
            ]
        }
    }

In dot notation these sub-fields are represented by 'hello.world.message' and 'hello.world.id' respectively. Later in this tutorial these will be utilized within the 'expression' property of U1Db-Qt's Index element, in close collaboration with a QML ListView's delegates.

Normally when a docId already exists in a database, and when the set flag is set to true, the value in 'defaults' will be ignored (and the existing data in the database will remain untouched). Sometimes a developer needs to easily overwrite the data in an existing document. The 'contents' property can be used for just that purpose. When 'contents' is defined, its value will replace existing data in the database, for the document identified by the docId. In addition, 'contents' can be used to add new documents, in the same way as the 'create: true' + 'defaults' combination does; in other words, if the document defined by 'docId' does not exist it will be created.

.. code:: cpp

    U1db.Document {
        id: aDocument3
        database: aDatabase
        docId: 'helloworld3'
        contents:{"hello": { "world": [
                                { "message":"Hello World", "id": 3 },
                                { "message":"Hello World", "id": 3.33 },
                                { "message":"Hello World", "id": 3.66 }
                            ] } }
    }

If 'defaults' exists, 'create' is set to 'true' (or 'false' for that matter) and 'contents' is also defined, it is the latter that takes precidence. In other words, 'create' and 'defaults' will be ignored. The following example demonstrates this scenario:

.. code:: cpp

    U1db.Document {
        id: aDocument3
        database: aDatabase
        docId: 'helloworld3'
        create: true
        default:{"hello": { "world": [{ "message":"Hello World", "id": 3 }] } }
        contents:{"hello": { "world": [
                                        { "message":"Hello World", "id": 3 },
                                        { "message":"Hello World", "id": 3.33 },
                                        { "message":"Hello World", "id": 3.66 }
                            ] } }
    }

This snippet simply represents the absence of the 'create' property, which is synonymous with 'create: false'. The Document can still be recognized within the application, but until applicable properties (such as those outlined above) are added and/or modified then nothing will be added or modified in the database, and this instance may have very little practical value.

.. code:: cpp

    U1db.Document {
        id: aDocument4
        database: aDatabase
        docId: 'helloworld4'
        defaults:{"hello": { "world": { "message":"Hello World", "id": 4 } } }
    }

The data stored in the database after defining the above Document elements (and then running the application, will consist of the following:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| docId                                                                                                                                                  | content                                                                                                                                                |
+========================================================================================================================================================+========================================================================================================================================================+
| 'helloworld1'                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     {                                                                                                                                                  |
|                                                                                                                                                        |         "hello": {                                                                                                                                     |
|                                                                                                                                                        |             "world": {                                                                                                                                 |
|                                                                                                                                                        |                 "id": 1,                                                                                                                               |
|                                                                                                                                                        |                 "message": "Hello World"                                                                                                               |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| 'helloworld2'                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     {                                                                                                                                                  |
|                                                                                                                                                        |         "hello": {                                                                                                                                     |
|                                                                                                                                                        |             "world": [                                                                                                                                 |
|                                                                                                                                                        |                 {                                                                                                                                      |
|                                                                                                                                                        |                     "id": 2,                                                                                                                           |
|                                                                                                                                                        |                     "message": "Hello World"                                                                                                           |
|                                                                                                                                                        |                 },                                                                                                                                     |
|                                                                                                                                                        |                 {                                                                                                                                      |
|                                                                                                                                                        |                     "id": 2.5,                                                                                                                         |
|                                                                                                                                                        |                     "message": "Hello World"                                                                                                           |
|                                                                                                                                                        |                 }                                                                                                                                      |
|                                                                                                                                                        |             ]                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| 'helloworld3'                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     {                                                                                                                                                  |
|                                                                                                                                                        |         "hello": {                                                                                                                                     |
|                                                                                                                                                        |             "world": [                                                                                                                                 |
|                                                                                                                                                        |                 {                                                                                                                                      |
|                                                                                                                                                        |                     "id": 3,                                                                                                                           |
|                                                                                                                                                        |                     "message": "Hello World"                                                                                                           |
|                                                                                                                                                        |                 },                                                                                                                                     |
|                                                                                                                                                        |                 {                                                                                                                                      |
|                                                                                                                                                        |                     "id": 3.33,                                                                                                                        |
|                                                                                                                                                        |                     "message": "Hello World"                                                                                                           |
|                                                                                                                                                        |                 },                                                                                                                                     |
|                                                                                                                                                        |                 {                                                                                                                                      |
|                                                                                                                                                        |                     "id": 3.66,                                                                                                                        |
|                                                                                                                                                        |                     "message": "Hello World"                                                                                                           |
|                                                                                                                                                        |                 }                                                                                                                                      |
|                                                                                                                                                        |             ]                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

To retrieve the Documents that were declared earlier requires two additional elements: Index and Query.

The Index element requires both a unique 'id' and a pointer to a 'database' in order to begin becoming useful, as demonstrated here:

.. code:: cpp

    U1db.Index{
        database: aDatabase
        id: by_helloworld
    }

In the future, the Index element will support on disk storage of appropriate results / data. At the present time only in memory indexing is done, but once the storing capability is implemented, defining and identifying it is as simple as using the 'name' property (which will be stored in the database along with the relvent data that goes with it). The snippet below shows the use of the 'name' property:

.. code:: cpp

    U1db.Index{
        database: aDatabase
        id: by_helloworld
        //name: "by-helloworld"
    }

The Index element describes, using dot notation, the fields and sub-fields where the developer expects to find information. That information is defined in a list, and added as the value for the 'expression' property. The list can contain one or more entries, as exemplified here (the property is commented out due to its current status):

.. code:: cpp

    U1db.Index{
        database: aDatabase
        id: by_helloworld
        //name: "by-helloworld"
        expression: ["hello.world.id","hello.world.message"]
    }

The Query element has two responsibilities: a bridge from Database+Index to other parts of the application, as well as further filtering of data in the database (in addition to what Index provides).

In order to fulfil its duties as a bridge to an Index (and Database), the 'index' property must point to an Index element, identified by its 'id'. For example:

.. code:: cpp

    U1db.Query{
        id: aQuery
        index: by_helloworld
    }

While Index helps to filter data based on 'where' it is located (e.g. field.sub-field), Query helps determine the additional set of criteria for 'what' is being searched for. The intent of the 'query' property is to provide the mechanism for defnining the search criteria, but at the time of writing that functionality is not yet available. However, once the implementation is in place, using it is only requires defining the property's value (e.g. "Hello World"). Wild card searches using '\*' are supported, which is the default query (i.e. if 'query' is not set it is assumed to be '\*'). For example (the property is commented out due to its current status):

.. code:: cpp

    U1db.Query{
        id: aQuery
        index: by_helloworld
        //query: "*"
    }

When the 'query' property becomes available, only wildcard search definitions for "starts with" will be suppoprted. Thus the following would be supported:

.. code:: cpp

    U1db.Query{
        id: aQuery
        index: by_helloworld
        //query: "Hello*"
    }

But this would not:

.. code:: cpp

    U1db.Query{
        id: aQuery
        index: by_helloworld
        //query: "*World"
    }

Note: again, the 'query' property is commented out in the above two snippets due to its current status

This simple snippet represents how to attach a ListModel to a ListView. In this instance the model 'aQuery' is representative of the Query + Index combination defined earlier:

.. code:: cpp

    ListView {
        width: units.gu(45)
        height: units.gu(80)
        model: aQuery
    }

How a model and ListView + delegates work together is a common QML concept, and not specific to U1Db-Qt. However, the asynchronous nature of this relationship is important to understand. When using QML ListView, delegates will be created based on particular properties such as the size of the application window, ListView, and delegate itself (amongst other factors). Each delegate can then represent a Document retrieved from the Database based on the record's index. This example demonstrates some of the property definitions that contribute to determining the number of delegates a ListView will contain:

.. code:: cpp

    ListView {
        width: units.gu(45)
        height: units.gu(80)
        model: aQuery
        delegate: Text {
            x: 66; y: 77
        }
    }

When the number of Documents is less than or equal to the number of delegates then there is a one to one mapping of index to delegate (e.g. the first delegate will represent the Document with an index = 0; the second, index = 1; and so on).

When there are more Documents than delegates the ListView will request a new index depending on the situation (e.g. a user scrolls up or down). For example, if a ListView has 10 delegates, but 32 Documents to handle, when a user initially scrolls the first delegate will change from representing the Document with index = 0 to the Document that might have index = 8; the second, from index = 1 to index = 9; ...; the 10th delegate from index = 9 to index = 17. A second scrolling gesture the first index may change to 15, and the final index 24. And so on. Scrolling in the opposite direction will have a similar effect, but the Document index numbers for each delegate will obviously start to decline (towards their original values).

The following snippet, which modifies the above delegate definition, could demonstrate this effect if there were enough Documents to do so (i.e. some number greater than the number of delegates):

.. code:: cpp

    ListView {
        width: units.gu(45)
        height: units.gu(80)
        model: aQuery
        delegate: Text {
            x: 66; y: 77
            text: index
        }
    }

The object called 'contents' contains one or more properties. This example demonstrates the retrieval of data based on the U1db.Index defined earlier (id: by-helloworld). In this instance the Index contained two expressions simultaniously, "hello.world.id" and "hello.world.message"

.. code:: cpp

    ListView {
        width: units.gu(45)
        height: units.gu(80)
        model: aQuery
        delegate: Text {
            x: 66; y: 77
            text: "(" + index + ") '" + contents.message + " " + contents.id + "'"
        }
    }

