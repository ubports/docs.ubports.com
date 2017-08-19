autopilot.exceptions
====================

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <p>

Autopilot Exceptions.

.. raw:: html

   </p>

.. raw:: html

   <p>

This module contains exceptions that autopilot may raise in various
conditions. Each exception is documented with when it is raised: a
generic description in this module, as well as a detailed description in
the function or method that raises it.

.. raw:: html

   </p>

.. raw:: html

   <dl class="exception">

.. raw:: html

   <dt id="autopilot.exceptions.BackendException">

exception autopilot.exceptions.BackendException(original\_exception)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

An error occured while trying to initialise an autopilot backend.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="exception">

.. raw:: html

   <dt id="autopilot.exceptions.ProcessSearchError">

exception autopilot.exceptions.ProcessSearchError

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Object introspection error occured.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="exception">

.. raw:: html

   <dt id="autopilot.exceptions.StateNotFoundError">

exception autopilot.exceptions.StateNotFoundError(class\_name=None,
\*\*filters)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Raised when a piece of state information is not found.

.. raw:: html

   </p>

.. raw:: html

   <p>

This exception is commonly raised when the application has destroyed (or
not yet created) the object you are trying to access in autopilot. This
typically happens for a number of possible reasons:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

The UI widget you are trying to access with select\_single or
wait\_select\_single or select\_many does not exist yet.

.. raw:: html

   </li>

.. raw:: html

   <li>

The UI widget you are trying to access has been destroyed by the
application.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="exception">

.. raw:: html

   <dt id="autopilot.exceptions.InvalidXPathQuery">

exception autopilot.exceptions.InvalidXPathQuery

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Raised when an XPathselect query is invalid or unsupported.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <!-- End Namespace Content -->
