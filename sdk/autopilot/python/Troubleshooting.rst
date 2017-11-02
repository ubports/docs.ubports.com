.. _sdk_troubleshooting:
Troubleshooting
===============


Contents

-  `Troubleshooting </sdk/autopilot/python/faq-troubleshooting/#troubleshooting>`_ 

   -  `General
      Techniques </sdk/autopilot/python/faq-troubleshooting/#general-techniques>`_ 
   -  `Common Questions regarding Failing
      Tests </sdk/autopilot/python/faq-troubleshooting/#common-questions-regarding-failing-tests>`_ 

      -  `Q. Why is my test failing? It works some of the time. What
         causes
         “flakyness?” </sdk/autopilot/python/faq-troubleshooting/#q-why-is-my-test-failing-it-works-some-of-the-time-what-causes-flakyness>`_ 
      -  `StateNotFoundError
         Exception </sdk/autopilot/python/faq-troubleshooting/#statenotfounderror-exception>`_ 

.. rubric:: `General
   Techniques </sdk/autopilot/python/faq-troubleshooting/#id2>`_ \ ` <#general-techniques>`_ 
   :name: general-techniques

The single hardest thing to do while writing autopilot tests is to
understand the state of the application’s object tree. This is
especially important for applications that change their object tree
during the lifetime of the test. There are three techniques you can use
to discover the state of the object tree:

**Using Autopilot Vis**

The `*Autopilot vis
tool* </sdk/autopilot/python/guides-running_ap/#visualise-introspection-tree>`_ 
is a useful tool for exploring the entire structure of an application,
and allows you to search for a particular node in the object tree. If
you want to find out what parts of the application to select to gain
access to certain information, the vis tool is probably the best way to
do that.

**Using print\_tree**

The
:ref:```print_tree`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase.print_tree>`
method is available on every proxy class. This method will print every
child of the proxy object recursively, either to ``stdout`` or a file on
disk. This technique can be useful when:

-  The application cannot easily be put into the state required before
   launching autopilot vis, so the vis tool is no longer an option.
-  The application state that has to be captured only exists for a short
   amount of time.
-  The application only runs on platforms where the vis tool isn’t
   available.

The
:ref:```print_tree`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase.print_tree>`
method often produces a lot of output. There are two ways this
information overload can be handled:

#. Specify a file path to write to, so the console log doesn’t get
   flooded. This log file can then be searched with tools such as
   ``grep``.
#. Specify a ``maxdepth`` limit. This controls how many levels deep the
   recursive search will go.

Of course, these techniques can be used in combination.

**Using get\_properties**

The
:ref:```get_properties`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase.get_properties>`
method can be used on any proxy object, and will return a python
dictionary containing all the properties of that proxy object. This is
useful when you want to explore what information is provided by a single
proxy object. The information returned by this method is exactly the
same as is shown in the right-hand pane of ``autopilot vis``.

.. rubric:: `Common Questions regarding Failing
   Tests </sdk/autopilot/python/faq-troubleshooting/#id3>`_ \ ` <#common-questions-regarding-failing-tests>`_ 
   :name: common-questions-regarding-failing-tests

   id="q-why-is-my-test-failing-it-works-some-of-the-time-what-causes-flakyness"
   class="section">

.. rubric:: `Q. Why is my test failing? It works some of the time. What
   causes
   “flakyness?” </sdk/autopilot/python/faq-troubleshooting/#id4>`_ \ ` <#q-why-is-my-test-failing-it-works-some-of-the-time-what-causes-flakyness>`_ 
   :name: q.-why-is-my-test-failing-it-works-some-of-the-time.-what-causes-flakyness

Sometimes a tests fails because the application under tests has issues,
but what happens when the failing test can’t be reproduced manually? It
means the test itself has an issue.

Here is a troubleshooting guide you can use with some of the common
problems that developers can overlook while writing tests.

.. rubric:: `StateNotFoundError
   Exception </sdk/autopilot/python/faq-troubleshooting/#id5>`_ \ ` <#statenotfounderror-exception>`_ 
   :name: statenotfounderror-exception

#. Not waiting for an animation to finish before looking for an object.
   Did you add animations to your app recently?

       .. raw:: html

          <div>

       -  problem:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              self.main_view.select_single('Button', text='click_this')

          .. raw:: html

             </div>

          .. raw:: html

             </div>

       -  solution:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              page.animationRunning.wait_for(False)
              self.main_view.select_single('Button', text='click_this')

          .. raw:: html

             </div>

          .. raw:: html

             </div>

       .. raw:: html

          </div>

#. Not waiting for an object to become visible before trying to select
   it. Is your app slower than it used to be for some reason? Does its
   properties have null values? Do you see errors in stdout/stderr while
   using your app, if you run it from the commandline?

    .. raw:: html

       <div>

    Python code is executed in series which takes milliseconds, whereas
    the actions (clicking a button etc.) will take longer as well as the
    dbus query time. This is why wait\_select\_\* is useful i.e. click a
    button and wait for that click to happen (including the dbus query
    times taken).

        .. raw:: html

           <div>

        -  problem:

           .. raw:: html

              <div class="highlight-python">

           .. raw:: html

              <div class="highlight">

           ::

               self.main_view.select_single('QPushButton', objectName='clickme')

           .. raw:: html

              </div>

           .. raw:: html

              </div>

        -  solution:

           .. raw:: html

              <div class="highlight-python">

           .. raw:: html

              <div class="highlight">

           ::

               self.main_view.wait_select_single('QPushButton', objectName='clickme')

           .. raw:: html

              </div>

           .. raw:: html

              </div>

        .. raw:: html

           </div>

    .. raw:: html

       </div>

3. 

   Waiting for an item that is destroyed to be not visible, sometimes
   the objects is destroyed before it returns false:
       -  problem:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              self.assertThat(dialogButton.visible, Eventually(Equals(False)))

          .. raw:: html

             </div>

          .. raw:: html

             </div>

       -  problem:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              self._get_activity_indicator().running.wait_for(False)

          .. raw:: html

             </div>

          .. raw:: html

             </div>

       -  solution:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              dialogButton.wait_for_destroyed()

          .. raw:: html

             </div>

          .. raw:: html

             </div>

       -  solution:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              self._get_activity_indicator().running.wait_for_destroyed()

          .. raw:: html

             </div>

          .. raw:: html

             </div>

4. 

   Trying to use select\_many like a list. The order in which the
   objects are returned are non-deterministic.
       -  problem:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              def get_first_photo(self):
                  """Returns first photo"""
                  return event.select_many(
                      'OrganicItemInteraction',
                      objectName='eventsViewPhoto'
                  )[0]

          .. raw:: html

             </div>

          .. raw:: html

             </div>

       -  solution:

          .. raw:: html

             <div class="highlight-python">

          .. raw:: html

             <div class="highlight">

          ::

              def _get_named_photo_element(self, photo_name):
                  """Return the ShapeItem container object for the named photo
                  This object can be clicked to enable the photo to be selected.
                  """
                  photo_element = self.grid_view().wait_select_single(
                      'QQuickImage',
                      source=photo_name
                  )
                  return photo_element.get_parent()

              def select_named_photo(self, photo_name):
                  """Select the named photo from the picker view."""
                  photo_element = self._get_named_photo_element(photo_name)
                  self.pointing_device.click_object(photo_element)

          .. raw:: html

             </div>

          .. raw:: html

             </div>

