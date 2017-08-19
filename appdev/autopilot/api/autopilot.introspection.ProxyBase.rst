autopilot.introspection.ProxyBase
=================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase">

class autopilot.introspection.ProxyBase(state\_dict, path, backend)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

A class that supports transparent data retrieval from the application
under test.

.. raw:: html

   </p>

.. raw:: html

   <p>

This class is the base class for all objects retrieved from the
application under test. It handles transparently refreshing attribute
values when needed, and contains many methods to select child objects in
the introspection tree.

.. raw:: html

   </p>

.. raw:: html

   <p>

This class must be used as a base class for any custom proxy classes.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <dl class="last docutils">

.. raw:: html

   <dt>

Tutorial Section Writing Custom Proxy Classes

.. raw:: html

   </dt>

.. raw:: html

   <dd>

Information on how to write custom proxy classes.

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_all_instances">

get\_all\_instances()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get all instances of this class that exist within the Application state
tree.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, to get all the LauncherIcon instances:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">icons</span> <span class="o">=</span> <span class="n">LauncherIcon</span><span class="o">.</span><span class="n">get_all_instances</span><span class="p">()</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Using this method is slow - it requires a complete scan of the
introspection tree. You should only use this when you’re not sure where
the objects you are looking for are located. Depending on the
application you are testing, you may get duplicate results using this
method.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

List (possibly empty) of class instances.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_children">

get\_children()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns a list of all child objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

This returns a list of all children. To return only children of a
specific type, use get\_children\_by\_type. To get objects further down
the introspection tree (i.e.- nodes that may not necessarily be
immeadiate children), use select\_single and select\_many.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_children_by_type">

