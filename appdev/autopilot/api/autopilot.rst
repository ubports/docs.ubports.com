autopilot
=========

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.get_test_configuration">

autopilot.get\_test\_configuration()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the test configuration dictionary.

.. raw:: html

   </p>

.. raw:: html

   <p>

Tests can be configured from the command line when the autopilot tool is
invoked. Typical use cases involve configuring the test suite to use a
particular binary (perhaps a locally built binary or one installed to
the system), or configuring which external services are faked.

.. raw:: html

   </p>

.. raw:: html

   <p>

This dictionary is populated from the --config option to the autopilot
run command. For example:

.. raw:: html

   </p>

.. raw:: html

   <p>

autopilot run --config use\_local some.test.id

.. raw:: html

   </p>

.. raw:: html

   <p>

Will result in a dictionary where the key use\_local is present, and
evaluates to true, e.g.-:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot</span> <span class="kn">import</span> <span class="n">get_test_configuration</span>
   <span class="k">if</span> <span class="n">get_test_configuration</span><span class="p">[</span><span class="s">&#39;use_local&#39;</span><span class="p">]:</span> <span class="k">print</span><span class="p">(</span><span class="s">&quot;Using local binary&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Values can also be specified. The following command:

.. raw:: html

   </p>

.. raw:: html

   <p>

autopilot run --config fake\_services=login some.test.id

.. raw:: html

   </p>

.. raw:: html

   <p>

...will result in the key ‘fake\_services’ having the value ‘login’.

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot itself does nothing with the conents of this dictionary. It is
entirely up to test authors to populate it, and to use the values as
they see fit.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.get_version_string">

autopilot.get\_version\_string()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the autopilot source and package versions.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.have_vis">

autopilot.have\_vis()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return true if the vis package is installed.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <!-- End Namespace Content -->
