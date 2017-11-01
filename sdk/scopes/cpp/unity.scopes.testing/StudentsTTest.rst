Implements different variants of the Student's T-test (see
http://en.wikipedia.org/wiki/Student's_t-test)
`More... </sdk/scopes/cpp/unity.scopes.testing/StudentsTTest#details>`__

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

`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark/>`__
benchmark;

`unity::scopes::testing::Result </sdk/scopes/cpp/unity.scopes.testing/Result/>`__
search\_result;

`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__
meta\_data{default\_locale, default\_form\_factor};

static const std::size\_t sample\_size{10};

static const std::chrono::seconds per\_trial\_timeout{1};

`unity::scopes::testing::Benchmark::PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__
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
benchmark.\ `for\_preview </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`__\ (scope,
config);

auto test\_result =
`unity::scopes::testing::StudentsTTest </sdk/scopes/cpp/unity.scopes.testing/StudentsTTest/>`__\ ().`one\_sample </sdk/scopes/cpp/unity.scopes.testing/StudentsTTest#aaf584b159766a0a0e605e8365f87107f>`__\ (

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
| ting::StudentsTTes |                    | `Sample </sdk/scop |                    |
| t::Result          |                    | es/cpp/unity.scope |                    |
| unity::scopes::tes |                    | s.testing/Sample/> |                    |
| ting::StudentsTTes |                    | `__                |                    |
| t::one\_sample     |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Sample::ValueType | *mean*,            |
|                    |                    |  </sdk/scopes/cpp/ |                    |
|                    |                    | unity.scopes.testi |                    |
|                    |                    | ng/Sample#a9e02cfa |                    |
|                    |                    | 261b23b40c9da59cda |                    |
|                    |                    | 6ab0dc8>`__        |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Sample::ValueType | *std\_dev*         |
|                    |                    |  </sdk/scopes/cpp/ |                    |
|                    |                    | unity.scopes.testi |                    |
|                    |                    | ng/Sample#a9e02cfa |                    |
|                    |                    | 261b23b40c9da59cda |                    |
|                    |                    | 6ab0dc8>`__        |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

one\_sample calculates the Student's T test for one sample and a known
mean and std. dev..

Parameters
    +------------+------------------------------------------------------------------------+
    | sample     | `Sample </sdk/scopes/cpp/unity.scopes.testing/Sample/>`__ of values.   |
    +------------+------------------------------------------------------------------------+
    | mean       | The known mean of the underlying distribution                          |
    +------------+------------------------------------------------------------------------+
    | std\_dev   | The known std. dev. of the underlying distribution                     |
    +------------+------------------------------------------------------------------------+

Returns

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::tes | (                  | const              | *sample1*,         |
| ting::StudentsTTes |                    | `Sample </sdk/scop |                    |
| t::Result          |                    | es/cpp/unity.scope |                    |
| unity::scopes::tes |                    | s.testing/Sample/> |                    |
| ting::StudentsTTes |                    | `__                |                    |
| t::two\_independen |                    | &                  |                    |
| t\_samples         |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | const              | *sample2*          |
|                    |                    | `Sample </sdk/scop |                    |
|                    |                    | es/cpp/unity.scope |                    |
|                    |                    | s.testing/Sample/> |                    |
|                    |                    | `__                |                    |
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

