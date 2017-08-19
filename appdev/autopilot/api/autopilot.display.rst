autopilot.display
=================

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <p>

The display module contaions support for getting screen information.

.. raw:: html

   </p>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.display.is_rect_on_screen">

autopilot.display.is\_rect\_on\_screen(screen\_number, rect)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return True if rect is entirely on the specified screen, with no
overlap.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.display.is_point_on_screen">

autopilot.display.is\_point\_on\_screen(screen\_number, point)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return True if point is on the specified screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

point must be an iterable type with two elements: (x, y)

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.display.is_point_on_any_screen">

autopilot.display.is\_point\_on\_any\_screen(point)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return true if point is on any currently configured screen.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.display.move_mouse_to_screen">

autopilot.display.move\_mouse\_to\_screen(screen\_number)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Move the mouse to the center of the specified screen.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <!-- End Namespace Content -->

.. raw:: html

   <h3>

Elements

.. raw:: html

   </h3>

.. raw:: html

   <dl>

.. raw:: html

   <dt>

Display

.. raw:: html

   </dt>

.. raw:: html

   <dd>

The base class/inteface for the display devices.

.. raw:: html

   </dd>

.. raw:: html

   </dl>
