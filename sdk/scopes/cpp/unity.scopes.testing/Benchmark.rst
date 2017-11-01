The `Benchmark </sdk/scopes/cpp/unity.scopes.testing/Benchmark/>`__
class defines an interface to provide scope authors with runtime
benchmarking capabilities to be used in their own testing.
`More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark#details>`__

``#include <unity/scopes/testing/Benchmark.h>``

Inheritance diagram for unity::scopes::testing::Benchmark:

|Inheritance graph|

[legend]

        Classes
---------------

struct  

`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`__

 

| The
  `ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`__
  struct constains all options controlling the benchmark of scope action
  activation operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration#details>`__

 

struct  

`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`__

 

| The
  `ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`__
  struct constains all options controlling the benchmark of scope
  activation operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration#details>`__

 

struct  

`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__

 

| The
  `PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__
  struct constains all options controlling the benchmark of scope
  preview operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration#details>`__

 

struct  

`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__

 

| The
  `QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__
  struct constains all options controlling the benchmark of scope query
  operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration#details>`__

 

struct  

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__

 

| The
  `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__
  struct encapsulates all of the result gathered from one individual
  benchmark run consisting of multiple independent trials.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result#details>`__

 

struct  

`StatisticsConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration/>`__

 

| The
  `StatisticsConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration/>`__
  struct contains options controlling the calculation of benchmark
  result statistics.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration#details>`__

 

struct  

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__

 

| The
  `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`__
  struct contains options controlling the execution of individual
  trials.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration#details>`__

 

        Public Member Functions
-------------------------------

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_query </sdk/scopes/cpp/unity.scopes.testing/Benchmark#ad815c88ce0d76e4a6abc82438237e987>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`__
configuration)=0

 

| for\_query executes a benchmark to measure the scope's query
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_preview </sdk/scopes/cpp/unity.scopes.testing/Benchmark#a37da073840cfbeb22ed20c2d4631b7ff>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`__
configuration)=0

 

| for\_preview executes a benchmark to measure the scope's preview
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_activation </sdk/scopes/cpp/unity.scopes.testing/Benchmark#a531fbb8fd2259337123495bf7de0bd4a>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`__
configuration)=0

 

| for\_preview executes a benchmark to measure the scope's activation
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__ 

`for\_action </sdk/scopes/cpp/unity.scopes.testing/Benchmark#ad31b1781960e3edd0018a9cf8df4a506>`__
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ >
&scope,
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`__
configuration)=0

 

| for\_preview executes a benchmark to measure the scope's action
  activation performance.

 

Detailed Description
--------------------

The `Benchmark </sdk/scopes/cpp/unity.scopes.testing/Benchmark/>`__
class defines an interface to provide scope authors with runtime
benchmarking capabilities to be used in their own testing.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
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
| | ting::Benchmark::f |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | or\_action         |               |                                      |
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
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__.

Implemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a47874911c026c201699d8fce0443e4bb>`__,
and
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a570e17bc7fbb0c7aafb3ed720a5fc35c>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
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
| | ting::Benchmark::f |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | or\_activation     |               |                                      |
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
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__.

Implemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#ad918f6c89543eabb3492eb834712e38f>`__,
and
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#adc815bde331263487183e38836811610>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
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
| | ting::Benchmark::f |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | or\_preview        |               |                                      |
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
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__.

Implemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`__,
and
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a8823d30698cba5f6a03c4989e7356195>`__.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
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
| | ting::Benchmark::f |               |                                      |
|       | > &                |         |                                      |
|             |                        |                                      |
| | or\_query          |               |                                      |
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
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`__.

Implemented in
`unity::scopes::testing::OutOfProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/OutOfProcessBenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`__,
and
`unity::scopes::testing::InProcessBenchmark </sdk/scopes/cpp/unity.scopes.testing/InProcessBenchmark#a72460e26d0aa98ae7091f634d0089aa9>`__.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.testing/Benchmark/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png

