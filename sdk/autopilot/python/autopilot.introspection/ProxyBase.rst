 *class* ``autopilot.introspection.``\ ``ProxyBase``\ (*state\_dict*,
*path*, *backend*)\ ` <#autopilot.introspection.ProxyBase>`__
    A class that supports transparent data retrieval from the
    application under test.

    This class is the base class for all objects retrieved from the
    application under test. It handles transparently refreshing
    attribute values when needed, and contains many methods to select
    child objects in the introspection tree.

    This class must be used as a base class for any custom proxy
    classes.

    .. raw:: html

       <div class="admonition seealso">

    See also

    Tutorial Section `*Writing Custom Proxy
    Classes* </sdk/autopilot/python/tutorial-advanced_autopilot#custom-proxy-classes>`__
        Information on how to write custom proxy classes.

    .. raw:: html

       </div>

    ``get_all_instances``\ ()` <#autopilot.introspection.ProxyBase.get_all_instances>`__
        Get all instances of this class that exist within the
        Application state tree.

        For example, to get all the LauncherIcon instances:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            icons = LauncherIcon.get_all_instances()

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        .. raw:: html

           <div class="admonition warning">

        Warning

        Using this method is slow - it requires a complete scan of the
        introspection tree. You should only use this when you’re not
        sure where the objects you are looking for are located.
        Depending on the application you are testing, you may get
        duplicate results using this method.

        .. raw:: html

           </div>

        +------------+---------------------------------------------+
        | Returns:   | List (possibly empty) of class instances.   |
        +------------+---------------------------------------------+

    ``get_children``\ ()` <#autopilot.introspection.ProxyBase.get_children>`__
        Returns a list of all child objects.

        This returns a list of all children. To return only children of
        a specific type, use
        ```get_children_by_type`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.get_children_by_type>`__.
        To get objects further down the introspection tree (i.e.- nodes
        that may not necessarily be immeadiate children), use
        ```select_single`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_single>`__
        and
        ```select_many`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_many>`__.

     ``get_children_by_type``\ (*desired\_type*,
    *\*\*kwargs*)\ ` <#autopilot.introspection.ProxyBase.get_children_by_type>`__
        Get a list of children of the specified type.

        Keyword arguments can be used to restrict returned instances.
        For example:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            get_children_by_type('Launcher', monitor=1)

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        will return only Launcher instances that have an attribute
        ‘monitor’ that is equal to 1. The type can also be specified as
        a string, which is useful if there is no emulator class
        specified:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            get_children_by_type('Launcher', monitor=1)

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        Note however that if you pass a string, and there is an emulator
        class defined, autopilot will not use it.

        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | **desired\_type** – Either a string naming the type you want, or a class of the type you want (the latter is used when defining custom emulators)   |
        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

        .. raw:: html

           <div class="admonition seealso">

        See also

        Tutorial Section `*Writing Custom Proxy
        Classes* </sdk/autopilot/python/tutorial-advanced_autopilot#custom-proxy-classes>`__

        .. raw:: html

           </div>

     ``get_parent``\ (*type\_name=''*,
    *\*\*kwargs*)\ ` <#autopilot.introspection.ProxyBase.get_parent>`__
        Returns the parent of this object.

        One may also use this method to get a specific parent node from
        the introspection tree, with type equal to *type\_name* or
        matching the keyword filters present in *kwargs*. Note: The
        priority order is closest parent.

        If no filters are provided and this object has no parent (i.e.-
        it is the root of the introspection tree). Then it returns
        itself.

        Parameters:

        **type\_name** – Either a string naming the type you want, or a
        class of the appropriate type (the latter case is for overridden
        emulator classes).

        Raises StateNotFoundError:

         

        if the requested object was not found.

     ``get_path``\ ()` <#autopilot.introspection.ProxyBase.get_path>`__
        Return the absolute path of the dbus node

    ``get_properties``\ ()` <#autopilot.introspection.ProxyBase.get_properties>`__
        Returns a dictionary of all the properties on this class.

        This can be useful when you want to log all the properties
        exported from your application for a particular object. Every
        property in the returned dictionary can be accessed as
        attributes of the object as well.

    ``get_root_instance``\ ()` <#autopilot.introspection.ProxyBase.get_root_instance>`__
        Get the object at the root of this tree.

        This will return an object that represents the root of the
        introspection tree.

     *classmethod*
    ``get_type_query_name``\ ()` <#autopilot.introspection.ProxyBase.get_type_query_name>`__
        Return the Type node name to use within the search query.

        This allows for a Custom Proxy Object to be named differently to
        the underlying node type name.

        For instance if you have a QML type defined in the file
        RedRect.qml:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            import QtQuick 2.0
            Rectangle {
                color: red;
            }

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        You can then define a Custom Proxy Object for this type like so:

        class RedRect(DBusIntrospectionObject):
            @classmethod def get\_type\_query\_name(cls):

                .. raw:: html

                   <div>

                return ‘QQuickRectangle’

                .. raw:: html

                   </div>

        This is due to the qml engine storing ‘RedRect’ as a
        QQuickRectangle in the UI tree and the xpathquery query needs a
        node type to query for. By default the query will use the class
        name (in this case RedRect) but this will not match any node
        type in the tree.

    ``is_moving``\ (*gap\_interval=0.1*)\ ` <#autopilot.introspection.ProxyBase.is_moving>`__
        Check if the element is moving.

        +---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | **gap\_interval** – Time in seconds to wait before re-inquiring the object co-ordinates to be able to evaluate if, the element is moving.   |
        +---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | True, if the element is moving, otherwise False.                                                                                            |
        +---------------+---------------------------------------------------------------------------------------------------------------------------------------------+

    ``no_automatic_refreshing``\ ()` <#autopilot.introspection.ProxyBase.no_automatic_refreshing>`__
        Context manager function to disable automatic DBus refreshing
        when retrieving attributes.

        Example usage:

            .. raw:: html

               <div>

            with instance.no\_automatic\_refreshing():
                # access lots of attributes.

            .. raw:: html

               </div>

        This can be useful if you need to check lots of attributes in a
        tight loop, or if you want to atomicaly check several attributes
        at once.

     ``print_tree``\ (*output=None*, *maxdepth=None*,
    *\_curdepth=0*)\ ` <#autopilot.introspection.ProxyBase.print_tree>`__
        Print properties of the object and its children to a stream.

        When writing new tests, this can be called when it is too
        difficult to find the widget or property that you are interested
        in in “vis”.

        .. raw:: html

           <div class="admonition warning">

        Warning

        Do not use this in production tests, this is expensive and not
        at all appropriate for actual testing. Only call this
        temporarily and replace with proper select\_single/select\_many
        calls.

        .. raw:: html

           </div>

        +---------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **output** – A file object or path name where the output will be written to. If not given, write to stdout.                                                |
        |               | -  **maxdepth** – If given, limit the maximum recursion level to that number, i. e. only print children which have at most maxdepth-1 intermediate parents.   |
        +---------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

    ``refresh_state``\ ()` <#autopilot.introspection.ProxyBase.refresh_state>`__
        Refreshes the object’s state.

        You should probably never have to call this directly. Autopilot
        automatically retrieves new state every time this object’s
        attributes are read.

        Raises StateNotFound:

         

        if the object in the application under test has been destroyed.

     ``select_many``\ (*type\_name='\*'*, *ap\_result\_sort\_keys=None*,
    *\*\*kwargs*)\ ` <#autopilot.introspection.ProxyBase.select_many>`__
        Get a list of nodes from the introspection tree, with type equal
        to *type\_name* and (optionally) matching the keyword filters
        present in *kwargs*.

        You must specify either *type\_name*, keyword filters or both.

        This method searches recursively from the instance this method
        is called on. Calling
        ```select_many`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_many>`__
        on the application (root) proxy object will search the entire
        tree. Calling
        ```select_many`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_many>`__
        on an object in the tree will only search it’s descendants.

        Example Usage:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app.select_many('QPushButton', enabled=True)
            # returns a list of QPushButtons that are enabled.

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        As mentioned above, this method searches the object tree
        recursively:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            file_menu = app.select_one('QMenu', title='File')
            file_menu.select_many('QAction')
            # returns a list of QAction objects who appear below file_menu in
            # the object tree.

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        .. raw:: html

           <div class="admonition warning">

        Warning

        The order in which objects are returned is not guaranteed. It is
        bad practise to write tests that depend on the order in which
        this method returns objects. (see `*Do Not Depend on Object
        Ordering* </sdk/autopilot/python/guides-good_tests#object-ordering>`__
        for more information).

        .. raw:: html

           </div>

        If you want to ensure a certain count of results retrieved from
        this method, use
        ```wait_select_many`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.wait_select_many>`__
        or if you only want to get one item, use
        ```select_single`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_single>`__
        instead.

        Parameters:

        -  **type\_name** – Either a string naming the type you want, or
           a class of the appropriate type (the latter case is for
           overridden emulator classes).
        -  **ap\_result\_sort\_keys** – list of object properties to
           sort the query result with (sort key priority starts with
           element 0 as highest priority and then descends down the
           list).

        Raises ValueError:

         

        if neither *type\_name* or keyword filters are provided.

        .. raw:: html

           <div class="admonition seealso">

        See also

        Tutorial Section `*Writing Custom Proxy
        Classes* </sdk/autopilot/python/tutorial-advanced_autopilot#custom-proxy-classes>`__

        .. raw:: html

           </div>

     ``select_single``\ (*type\_name='\*'*,
    *\*\*kwargs*)\ ` <#autopilot.introspection.ProxyBase.select_single>`__
        Get a single node from the introspection tree, with type equal
        to *type\_name* and (optionally) matching the keyword filters
        present in *kwargs*.

        You must specify either *type\_name*, keyword filters or both.

        This method searches recursively from the instance this method
        is called on. Calling
        ```select_single`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_single>`__
        on the application (root) proxy object will search the entire
        tree. Calling
        ```select_single`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_single>`__
        on an object in the tree will only search it’s descendants.

        Example usage:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app.select_single('QPushButton', objectName='clickme')
            # returns a QPushButton whose 'objectName' property is 'clickme'.

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        If nothing is returned from the query, this method raises
        StateNotFoundError.

        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | **type\_name** – Either a string naming the type you want, or a class of the appropriate type (the latter case is for overridden emulator classes).   |
        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | -  **ValueError** – if the query returns more than one item. *If you want more than one item, use select\_many instead*.                              |
        |               | -  **ValueError** – if neither *type\_name* or keyword filters are provided.                                                                          |
        |               | -  **StateNotFoundError** – if the requested object was not found.                                                                                    |
        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

        .. raw:: html

           <div class="admonition seealso">

        See also

        Tutorial Section `*Writing Custom Proxy
        Classes* </sdk/autopilot/python/tutorial-advanced_autopilot#custom-proxy-classes>`__

        .. raw:: html

           </div>

     *classmethod* ``validate_dbus_object``\ (*path*,
    *\_state*)\ ` <#autopilot.introspection.ProxyBase.validate_dbus_object>`__
        Return whether this class is the appropriate proxy object class
        for a given dbus path and state.

        The default version matches the name of the dbus object and the
        class. Subclasses of CustomProxyObject can override it to define
        a different validation method.

        +---------------+-------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **path** – The dbus path of the object to check                                              |
        |               | -  **state** – The dbus state dict of the object to check (ignored in default implementation)   |
        +---------------+-------------------------------------------------------------------------------------------------+
        | Returns:      | Whether this class is appropriate for the dbus object                                           |
        +---------------+-------------------------------------------------------------------------------------------------+

     ``wait_select_many``\ (*type\_name='\*'*, *ap\_query\_timeout=10*,
    *ap\_result\_count=1*, *ap\_result\_sort\_keys=None*,
    *\*\*kwargs*)\ ` <#autopilot.introspection.ProxyBase.wait_select_many>`__
        Get a list of nodes from the introspection tree, with type equal
        to *type\_name* and (optionally) matching the keyword filters
        present in *kwargs*.

        This method is identical to the
        ```select_many`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_many>`__
        method, except that this method will poll the application under
        test for *ap\_query\_timeout* seconds in the event that the
        search result count is not greater than or equal to
        *ap\_result\_count*.

        You must specify either *type\_name*, keyword filters or both.

        This method searches recursively from the instance this method
        is called on. Calling
        ```wait_select_many`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.wait_select_many>`__
        on the application (root) proxy object will search the entire
        tree. Calling
        ```wait_select_many`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.wait_select_many>`__
        on an object in the tree will only search it’s descendants.

        Example Usage:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app.wait_select_many(
                'QPushButton',
                ap_query_timeout=5,
                ap_result_count=2,
                enabled=True
            )
            # returns at least 2 QPushButtons that are enabled, within
            # 5 seconds.

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        .. raw:: html

           <div class="admonition warning">

        Warning

        The order in which objects are returned is not guaranteed. It is
        bad practise to write tests that depend on the order in which
        this method returns objects. (see `*Do Not Depend on Object
        Ordering* </sdk/autopilot/python/guides-good_tests#object-ordering>`__
        for more information).

        .. raw:: html

           </div>

        Parameters:

        -  **type\_name** – Either a string naming the type you want, or
           a class of the appropriate type (the latter case is for
           overridden emulator classes).
        -  **ap\_query\_timeout** – Time in seconds to wait for search
           criteria to match.
        -  **ap\_result\_count** – Minimum number of results to return.
        -  **ap\_result\_sort\_keys** – list of object properties to
           sort the query result with (sort key priority starts with
           element 0 as highest priority and then descends down the
           list).

        Raises ValueError:

         

        if neither *type\_name* or keyword filters are provided. Also
        raises, if search result count does not match the number
        specified by *ap\_result\_count* within *ap\_query\_timeout*
        seconds.

        .. raw:: html

           <div class="admonition seealso">

        See also

        Tutorial Section `*Writing Custom Proxy
        Classes* </sdk/autopilot/python/tutorial-advanced_autopilot#custom-proxy-classes>`__

        .. raw:: html

           </div>

     ``wait_select_single``\ (*type\_name='\*'*,
    *ap\_query\_timeout=10*,
    *\*\*kwargs*)\ ` <#autopilot.introspection.ProxyBase.wait_select_single>`__
        Get a proxy object matching some search criteria, retrying if no
        object is found until a timeout is reached.

        This method is identical to the
        ```select_single`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_single>`__
        method, except that this method will poll the application under
        test for 10 seconds in the event that the search criteria does
        not match anything.

        This method will return single proxy object from the
        introspection tree, with type equal to *type\_name* and
        (optionally) matching the keyword filters present in *kwargs*.

        You must specify either *type\_name*, keyword filters or both.

        This method searches recursively from the proxy object this
        method is called on. Calling
        ```select_single`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_single>`__
        on the application (root) proxy object will search the entire
        tree. Calling
        ```select_single`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase.select_single>`__
        on an object in the tree will only search it’s descendants.

        Example usage:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app.wait_select_single('QPushButton', objectName='clickme')
            # returns a QPushButton whose 'objectName' property is 'clickme'.
            # will poll the application until such an object exists, or will
            # raise StateNotFoundError after 10 seconds.

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        If nothing is returned from the query, this method raises
        StateNotFoundError after *ap\_query\_timeout* seconds.

        +---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **type\_name** – Either a string naming the type you want, or a class of the appropriate type (the latter case is for overridden emulator classes).   |
        |               | -  **ap\_query\_timeout** – Time in seconds to wait for search criteria to match.                                                                        |
        +---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | -  **ValueError** – if the query returns more than one item. *If you want more than one item, use select\_many instead*.                                 |
        |               | -  **ValueError** – if neither *type\_name* or keyword filters are provided.                                                                             |
        |               | -  **StateNotFoundError** – if the requested object was not found.                                                                                       |
        +---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

        .. raw:: html

           <div class="admonition seealso">

        See also

        Tutorial Section `*Writing Custom Proxy
        Classes* </sdk/autopilot/python/tutorial-advanced_autopilot#custom-proxy-classes>`__

        .. raw:: html

           </div>

    ``wait_until_destroyed``\ (*timeout=10*)\ ` <#autopilot.introspection.ProxyBase.wait_until_destroyed>`__
        Block until this object is destroyed in the application.

        Block until the object this instance is a proxy for has been
        destroyed in the applicaiton under test. This is commonly used
        to wait until a UI component has been destroyed.

        Parameters:

        **timeout** – The number of seconds to wait for the object to be
        destroyed. If not specified, defaults to 10 seconds.

        Raises RuntimeError:

         

        if the method timed out.

     ``wait_until_not_moving``\ (*retry\_attempts\_count=20*,
    *retry\_interval=0.5*)\ ` <#autopilot.introspection.ProxyBase.wait_until_not_moving>`__
        Block until this object is not moving.

        Block until both x and y of the object stop changing. This is
        normally useful for cases, where there is a need to ensure an
        object is static before interacting with it.

        Parameters:

        -  **retry\_attempts\_count** – number of attempts to check if
           the object is moving.
        -  **retry\_interval** – time in fractional seconds to be slept,
           between each attempt to check if the object moving.

        Raises RuntimeError:

         

        if DBus node is still moving after number of retries specified
        in *retry\_attempts\_count*.

