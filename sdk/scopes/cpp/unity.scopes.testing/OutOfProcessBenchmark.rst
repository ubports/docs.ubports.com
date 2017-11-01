The
`OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark/>`__
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in another process.
`More... </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#details>`__

``#include <unity/scopes/testing/OutOfProcessBenchmark.h>``

Inheritance diagram for unity::scopes::testing::OutOfProcessBenchmark:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_query </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__
configuration) override

 

| for\_query executes a benchmark to measure the scope's query
  performance.

 

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_preview </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__
preview\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's preview
  performance.

 

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_activation </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#ad918f6c89543eabb3492eb834712e38f>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`__
activation\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's activation
  performance.

 

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_action </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a47874911c026c201699d8fce0443e4bb>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`__
activation\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's action
  activation performance.

 

Detailed Description
--------------------

The
`OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark/>`__
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in another process.

Please note that this class provides better test isolation than the
class
`InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark/>`__
and we promote use of this implementation due to this feature. However,
as the internal implementation relies on fork(), the results in case of
multi-threaded environments that exist before the execution of the
benchmark are undefined.

`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark/>`__
benchmark;

unity::scopes::Query query{scope\_id};

query.set\_query\_string(scope\_query\_string);

`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__
meta\_data{default\_locale, default\_form\_factor};

`unity::scopes::testing::Benchmark::QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__
config;

config.\ `sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#a164536c278d29914d24fdbca3a3fa4a8>`__
= [query, meta\_data]()

{

return std::make\_pair(query, meta\_data);

};

auto result =
benchmark.\ `for\_query </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`__\ (scope,
config);

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `Result </sdk/scop | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | k.Result/>`__      |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
|             |                        |                                      |
| | Benchmark::for\_ac |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | tion               |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionConfigurati | *config |                                      |
| uration*    |                        |                                      |
| |                    |               |                                      |
|       | on </sdk/scopes/cp |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | p/unity.scopes.tes |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ting/Benchmark.Act |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ionConfiguration/> |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | `__                |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

for\_preview executes a benchmark to measure the scope's action
activation performance.

Exceptions
    +-----------------------+--------------------------------+
    | std::runtime\_error   | in case of timeouts.           |
    +-----------------------+--------------------------------+
    | std::logic\_error     | in case of misconfiguration.   |
    +-----------------------+--------------------------------+

Parameters
    +-----------------+---------------------------------------+
    | scope           | The scope instance to benchmark.      |
    +-----------------+---------------------------------------+
    | configuration   | Options controlling the experiment.   |
    +-----------------+---------------------------------------+

Returns
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Result/>`__.

Reimplemented from
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a570e17bc7fbb0c7aafb3ed720a5fc35c>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `Result </sdk/scop | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | k.Result/>`__      |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
|             |                        |                                      |
| | Benchmark::for\_ac |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | tivation           |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActivationConfigu | *config |                                      |
| uration*    |                        |                                      |
| |                    |               |                                      |
|       | ration </sdk/scope |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | s/cpp/unity.scopes |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | .testing/Benchmark |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | .ActivationConfigu |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ration/>`__        |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

for\_preview executes a benchmark to measure the scope's activation
performance.

Exceptions
    +-----------------------+--------------------------------+
    | std::runtime\_error   | in case of timeouts.           |
    +-----------------------+--------------------------------+
    | std::logic\_error     | in case of misconfiguration.   |
    +-----------------------+--------------------------------+

Parameters
    +-----------------+---------------------------------------+
    | scope           | The scope instance to benchmark.      |
    +-----------------+---------------------------------------+
    | configuration   | Options controlling the experiment.   |
    +-----------------+---------------------------------------+

Returns
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Result/>`__.

Reimplemented from
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#adc815bde331263487183e38836811610>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `Result </sdk/scop | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | k.Result/>`__      |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
|             |                        |                                      |
| | Benchmark::for\_pr |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | eview              |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `PreviewConfigurat | *config |                                      |
| uration*    |                        |                                      |
| |                    |               |                                      |
|       | ion </sdk/scopes/c |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | pp/unity.scopes.te |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | sting/Benchmark.Pr |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | eviewConfiguration |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | />`__              |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

for\_preview executes a benchmark to measure the scope's preview
performance.

Exceptions
    +-----------------------+--------------------------------+
    | std::runtime\_error   | in case of timeouts.           |
    +-----------------------+--------------------------------+
    | std::logic\_error     | in case of misconfiguration.   |
    +-----------------------+--------------------------------+

Parameters
    +-----------------+---------------------------------------+
    | scope           | The scope instance to benchmark.      |
    +-----------------+---------------------------------------+
    | configuration   | Options controlling the experiment.   |
    +-----------------+---------------------------------------+

Returns
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Result/>`__.

Reimplemented from
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a8823d30698cba5f6a03c4989e7356195>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `Result </sdk/scop | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | k.Result/>`__      |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
|             |                        |                                      |
| | Benchmark::for\_qu |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | ery                |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `QueryConfiguratio | *config |                                      |
| uration*    |                        |                                      |
| |                    |               |                                      |
|       | n </sdk/scopes/cpp |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | /unity.scopes.test |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ing/Benchmark.Quer |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | yConfiguration/>`_ |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | _                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

for\_query executes a benchmark to measure the scope's query
performance.

Exceptions
    +-----------------------+--------------------------------+
    | std::runtime\_error   | in case of timeouts.           |
    +-----------------------+--------------------------------+
    | std::logic\_error     | in case of misconfiguration.   |
    +-----------------------+--------------------------------+

Parameters
    +-----------------+---------------------------------------+
    | scope           | The scope instance to benchmark.      |
    +-----------------+---------------------------------------+
    | configuration   | Options controlling the experiment.   |
    +-----------------+---------------------------------------+

Returns
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Result/>`__.

Reimplemented from
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a72460e26d0aa98ae7091f634d0089aa9>`__.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png

