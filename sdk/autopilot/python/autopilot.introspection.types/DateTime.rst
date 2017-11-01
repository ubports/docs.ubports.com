 *class* ``autopilot.introspection.types.``\ ``DateTime``\ (*\*args*,
*\*\*kwargs*)\ ` </sdk/autopilot/python/autopilot.introspection/types.DateTime#DateTime>`__\ ` <#autopilot.introspection.types.DateTime>`__
    The DateTime class represents a date and time in the UTC timezone.

    DateTime is constructed by passing a unix timestamp in to the
    constructor. The incoming timestamp is assumed to be in UTC.

    .. raw:: html

       <div class="admonition note">

    Note

    This class expects the passed in timestamp to be in UTC but will
    display the resulting date and time in local time (using the local
    timezone).

    This is done to mimic the behaviour of most applications which will
    display date and time in local time by default

    .. raw:: html

       </div>

    Timestamps are expressed as the number of seconds since
    1970-01-01T00:00:00 in the UTC timezone:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_dt = DateTime(1377209927)

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    This timestamp can always be accessed either using index access or
    via a named property:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_dt[0] == my_dt.timestamp == 1377209927
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    DateTime objects also expose the usual named properties you would
    expect on a date/time object:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_dt.year
        2013
        >>> my_dt.month
        8
        >>> my_dt.day
        22
        >>> my_dt.hour
        22
        >>> my_dt.minute
        18
        >>> my_dt.second
        47

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Two DateTime objects can be compared for equality:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_dt == DateTime(1377209927)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    You can also compare a DateTime with any mutable sequence type
    containing the timestamp (although this probably isn’t very useful
    for test authors):

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_dt == [1377209927]
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    Finally, you can also compare a DateTime instance with a python
    datetime instance:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> my_datetime = datetime.datetime.utcfromtimestamp(1377209927)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>

    .. raw:: html

       <div class="admonition note">

    Note

    Autopilot supports dates beyond 2038 on 32-bit platforms. To achieve
    this the underlying mechanisms require to work with timezone aware
    datetime objects.

        .. raw:: html

           <div>

        This means that the following won’t always be true (due to the
        naive timestamp not having the correct daylight-savings time
        details):

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            >>> # This time stamp is within DST in the 'Europe/London' timezone
            >>> dst_ts = 1405382400
            >>> os.environ['TZ'] ='Europe/London'
            >>> time.tzset()
            >>> datetime.fromtimestamp(dst_ts).hour == DateTime(dst_ts).hour
            False

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        But this will work:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            >>> from dateutil.tz import gettz
            >>> datetime.fromtimestamp(
                    dst_ts, gettz()).hour == DateTime(dst_ts).hour
            True

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        And this will always work to:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            >>> dt1 =  DateTime(nz_dst_timestamp)
            >>> dt2 = datetime(
                    dt1.year, dt1.month, dt1.day, dt1.hour, dt1.minute, dt1.second
                )
            >>> dt1 == dt2
            True

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        .. raw:: html

           </div>

    .. raw:: html

       </div>

    .. raw:: html

       <div class="admonition note">

    Note

    DateTime.timestamp() will not always equal the passed in timestamp.
    To paraphrase a message from [http://bugs.python.org/msg229393]
    “datetime.timestamp is supposed to be inverse of
    datetime.fromtimestamp(), but since the later is not monotonic, no
    such inverse exists in the strict mathematical sense.”

    .. raw:: html

       </div>

    DateTime instances can be converted to datetime instances:

    .. raw:: html

       <div class="highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> isinstance(my_dt.datetime, datetime.datetime)
        True

    .. raw:: html

       </div>

    .. raw:: html

       </div>
