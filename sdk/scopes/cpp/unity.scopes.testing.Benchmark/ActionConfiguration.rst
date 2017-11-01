The
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`__
struct constains all options controlling the benchmark of scope action
activation operations.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#details>`__

``#include <unity/scopes/testing/Benchmark.h>``

        Public Types
--------------------

typedef std::function< std::tuple<
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`__,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__,
std::string, std::string >) > 

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#ae19d4beb525c9a294a62e57cac271b78>`__

 

        Public Attributes
-------------------------

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#ae19d4beb525c9a294a62e57cac271b78>`__ 

`sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#acd2351295122c55b350631d2b4619f18>`__
{}

 

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ 

`trial\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#afe76469ab9fadfe40a6de86188060fd5>`__

 

Detailed Description
--------------------

The
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`__
struct constains all options controlling the benchmark of scope action
activation operations.

Member Typedef Documentation
----------------------------

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function< std::tuple< `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`__, `unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__, std::string, std::string >) > `unity::scopes::testing::Benchmark::ActionConfiguration::Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#ae19d4beb525c9a294a62e57cac271b78>`__   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for choosing an action invocation configuration.

Member Data Documentation
-------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#ae19d4beb525c9a294a62e57cac271b78>`__ unity::scopes::testing::Benchmark::ActionConfiguration::sampler {}   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sampling function instance for choosing an action activation
configuration. Has to be set to an actual instance.

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ unity::scopes::testing::Benchmark::ActionConfiguration::trial\_configuration   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

fold in trial configuration options into the overall setup.

