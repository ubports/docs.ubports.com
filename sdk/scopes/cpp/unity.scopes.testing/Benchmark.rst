.. _sdk_unity_scopes_testing_benchmark:
unity.scopes.testing Benchmark
==============================

The :ref:`Benchmark <sdk_unity_scopes_testing_benchmark>` class defines an
interface to provide scope authors with runtime benchmarking
capabilities to be used in their own testing.
:ref:`More... <sdk_unity_scopes_testing_benchmark#details>`

``#include <unity/scopes/testing/Benchmark.h>``

Inheritance diagram for unity::scopes::testing::Benchmark:

|Inheritance graph|

[legend]

        Classes
---------------

struct  

`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`_ 

 

| The
  `ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`_ 
  struct constains all options controlling the benchmark of scope action
  activation operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/#details>`_ 

 

struct  

`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`_ 

 

| The
  `ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`_ 
  struct constains all options controlling the benchmark of scope
  activation operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/#details>`_ 

 

struct  

`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 

 

| The
  `PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 
  struct constains all options controlling the benchmark of scope
  preview operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/#details>`_ 

 

struct  

`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`_ 

 

| The
  `QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`_ 
  struct constains all options controlling the benchmark of scope query
  operations.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/#details>`_ 

 

struct  

`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ 

 

| The
  `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ 
  struct encapsulates all of the result gathered from one individual
  benchmark run consisting of multiple independent trials.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/#details>`_ 

 

struct  

`StatisticsConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration/>`_ 

 

| The
  `StatisticsConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration/>`_ 
  struct contains options controlling the calculation of benchmark
  result statistics.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.StatisticsConfiguration/#details>`_ 

 

struct  

`TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_ 

 

| The
  `TrialConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/>`_ 
  struct contains options controlling the execution of individual
  trials.
  `More... </sdk/scopes/cpp/unity.scopes.testing/Benchmark.TrialConfiguration/#details>`_ 

 

        Public Member Functions
-------------------------------

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_query <sdk_unity_scopes_testing_benchmark#ad815c88ce0d76e4a6abc82438237e987>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`QueryConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.QueryConfiguration/>`_ 
configuration)=0

 

| for\_query executes a benchmark to measure the scope's query
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_preview <sdk_unity_scopes_testing_benchmark#a37da073840cfbeb22ed20c2d4631b7ff>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`PreviewConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.PreviewConfiguration/>`_ 
configuration)=0

 

| for\_preview executes a benchmark to measure the scope's preview
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_activation <sdk_unity_scopes_testing_benchmark#a531fbb8fd2259337123495bf7de0bd4a>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`ActivationConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActivationConfiguration/>`_ 
configuration)=0

 

| for\_preview executes a benchmark to measure the scope's activation
  performance.

 

virtual
`Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_  

:ref:`for\_action <sdk_unity_scopes_testing_benchmark#ad31b1781960e3edd0018a9cf8df4a506>`
(const std::shared\_ptr<
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  >
&scope,
`ActionConfiguration </sdk/scopes/cpp/unity.scopes.testing/Benchmark.ActionConfiguration/>`_ 
configuration)=0

 

| for\_preview executes a benchmark to measure the scope's action
  activation performance.

 

Detailed Description
--------------------

The :ref:`Benchmark <sdk_unity_scopes_testing_benchmark>` class defines an
interface to provide scope authors with runtime benchmarking
capabilities to be used in their own testing.

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
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ .

Implemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#a47874911c026c201699d8fce0443e4bb>`,
and
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#a570e17bc7fbb0c7aafb3ed720a5fc35c>`.

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
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ .

Implemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#ad918f6c89543eabb3492eb834712e38f>`,
and
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#adc815bde331263487183e38836811610>`.

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
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
    An instance of
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ .

Implemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#a397be9ae5eaca3d6ca96fa2957498c86>`,
and
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#a8823d30698cba5f6a03c4989e7356195>`.

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
| | k.Result/>`_       |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | unity::scopes::tes |               |                                      |
|       | s.ScopeBase/>`_    |         |                                      |
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
    `Result </sdk/scopes/cpp/unity.scopes.testing/Benchmark.Result/>`_ .

Implemented in
:ref:`unity::scopes::testing::OutOfProcessBenchmark <sdk_unity_scopes_testing_outofprocessbenchmark#a530a08db775c38ea13478a3d8e1c5bbc>`,
and
:ref:`unity::scopes::testing::InProcessBenchmark <sdk_unity_scopes_testing_inprocessbenchmark#a72460e26d0aa98ae7091f634d0089aa9>`.

.. |Inheritance graph| image:: /mediasdk_unity_scopes_testing_benchmarkclassunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png

