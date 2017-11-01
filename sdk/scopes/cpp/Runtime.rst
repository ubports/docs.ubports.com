The main object for query originators to access the scopes runtime.
`More... </sdk/scopes/cpp/unity.scopes.Runtime#details>`__

``#include <unity/scopes/Runtime.h>``

        Public Member Functions
-------------------------------

void 

`destroy </sdk/scopes/cpp/unity.scopes.Runtime#a37009c392ed3a7c6ebaf37cdfdaf6d01>`__
()

 

| Shuts down the runtime, reclaiming all associated resources.

 

`RegistryProxy </sdk/scopes/cpp/unity.scopes#a45babc254d3548863d79ee54f266e84d>`__ 

`registry </sdk/scopes/cpp/unity.scopes.Runtime#afc312448a4537b110bf1701bfb964501>`__
() const

 

| Returns a proxy to the Registry object.

 

void 

`run\_scope </sdk/scopes/cpp/unity.scopes.Runtime#a8924298a103d43313fe1974c040e7736>`__
(`ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__ \*const
scope\_base, std::string const &scope\_ini\_file)

 

| Run a scope without going through the scope runner.

 

`ObjectProxy </sdk/scopes/cpp/unity.scopes#aa68ce1769f7a888d0b4b2951741ca75a>`__ 

`string\_to\_proxy </sdk/scopes/cpp/unity.scopes.Runtime#a24eec46bc15975c219642fcfe8e5357f>`__
(std::string const &s) const

 

| Convert a string to a proxy.

 

std::string 

`proxy\_to\_string </sdk/scopes/cpp/unity.scopes.Runtime#ac96e508aa3d37d24eaf2aa65bdbfb43e>`__
(`ObjectProxy </sdk/scopes/cpp/unity.scopes#aa68ce1769f7a888d0b4b2951741ca75a>`__
const &proxy) const

 

| Converts a proxy to a string.

 

 

`~Runtime </sdk/scopes/cpp/unity.scopes.Runtime#a96f5965eec2dd22c54cca9d99cb04653>`__
()

 

| Destroys a Runtime instance.

 

        Static Public Member Functions
--------------------------------------

static UPtr 

`create </sdk/scopes/cpp/unity.scopes.Runtime#a0c24bf97fe98f57c4fc7ad04456bd40c>`__
(std::string const &configfile="")

 

| Instantiates the scopes runtime for a client with the given (optional)
  configuration file.

 

static UPtr 

`create\_scope\_runtime </sdk/scopes/cpp/unity.scopes.Runtime#aa729688b3c887476118c0ab5ad6a5a54>`__
(std::string const &scope\_id, std::string const &configfile="")

 

| Create a runtime for a scope.

 

Detailed Description
--------------------

The main object for query originators to access the scopes runtime.

All interactions with the scopes runtime require a
`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__ object to be
instantiated first. The
`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__ instance controls
the overall life cycle; once a
`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__ instance goes out of
scope, the application must not make further calls on any instance
obtained via the destroyed
`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__.

The application must instantiate a
`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__ object only after
``main()`` is entered, and it must destroy the instance before leaving
``main()``; failure to do so results in undefined behavior.

Note that scope implementations do not need to instantiate a
`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__ instance.

Constructor & Destructor Documentation
--------------------------------------

+----------------+----------------+----------------+----------------+----------------+
| unity::scopes: | (              |                | )              |                |
| :Runtime::~Run |                |                |                |                |
| time           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Destroys a `Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__ instance.

The destructor implicitly calls
`destroy() </sdk/scopes/cpp/unity.scopes.Runtime#a37009c392ed3a7c6ebaf37cdfdaf6d01>`__
if the application code does not explicitly destroy the instance. You
*must not* permit a `Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__
instance to persist beyond the end of ``main()``; doing so has undefined
behavior.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | static                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | Runtime::UPt | (            | std: |                                      |
| :string  | *configfile* | )          |                                      |
|    |              |                  |                                      |
| | r            |              | cons |                                      |
| t &      | = ``""``     |            |                                      |
|    |              |                  |                                      |
| | unity::scope |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::Runtime:: |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | create       |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Instantiates the scopes runtime for a client with the given (optional)
configuration file.

The life time of the runtime is under control of the caller. Letting the
returned ``unique_ptr`` go out of scope shuts down the runtime.

You *must not* create a
`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__ instance until after
``main()`` is entered, and you *must* destroy it before leaving
``main()`` (either by explicitly calling
`destroy() </sdk/scopes/cpp/unity.scopes.Runtime#a37009c392ed3a7c6ebaf37cdfdaf6d01>`__,
or by letting the returned ``unique_ptr`` go out of scope). Failure to
do so causes undefined behavior.

Parameters
    +--------------+---------------------------------------------------+
    | configfile   | The path name of the configuration file to use.   |
    +--------------+---------------------------------------------------+

If configfile is the empty string, a default configuration is used.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | Runtime::UPtr      | (             |                                      |
|       | std::string const  | *scope\ |                                      |
| _id*,       |                        |                                      |
| | unity::scopes::Run |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | time::create\_scop |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | e\_runtime         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *config |                                      |
| file* =     |                        |                                      |
| |                    |               |                                      |
|       | &                  | ``""``  |                                      |
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

Create a runtime for a scope.

This method is provided for custom scoperunner implementations, for
example, for scopes written in Go.

Parameters
    +--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | scope\_id    | The unique ID of the scope. If scope\_id is empty, a unique ID is used. Calling ``create_scope_runtime("", "Runtime.ini")`` is equivalent to calling ``create("Runtime.ini")``.   |
    +--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | configfile   | The path to the runtime .ini file. If empty, the default configuration is used.                                                                                                   |
    +--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns
    A ``unique_ptr`` to the runtime instance.

+----------------+----------------+----------------+----------------+----------------+
| void           | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :Runtime::dest |                |                |                |                |
| roy            |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Shuts down the runtime, reclaiming all associated resources.

Calling
`destroy() </sdk/scopes/cpp/unity.scopes.Runtime#a37009c392ed3a7c6ebaf37cdfdaf6d01>`__
is optional; the destructor implicitly calls
`destroy() </sdk/scopes/cpp/unity.scopes.Runtime#a37009c392ed3a7c6ebaf37cdfdaf6d01>`__
if it was not called explicitly. However, no exceptions are thrown by
the destructor. If you want to log or handle any exceptions during
shutdown, call
`destroy() </sdk/scopes/cpp/unity.scopes.Runtime#a37009c392ed3a7c6ebaf37cdfdaf6d01>`__
explicitly before letting the ``unique_ptr`` returned by
`create() </sdk/scopes/cpp/unity.scopes.Runtime#a0c24bf97fe98f57c4fc7ad04456bd40c>`__
go out of scope.

+----------------------------------------------------+-----+---------------------------------------------------------------------------------------------+-----------+-----+---------+
| string unity::scopes::Runtime::proxy\_to\_string   | (   | `ObjectProxy </sdk/scopes/cpp/unity.scopes#aa68ce1769f7a888d0b4b2951741ca75a>`__ const &    | *proxy*   | )   | const   |
+----------------------------------------------------+-----+---------------------------------------------------------------------------------------------+-----------+-----+---------+

Converts a proxy to a string.

`proxy\_to\_string() </sdk/scopes/cpp/unity.scopes.Runtime#ac96e508aa3d37d24eaf2aa65bdbfb43e>`__
converts the passed proxy to a string. Note that it is typically easier
to call the ObjectProxy::to\_string() method to achieve the same thing.
However,
`proxy\_to\_string() </sdk/scopes/cpp/unity.scopes.Runtime#ac96e508aa3d37d24eaf2aa65bdbfb43e>`__
is needed in order to obtain a string for a null proxy (because it is
not possible to invoke a member function on a null proxy).

Parameters
    +---------+-------------------------------------+
    | proxy   | The proxy to convert to a string.   |
    +---------+-------------------------------------+

Returns
    The string representation of the proxy.

+----------------+----------------+----------------+----------------+----------------+
| `RegistryProxy | (              |                | )              | const          |
|  </sdk/scopes/ |                |                |                |                |
| cpp/unity.scop |                |                |                |                |
| es#a45babc254d |                |                |                |                |
| 3548863d79ee54 |                |                |                |                |
| f266e84d>`__   |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Runtime::regi |                |                |                |                |
| stry           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a proxy to the
`Registry </sdk/scopes/cpp/unity.scopes.Registry/>`__ object.

The returned proxy allows application code to interact with the
registry, which provides access to the available scopes.

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `ScopeBase </sdk/s | *scope\_base*,     |
| unity::scopes::Run |                    | copes/cpp/unity.sc |                    |
| time::run\_scope   |                    | opes.ScopeBase/>`_ |                    |
|                    |                    | _                  |                    |
|                    |                    | \*const            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *scope\_ini\_file* |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Run a scope without going through the scope runner.

This method is intended to run a scope that can not be loaded via the
scope runner, such as those written in languages that cannot be
dynamically loaded.

Parameters
    +--------------------+---------------------------------------------+
    | scope\_base        | The scope implementation                    |
    +--------------------+---------------------------------------------+
    | scope\_ini\_file   | The full path of scope configuration file   |
    +--------------------+---------------------------------------------+

+------------------------------------------------------------------------------------------------------------------------------+-----+------------------------+-------+-----+---------+
| `ObjectProxy </sdk/scopes/cpp/unity.scopes#aa68ce1769f7a888d0b4b2951741ca75a>`__ unity::scopes::Runtime::string\_to\_proxy   | (   | std::string const &    | *s*   | )   | const   |
+------------------------------------------------------------------------------------------------------------------------------+-----+------------------------+-------+-----+---------+

Convert a string to a proxy.

This method is intended for testing purposes. Do not use
`string\_to\_proxy() </sdk/scopes/cpp/unity.scopes.Runtime#a24eec46bc15975c219642fcfe8e5357f>`__
in production code!
`string\_to\_proxy() </sdk/scopes/cpp/unity.scopes.Runtime#a24eec46bc15975c219642fcfe8e5357f>`__
converts a string to a proxy. The returned proxy must be down-cast using
``dynamic_pointer_cast`` to the correct type before it can be used.

Parameters
    +-----+---------------------------------------+
    | s   | The string to convert into a proxy.   |
    +-----+---------------------------------------+

Returns
    The converted proxy. It is possible for the return value to be
    ``nullptr``, but only if the passed string represents a null proxy.
    Otherwise, the return value is a non-null proxy, or an exception
    (for example, if the proxy string did not parse correctly, or if the
    proxy could not be instantiated due to incorrect values inside the
    string).

