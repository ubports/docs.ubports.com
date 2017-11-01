The
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__
struct constains all options controlling the benchmark of scope query
operations.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#details>`__

``#include <unity/scopes/testing/Benchmark.h>``

        Public Types
--------------------

typedef std::function< std::pair<
`unity::scopes::CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__,
`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__
>) > 

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#a5989c5a913c2980e26b65d7e485f0fce>`__

 

        Public Attributes
-------------------------

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#a5989c5a913c2980e26b65d7e485f0fce>`__ 

`sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#a164536c278d29914d24fdbca3a3fa4a8>`__
{}

 

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ 

`trial\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#a33f804ce4983df9be79f2747d7672ff3>`__
{}

 

Detailed Description
--------------------

The
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__
struct constains all options controlling the benchmark of scope query
operations.

Member Typedef Documentation
----------------------------

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function< std::pair< `unity::scopes::CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__, `unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__>) > `unity::scopes::testing::Benchmark::QueryConfiguration::Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#a5989c5a913c2980e26b65d7e485f0fce>`__   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for choosing a query configuration.

Member Data Documentation
-------------------------

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#a5989c5a913c2980e26b65d7e485f0fce>`__ unity::scopes::testing::Benchmark::QueryConfiguration::sampler {}   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sampling function instance for choosing a query configuration. Has
to be set to an actual instance.

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ unity::scopes::testing::Benchmark::QueryConfiguration::trial\_configuration {}   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

fold in trial configuration options into the overall setup.

