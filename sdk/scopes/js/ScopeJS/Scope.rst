
Scope corresponds to the bridge between the ubuntu scope runtime and the
actual scope.

A Scope object is not directly constructible but it is automatically
created when the scope module is imported and is accessible through the
'self' exported member.

After the scopes runtime has obtained initialization runtime
configurations from the scope, it calls start(), which allows the scope
to intialize itself. This is followed by a call to run().

When the scope should complete its activities, the runtime calls stop().

-  Methods
-  Properties

**``initialize``**\ ( ``options, runtime_config `` )
This member function is the entry point to setting up a scope's behavior
and configuring it to the runtime scope.

**Parameters:**

-  ``options`` **<Object>**

   A dictionary of options for the scope runtime. The option keys are: -
   scope\_id: the scope id

-  ``runtime_config`` **<Object>**

   A dictionary of runtime configuration settings for the scope runtime.
   The configuration keys are: - run {Function()}: Callback called by
   the scopes run time after it has called start() to hand a thread of
   control to the scope - starting {Function(String: scope\_id)}:
   Callback called by the scopes run time after the create function
   completes - stop {Function()}: Callback called by the scopes run time
   when the scope should shut down - search {Function(CannedQuery:
   canned\_query, SearchMetaData: metadata)}: Callback called by the
   scopes run time when a scope needs to instantiate a query -
   perform\_action {Function(Result: result, ActionMetaData: metadata,
   String: widget\_id, String: ation\_id)}: Callback invoked when a
   scope is requested to handle a preview action - preview
   {Function(Result: result, ActionMetaData: metadata)}: Callback
   invoked when a scope is requested to create a preview for a
   particular result

.. rubric:: Example
   :name: example

.. code:: code

             var scopes = require('unity-js-scopes')
                             scopes.self.initialize(
                               {}, {
                                 run: function() {}
                                 start: function(scope_id) {
                                   console.log('Starting scope id: '
                                     + scope_id
                                     + ', '
                                     + scopes.self.scope_config)
                                 },
                                 search: function(canned_query, metadata) {}
                               }
                             );

``cache_directory`` <**Unknown**>
Returns a directory that is (exclusively) writable for the scope

``registry`` <**Unknown**>
Returns the scope registry

``scope_directory`` <**Unknown**>
Returns the directory that stores the scope's configuration files and
shared library

``settings`` <**Unknown**>
Returns a dictionary with the scope's current settings

``tmp_directory`` <**Unknown**>
Returns a tmp directory that is (exclusively) writable for the scope

