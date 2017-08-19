HTML5 Tutorials - unit testing
==============================

In this tutorial you will learn how to write a unit test to strengthen
the quality of your Ubuntu HTML5 application. It builds upon the HTML5
development tutorials.

Requirements
------------

-  Ubuntu 14.10 or later

   -  `Get Ubuntu <https://www.ubuntu.com/download/desktop/>`__

-  The HTML5 development tutorials

   -  If you haven't already complete the `HTML5 development
      tutorials <index.md>`__

-  nodejs

   -  Open a terminal with ``Ctrl+Alt+T`` and run these commands to
      install all required packages:
   -  ``sudo apt-get install nodejs``

What are unit tests?
--------------------

To help ensure your application performs as expected it's important to
have a nice suite of unit tests. Unit tests are the foundation of a good
testing story for your application. Let's learn more about them.

A unit test should generally test a specific unit of code. It should be
able to pass or fail in only one way. This means you should generally
have one and only one assertion or assert for short. An assertion is a
statement about the expected outcome of a series of actions. By limiting
yourself to a single statement about the expected outcome, it is clear
why a test fails.

Unit tests are the base of the `testing
pyramid <../../platform/quality.md>`__. The testing pyramid describes
the three levels of testing an application, going from low level tests
at the bottom and increasing to high level tests at the top. As unit
tests are the lowest level, they should represent the largest number of
tests for your project.

In Ubuntu, unit tests for your HTML5 application:

-  Are written in javascript
-  Utilize jasmine, grunt and nodejs

Speaking Jasmine
~~~~~~~~~~~~~~~~

A simple spec (testcase)
^^^^^^^^^^^^^^^^^^^^^^^^

A basic spec is very simple.

-  Declare a ``describe()`` function. This forms the test suite
   definition
-  Using the ``it`` function, create test cases using javascript
-  Utilize ``expect`` and matchers to make an assertion about results

.. code:: javascript

    describe("Testsuite", function() {
      it("testname", function() {
        expect(true).toBe(true);
      });
    });

Example
^^^^^^^

For example, heres a simple test suite for a function which reverses a
string:

.. code:: javascript

    describe('String Tests',function(){
        beforeEach(function(){
           stringFunc = {
               reverse: function(string) {
                    var reversed;
                    for(var i = string.length - 1; i >= 0; i--) {
                        reversed += string[i];
                    }
                    return reversed;
                }
           };
        });
        it("string is reversed", function() {
          string = 'thisismystring';
          expect(stringFunc.reverse(string)).toEqual('gnirtsymsisiht');
        });
    });

Building blocks of a spec
~~~~~~~~~~~~~~~~~~~~~~~~~

describe function
^^^^^^^^^^^^^^^^^

This defines the testsuite. It takes two parameters: a simple string
argument which is utilized as the name of the suite, and a function
which contains the testsuite code.

it function
^^^^^^^^^^^

This defines the testcase. It also takes two parameters: a simple string
argument which is utilized as the name of the testcase, and a function
which contains the testcase code.

expect function
^^^^^^^^^^^^^^^

This is used in unison with matchers to allow expectations or assertions
to be made. This takes a single parameter that is utilized as the first
part of the assertion.

Matchers
~~~~~~~~

Matches are utilized to provide the logic for expect as above. There is
a plethora of built-in matchers that jasmine makes available by default.
These matchers all take a single parameter that combined with the
matcher, serves as the second part of the assertion.

Below is a list of built-in matchers:

-  ``toBe``

   -  compares with ``===``

-  ``toEqual``

   -  compares ``==``

-  ``toMatch``

   -  for regular expressions

-  ``toBeDefined``

   -  compares against undefined

-  ``toBeNull``

   -  compares against null

-  ``toBeTruthy``

   -  for boolean casting testing

-  ``toBeFalsy``

   -  for boolean casting testing

-  ``toContain``

   -  for finding an item in an array

-  ``toBeLessThan``

   -  for mathematical comparisons

-  ``toBeGreaterThan``

   -  for mathematical comparisons

-  ``toBeCloseTo``

   -  for precision math comparison

-  ``toThrow``

   -  for testing if a function throws an exception

-  ``toThrowError``

   -  for testing a specific thrown exception

Advanced Usage
~~~~~~~~~~~~~~

Setup and Teardown
^^^^^^^^^^^^^^^^^^

Should you need to perform actions before or after each testcase runs;
or before or after an entire testsuite runs, you can utilize the aptly
named Each and All functions. These are beforeEach, afterEach,
beforeAll, and afterAll. The All functions will be performed before and
after each testsuite, while the Each functions will be performed before
and after each testcase.

Here’s an example with two simple testcases:

.. code:: javascript

    describe("testsuite1", function() {
        beforeEach(function() {
            before = 1;
        });
        afterEach(function() {
            before = 0;
        });
        afterAll(function() {
            waybefore = 0;
        });
        it("test1", function() {
            expect(true).toBe(true);
        });
        it("test2", function() {
            expect(false).toBe(false);
        });
    });

And finally here’s how they will be executed:

::

    beforeAll
    testsuite1
    beforeEach
    test1
    afterEach
    beforeEach
    test2
    afterEach
    afterAll

Custom Matchers
^^^^^^^^^^^^^^^

Sometimes you might need to make an assertion that isn’t readily covered
by the built-in matchers. To alleviate this problem, you can define your
own custom matcher for later use. A custom matcher must contain a
compare function that returns a results object. This object must have a
pass boolean that is set to true when successful, and false when
unsuccessful.

While optional, you should also define a message property that will be
utilized when a failure occurs.

Example
^^^^^^^

Here’s an example custom matcher to check and ensure a value is even.

.. code:: javascript

    var customMatchers = {
        toBeEven: function() {
            return {
                compare: function(actual, expected) {
                    result.pass: (actual % 2) === 0
                    if (not result.pass) {
                      result.message = "Expected " + actual + "to be even";
                    }
                    return result;
                };
            }
        }
    };

To include a custom matcher in your testcases, utilize the
``addMatchers`` function. This can be done for each testcase or
testsuite using the aforementioned ``Each`` and ``All`` functions. For
example for our ``toBeEven`` custom matcher,

.. code:: javascript

    beforeEach(function() {
        jasmine.addMatchers(customMatchers();
      });

Spies
^^^^^

A spy allows you to spy on any function, tracking all calls and
arguments to that function. This allows you to easily keep track of
things and gain useful insight into what is happening inside of
different functions.

This also allows you to fake any piece of a function you wish. For
example, you can fake a return value from a function, throw an error, or
even call a different function.

-  ``and.throwError``

   -  force an error to be thrown

-  ``and.callThrough``

   -  calls the spy function before invoking the actual function

-  ``and.callFake``

   -  allows you to call a different function completely

-  ``and.stub``

   -  calls the original function, ignoring callFake and callThrough

-  ``and.returnValue``

   -  forces the returned value from the function call

Here’s an example of changing a returned value via the and.returnValue
function.

.. code:: javascript

    describe('Spy Fake Return',function(){
        beforeEach(function(){
           myFunc = {
              returnZero: function() {
                return 0;
              }
           };
        });
        it("spy changes value", function() {
          foo = spyOn(myFunc, "returnZero").and.returnValue(1)
          expect(foo).toEqual(1);
        });
        it("normal value is zero", function() {
          foo = myFunc.returnZero
          expect(foo).toEqual(0);
        });
    });

Conclusion
----------

Let me try!
~~~~~~~~~~~

`Try Jasmine <http://tryjasmine.com/>`__ is an excellent web based
resource that will let you experiment with and learn jasmine from the
comfort of your browser. Try it out!

You've just learned how to write unit tests for a Ubuntu HTML5
application. But there is more information to be learned about how to
write HTML5 tests. Check out the links below for more documentation and
help.

Resources
~~~~~~~~~

-  `Jasmine <http://jasmine.github.io/>`__
-  `Grunt <http://gruntjs.com/>`__
-  `NodeJS <https://nodejs.org/>`__
-  `HTML5 SDK documentation <api.md>`__
