.. _sdk_unity_scopes_testing_studentsttest:
unity.scopes.testing StudentsTTest
==================================

Implements different variants of the Student's T-test (see
http://en.wikipedia.org/wiki/Student's_t-test)
:ref:`More... <sdk_unity_scopes_testing_studentsttest#details>`

``#include <unity/scopes/testing/Statistics.h>``

        Classes
---------------

struct  

Result

 

| Executing the test returns a set of hypothesis that have to be
  evaluated at the desired confidence level.

 

        Public Member Functions
-------------------------------

Result 

one\_sample (const Sample &sample, Sample::ValueType mean,
Sample::ValueType std\_dev)

 

| one\_sample calculates the Student's T test for one sample and a known
  mean and std. dev..

 

Result 

two\_independent\_samples (const Sample &sample1, const Sample &sample2)

 

| two\_independent\_samples calculates the Student's T test for two
  samples

 

Detailed Description
--------------------

Implements different variants of the Student's T-test (see
http://en.wikipedia.org/wiki/Student's_t-test)

:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark>`
benchmark;

:ref:`unity::scopes::testing::Result <sdk_unity_scopes_testing_result>`
search\_result;

`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ 
meta\_data{default\_locale, default\_form\_factor};

static const std::size\_t sample\_size{10};

static const std::chrono::seconds per\_trial\_timeout{1};

`unity::scopes::testing::Benchmark::PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 
config

{

[search\_result, meta\_data]() { return std::make\_pair(search\_result,
meta\_data); },

{

sample\_size,

per\_trial\_timeout

}

};

auto result =
benchmark.\ :ref:`for\_preview <sdk_unity_scopes_testing_outofprocessbenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`\ (scope,
config);

auto test\_result =
:ref:`unity::scopes::testing::StudentsTTest <sdk_unity_scopes_testing_studentsttest>`\ ().`one\_sample <sdk_unity_scopes_testing_studentsttest#aaf584b159766a0a0e605e8365f87107f>`\ (

reference\_preview\_performance,

result);

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::not\_rejected,

test\_result.sample\_mean\_is\_eq\_to\_reference(0.05));

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::not\_rejected,

test\_result.sample\_mean\_is\_ge\_than\_reference(0.05));

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::rejected,

test\_result.sample\_mean\_is\_le\_than\_reference(0.05));

Member Function Documentation
-----------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::tes | (                  | const              | *sample*,          |
| ting::StudentsTTes |                    | :ref:`Sample <sdk_unity |                    |
| t::Result          |                    | _scopes_testing_sa |                    |
| unity::scopes::tes |                    | mple>`_            |                    |
| ting::StudentsTTes |                    | &                  |                    |
| t::one\_sample     |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Sample::ValueType | *mean*,            |
|                    |                    |  <sdk_unity_scopes |                    |
|                    |                    | _testing_sample#a9 |                    |
|                    |                    | e02cfa261b23b40c9d |                    |
|                    |                    | a59cda6ab0dc8>`_   |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Sample::ValueType | *std\_dev*         |
|                    |                    |  <sdk_unity_scopes |                    |
|                    |                    | _testing_sample#a9 |                    |
|                    |                    | e02cfa261b23b40c9d |                    |
|                    |                    | a59cda6ab0dc8>`_   |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

one\_sample calculates the Student's T test for one sample and a known
mean and std. dev..

Parameters
    +------------+-----------------------------------------------------------+
    | sample     | :ref:`Sample <sdk_unity_scopes_testing_sample>` of values.   |
    +------------+-----------------------------------------------------------+
    | mean       | The known mean of the underlying distribution             |
    +------------+-----------------------------------------------------------+
    | std\_dev   | The known std. dev. of the underlying distribution        |
    +------------+-----------------------------------------------------------+

Returns

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::tes | (                  | const              | *sample1*,         |
| ting::StudentsTTes |                    | :ref:`Sample <sdk_unity |                    |
| t::Result          |                    | _scopes_testing_sa |                    |
| unity::scopes::tes |                    | mple>`_            |                    |
| ting::StudentsTTes |                    | &                  |                    |
| t::two\_independen |                    |                    |                    |
| t\_samples         |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | const              | *sample2*          |
|                    |                    | :ref:`Sample <sdk_unity |                    |
|                    |                    | _scopes_testing_sa |                    |
|                    |                    | mple>`_            |                    |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

two\_independent\_samples calculates the Student's T test for two
samples

Parameters
    +-----------+---------------------+
    | sample1   | The first sample    |
    +-----------+---------------------+
    | sample2   | The second sample   |
    +-----------+---------------------+

Returns
    An instance of Result.

