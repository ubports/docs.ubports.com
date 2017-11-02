.. _sdk_autopilot_introspection_types_size:
autopilot.introspection.types Size
==================================

 *class* ``autopilot.introspection.types.``\ ``Size``\ (*\*args*,
*\*\*kwargs*)\ ` </sdk/autopilot/python/autopilot.introspection/types.Size/#Size>`_ \ ` <#autopilot.introspection.types.Size>`_ 
    The Size class represents a 2D size in cartesian space.

    To construct a Size, pass in the width, height parameters to the
    class constructor:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_size = Size(50,100)

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

        >>> my_size.width == my_size.w == my_size[0] == 50
        True
        >>> my_size.height == my_size.h == my_size[1] == 100
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Size instances can be compared using ``==`` and ``!=``, either to
    another Size instance, or to any mutable sequence type with the
    correct number of items:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_size == [50, 100]
        True
        >>> my_size != Size(5, 10)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>
