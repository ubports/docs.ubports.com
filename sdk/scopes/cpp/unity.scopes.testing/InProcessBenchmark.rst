.. _sdk_unity_scopes_testing_inprocessbenchmark:
unity.scopes.testing InProcessBenchmark
=======================================

The :ref:`InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark>`
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in the same process.
:ref:`More... <sdk_unity_scopes_testing_inprocessbenchmark#details>`

``#include <unity/scopes/testing/InProcessBenchmark.h>``

Inheritance diagram for unity::scopes::testing::InProcessBenchmark:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_query <sdk_unity_scopes_testing_inprocessbenchmark#a72460e26d0aa98ae7091f634d0089aa9>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`_ 
configuration) override

 

| for\_query executes a benchmark to measure the scope's query
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_preview <sdk_unity_scopes_testing_inprocessbenchmark#a8823d30698cba5f6a03c4989e7356195>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 
preview\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's preview
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_activation <sdk_unity_scopes_testing_inprocessbenchmark#adc815bde331263487183e38836811610>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`_ 
activation\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's activation
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_action <sdk_unity_scopes_testing_inprocessbenchmark#a570e17bc7fbb0c7aafb3ed720a5fc35c>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`_ 
activation\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's action
  activation performance.

 

Detailed Description
--------------------

The :ref:`InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark>`
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in the same process.

:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark>`
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
benchmark.\ :ref:`for\_query <sdk_unity_scopes_testing_inprocessbenchmark#a72460e26d0aa98ae7091f634d0089aa9>`\ (scope,
config);

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | `Result </sdk/scop |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
|             |                        |                                      |
| | ting::InProcessBen |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | chmark::for\_actio |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | n                  |               |                                      |
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

Implements
:ref:`unity::scopes::testing::Benchmark <sdk_unity_scopes_testing_benchmark#ad31b1781960e3edd0018a9cf8df4a506>`.

Reimplemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#a47874911c026c201699d8fce0443e4bb>`.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | `Result </sdk/scop |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
|             |                        |                                      |
| | ting::InProcessBen |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | chmark::for\_activ |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ation              |               |                                      |
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

Implements
:ref:`unity::scopes::testing::Benchmark <sdk_unity_scopes_testing_benchmark#a531fbb8fd2259337123495bf7de0bd4a>`.

Reimplemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#ad918f6c89543eabb3492eb834712e38f>`.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | `Result </sdk/scop |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
|             |                        |                                      |
| | ting::InProcessBen |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | chmark::for\_previ |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ew                 |               |                                      |
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

Implements
:ref:`unity::scopes::testing::Benchmark <sdk_unity_scopes_testing_benchmark#a37da073840cfbeb22ed20c2d4631b7ff>`.

Reimplemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | overridevirtual                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | const              | *scope* |                                      |
| ,           |                        |                                      |
| | `Result </sdk/scop |               |                                      |
|       | std::shared\_ptr<  |         |                                      |
|             |                        |                                      |
| | es/cpp/unity.scope |               |                                      |
|       | `unity::scopes::Sc |         |                                      |
|             |                        |                                      |
| | s.testing/Benchmar |               |                                      |
|       | opeBase </sdk/scop |         |                                      |
|             |                        |                                      |
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
|             |                        |                                      |
| | ting::InProcessBen |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | chmark::for\_query |               |                                      |
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

Implements
:ref:`unity::scopes::testing::Benchmark <sdk_unity_scopes_testing_benchmark#ad815c88ce0d76e4a6abc82438237e987>`.

Reimplemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`.

.. |Inheritance graph| image:: /mediasdk_unity_scopes_testing_inprocessbenchmarkclassunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png

