 *class* ``autopilot.introspection.types.``\ ``Rectangle``\ (*\*args*,
*\*\*kwargs*)\ ` </sdk/autopilot/python/autopilot.introspection/types.Rectangle#Rectangle>`__\ ` <#autopilot.introspection.types.Rectangle>`__
    The RectangleType class represents a rectangle in cartesian space.

    To construct a rectangle, pass the x, y, width and height parameters
    in to the class constructor:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        my_rect = Rectangle(12,13,100,150)

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

        >>>my_rect = Rectangle(12,13,100,150)
        >>> my_rect.x == my_rect[0] == 12
        True
        >>> my_rect.y == my_rect[1] == 13
        True
        >>> my_rect.w == my_rect[2] == 100
        True
        >>> my_rect.h == my_rect[3] == 150
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    You may also access the width and height values using the ``width``
    and ``height`` properties:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_rect.width == my_rect.w
        True
        >>> my_rect.height == my_rect.h
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Rectangles can be compared using ``==`` and ``!=``, either to
    another Rectangle instance, or to any mutable sequence type:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_rect == [12, 13, 100, 150]
        True
        >>> my_rect != Rectangle(1,2,3,4)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>
