The `Sample </sdk/scopes/cpp/unity.scopes.testing/Sample/>`__ class
models the interface to a sample of raw observations and their
statistical properties.
`More... </sdk/scopes/cpp/unity.scopes.testing/Sample#details>`__

``#include <unity/scopes/testing/Statistics.h>``

Inheritance diagram for unity::scopes::testing::Sample:

|Inheritance graph|

[legend]

        Public Types
--------------------

typedef std::size\_t 

`SizeType </sdk/scopes/cpp/unity.scopes.testing/Sample#a45542150c14b4486c58cb14cca3072e9>`__

 

typedef double 

`ValueType </sdk/scopes/cpp/unity.scopes.testing/Sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`__

 

typedef std::function<
void(\ `ValueType </sdk/scopes/cpp/unity.scopes.testing/Sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`__)> 

`Enumerator </sdk/scopes/cpp/unity.scopes.testing/Sample#a4d588f4837a81c163ebd653d88648144>`__

 

        Public Member Functions
-------------------------------

virtual
`SizeType </sdk/scopes/cpp/unity.scopes.testing/Sample#a45542150c14b4486c58cb14cca3072e9>`__ 

`get\_size </sdk/scopes/cpp/unity.scopes.testing/Sample#ab37cab3e43f1a8cbc9955ab6ec5e7e40>`__
() const =0

 

virtual
`ValueType </sdk/scopes/cpp/unity.scopes.testing/Sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`__ 

`get\_mean </sdk/scopes/cpp/unity.scopes.testing/Sample#aa4e03bd0ca10b2172954b50a3c544667>`__
() const =0

 

virtual
`ValueType </sdk/scopes/cpp/unity.scopes.testing/Sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`__ 

`get\_variance </sdk/scopes/cpp/unity.scopes.testing/Sample#a646d6b0dca1081f812958c86ce7e8d01>`__
() const =0

 

virtual void 

`enumerate </sdk/scopes/cpp/unity.scopes.testing/Sample#a051bdf96e55f8da92bb3829bbf650cf4>`__
(const
`Enumerator </sdk/scopes/cpp/unity.scopes.testing/Sample#a4d588f4837a81c163ebd653d88648144>`__
&enumerator) const =0

 

Detailed Description
--------------------

The `Sample </sdk/scopes/cpp/unity.scopes.testing/Sample/>`__ class
models the interface to a sample of raw observations and their
statistical properties.

Member Typedef Documentation
----------------------------

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function<void(\ `ValueType </sdk/scopes/cpp/unity.scopes.testing/Sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`__)> `unity::scopes::testing::Sample::Enumerator </sdk/scopes/cpp/unity.scopes.testing/Sample#a4d588f4837a81c163ebd653d88648144>`__   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for enumerating all raw observations.

+-----------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::size\_t `unity::scopes::testing::Sample::SizeType </sdk/scopes/cpp/unity.scopes.testing/Sample#a45542150c14b4486c58cb14cca3072e9>`__   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+

Unsigned type describing the size of the sample.

+------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef double `unity::scopes::testing::Sample::ValueType </sdk/scopes/cpp/unity.scopes.testing/Sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`__   |
+------------------------------------------------------------------------------------------------------------------------------------------------+

Floating point type describing an individual observation.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------------------------- | pure virtual                         |
| -----------------------+-----+------ |                                      |
| ------------------------------------ |                                      |
| ------------------------------------ |                                      |
| -----------------------------+------ |                                      |
| ----------+-----+---------+          |                                      |
| | virtual void unity::scopes::testin |                                      |
| g::Sample::enumerate   | (   | const |                                      |
|  `Enumerator </sdk/scopes/cpp/unity. |                                      |
| scopes.testing/Sample#a4d588f4837a81 |                                      |
| c163ebd653d88648144>`__ &    | *enum |                                      |
| erator*   | )   | const   |          |                                      |
| +----------------------------------- |                                      |
| -----------------------+-----+------ |                                      |
| ------------------------------------ |                                      |
| ------------------------------------ |                                      |
| -----------------------------+------ |                                      |
| ----------+-----+---------+          |                                      |
+--------------------------------------+--------------------------------------+

Enumerate all raw observations from the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | `ValueType </s |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | dk/scopes/cpp/ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity.scopes.t |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | esting/Sample# |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | a9e02cfa261b23 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | b40c9da59cda6a |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | b0dc8>`__      |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :testing::Samp |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | le::get\_mean  |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Query the empirical mean of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | `SizeType </sd |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | k/scopes/cpp/u |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | nity.scopes.te |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | sting/Sample#a |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 45542150c14b44 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 86c58cb14cca30 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 72e9>`__       |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :testing::Samp |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | le::get\_size  |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Query the size of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | `ValueType </s |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | dk/scopes/cpp/ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity.scopes.t |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | esting/Sample# |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | a9e02cfa261b23 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | b40c9da59cda6a |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | b0dc8>`__      |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :testing::Samp |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | le::get\_varia |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | nce            |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Query the empirical variance of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.testing/Sample/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png

