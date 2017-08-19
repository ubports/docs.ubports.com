autopilot.introspection.types.DateTime
======================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.introspection.types.DateTime">

class autopilot.introspection.types.DateTime(\*args, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

The DateTime class represents a date and time in the UTC timezone.

.. raw:: html

   </p>

.. raw:: html

   <p>

DateTime is constructed by passing a unix timestamp in to the
constructor. The incoming timestamp is assumed to be in UTC.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p>

This class expects the passed in timestamp to be in UTC but will display
the resulting date and time in local time (using the local timezone).

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

This is done to mimic the behaviour of most applications which will
display date and time in local time by default

.. raw:: html

   </p>

.. raw:: html

   <p>

Timestamps are expressed as the number of seconds since
1970-01-01T00:00:00 in the UTC timezone:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span> <span class="o">=</span> <span class="n">DateTime</span><span class="p">(</span><span class="mi">1377209927</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

This timestamp can always be accessed either using index access or via a
named property:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="n">my_dt</span><span class="o">.</span><span class="n">timestamp</span> <span class="o">==</span> <span class="mi">1377209927</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

DateTime objects also expose the usual named properties you would expect
on a date/time object:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span><span class="o">.</span><span class="n">year</span>
   <span class="go">2013</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span><span class="o">.</span><span class="n">month</span>
   <span class="go">8</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span><span class="o">.</span><span class="n">day</span>
   <span class="go">22</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span><span class="o">.</span><span class="n">hour</span>
   <span class="go">22</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span><span class="o">.</span><span class="n">minute</span>
   <span class="go">18</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span><span class="o">.</span><span class="n">second</span>
   <span class="go">47</span>
   </pre>

.. raw:: html

   <p>

Two DateTime objects can be compared for equality:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span> <span class="o">==</span> <span class="n">DateTime</span><span class="p">(</span><span class="mi">1377209927</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

You can also compare a DateTime with any mutable sequence type
containing the timestamp (although this probably isn’t very useful for
test authors):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_dt</span> <span class="o">==</span> <span class="p">[</span><span class="mi">1377209927</span><span class="p">]</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

Finally, you can also compare a DateTime instance with a python datetime
instance:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_datetime</span> <span class="o">=</span> <span class="n">datetime</span><span class="o">.</span><span class="n">datetime</span><span class="o">.</span><span class="n">utcfromtimestamp</span><span class="p">(</span><span class="mi">1377209927</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot supports dates beyond 2038 on 32-bit platforms. To achieve
this the underlying mechanisms require to work with timezone aware
datetime objects.

.. raw:: html

   </p>

.. raw:: html

   <blockquote class="last">

This means that the following won’t always be true (due to the naive
timestamp not having the correct daylight-savings time details):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="c"># This time stamp is within DST in the &#39;Europe/London&#39; timezone</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">dst_ts</span> <span class="o">=</span> <span class="mi">1405382400</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">os</span><span class="o">.</span><span class="n">environ</span><span class="p">[</span><span class="s">&#39;TZ&#39;</span><span class="p">]</span> <span class="o">=</span><span class="s">&#39;Europe/London&#39;</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">time</span><span class="o">.</span><span class="n">tzset</span><span class="p">()</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">datetime</span><span class="o">.</span><span class="n">fromtimestamp</span><span class="p">(</span><span class="n">dst_ts</span><span class="p">)</span><span class="o">.</span><span class="n">hour</span> <span class="o">==</span> <span class="n">DateTime</span><span class="p">(</span><span class="n">dst_ts</span><span class="p">)</span><span class="o">.</span><span class="n">hour</span>
   <span class="go">False</span>
   </pre>

.. raw:: html

   <p>

But this will work:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">dateutil.tz</span> <span class="kn">import</span> <span class="n">gettz</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">datetime</span><span class="o">.</span><span class="n">fromtimestamp</span><span class="p">(</span>
   <span class="go">        dst_ts, gettz()).hour == DateTime(dst_ts).hour</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

And this will always work to:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">dt1</span> <span class="o">=</span>  <span class="n">DateTime</span><span class="p">(</span><span class="n">nz_dst_timestamp</span><span class="p">)</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">dt2</span> <span class="o">=</span> <span class="n">datetime</span><span class="p">(</span>
   <span class="go">        dt1.year, dt1.month, dt1.day, dt1.hour, dt1.minute, dt1.second</span>
   <span class="go">    )</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">dt1</span> <span class="o">==</span> <span class="n">dt2</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   </blockquote>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

DateTime.timestamp() will not always equal the passed in timestamp. To
paraphrase a message from [http://bugs.python.org/msg229393]
“datetime.timestamp is supposed to be inverse of
datetime.fromtimestamp(), but since the later is not monotonic, no such
inverse exists in the strict mathematical sense.”

.. raw:: html

   </p>

.. raw:: html

   <p>

DateTime instances can be converted to datetime instances:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="n">my_dt</span><span class="o">.</span><span class="n">datetime</span><span class="p">,</span> <span class="n">datetime</span><span class="o">.</span><span class="n">datetime</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
