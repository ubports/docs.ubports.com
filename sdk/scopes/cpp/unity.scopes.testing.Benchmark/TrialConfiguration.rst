.. _sdk_unity_scopes_testing_benchmark_trialconfiguration:
unity.scopes.testing.Benchmark TrialConfiguration
=================================================

The
`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_ 
struct contains options controlling the execution of individual trials.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/#details>`_ 

``#include <unity/scopes/testing/Benchmark.h>``

        Public Attributes
-------------------------

std::size\_t 

`trial\_count </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/#ae3113a9aff03633e590788fec58afedf>`_ 
{25}

 

std::chrono::microseconds 

`per\_trial\_timeout </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/#a41de1d88174a2de335649461af175c80>`_ 
{std::chrono::seconds{10}}

 

`StatisticsConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration/>`_  

`statistics\_configuration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/#acea63d9b0755526494257de988ae4222>`_ 
{}

 

Detailed Description
--------------------

The
`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_ 
struct contains options controlling the execution of individual trials.

Member Data Documentation
-------------------------

+-----------------------------------------------------------------------------------------------------------------------------------+
| std::chrono::microseconds unity::scopes::testing::Benchmark::TrialConfiguration::per\_trial\_timeout {std::chrono::seconds{10}}   |
+-----------------------------------------------------------------------------------------------------------------------------------+

Wait at most this time for one trial to finish or throw if a timeout is
encountered.

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `StatisticsConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration/>`_  unity::scopes::testing::Benchmark::TrialConfiguration::statistics\_configuration {}   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fold in statistics configuration into the overall trial setup.

+-----------------------------------------------------------------------------------------+
| std::size\_t unity::scopes::testing::Benchmark::TrialConfiguration::trial\_count {25}   |
+-----------------------------------------------------------------------------------------+

The number of independent trials. Please note that the number should not
be << 10

