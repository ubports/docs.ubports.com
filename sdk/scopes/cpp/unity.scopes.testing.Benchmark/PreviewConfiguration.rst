The
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__
struct constains all options controlling the benchmark of scope preview
operations.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#details>`__

``#include <unity/scopes/testing/Benchmark.h>``

        Public Types
--------------------

typedef std::function< std::pair<
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`__,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__
>) > 

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#a7c4c1946344d6042b189eef172401ee9>`__

 

        Public Attributes
-------------------------

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#a7c4c1946344d6042b189eef172401ee9>`__ 

`sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#a13297c92c2e62b7c418afaddc01dee91>`__
{}

 

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ 

`trial\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#ac447b62ad5c1b1c8e8241deec7bc4349>`__
{}

 

Detailed Description
--------------------

The
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__
struct constains all options controlling the benchmark of scope preview
operations.

Member Typedef Documentation
----------------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function< std::pair< `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`__, `unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ >) > `unity::scopes::testing::Benchmark::PreviewConfiguration::Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#a7c4c1946344d6042b189eef172401ee9>`__   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for choosing a preview configuration.

Member Data Documentation
-------------------------

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#a7c4c1946344d6042b189eef172401ee9>`__ unity::scopes::testing::Benchmark::PreviewConfiguration::sampler {}   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sampling function instance for choosing a preview configuration. Has
to be set to an actual instance.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ unity::scopes::testing::Benchmark::PreviewConfiguration::trial\_configuration {}   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

fold in trial configuration options into the overall setup.

