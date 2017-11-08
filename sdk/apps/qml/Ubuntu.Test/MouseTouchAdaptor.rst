.. _sdk_ubuntu_test_mousetouchadaptor:

Ubuntu.Test MouseTouchAdaptor
=============================

Singleton type turning mouse events into single finger touch events.

+---------------------+------------------------+
| Import Statement:   | import Ubuntu.Test .   |
+---------------------+------------------------+

Properties
----------

-  :ref:`enabled <sdk_ubuntu_test_mousetouchadaptor_enabled>` : bool

Detailed Description
--------------------

When enabled, mouse events will be translated into single finger touch events. Being a singleton, the feature must be enabled explicitly either on component completion or through a binding.

.. code:: qml

    Binding {
        target: MouseTouchAdaptor
        property: "enabled"
        value: true
    }

Property Documentation
----------------------

.. _sdk_ubuntu_test_mousetouchadaptor_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Enables the mouse to touch conversion functionality. Defaults to true.

