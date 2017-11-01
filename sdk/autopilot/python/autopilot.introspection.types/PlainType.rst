 *class*
``autopilot.introspection.types.``\ ``PlainType``\ ` </sdk/autopilot/python/autopilot.introspection/types.PlainType#PlainType>`__\ ` <#autopilot.introspection.types.PlainType>`__
    Plain type support in autopilot proxy objects.

    Instances of this class will be used for all plain attrubites. The
    word “plain” in this context means anything that’s marshalled as a
    string, boolean or integer type across dbus.

    Instances of these classes can be used just like the underlying
    type. For example, given an object property called ‘length’ that is
    marshalled over dbus as an integer value, the following will be
    true:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> isinstance(object.length, PlainType)
        True
        >>> isinstance(object.length, int)
        True
        >>> print(object.length)
        123
        >>> print(object.length + 32)
        155

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    However, a special case exists for boolean values: because you
    cannot subclass from the ‘bool’ type, the following check will fail
    ( ``object.visible`` is a boolean property):

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> isinstance(object.visible, bool)
        False

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    However boolean values will behave exactly as you expect them to.
