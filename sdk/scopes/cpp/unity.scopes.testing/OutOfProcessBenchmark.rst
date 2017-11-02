.. _sdk_unity_scopes_testing_outofprocessbenchmark:
unity.scopes.testing OutOfProcessBenchmark
==========================================

The
:ref:`OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark>`
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in another process.
:ref:`More... <sdk_unity_scopes_testing_outofprocessbenchmark#details>`

``#include <unity/scopes/testing/OutOfProcessBenchmark.h>``

Inheritance diagram for unity::scopes::testing::OutOfProcessBenchmark:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_query <sdk_unity_scopes_testing_outofprocessbenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`_ 
configuration) override

 

| for\_query executes a benchmark to measure the scope's query
  performance.

 

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_preview <sdk_unity_scopes_testing_outofprocessbenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 
preview\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's preview
  performance.

 

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_activation <sdk_unity_scopes_testing_outofprocessbenchmark#ad918f6c89543eabb3492eb834712e38f>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`_ 
activation\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's activation
  performance.

 

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_action <sdk_unity_scopes_testing_outofprocessbenchmark#a47874911c026c201699d8fce0443e4bb>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`_ 
activation\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's action
  activation performance.

 

Detailed Description
--------------------

The
:ref:`OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark>`
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in another process.

Please note that this class provides better test isolation than the
class
:ref:`InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark>` and
we promote use of this implementation due to this feature. However, as
the internal implementation relies on fork(), the results in case of
multi-threaded environments that exist before the execution of the
benchmark are undefined.

:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark>`
benchmark;

unity::scopes::Query query{scope\_id};

query.set\_query\_string(scope\_query\_string);

`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
meta\_data{default\_locale, default\_form\_factor};

`unity::scopes::testing::Benchmark::QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`_ 
config;

config.\ `sampler </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/#a164536c278d29914d24fdbca3a3fa4a8>`_ 
= [query, meta\_data]()

{

return std::make\_pair(query, meta\_data);

};

auto result =
benchmark.\ :ref:`for\_query <sdk_unity_scopes_testing_outofprocessbenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`\ (scope,
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
| | k.Result/>`_       |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
|       | `_                 |         |                                      |
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
    An instance of :ref:`Result <sdk_unity_scopes_testing_result>`.

Reimplemented from
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#a570e17bc7fbb0c7aafb3ed720a5fc35c>`.

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
| | k.Result/>`_       |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
|       | ration/>`_         |         |                                      |
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
    An instance of :ref:`Result <sdk_unity_scopes_testing_result>`.

Reimplemented from
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#adc815bde331263487183e38836811610>`.

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
| | k.Result/>`_       |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
|       | />`_               |         |                                      |
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
    An instance of :ref:`Result <sdk_unity_scopes_testing_result>`.

Reimplemented from
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#a8823d30698cba5f6a03c4989e7356195>`.

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
| | k.Result/>`_       |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | ting::OutOfProcess |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
    An instance of :ref:`Result <sdk_unity_scopes_testing_result>`.

Reimplemented from
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#a72460e26d0aa98ae7091f634d0089aa9>`.

.. |Inheritance graph| image:: /mediasdk_unity_scopes_testing_outofprocessbenchmarkclassunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png

