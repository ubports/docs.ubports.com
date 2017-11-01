The
`InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark/>`__
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in the same process.
`More... </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#details>`__

``#include <unity/scopes/testing/InProcessBenchmark.h>``

Inheritance diagram for unity::scopes::testing::InProcessBenchmark:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_query </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a72460e26d0aa98ae7091f634d0089aa9>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__
configuration) override

 

| for\_query executes a benchmark to measure the scope's query
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_preview </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a8823d30698cba5f6a03c4989e7356195>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__
preview\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's preview
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_activation </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#adc815bde331263487183e38836811610>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`__
activation\_configuration) override

 

| for\_preview executes a benchmark to measure the scope's activation
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_action </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a570e17bc7fbb0c7aafb3ed720a5fc35c>`__
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
`InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark/>`__
class provides scope authors with runtime benchmarking capabilities. The
actual runs are executed in the same process.

`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark/>`__
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
benchmark.\ `for\_query </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a72460e26d0aa98ae7091f634d0089aa9>`__\ (scope,
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
| | k.Result/>`__      |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
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

Implements
`unity::scopes::testing::Benchmark </sdk/scopes/cpp/unity.scopes.testing/Benchmark#ad31b1781960e3edd0018a9cf8df4a506>`__.

Reimplemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a47874911c026c201699d8fce0443e4bb>`__.

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
| | k.Result/>`__      |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
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

Implements
`unity::scopes::testing::Benchmark </sdk/scopes/cpp/unity.scopes.testing/Benchmark#a531fbb8fd2259337123495bf7de0bd4a>`__.

Reimplemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#ad918f6c89543eabb3492eb834712e38f>`__.

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
| | k.Result/>`__      |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
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

Implements
`unity::scopes::testing::Benchmark </sdk/scopes/cpp/unity.scopes.testing/Benchmark#a37da073840cfbeb22ed20c2d4631b7ff>`__.

Reimplemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`__.

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
| | k.Result/>`__      |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`__   |         |                                      |
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
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Result/>`__.

Implements
`unity::scopes::testing::Benchmark </sdk/scopes/cpp/unity.scopes.testing/Benchmark#ad815c88ce0d76e4a6abc82438237e987>`__.

Reimplemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`__.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png

