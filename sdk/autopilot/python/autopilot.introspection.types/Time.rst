.. _sdk_autopilot_introspection_types_time:
autopilot.introspection.types Time
==================================

 *class* ``autopilot.introspection.types.``\ ``Time``\ (*\*args*,
*\*\*kwargs*)\ ` </sdk/autopilot/python/autopilot.introspection/types.Time/#Time>`_ \ ` <#autopilot.introspection.types.Time>`_ 
    The Time class represents a time, without a date component.

    You can construct a Time instnace by passing the hours, minutes,
    seconds, and milliseconds to the class constructor:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_time = Time(12, 34, 01, 23)

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    The values passed in must be valid for their positions (ie..- 0-23
    for hours, 0-59 for minutes and seconds, and 0-999 for
    milliseconds). Passing invalid values will cause a ValueError to be
    raised.

    The hours, minutes, seconds, and milliseconds can be accessed using
    either index access or named properties:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_time.hours == my_time[0] == 12
        True
        >>> my_time.minutes == my_time[1] == 34
        True
        >>> my_time.seconds == my_time[2] == 01
        True
        >>> my_time.milliseconds == my_time[3] == 23
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Time instances can be compared to other time instances, any mutable
    sequence containing four integers, or datetime.time instances:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_time == Time(12, 34, 01, 23)
        True
        >>> my_time == Time(1,2,3,4)
        False

        >>> my_time == [12, 34, 01, 23]
        True

        >>> my_time == datetime.time(12, 34, 01, 23000)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Note that the Time class stores milliseconds, while the
    ``datettime.time`` class stores microseconds.

    Finally, you can get a ``datetime.time`` instance from a Time
    instance:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> isinstance(my_time.time, datetime.time)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>
