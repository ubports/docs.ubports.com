.. _sdk_unity_scopes_testing_benchmark_activationconfiguration:
unity.scopes.testing.Benchmark ActivationConfiguration
======================================================

The
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`_ 
struct constains all options controlling the benchmark of scope
activation operations.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#details>`_ 

``#include <unity/scopes/testing/Benchmark.h>``

        Public Types
--------------------

typedef std::function< std::pair<
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ ,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ 
>) > 

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#ad9b338829ebd254c9beccfb866e2a7e4>`_ 

 

        Public Attributes
-------------------------

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#ad9b338829ebd254c9beccfb866e2a7e4>`_  

`sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#a364c411f10d9f217b01f55f7167e89cd>`_ 
{}

 

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_  

`trial\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#a1f65dd91e904c04041e47507389a44bb>`_ 
{}

 

Detailed Description
--------------------

The
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`_ 
struct constains all options controlling the benchmark of scope
activation operations.

Member Typedef Documentation
----------------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function< std::pair< `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ , `unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ >) > `unity::scopes::testing::Benchmark::ActivationConfiguration::Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#ad9b338829ebd254c9beccfb866e2a7e4>`_    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for choosing an activation configuration.

Member Data Documentation
-------------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#ad9b338829ebd254c9beccfb866e2a7e4>`_  unity::scopes::testing::Benchmark::ActivationConfiguration::sampler {}   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sampling function instance for choosing a preview configuration. Has
to be set to an actual instance.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_  unity::scopes::testing::Benchmark::ActivationConfiguration::trial\_configuration {}   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

fold in trial configuration options into the overall setup.