``autopilot.introspection.``\ ``CustomEmulatorBase``\ ` <#autopilot.introspection.CustomEmulatorBase>`__
    alias of
    ```ProxyBase`` </sdk/autopilot/python/autopilot.introspection/ProxyBase#autopilot.introspection.ProxyBase>`__

 ``autopilot.introspection.``\ ``is_element``\ (*ap\_query\_func*,
*\*args*, *\*\*kwargs*)\ ` <#autopilot.introspection.is_element>`__
    Call the *ap\_query\_func* with the args and indicate if it raises
    StateNotFoundError.

    +------------+------------------------------------------------------------------------------------------------------------------------------+
    | Param:     | ap\_query\_func: The dbus query call to be evaluated.                                                                        |
    +------------+------------------------------------------------------------------------------------------------------------------------------+
    | Param:     | *args: The \*ap\_query\_func* positional parameters.                                                                         |
    +------------+------------------------------------------------------------------------------------------------------------------------------+
    | Param:     | `\*\* </sdk/autopilot/python/autopilot.introspection/ProxyBase#id1>`__\ kwargs: The *ap\_query\_func* optional parameters.   |
    +------------+------------------------------------------------------------------------------------------------------------------------------+
    | Returns:   | False if the *ap\_query\_func* raises StateNotFoundError, True otherwise.                                                    |
    +------------+------------------------------------------------------------------------------------------------------------------------------+

