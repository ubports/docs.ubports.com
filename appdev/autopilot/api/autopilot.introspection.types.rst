autopilot.introspection.types
=============================

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <h2>

Autopilot proxy type support.

.. raw:: html

   </h2>

.. raw:: html

   <p>

This module defines the classes that are used for all attributes on
proxy objects. All proxy objects contain attributes that transparently
mirror the values present in the application under test. Autopilot takes
care of keeping these values up to date.

.. raw:: html

   </p>

.. raw:: html

   <p>

Object attributes fall into two categories. Attributes that are a single
string, boolean, or integer property are sent directly across DBus.
These are called “plain” types, and are stored in autopilot as instnaces
of the PlainType class. Attributes that are more complex (a rectangle,
for example) are called “complex” types, and are split into several
component values, sent across dbus, and are then reconstituted in
autopilot into useful objects.

.. raw:: html

   </p>

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

DateTime

.. raw:: html

   </dt>

.. raw:: html

   <dd>

The DateTime class represents a date and time in the UTC timezone.

.. raw:: html

   </dd>

.. raw:: html

   <dt>

PlainType

.. raw:: html

   </dt>

.. raw:: html

   <dd>

Plain type support in autopilot proxy objects.

.. raw:: html

   </dd>

.. raw:: html

   <dt>

Point

.. raw:: html

   </dt>

.. raw:: html

   <dd>

The Point class represents a 2D point in cartesian space.

.. raw:: html

   </dd>

.. raw:: html

   <dt>

Rectangle

.. raw:: html

   </dt>

.. raw:: html

   <dd>

The RectangleType class represents a rectangle in cartesian space.

.. raw:: html

   </dd>

.. raw:: html

   <dt>

Size

.. raw:: html

   </dt>

.. raw:: html

   <dd>

The Size class represents a 2D size in cartesian space.

.. raw:: html

   </dd>

.. raw:: html

   <dt>

Time

.. raw:: html

   </dt>

.. raw:: html

   <dd>

The Time class represents a time, without a date component.

.. raw:: html

   </dd>

.. raw:: html

   </dl>
