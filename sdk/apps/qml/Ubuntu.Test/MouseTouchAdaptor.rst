Singleton type turning mouse events into single finger touch events.

+---------------------+------------------------+
| Import Statement:   | import Ubuntu.Test .   |
+---------------------+------------------------+

Properties
----------

-  ****`enabled </sdk/apps/qml/Ubuntu.Test/MouseTouchAdaptor#enabled-prop>`__****
   : bool

Detailed Description
--------------------

When enabled, mouse events will be translated into single finger touch
events. Being a singleton, the feature must be enabled explicitly either
on component completion or through a binding.

.. code:: qml

    Binding {
        target: MouseTouchAdaptor
        property: "enabled"
        value: true
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

Enables the mouse to touch conversion functionality. Defaults to true.

| 
