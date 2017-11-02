.. _sdk_unity_scopes_testing_benchmark_actionconfiguration:
unity.scopes.testing.Benchmark ActionConfiguration
==================================================

The
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`_ 
struct constains all options controlling the benchmark of scope action
activation operations.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#details>`_ 

``#include <unity/scopes/testing/Benchmark.h>``

        Public Types
--------------------

typedef std::function< std::tuple<
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ ,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ ,
std::string, std::string >) > 

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#ae19d4beb525c9a294a62e57cac271b78>`_ 

 

        Public Attributes
-------------------------

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#ae19d4beb525c9a294a62e57cac271b78>`_  

`sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#acd2351295122c55b350631d2b4619f18>`_ 
{}

 

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_  

`trial\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#afe76469ab9fadfe40a6de86188060fd5>`_ 

 

Detailed Description
--------------------

The
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`_ 
struct constains all options controlling the benchmark of scope action
activation operations.

Member Typedef Documentation
----------------------------

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function< std::tuple< `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ , `unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ , std::string, std::string >) > `unity::scopes::testing::Benchmark::ActionConfiguration::Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#ae19d4beb525c9a294a62e57cac271b78>`_    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for choosing an action invocation configuration.

Member Data Documentation
-------------------------

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#ae19d4beb525c9a294a62e57cac271b78>`_  unity::scopes::testing::Benchmark::ActionConfiguration::sampler {}   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sampling function instance for choosing an action activation
configuration. Has to be set to an actual instance.

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_  unity::scopes::testing::Benchmark::ActionConfiguration::trial\_configuration   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

fold in trial configuration options into the overall setup.