get\_children\_by\_type(desired\_type, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a list of children of the specified type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Keyword arguments can be used to restrict returned instances. For
example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">get_children_by_type</span><span class="p">(</span><span class="s">&#39;Launcher&#39;</span><span class="p">,</span> <span class="n">monitor</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

will return only Launcher instances that have an attribute ‘monitor’
that is equal to 1. The type can also be specified as a string, which is
useful if there is no emulator class specified:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">get_children_by_type</span><span class="p">(</span><span class="s">&#39;Launcher&#39;</span><span class="p">,</span> <span class="n">monitor</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Note however that if you pass a string, and there is an emulator class
defined, autopilot will not use it.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

desired\_type – Either a string naming the type you want, or a class of
the type you want (the latter is used when defining custom emulators)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Tutorial Section Writing Custom Proxy Classes

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_parent">

get\_parent(type\_name='', \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns the parent of this object.

.. raw:: html

   </p>

.. raw:: html

   <p>

One may also use this method to get a specific parent node from the
introspection tree, with type equal to type\_name or matching the
keyword filters present in kwargs. Note: The priority order is closest
parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no filters are provided and this object has no parent (i.e.- it is
the root of the introspection tree). Then it returns itself.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

type\_name – Either a string naming the type you want, or a class of the
appropriate type (the latter case is for overridden emulator classes).

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises StateNotFoundError:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

if the requested object was not found.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_path">

get\_path()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the absolute path of the dbus node

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_properties">

get\_properties()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns a dictionary of all the properties on this class.

.. raw:: html

   </p>

.. raw:: html

   <p>

This can be useful when you want to log all the properties exported from
your application for a particular object. Every property in the returned
dictionary can be accessed as attributes of the object as well.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_root_instance">

get\_root\_instance()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the object at the root of this tree.

.. raw:: html

   </p>

.. raw:: html

   <p>

This will return an object that represents the root of the introspection
tree.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="classmethod">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.get_type_query_name">

classmethod get\_type\_query\_name()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the Type node name to use within the search query.

.. raw:: html

   </p>

.. raw:: html

   <p>

This allows for a Custom Proxy Object to be named differently to the
underlying node type name.

.. raw:: html

   </p>

.. raw:: html

   <p>

For instance if you have a QML type defined in the file RedRect.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre>import QtQuick 2.0
   Rectangle {
   color: red;
   }
   </pre>

.. raw:: html

   <p>

You can then define a Custom Proxy Object for this type like so:

.. raw:: html

   </p>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

class RedRect(DBusIntrospectionObject):

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p class="first">

@classmethod def get\_type\_query\_name(cls):

.. raw:: html

   </p>

.. raw:: html

   <blockquote class="last">

.. raw:: html

   </blockquote>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <p>

This is due to the qml engine storing ‘RedRect’ as a QQuickRectangle in
the UI tree and the xpathquery query needs a node type to query for. By
default the query will use the class name (in this case RedRect) but
this will not match any node type in the tree.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.is_moving">

is\_moving(gap\_interval=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Check if the element is moving.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

gap\_interval – Time in seconds to wait before re-inquiring the object
co-ordinates to be able to evaluate if, the element is moving.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

True, if the element is moving, otherwise False.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.no_automatic_refreshing">

no\_automatic\_refreshing()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Context manager function to disable automatic DBus refreshing when
retrieving attributes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <dt>

with instance.no\_automatic\_refreshing():

.. raw:: html

   </dt>

.. raw:: html

   <dd>

# access lots of attributes.

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

This can be useful if you need to check lots of attributes in a tight
loop, or if you want to atomicaly check several attributes at once.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.print_tree">

print\_tree(output=None, maxdepth=None, \_curdepth=0)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Print properties of the object and its children to a stream.

.. raw:: html

   </p>

.. raw:: html

   <p>

When writing new tests, this can be called when it is too difficult to
find the widget or property that you are interested in in “vis”.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Do not use this in production tests, this is expensive and not at all
appropriate for actual testing. Only call this temporarily and replace
with proper select\_single/select\_many calls.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

output – A file object or path name where the output will be written to.
If not given, write to stdout.

.. raw:: html

   </li>

.. raw:: html

   <li>

maxdepth – If given, limit the maximum recursion level to that number,
i. e. only print children which have at most maxdepth-1 intermediate
parents.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.refresh_state">

refresh\_state()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Refreshes the object’s state.

.. raw:: html

   </p>

.. raw:: html

   <p>

You should probably never have to call this directly. Autopilot
automatically retrieves new state every time this object’s attributes
are read.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises StateNotFound:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

if the object in the application under test has been destroyed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.select_many">

select\_many(type\_name='\*', ap\_result\_sort\_keys=None, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a list of nodes from the introspection tree, with type equal to
type\_name and (optionally) matching the keyword filters present in
kwargs.

.. raw:: html

   </p>

.. raw:: html

   <p>

You must specify either type\_name, keyword filters or both.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method searches recursively from the instance this method is called
on. Calling select\_many on the application (root) proxy object will
search the entire tree. Calling select\_many on an object in the tree
will only search it’s descendants.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example Usage:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">enabled</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
   <span class="c"># returns a list of QPushButtons that are enabled.</span>
   </pre>

.. raw:: html

   <p>

As mentioned above, this method searches the object tree recursively:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">file_menu</span> <span class="o">=</span> <span class="n">app</span><span class="o">.</span><span class="n">select_one</span><span class="p">(</span><span class="s">&#39;QMenu&#39;</span><span class="p">,</span> <span class="n">title</span><span class="o">=</span><span class="s">&#39;File&#39;</span><span class="p">)</span>
   <span class="n">file_menu</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&#39;QAction&#39;</span><span class="p">)</span>
   <span class="c"># returns a list of QAction objects who appear below file_menu in</span>
   <span class="c"># the object tree.</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The order in which objects are returned is not guaranteed. It is bad
practise to write tests that depend on the order in which this method
returns objects. (see Do Not Depend on Object Ordering for more
information).

.. raw:: html

   </p>

.. raw:: html

   <p>

If you want to ensure a certain count of results retrieved from this
method, use wait\_select\_many or if you only want to get one item, use
select\_single instead.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first simple">

.. raw:: html

   <li>

type\_name – Either a string naming the type you want, or a class of the
appropriate type (the latter case is for overridden emulator classes).

.. raw:: html

   </li>

.. raw:: html

   <li>

ap\_result\_sort\_keys – list of object properties to sort the query
result with (sort key priority starts with element 0 as highest priority
and then descends down the list).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ValueError:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

if neither type\_name or keyword filters are provided.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Tutorial Section Writing Custom Proxy Classes

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.select_single">

select\_single(type\_name='\*', \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a single node from the introspection tree, with type equal to
type\_name and (optionally) matching the keyword filters present in
kwargs.

.. raw:: html

   </p>

.. raw:: html

   <p>

You must specify either type\_name, keyword filters or both.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method searches recursively from the instance this method is called
on. Calling select\_single on the application (root) proxy object will
search the entire tree. Calling select\_single on an object in the tree
will only search it’s descendants.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
   <span class="c"># returns a QPushButton whose &#39;objectName&#39; property is &#39;clickme&#39;.</span>
   </pre>

.. raw:: html

   <p>

If nothing is returned from the query, this method raises
StateNotFoundError.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first">

type\_name – Either a string naming the type you want, or a class of the
appropriate type (the latter case is for overridden emulator classes).

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

ValueError – if the query returns more than one item. If you want more
than one item, use select\_many instead.

.. raw:: html

   </li>

.. raw:: html

   <li>

ValueError – if neither type\_name or keyword filters are provided.

.. raw:: html

   </li>

.. raw:: html

   <li>

StateNotFoundError – if the requested object was not found.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Tutorial Section Writing Custom Proxy Classes

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="classmethod">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.validate_dbus_object">

classmethod validate\_dbus\_object(path, \_state)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return whether this class is the appropriate proxy object class for a
given dbus path and state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default version matches the name of the dbus object and the class.
Subclasses of CustomProxyObject can override it to define a different
validation method.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first simple">

.. raw:: html

   <li>

path – The dbus path of the object to check

.. raw:: html

   </li>

.. raw:: html

   <li>

state – The dbus state dict of the object to check (ignored in default
implementation)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

Whether this class is appropriate for the dbus object

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.wait_select_many">

wait\_select\_many(type\_name='\*', ap\_query\_timeout=10,
ap\_result\_count=1, ap\_result\_sort\_keys=None, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a list of nodes from the introspection tree, with type equal to
type\_name and (optionally) matching the keyword filters present in
kwargs.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is identical to the select\_many method, except that this
method will poll the application under test for ap\_query\_timeout
seconds in the event that the search result count is not greater than or
equal to ap\_result\_count.

.. raw:: html

   </p>

.. raw:: html

   <p>

You must specify either type\_name, keyword filters or both.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method searches recursively from the instance this method is called
on. Calling wait\_select\_many on the application (root) proxy object
will search the entire tree. Calling wait\_select\_many on an object in
the tree will only search it’s descendants.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example Usage:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app</span><span class="o">.</span><span class="n">wait_select_many</span><span class="p">(</span>
   <span class="s">&#39;QPushButton&#39;</span><span class="p">,</span>
   <span class="n">ap_query_timeout</span><span class="o">=</span><span class="mi">5</span><span class="p">,</span>
   <span class="n">ap_result_count</span><span class="o">=</span><span class="mi">2</span><span class="p">,</span>
   <span class="n">enabled</span><span class="o">=</span><span class="bp">True</span>
   <span class="p">)</span>
   <span class="c"># returns at least 2 QPushButtons that are enabled, within</span>
   <span class="c"># 5 seconds.</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The order in which objects are returned is not guaranteed. It is bad
practise to write tests that depend on the order in which this method
returns objects. (see Do Not Depend on Object Ordering for more
information).

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first simple">

.. raw:: html

   <li>

type\_name – Either a string naming the type you want, or a class of the
appropriate type (the latter case is for overridden emulator classes).

.. raw:: html

   </li>

.. raw:: html

   <li>

ap\_query\_timeout – Time in seconds to wait for search criteria to
match.

.. raw:: html

   </li>

.. raw:: html

   <li>

ap\_result\_count – Minimum number of results to return.

.. raw:: html

   </li>

.. raw:: html

   <li>

ap\_result\_sort\_keys – list of object properties to sort the query
result with (sort key priority starts with element 0 as highest priority
and then descends down the list).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ValueError:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

if neither type\_name or keyword filters are provided. Also raises, if
search result count does not match the number specified by
ap\_result\_count within ap\_query\_timeout seconds.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Tutorial Section Writing Custom Proxy Classes

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.wait_select_single">

wait\_select\_single(type\_name='\*', ap\_query\_timeout=10, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a proxy object matching some search criteria, retrying if no object
is found until a timeout is reached.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is identical to the select\_single method, except that this
method will poll the application under test for 10 seconds in the event
that the search criteria does not match anything.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method will return single proxy object from the introspection tree,
with type equal to type\_name and (optionally) matching the keyword
filters present in kwargs.

.. raw:: html

   </p>

.. raw:: html

   <p>

You must specify either type\_name, keyword filters or both.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method searches recursively from the proxy object this method is
called on. Calling select\_single on the application (root) proxy object
will search the entire tree. Calling select\_single on an object in the
tree will only search it’s descendants.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
   <span class="c"># returns a QPushButton whose &#39;objectName&#39; property is &#39;clickme&#39;.</span>
   <span class="c"># will poll the application until such an object exists, or will</span>
   <span class="c"># raise StateNotFoundError after 10 seconds.</span>
   </pre>

.. raw:: html

   <p>

If nothing is returned from the query, this method raises
StateNotFoundError after ap\_query\_timeout seconds.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first simple">

.. raw:: html

   <li>

type\_name – Either a string naming the type you want, or a class of the
appropriate type (the latter case is for overridden emulator classes).

.. raw:: html

   </li>

.. raw:: html

   <li>

ap\_query\_timeout – Time in seconds to wait for search criteria to
match.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

ValueError – if the query returns more than one item. If you want more
than one item, use select\_many instead.

.. raw:: html

   </li>

.. raw:: html

   <li>

ValueError – if neither type\_name or keyword filters are provided.

.. raw:: html

   </li>

.. raw:: html

   <li>

StateNotFoundError – if the requested object was not found.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Tutorial Section Writing Custom Proxy Classes

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.wait_until_destroyed">

wait\_until\_destroyed(timeout=10)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Block until this object is destroyed in the application.

.. raw:: html

   </p>

.. raw:: html

   <p>

Block until the object this instance is a proxy for has been destroyed
in the applicaiton under test. This is commonly used to wait until a UI
component has been destroyed.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

timeout – The number of seconds to wait for the object to be destroyed.
If not specified, defaults to 10 seconds.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises RuntimeError:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

if the method timed out.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.introspection.ProxyBase.wait_until_not_moving">

wait\_until\_not\_moving(retry\_attempts\_count=20, retry\_interval=0.5)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Block until this object is not moving.

.. raw:: html

   </p>

.. raw:: html

   <p>

Block until both x and y of the object stop changing. This is normally
useful for cases, where there is a need to ensure an object is static
before interacting with it.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first simple">

.. raw:: html

   <li>

retry\_attempts\_count – number of attempts to check if the object is
moving.

.. raw:: html

   </li>

.. raw:: html

   <li>

retry\_interval – time in fractional seconds to be slept, between each
attempt to check if the object moving.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises RuntimeError:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

if DBus node is still moving after number of retries specified in
retry\_attempts\_count.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.introspection.CustomEmulatorBase">

autopilot.introspection.CustomEmulatorBase

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

alias of ProxyBase

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.introspection.is_element">

autopilot.introspection.is\_element(ap\_query\_func, \*args, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Call the ap\_query\_func with the args and indicate if it raises
StateNotFoundError.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Param:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

ap\_query\_func: The dbus query call to be evaluated.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Param:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

args: The \*ap\_query\_func positional parameters.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Param:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

\*\*kwargs: The ap\_query\_func optional parameters.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

False if the ap\_query\_func raises StateNotFoundError, True otherwise.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.introspection.get_classname_from_path">

autopilot.introspection.get\_classname\_from\_path(object\_path)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Given an object path, return the class name component.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.introspection.get_path_root">

autopilot.introspection.get\_path\_root(object\_path)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the name of the root node of specified path.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="exception">

.. raw:: html

   <dt id="autopilot.introspection.ProcessSearchError">

exception autopilot.introspection.ProcessSearchError

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Object introspection error occured.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.introspection.get_proxy_object_for_existing_process">

autopilot.introspection.get\_proxy\_object\_for\_existing\_process(\*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return a single proxy object for an application that is already running
(i.e. launched outside of Autopilot).

.. raw:: html

   </p>

.. raw:: html

   <p>

Searches the given bus (supplied by the kwarg dbus\_bus) for an
application matching the search criteria (also supplied in kwargs, see
further down for explaination on what these can be.) Returns a proxy
object created using the supplied custom emulator emulator\_base (which
defaults to None).

.. raw:: html

   </p>

.. raw:: html

   <p>

This function take kwargs arguments containing search parameter values
to use when searching for the target application.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible search criteria: (unless specified otherwise these parameters
default to None)

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

pid – The PID of the application to search for.

.. raw:: html

   </li>

.. raw:: html

   <li>

process – The process of the application to search for. If provided only
the pid of the process is used in the search, but if the process exits
before the search is complete it is used to supply details provided by
the process object.

.. raw:: html

   </li>

.. raw:: html

   <li>

connection\_name – A string containing the DBus connection name to use
with the search criteria.

.. raw:: html

   </li>

.. raw:: html

   <li>

application\_name – A string containing the applications name to search
for.

.. raw:: html

   </li>

.. raw:: html

   <li>

object\_path – A string containing the object path to use as the search
criteria. Defaults to:
autopilot.introspection.constants.AUTOPILOT\_PATH.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p>

Non-search parameters:

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

dbus\_bus – The DBus bus to search for the application. Must be a string
containing either ‘session’, ‘system’ or the custom buses name (i.e.
‘unix:abstract=/tmp/dbus-IgothuMHNk’). Defaults to ‘session’

.. raw:: html

   </li>

.. raw:: html

   <li>

emulator\_base – The custom emulator to use when creating the resulting
proxy object. Defaults to None

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p>

Exceptions possibly thrown by this function:

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

ProcessSearchError – If no search criteria match.

.. raw:: html

   </li>

.. raw:: html

   <li>

RuntimeError – If the search criteria results in many matches.

.. raw:: html

   </li>

.. raw:: html

   <li>

RuntimeError – If both process and pid are supplied, but process.pid !=
pid.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <p>

Retrieving an application on the system bus where the applications PID
is known:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span><span class="n">pid</span><span class="o">=</span><span class="n">app_pid</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Multiple criteria are allowed, for instance you could search on pid and
connection\_name:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span>
   <span class="n">pid</span><span class="o">=</span><span class="n">app_pid</span><span class="p">,</span>
   <span class="n">connection_name</span><span class="o">=</span><span class="s">&#39;org.gnome.Gedit&#39;</span>
   <span class="p">)</span>
   </pre>

.. raw:: html

   <p>

If the application from the previous example was on the system bus:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span>
   <span class="n">dbus_bus</span><span class="o">=</span><span class="s">&#39;system&#39;</span><span class="p">,</span>
   <span class="n">pid</span><span class="o">=</span><span class="n">app_pid</span><span class="p">,</span>
   <span class="n">connection_name</span><span class="o">=</span><span class="s">&#39;org.gnome.Gedit&#39;</span>
   <span class="p">)</span>
   </pre>

.. raw:: html

   <p>

It is possible to search for the application given just the applications
name. An example for an application running on a custom bus searching
using the applications name:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span>
   <span class="n">application_name</span><span class="o">=</span><span class="s">&#39;qmlscene&#39;</span><span class="p">,</span>
   <span class="n">dbus_bus</span><span class="o">=</span><span class="s">&#39;unix:abstract=/tmp/dbus-IgothuMHNk&#39;</span>
   <span class="p">)</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.introspection.get_proxy_object_for_existing_process_by_name">

autopilot.introspection.get\_proxy\_object\_for\_existing\_process\_by\_name(process\_name,
emulator\_base=None)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the proxy object for a process by its name.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first simple">

.. raw:: html

   <li>

process\_name – name of the process to get proxy object. This must be a
string.

.. raw:: html

   </li>

.. raw:: html

   <li>

emulator\_base – emulator base to use with the custom proxy object.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ValueError:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first">

if process not running or more than one PIDs associated with the
process.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

proxy object for the requested process.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
