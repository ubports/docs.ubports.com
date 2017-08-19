autopilot.input
===============

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <h2>

Autopilot unified input system.

.. raw:: html

   </h2>

.. raw:: html

   <p>

This package provides input methods for various platforms. Autopilot
aims to provide an appropriate implementation for the currently running
system. For example, not all systems have an X11 stack running: on those
systems, autopilot will instantiate input classes class that use
something other than X11 to generate events (possibly UInput).

.. raw:: html

   </p>

.. raw:: html

   <p>

Test authors should instantiate the appropriate class using the create
method on each class. Calling create() with no arguments will get an
instance of the specified class that suits the current platform. In this
case, autopilot will do it’s best to pick a suitable backend. Calling
create with a backend name will result in that specific backend type
being returned, or, if it cannot be created, an exception will be
raised. For more information on creating backends, see Advanced Backend
Picking

.. raw:: html

   </p>

.. raw:: html

   <p>

There are three basic input types available:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Keyboard - traditional keyboard devices.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <dl class="first docutils">

.. raw:: html

   <dt>

Mouse - traditional mouse devices (Currently only avaialble on the

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p class="first last">

desktop).

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Touch - single point-of-contact touch device.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

The Pointer class is a wrapper that unifies the API of the Mouse and
Touch classes, which can be helpful if you want to write a test that can
use either a mouse of a touch device. A common pattern is to use a Touch
device when running on a mobile device, and a Mouse device when running
on a desktop.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <dl class="last docutils">

.. raw:: html

   <dt>

Module autopilot.gestures

.. raw:: html

   </dt>

.. raw:: html

   <dd>

Multitouch and gesture support for touch devices.

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

Keyboard

.. raw:: html

   </dt>

.. raw:: html

   <dd>

A simple keyboard device class.

.. raw:: html

   </dd>

.. raw:: html

   <dt>

Mouse

.. raw:: html

   </dt>

.. raw:: html

   <dd>

A simple mouse device class.

.. raw:: html

   </dd>

.. raw:: html

   <dt>

Pointer

.. raw:: html

   </dt>

.. raw:: html

   <dd>

A wrapper class that represents a pointing device which can either

.. raw:: html

   </dd>

.. raw:: html

   <dt>

Touch

.. raw:: html

   </dt>

.. raw:: html

   <dd>

A simple touch driver class.

.. raw:: html

   </dd>

.. raw:: html

   </dl>
