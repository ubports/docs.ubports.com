.. _sdk_unity_scopes_qt_xmlasyncreader:
unity.scopes.qt XmlAsyncReader
==============================

Class that downloads http XML files asynchronously.
:ref:`More... <sdk_unity_scopes_qt_xmlasyncreader#details>`

``#include <unity/scopes/qt/XmlAsyncReader.h>``

        Public Member Functions
-------------------------------

template<typename BASE , typename TYPE >

ResultsFuture< BASE > 

:ref:`async\_get <sdk_unity_scopes_qt_xmlasyncreader#a17d5b0a22026ab8d5979b39cedaa2952>`
(std::string const &uri, std::string const &object\_name, ParserFunc<
BASE > const &parse=get\_results< BASE, TYPE >) const

 

| Downloads a HTTP XML remote file asynchronously and returns a future
  to a list of results This method downloads in a separated thread a
  http document identified by the given URI. It returns a future of list
  of results based on a given object name. If, for example, the document
  contains a list of objects identified by the tag "ITEM" it parses the
  document and returns a list of those objects.

 

template<typename T >

ResultsFuture< T > 

:ref:`async\_get <sdk_unity_scopes_qt_xmlasyncreader#a3fbd67b5f96245f1ea4bbe8ff2d0e849>`
(std::string const &uri, std::string const &object\_name, ParserFunc< T
> const &parse=get\_results< T, T >) const

 

| Downloads a XML HTTP remote file asynchronously and returns a future
  to a list of results This method downloads in a separated thread a
  http document identified by the given URI. It returns a future of list
  of results based on a given object name. If, for example, the document
  contains a list of objects identified by the tag "ITEM" it parses the
  document and returns a list of those objects. The user must provide a
  function to create the parser for the downloaded data and a parse
  function that retrieves the data.

 

template<typename BASE , typename TYPE >

ResultsFuture< BASE > 

:ref:`async\_get <sdk_unity_scopes_qt_xmlasyncreader#aa7f613d801a32f69d3a3d09fa775749c>`
(std::string const &host, QXmlStreamReaderParams const &params,
std::string const &object\_name, ParserFunc< BASE > const
&parse=get\_results< BASE, TYPE >) const

 

| Downloads a HTTP XML remote file asynchronously and returns a future
  to a list of results This method downloads in a separated thread a
  http document identified by the given URI. It returns a future of list
  of results based on a given object name. If, for example, the document
  contains a list of objects identified by the tag "ITEM" it parses the
  document and returns a list of those objects.

 

template<typename T >

ResultsFuture< T > 

:ref:`async\_get <sdk_unity_scopes_qt_xmlasyncreader#a98a01776b95509671adec9ff6321c8f8>`
(std::string const &host, QXmlStreamReaderParams const &params,
std::string const &object\_name, ParserFunc< T > const
&parse=get\_results< T, T >) const

 

| Downloads a HTTP XML remote file asynchronously and returns a future
  to a list of results This method downloads in a separated thread a
  http document identified by the given URI. It returns a future of list
  of results based on a given object name. If, for example, the document
  contains a list of objects identified by the tag "ITEM" it parses the
  document and returns a list of those objects.

 

QXmlStreamReaderFuture 

:ref:`async\_get\_parser <sdk_unity_scopes_qt_xmlasyncreader#a1d1abb81853d575a1fdb9ee63350711e>`
(std::string const &uri) const

 

| Downloads a HTTP remote file asynchronously and returns a future to a
  valid XML parser containing the data.

 

QXmlStreamReaderFuture 

:ref:`async\_get\_parser <sdk_unity_scopes_qt_xmlasyncreader#a8d8aa17b33a021b9faed3a3ddd1c67d0>`
(std::string const &host, QXmlStreamReaderParams const &params) const

 

| Downloads a HTTP remote file asynchronously and returns a future to a
  valid XML parser containing the data.

 

        Static Protected Member Functions
-----------------------------------------

static QXmlStreamReaderSptr 

:ref:`create\_parser\_with\_data <sdk_unity_scopes_qt_xmlasyncreader#acf558138e801362a2a012771ad590e27>`
(std::string const &data, std::string &error)

 

| Creates a QXmlStreamReader filled with the given data.

 

Detailed Description
--------------------

Class that downloads http XML files asynchronously.

