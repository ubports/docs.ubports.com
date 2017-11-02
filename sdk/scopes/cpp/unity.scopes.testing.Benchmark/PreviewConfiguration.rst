.. _sdk_unity_scopes_testing_benchmark_previewconfiguration:
unity.scopes.testing.Benchmark PreviewConfiguration
===================================================

The
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 
struct constains all options controlling the benchmark of scope preview
operations.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#details>`_ 

``#include <unity/scopes/testing/Benchmark.h>``

        Public Types
--------------------

typedef std::function< std::pair<
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ ,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ 
>) > 

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#a7c4c1946344d6042b189eef172401ee9>`_ 

 

        Public Attributes
-------------------------

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#a7c4c1946344d6042b189eef172401ee9>`_  

`sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#a13297c92c2e62b7c418afaddc01dee91>`_ 
{}

 

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_  

`trial\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#ac447b62ad5c1b1c8e8241deec7bc4349>`_ 
{}

 

Detailed Description
--------------------

The
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 
struct constains all options controlling the benchmark of scope preview
operations.

Member Typedef Documentation
----------------------------

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function< std::pair< `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_ , `unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  >) > `unity::scopes::testing::Benchmark::PreviewConfiguration::Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#a7c4c1946344d6042b189eef172401ee9>`_    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for choosing a preview configuration.

Member Data Documentation
-------------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#a7c4c1946344d6042b189eef172401ee9>`_  unity::scopes::testing::Benchmark::PreviewConfiguration::sampler {}   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sampling function instance for choosing a preview configuration. Has
to be set to an actual instance.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_  unity::scopes::testing::Benchmark::PreviewConfiguration::trial\_configuration {}   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

fold in trial configuration options into the overall setup.

