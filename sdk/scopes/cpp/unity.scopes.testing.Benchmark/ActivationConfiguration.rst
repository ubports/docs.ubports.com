The
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`__
struct constains all options controlling the benchmark of scope
activation operations.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#details>`__

``#include <unity/scopes/testing/Benchmark.h>``

        Public Types
--------------------

typedef std::function< std::pair<
`unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`__,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__
>) > 

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#ad9b338829ebd254c9beccfb866e2a7e4>`__

 

        Public Attributes
-------------------------

`Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#ad9b338829ebd254c9beccfb866e2a7e4>`__ 

`sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#a364c411f10d9f217b01f55f7167e89cd>`__
{}

 

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ 

`trial\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#a1f65dd91e904c04041e47507389a44bb>`__
{}

 

Detailed Description
--------------------

The
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`__
struct constains all options controlling the benchmark of scope
activation operations.

Member Typedef Documentation
----------------------------

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function< std::pair< `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`__, `unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__>) > `unity::scopes::testing::Benchmark::ActivationConfiguration::Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#ad9b338829ebd254c9beccfb866e2a7e4>`__   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for choosing an activation configuration.

Member Data Documentation
-------------------------

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#ad9b338829ebd254c9beccfb866e2a7e4>`__ unity::scopes::testing::Benchmark::ActivationConfiguration::sampler {}   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sampling function instance for choosing a preview configuration. Has
to be set to an actual instance.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__ unity::scopes::testing::Benchmark::ActivationConfiguration::trial\_configuration {}   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

fold in trial configuration options into the overall setup.

