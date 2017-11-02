.. _sdk_unity_scopes_testing_benchmark_result:
unity.scopes.testing.Benchmark Result
=====================================

The `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ 
struct encapsulates all of the result gathered from one individual
benchmark run consisting of multiple independent trials.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/#details>`_ 

``#include <unity/scopes/testing/Benchmark.h>``

        Classes
---------------

struct  

Timing

 

        Public Member Functions
-------------------------------

void 

`load\_from </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/#a6a5b4c13c5577319208b16f2fc6f376b>`_ 
(std::istream &in)

 

| load\_from restores a result from the given input stream.

 

void 

`save\_to </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/#affa8a2fa514327d6c776bb2524564683>`_ 
(std::ostream &out)

 

| save\_to stores a result to the given output stream.

 

void 

`load\_from\_xml </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/#a7e39e38d5459491afcad135dfc085f20>`_ 
(std::istream &in)

 

| load\_from\_xml restores a result stored as xml from the given input
  stream.

 

void 

`save\_to\_xml </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/#a287d480be8dd59a705ad6d6608cb3abd>`_ 
(std::ostream &out)

 

| save\_to\_xml stores a result as xml to the given output stream.

 

        Public Attributes
-------------------------

std::size\_t 

`sample\_size </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/#af4afaf13e8274b469e238169e03f6709>`_ 

 

        unity::scopes::testing::Benchmark::Result::Timing 

timing

 

| Runtime-specific sample data.

 

Detailed Description
--------------------

The `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ 
struct encapsulates all of the result gathered from one individual
benchmark run consisting of multiple independent trials.

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::istream | *in*         | )            |              |
| unity::scope |              | &            |              |              |              |
| s::testing:: |              |              |              |              |              |
| Benchmark::R |              |              |              |              |              |
| esult::load\ |              |              |              |              |              |
| _from        |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

load\_from restores a result from the given input stream.

Exceptions
    +-----------------------+----------------------+
    | std::runtime\_error   | in case of issues.   |
    +-----------------------+----------------------+

Parameters
    +------+----------------------------+
    | in   | The stream to read from.   |
    +------+----------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::istream | *in*         | )            |              |
| unity::scope |              | &            |              |              |              |
| s::testing:: |              |              |              |              |              |
| Benchmark::R |              |              |              |              |              |
| esult::load\ |              |              |              |              |              |
| _from\_xml   |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

load\_from\_xml restores a result stored as xml from the given input
stream.

Exceptions
    +-----------------------+----------------------+
    | std::runtime\_error   | in case of issues.   |
    +-----------------------+----------------------+

Parameters
    +------+----------------------------+
    | in   | The stream to read from.   |
    +------+----------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::ostream | *out*        | )            |              |
| unity::scope |              | &            |              |              |              |
| s::testing:: |              |              |              |              |              |
| Benchmark::R |              |              |              |              |              |
| esult::save\ |              |              |              |              |              |
| _to          |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

save\_to stores a result to the given output stream.

Exceptions
    +-----------------------+----------------------+
    | std::runtime\_error   | in case of issues.   |
    +-----------------------+----------------------+

Parameters
    +-------+---------------------------+
    | out   | The stream to write to.   |
    +-------+---------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::ostream | *out*        | )            |              |
| unity::scope |              | &            |              |              |              |
| s::testing:: |              |              |              |              |              |
| Benchmark::R |              |              |              |              |              |
| esult::save\ |              |              |              |              |              |
| _to\_xml     |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

save\_to\_xml stores a result as xml to the given output stream.

Exceptions
    +-----------------------+----------------------+
    | std::runtime\_error   | in case of issues.   |
    +-----------------------+----------------------+

Parameters
    +-------+---------------------------+
    | out   | The stream to write to.   |
    +-------+---------------------------+

Member Data Documentation
-------------------------

+------------------------------------------------------------------------+
| std::size\_t unity::scopes::testing::Benchmark::Result::sample\_size   |
+------------------------------------------------------------------------+

Size of the sample, corresponds to number of trials.

