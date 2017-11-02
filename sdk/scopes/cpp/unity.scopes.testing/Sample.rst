.. _sdk_unity_scopes_testing_sample:
unity.scopes.testing Sample
===========================

The :ref:`Sample <sdk_unity_scopes_testing_sample>` class models the
interface to a sample of raw observations and their statistical
properties. :ref:`More... <sdk_unity_scopes_testing_sample#details>`

``#include <unity/scopes/testing/Statistics.h>``

Inheritance diagram for unity::scopes::testing::Sample:

|Inheritance graph|

[legend]

        Public Types
--------------------

typedef std::size\_t 

:ref:`SizeType <sdk_unity_scopes_testing_sample#a45542150c14b4486c58cb14cca3072e9>`

 

typedef double 

:ref:`ValueType <sdk_unity_scopes_testing_sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`

 

typedef std::function<
void(\ :ref:`ValueType <sdk_unity_scopes_testing_sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`)> 

:ref:`Enumerator <sdk_unity_scopes_testing_sample#a4d588f4837a81c163ebd653d88648144>`

 

        Public Member Functions
-------------------------------

virtual
:ref:`SizeType <sdk_unity_scopes_testing_sample#a45542150c14b4486c58cb14cca3072e9>` 

:ref:`get\_size <sdk_unity_scopes_testing_sample#ab37cab3e43f1a8cbc9955ab6ec5e7e40>`
() const =0

 

virtual
:ref:`ValueType <sdk_unity_scopes_testing_sample#a9e02cfa261b23b40c9da59cda6ab0dc8>` 

:ref:`get\_mean <sdk_unity_scopes_testing_sample#aa4e03bd0ca10b2172954b50a3c544667>`
() const =0

 

virtual
:ref:`ValueType <sdk_unity_scopes_testing_sample#a9e02cfa261b23b40c9da59cda6ab0dc8>` 

:ref:`get\_variance <sdk_unity_scopes_testing_sample#a646d6b0dca1081f812958c86ce7e8d01>`
() const =0

 

virtual void 

:ref:`enumerate <sdk_unity_scopes_testing_sample#a051bdf96e55f8da92bb3829bbf650cf4>`
(const
:ref:`Enumerator <sdk_unity_scopes_testing_sample#a4d588f4837a81c163ebd653d88648144>`
&enumerator) const =0

 

Detailed Description
--------------------

The :ref:`Sample <sdk_unity_scopes_testing_sample>` class models the
interface to a sample of raw observations and their statistical
properties.

Member Typedef Documentation
----------------------------

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function<void(\ :ref:`ValueType <sdk_unity_scopes_testing_sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`)> `unity::scopes::testing::Sample::Enumerator <sdk_unity_scopes_testing_sample#a4d588f4837a81c163ebd653d88648144>`|
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for enumerating all raw observations.

+-----------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::size\_t :ref:`unity::scopes::testing::Sample::SizeType <sdk_unity_scopes_testing_sample#a45542150c14b4486c58cb14cca3072e9>`|
+-----------------------------------------------------------------------------------------------------------------------------------------+

Unsigned type describing the size of the sample.

+------------------------------------------------------------------------------------------------------------------------------------+
| typedef double :ref:`unity::scopes::testing::Sample::ValueType <sdk_unity_scopes_testing_sample#a9e02cfa261b23b40c9da59cda6ab0dc8>`|
+------------------------------------------------------------------------------------------------------------------------------------+

Floating point type describing an individual observation.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------------------------- | pure virtual                         |
| -----------------------+-----+------ |                                      |
| ------------------------------------ |                                      |
| ------------------------------------ |                                      |
| -----------------+----------------+- |                                      |
| ----+---------+                      |                                      |
| | virtual void unity::scopes::testin |                                      |
| g::Sample::enumerate   | (   | const |                                      |
|  :ref:`Enumerator <sdk_unity_scopes_testi |                                      |
| ng_sample#a4d588f4837a81c163ebd653d8 |                                      |
| 8648144>`_  &    | *enumerator*   |  |                                      |
| )   | const   |                      |                                      |
| +----------------------------------- |                                      |
| -----------------------+-----+------ |                                      |
| ------------------------------------ |                                      |
| ------------------------------------ |                                      |
| -----------------+----------------+- |                                      |
| ----+---------+                      |                                      |
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
| | `ValueType <sd |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | k_unity_scopes |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | _testing_sampl |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | e#a9e02cfa261b |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 23b40c9da59cda |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 6ab0dc8>`_     |                |  |                                      |
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
| | `SizeType <sdk |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | _unity_scopes_ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | testing_sample |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | #a45542150c14b |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 4486c58cb14cca |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 3072e9>`_      |                |  |                                      |
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
| | `ValueType <sd |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | k_unity_scopes |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | _testing_sampl |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | e#a9e02cfa261b |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 23b40c9da59cda |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 6ab0dc8>`_     |                |  |                                      |
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

.. |Inheritance graph| image:: /mediasdk_unity_scopes_testing_sampleclassunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png