Executes a remote HTTP query asynchronously to return different futures
about XML results or a XML parser. The class implements and defines a
function that returns a XML parser filled with the data downloaded. The
class also offers a default function to obtain all objects of a given
name in the results. The user may define his own parsing function to
parse data at he desires.

Member Function Documentation
-----------------------------

template<typename BASE , typename TYPE >

+--------------------+--------------------+--------------------+--------------------+
| XmlAsyncReader::Re | (                  | std::string const  | *uri*,             |
| sultsFuture<       |                    | &                  |                    |
| BASE >             |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :XmlAsyncReader::a |                    |                    |                    |
| sync\_get          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *object\_name*,    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | ParserFunc< BASE > | *parse* =          |
|                    |                    | const &            | ``get_results<BASE |
|                    |                    |                    | , TYPE>``          |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a HTTP XML remote file asynchronously and returns a future to
a list of results This method downloads in a separated thread a http
document identified by the given URI. It returns a future of list of
results based on a given object name. If, for example, the document
contains a list of objects identified by the tag "ITEM" it parses the
document and returns a list of those objects.

The user may provide his own function to parse the downloaded data.

The method has 2 template parameters: the type of results returned and
the type of objects when instantiating. The type of instantiation has to
be a derived class of the return type. This is offered for convenience
to return more generic types and get advantage of polymorphism.

The method checks at compile time that the instantiation type is
effectively a derived class of the type returned.

Parameters
    +----------------+----------------------------------------------------------------------+
    | uri            | URI to download                                                      |
    +----------------+----------------------------------------------------------------------+
    | object\_name   | name of the kind of object we are looking for in the http document   |
    +----------------+----------------------------------------------------------------------+
    | parse          | Function that parses the data downloaded                             |
    +----------------+----------------------------------------------------------------------+

Returns
    Future of list of results

template<typename T >

+--------------------+--------------------+--------------------+--------------------+
| XmlAsyncReader::Re | (                  | std::string const  | *uri*,             |
| sultsFuture<       |                    | &                  |                    |
| T >                |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :XmlAsyncReader::a |                    |                    |                    |
| sync\_get          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *object\_name*,    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | ParserFunc< T >    | *parse* =          |
|                    |                    | const &            | ``get_results<T, T |
|                    |                    |                    | >``                |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a XML HTTP remote file asynchronously and returns a future to
a list of results This method downloads in a separated thread a http
document identified by the given URI. It returns a future of list of
results based on a given object name. If, for example, the document
contains a list of objects identified by the tag "ITEM" it parses the
document and returns a list of those objects. The user must provide a
function to create the parser for the downloaded data and a parse
function that retrieves the data.

The method has 1 template parameter: the type of objects returned and
the parser type.

Parameters
    +----------------+----------------------------------------------------------------------+
    | uri            | URI to download                                                      |
    +----------------+----------------------------------------------------------------------+
    | object\_name   | name of the kind of object we are looking for in the http document   |
    +----------------+----------------------------------------------------------------------+
    | parse          | Function that parses the data downloaded                             |
    +----------------+----------------------------------------------------------------------+

Returns
    Future of list of results

template<typename BASE , typename TYPE >

+--------------------+--------------------+--------------------+--------------------+
| XmlAsyncReader::Re | (                  | std::string const  | *host*,            |
| sultsFuture<       |                    | &                  |                    |
| BASE >             |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :XmlAsyncReader::a |                    |                    |                    |
| sync\_get          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QXmlStreamReaderPa | *params*,          |
|                    |                    | rams               |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *object\_name*,    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | ParserFunc< BASE > | *parse* =          |
|                    |                    | const &            | ``get_results<BASE |
|                    |                    |                    | , TYPE>``          |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a HTTP XML remote file asynchronously and returns a future to
a list of results This method downloads in a separated thread a http
document identified by the given URI. It returns a future of list of
results based on a given object name. If, for example, the document
contains a list of objects identified by the tag "ITEM" it parses the
document and returns a list of those objects.

The user may provide his own function to parse the downloaded data.

The method has 2 template parameters: the type of results returned and
the type of objects when intantiating. The type of instantiation has to
be a derived class of the return type. This is offered for convenience
to return more generic types and get advantage of polymorphism.

The method checks at compile time that the instantiation type is
effectively a derived class of the type returned.

Parameters
    +----------------+-----------------------------------------------------------------------------------------------+
    | host           | the remote host name                                                                          |
    +----------------+-----------------------------------------------------------------------------------------------+
    | params         | The parameters that will build the final query, defined by a list of pairs of key and value   |
    +----------------+-----------------------------------------------------------------------------------------------+
    | object\_name   | name of the kind of object we are looking for in the http document                            |
    +----------------+-----------------------------------------------------------------------------------------------+
    | parse          | Function that parses the data downloaded                                                      |
    +----------------+-----------------------------------------------------------------------------------------------+

Returns
    Future of list of results

template<typename T >

+--------------------+--------------------+--------------------+--------------------+
| XmlAsyncReader::Re | (                  | std::string const  | *host*,            |
| sultsFuture<       |                    | &                  |                    |
| T >                |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :XmlAsyncReader::a |                    |                    |                    |
| sync\_get          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QXmlStreamReaderPa | *params*,          |
|                    |                    | rams               |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *object\_name*,    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | ParserFunc< T >    | *parse* =          |
|                    |                    | const &            | ``get_results<T, T |
|                    |                    |                    | >``                |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a HTTP XML remote file asynchronously and returns a future to
a list of results This method downloads in a separated thread a http
document identified by the given URI. It returns a future of list of
results based on a given object name. If, for example, the document
contains a list of objects identified by the tag "ITEM" it parses the
document and returns a list of those objects.

The user may provide his own function to parse the downloaded data.

The method has 1 template parameters: the type of results returned.

The method checks at compile time that the instantiation type is
effectively a derived class of the type returned.

Parameters
    +----------------+-----------------------------------------------------------------------------------------------+
    | host           | the remote host name                                                                          |
    +----------------+-----------------------------------------------------------------------------------------------+
    | params         | The parameters that wlll build the final query, defined by a list of pairs of key and value   |
    +----------------+-----------------------------------------------------------------------------------------------+
    | object\_name   | name of the kind of object we are looking for in the http document                            |
    +----------------+-----------------------------------------------------------------------------------------------+
    | parse          | Function that parses the data downloaded                                                      |
    +----------------+-----------------------------------------------------------------------------------------------+

Returns
    Future of list of results

+--------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+
| QXmlStreamReaderFuture unity::scopes::qt::XmlAsyncReader::async\_get\_parser   | (   | std::string const &    | *uri*   | )   | const   |
+--------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+

Downloads a HTTP remote file asynchronously and returns a future to a
valid XML parser containing the data.

This method downloads a remote http document, fills a valid
QXmlStreamReader parser with the downloaded data and returns a future to
the parser.

Parameters
    +-------+-------------------+
    | uri   | URI to download   |
    +-------+-------------------+

Returns
    Future of valid parser filled with the data downloaded

+--------------------+--------------------+--------------------+--------------------+
| QXmlStreamReaderFu | (                  | std::string const  | *host*,            |
| ture               |                    | &                  |                    |
| unity::scopes::qt: |                    |                    |                    |
| :XmlAsyncReader::a |                    |                    |                    |
| sync\_get\_parser  |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QXmlStreamReaderPa | *params*           |
|                    |                    | rams               |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a HTTP remote file asynchronously and returns a future to a
valid XML parser containing the data.

This method downloads a remote http document, fills a valid
QXmlStreamReader parser with the downloaded data and returns a future to
the parser.

Parameters
    +----------+-----------------------------------------------------------------------------------------------+
    | host     | host name                                                                                     |
    +----------+-----------------------------------------------------------------------------------------------+
    | params   | The parameters that will build the final query, defined by a list of pairs of key and value   |
    +----------+-----------------------------------------------------------------------------------------------+

Returns
    Future of valid parser filled with the data downloaded

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | staticprotected                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | static             | (             |                                      |
|       | std::string const  | *data*, |                                      |
|             |                        |                                      |
| | QXmlStreamReaderSp |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | tr                 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | :XmlAsyncReader::c |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | reate\_parser\_wit |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | h\_data            |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string &      | *error* |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Creates a QXmlStreamReader filled with the given data.

Parameters
    +---------+----------------------------------------------------------------------------------------------------------+
    | data    | The data that contains the XML document                                                                  |
    +---------+----------------------------------------------------------------------------------------------------------+
    | error   | Returned by the method, contains any possible error string obtained during the creation of the parser.   |
    +---------+----------------------------------------------------------------------------------------------------------+

Returns
    shared pointer to the QXmlStreamReader created