``autopilot.introspection.``\ ``get_classname_from_path``\ (*object\_path*)\ ` <#autopilot.introspection.get_classname_from_path>`__
    Given an object path, return the class name component.

``autopilot.introspection.``\ ``get_path_root``\ (*object\_path*)\ ` <#autopilot.introspection.get_path_root>`__
    Return the name of the root node of specified path.

 *exception*
``autopilot.introspection.``\ ``ProcessSearchError``\ ` <#autopilot.introspection.ProcessSearchError>`__
    Object introspection error occured.

``autopilot.introspection.``\ ``get_proxy_object_for_existing_process``\ (*\*\*kwargs*)\ ` <#autopilot.introspection.get_proxy_object_for_existing_process>`__
    Return a single proxy object for an application that is already
    running (i.e. launched outside of Autopilot).

    Searches the given bus (supplied by the kwarg **dbus\_bus**) for an
    application matching the search criteria (also supplied in kwargs,
    see further down for explaination on what these can be.) Returns a
    proxy object created using the supplied custom emulator
    **emulator\_base** (which defaults to None).

    This function take kwargs arguments containing search parameter
    values to use when searching for the target application.

    **Possible search criteria**: *(unless specified otherwise these
    parameters default to None)*

    +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | Parameters:   | -  **pid** – The PID of the application to search for.                                                                                                                                                                                              |
    |               | -  **process** – The process of the application to search for. If provided only the pid of the process is used in the search, but if the process exits before the search is complete it is used to supply details provided by the process object.   |
    |               | -  **connection\_name** – A string containing the DBus connection name to use with the search criteria.                                                                                                                                             |
    |               | -  **application\_name** – A string containing the applications name to search for.                                                                                                                                                                 |
    |               | -  **object\_path** – A string containing the object path to use as the search criteria. Defaults to: ``autopilot.introspection.constants.AUTOPILOT_PATH``.                                                                                         |
    +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

    **Non-search parameters:**

    +---------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | Parameters:   | -  **dbus\_bus** – The DBus bus to search for the application. Must be a string containing either ‘session’, ‘system’ or the custom buses name (i.e. ‘unix:abstract=/tmp/dbus-IgothuMHNk’). Defaults to ‘session’   |
    |               | -  **emulator\_base** – The custom emulator to use when creating the resulting proxy object. Defaults to None                                                                                                       |
    +---------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

    **Exceptions possibly thrown by this function:**

    +-----------+---------------------------------------------------------------------------------------------------+
    | Raises:   | -  **ProcessSearchError** – If no search criteria match.                                          |
    |           | -  **RuntimeError** – If the search criteria results in many matches.                             |
    |           | -  **RuntimeError** – If both ``process`` and ``pid`` are supplied, but ``process.pid != pid``.   |
    +-----------+---------------------------------------------------------------------------------------------------+

    **Examples:**

    Retrieving an application on the system bus where the applications
    PID is known:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        app_proxy = get_proxy_object_for_existing_process(pid=app_pid)

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Multiple criteria are allowed, for instance you could search on
    **pid** and **connection\_name**:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        app_proxy = get_proxy_object_for_existing_process(
            pid=app_pid,
            connection_name='org.gnome.Gedit'
        )

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    If the application from the previous example was on the system bus:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        app_proxy = get_proxy_object_for_existing_process(
            dbus_bus='system',
            pid=app_pid,
            connection_name='org.gnome.Gedit'
        )

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    It is possible to search for the application given just the
    applications name. An example for an application running on a custom
    bus searching using the applications name:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        app_proxy = get_proxy_object_for_existing_process(
            application_name='qmlscene',
            dbus_bus='unix:abstract=/tmp/dbus-IgothuMHNk'
        )

    .. raw:: html

       </div>

    .. raw:: html

       </div>

``autopilot.introspection.``\ ``get_proxy_object_for_existing_process_by_name``\ (*process\_name*,
*emulator\_base=None*)\ ` <#autopilot.introspection.get_proxy_object_for_existing_process_by_name>`__
    Return the proxy object for a process by its name.

    Parameters:

    -  **process\_name** – name of the process to get proxy object. This
       must be a string.
    -  **emulator\_base** – emulator base to use with the custom proxy
       object.

    Raises ValueError:

     

    if process not running or more than one PIDs associated with the
    process.

    Returns:

    proxy object for the requested process.
