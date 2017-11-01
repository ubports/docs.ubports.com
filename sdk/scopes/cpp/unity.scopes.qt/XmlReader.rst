Class that downloads http XML files synchronously.
`More... </sdk/scopes/cpp/unity.scopes.qt/XmlReader#details>`__

``#include <unity/scopes/qt/XmlReader.h>``

        Public Member Functions
-------------------------------

QXmlStreamReaderSptr 

`read </sdk/scopes/cpp/unity.scopes.qt/XmlReader#a9a5eebad22c444bf8be96f1536dd1261>`__
(QUrl const &uri) const

 

| Downloads a remote XML document and returns a parser containing the
  data.

 

QXmlStreamReaderSptr 

`read </sdk/scopes/cpp/unity.scopes.qt/XmlReader#a63c00ae978813fc9d9a71e754d8e905f>`__
(QString const &host, QXmlStreamReaderParameters const &parameters)
const

 

| Downloads a remote XML document and returns a parser containing the
  data.

 

Detailed Description
--------------------

Class that downloads http XML files synchronously.

Executes a remote HTTP query synchronously to return a XML parser filled
with the downloaded data.

Member Function Documentation
-----------------------------

+-----------------------------------------------------------+-----+-----------------+---------+-----+---------+
| QXmlStreamReaderSptr unity::scopes::qt::XmlReader::read   | (   | QUrl const &    | *uri*   | )   | const   |
+-----------------------------------------------------------+-----+-----------------+---------+-----+---------+

Downloads a remote XML document and returns a parser containing the
data.

Parameters
    +-------+-------------------+
    | uri   | URI to download   |
    +-------+-------------------+

Returns
    shared pointer of a QXmlStreamReader containing the downloaded data.

+--------------------+--------------------+--------------------+--------------------+
| QXmlStreamReaderSp | (                  | QString const &    | *host*,            |
| tr                 |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :XmlReader::read   |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QXmlStreamReaderPa | *parameters*       |
|                    |                    | rameters           |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a remote XML document and returns a parser containing the
data.

Parameters
    +--------------+-----------------------------------------------------------------------------------------------+
    | host         | the remote host name                                                                          |
    +--------------+-----------------------------------------------------------------------------------------------+
    | parameters   | The parameters that will build the final query, defined by a list of pairs of key and value   |
    +--------------+-----------------------------------------------------------------------------------------------+

Returns
    shared pointer of a QXmlStreamReader containing the downloaded data.

