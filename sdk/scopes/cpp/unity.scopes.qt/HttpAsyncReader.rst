Class that downloads http files asynchronously.
`More... </sdk/scopes/cpp/unity.scopes.qt/HttpAsyncReader#details>`__

``#include <unity/scopes/qt/HttpAsyncReader.h>``

        Public Member Functions
-------------------------------

template<typename BASE , typename TYPE , typename PARSER >

ResultsFuture< BASE > 

`async\_get </sdk/scopes/cpp/unity.scopes.qt/HttpAsyncReader#aaf1d8c3889f748e3ddd7d96c5f2350fd>`__
(std::string const &uri, std::string const &object\_name, FactoryFunc<
PARSER > const &create, ParseFunc< BASE, PARSER > const &parse) const

 

| Downloads a HTTP remote file asynchronously and returns a future to a
  list of results This method downloads in a separated thread a http
  document identified by the given URI. It returns a future of list of
  results based on a given object name. If, for example, the document
  contains a list of objects identified by the tag "ITEM" it parses the
  document and returns a list of those objects. The user must provide a
  function to create the parser for the downloaded data and a parse
  function that retrieves the data.

 

template<typename TYPE , typename PARSER >

ResultsFuture< TYPE > 

`async\_get </sdk/scopes/cpp/unity.scopes.qt/HttpAsyncReader#ae46599f9b8490c17d6ed5780111ffbcd>`__
(std::string const &uri, std::string const &object\_name, FactoryFunc<
PARSER > const &create, ParseFunc< TYPE, PARSER > const &parse) const

 

| Downloads a HTTP remote file asynchronously and returns a future to a
  list of results This method downloads in a separated thread a http
  document identified by the given URI. It returns a future of list of
  results based on a given object name. If, for example, the document
  contains a list of objects identified by the tag "ITEM" it parses the
  document and returns a list of those objects. The user must provide a
  function to create the parser for the downloaded data and a parse
  function that retrieves the data.

 

template<typename PARSER >

ParserFuture< PARSER > 

`async\_get\_parser </sdk/scopes/cpp/unity.scopes.qt/HttpAsyncReader#a9edea62503249b74b41689c2b524a740>`__
(std::string const &uri, FactoryFunc< PARSER > const &create) const

 

| Downloads a HTTP remote file asynchronously and returns a future to a
  valid parser containing the data.

 

        std::string 

`get\_uri </sdk/scopes/cpp/unity.scopes.qt/HttpAsyncReader#a47ca526cf459e30e0d5191f1b97c4491>`__
(std::string const &host, std::vector< std::pair< std::string,
std::string >> const &parameters) const

 

| Constructs a URI with the given host and parameters. This is a
  convenience method that constructs a uri with a given host and
  parameterss.

 

        Static Public Member Functions
--------------------------------------

template<typename T >

static T 

`get\_or\_throw </sdk/scopes/cpp/unity.scopes.qt/HttpAsyncReader#ae2ce7cab02f7dba9b5326246802a65f3>`__
(std::future< T > &f, int64\_t seconds=20)

 

| Gets the data of the given future in the gived timeout. If the time
  given expires and the data in the future is not ready throws a
  unity::scopes::TimeoutException exception.

 

Detailed Description
--------------------

Class that downloads http files asynchronously.

Executes a remote HTTP query asynchronously to return different futures
about results or a parser. The user should define which parser wants to
use, and offer a method that given a char\* containing the data
downloaded by this class contructs the parser.

Member Function Documentation
-----------------------------

template<typename BASE , typename TYPE , typename PARSER >

