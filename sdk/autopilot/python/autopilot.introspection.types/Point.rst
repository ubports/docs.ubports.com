 *class* ``autopilot.introspection.types.``\ ``Point``\ (*\*args*,
*\*\*kwargs*)\ ` </sdk/autopilot/python/autopilot.introspection/types.Point#Point>`__\ ` <#autopilot.introspection.types.Point>`__
    The Point class represents a 2D point in cartesian space.

    To construct a Point, pass in the x, y parameters to the class
    constructor:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_point = Point(50,100)

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    These attributes can be accessed either using named attributes, or
    via sequence indexes:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_point.x == my_point[0] == 50
        True
        >>> my_point.y == my_point[1] == 100
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Point instances can be compared using ``==`` and ``!=``, either to
    another Point instance, or to any mutable sequence type with the
    correct number of items:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_point == [50, 100]
        True
        >>> my_point != Point(5, 10)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>
