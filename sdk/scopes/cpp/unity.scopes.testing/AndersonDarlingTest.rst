Implements the Anderson-Darling test for normality for the case of
empirical mean and variance.
`More... </sdk/scopes/cpp/unity.scopes.testing/AndersonDarlingTest#details>`__

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

for\_normality (const Sample &sample)

 

| for\_normality evaluates a given sample to check if its underlying
  distribution is normal.

 

Detailed Description
--------------------

Implements the Anderson-Darling test for normality for the case of
empirical mean and variance.

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | const        | *sample*     | )            |              |
| s::testing:: |              | `Sample </sd |              |              |              |
| AndersonDarl |              | k/scopes/cpp |              |              |              |
| ingTest::Res |              | /unity.scope |              |              |              |
| ult          |              | s.testing/Sa |              |              |              |
| unity::scope |              | mple/>`__    |              |              |              |
| s::testing:: |              | &            |              |              |              |
| AndersonDarl |              |              |              |              |              |
| ingTest::for |              |              |              |              |              |
| \_normality  |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

for\_normality evaluates a given sample to check if its underlying
distribution is normal.

Parameters
    +----------+------------------------+
    | sample   | The sample to check.   |
    +----------+------------------------+

Returns
    A hypothesis containing the test statistics, can be evaluated at
    different confidence levels.