+--------------------+--------------------+--------------------+--------------------+
| HttpAsyncReader::R | (                  | std::string const  | *uri*,             |
| esultsFuture<      |                    | &                  |                    |
| BASE >             |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :HttpAsyncReader:: |                    |                    |                    |
| async\_get         |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *object\_name*,    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | FactoryFunc<       | *create*,          |
|                    |                    | PARSER > const &   |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | ParseFunc< BASE,   | *parse*            |
|                    |                    | PARSER > const &   |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a HTTP remote file asynchronously and returns a future to a
list of results This method downloads in a separated thread a http
document identified by the given URI. It returns a future of list of
results based on a given object name. If, for example, the document
contains a list of objects identified by the tag "ITEM" it parses the
document and returns a list of those objects. The user must provide a
function to create the parser for the downloaded data and a parse
function that retrieves the data.

The method has 3 template parameters: the type of results returned, the
type of objects when intantiating and the parser type. The type of
instantiation has to be a derived class of the return type. This is
offered for convenience to return more generic types and get advantage
of polymorphism.

The method checks at compile time that the instantiation type is
effectively a derived class of the type returned.

Parameters
    +----------------+--------------------------------------------------------------------------------------------+
    | uri            | URI to download                                                                            |
    +----------------+--------------------------------------------------------------------------------------------+
    | object\_name   | name of the kind of object we are looking for in the http document                         |
    +----------------+--------------------------------------------------------------------------------------------+
    | create         | Function that returns a valid parser filled with the data contained in the http document   |
    +----------------+--------------------------------------------------------------------------------------------+
    | parse          | Function that parses the data downloaded                                                   |
    +----------------+--------------------------------------------------------------------------------------------+

Returns
    Future of list of results

template<typename TYPE , typename PARSER >

+--------------------+--------------------+--------------------+--------------------+
| HttpAsyncReader::R | (                  | std::string const  | *uri*,             |
| esultsFuture<      |                    | &                  |                    |
| TYPE >             |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :HttpAsyncReader:: |                    |                    |                    |
| async\_get         |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *object\_name*,    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | FactoryFunc<       | *create*,          |
|                    |                    | PARSER > const &   |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | ParseFunc< TYPE,   | *parse*            |
|                    |                    | PARSER > const &   |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a HTTP remote file asynchronously and returns a future to a
list of results This method downloads in a separated thread a http
document identified by the given URI. It returns a future of list of
results based on a given object name. If, for example, the document
contains a list of objects identified by the tag "ITEM" it parses the
document and returns a list of those objects. The user must provide a
function to create the parser for the downloaded data and a parse
function that retrieves the data.

The method has 2 template parameters: the type of objects returned and
the parser type.

Parameters
    +----------------+--------------------------------------------------------------------------------------------+
    | uri            | URI to download                                                                            |
    +----------------+--------------------------------------------------------------------------------------------+
    | object\_name   | name of the kind of object we are looking for in the http document                         |
    +----------------+--------------------------------------------------------------------------------------------+
    | create         | Function that returns a valid parser filled with the data contained in the http document   |
    +----------------+--------------------------------------------------------------------------------------------+
    | parse          | Function that parses the data downloaded                                                   |
    +----------------+--------------------------------------------------------------------------------------------+

Returns
    Future of list of results

template<typename PARSER >

+--------------------+--------------------+--------------------+--------------------+
| HttpAsyncReader::P | (                  | std::string const  | *uri*,             |
| arserFuture<       |                    | &                  |                    |
| PARSER >           |                    |                    |                    |
| unity::scopes::qt: |                    |                    |                    |
| :HttpAsyncReader:: |                    |                    |                    |
| async\_get\_parser |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | FactoryFunc<       | *create*           |
|                    |                    | PARSER > const &   |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Downloads a HTTP remote file asynchronously and returns a future to a
valid parser containing the data.

This method downloads a remote http document, fills a valid parser with
the downloaded data and returns a future to the parser.

Parameters
    +----------+--------------------------------------------------------------------------------------------+
    | uri      | URI to download                                                                            |
    +----------+--------------------------------------------------------------------------------------------+
    | create   | Function that returns a valid parser filled with the data contained in the http document   |
    +----------+--------------------------------------------------------------------------------------------+

Returns
    Future of valid parser filled with the data downloaded

template<typename T >

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | T                  | (             |                                      |
|       | std::future< T >   | *f*,    |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | :HttpAsyncReader:: |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | get\_or\_throw     |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | int64\_t           | *second |                                      |
| s* =        |                        |                                      |
| |                    |               |                                      |
|       |                    | ``20``  |                                      |
|             |                        |                                      |
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

Gets the data of the given future in the gived timeout. If the time
given expires and the data in the future is not ready throws a
`unity::scopes::TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException/>`__
exception.

Parameters
    +-----------+---------------------------------------+
    | f         | Future                                |
    +-----------+---------------------------------------+
    | seconds   | Maximum time to wait for the result   |
    +-----------+---------------------------------------+

Returns
    `Result </sdk/scopes/cpp/unity.scopes.Result/>`__ of the given
    future.

