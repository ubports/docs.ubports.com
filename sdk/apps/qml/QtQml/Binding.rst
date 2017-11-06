.. _sdk_qtqml_binding:

QtQml Binding
=============

Enables the arbitrary creation of property bindings

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  :ref:`property <sdk_qtqml_binding_property>` : string
-  :ref:`target <sdk_qtqml_binding_target>` : Object
-  :ref:`value <sdk_qtqml_binding_value>` : any
-  :ref:`when <sdk_qtqml_binding_when>` : bool

Detailed Description
--------------------

Binding to an Inaccessible Property
-----------------------------------

Sometimes it is necessary to bind to a property of an object that wasn't directly instantiated by QML - generally a property of a class exported to QML by C++. In these cases, regular property binding doesn't work. Binding allows you to bind any value to any property.

For example, imagine a C++ application that maps an "app.enteredText" property into QML. You could use Binding to update the enteredText property like this.

.. code:: cpp

    TextEdit { id: myTextField; text: "Please type here..." }
    Binding { target: app; property: "enteredText"; value: myTextField.text }

Whenever the text in the TextEdit is updated, the C++ property will be updated also.

"Single-branch" conditional binding
-----------------------------------

In some circumstances you may want to control the value of a property only when a certain condition is true (and relinquish control in all other circumstances). This often isn't possible to accomplish with a direct binding, as you need to supply values for all possible branches.

.. code:: cpp

    // produces warning: "Unable to assign [undefined] to double value"
    value: if (mouse.pressed) mouse.mouseX

The above example will produce a warning whenever we release the mouse, as the value of the binding is undefined when the mouse isn't pressed. We can use the Binding type to rewrite the above code and avoid the warning.

.. code:: cpp

    Binding on value {
        when: mouse.pressed
        value: mouse.mouseX
    }

The Binding type will also restore any previously set direct bindings on the property. In that sense, it functions much like a simplified State.

.. code:: qml

    // this is equivalent to the above Binding
    State {
        name: "pressed"
        when: mouse.pressed
        PropertyChanges {
            target: obj
            value: mouse.mouseX
        }
    }

If the binding target or binding property is changed, the bound value is immediately pushed onto the new target.

**See also** `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_ .

Property Documentation
----------------------

.. _sdk_qtqml_binding_property:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| property : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property to be updated.

.. _sdk_qtqml_binding_target:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : Object                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The object to be updated.

.. _sdk_qtqml_binding_value:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| value : any                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The value to be set on the target object and property. This can be a constant (which isn't very useful), or a bound expression.

.. _sdk_qtqml_binding_when:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| when : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds when the binding is active. This should be set to an expression that evaluates to true when you want the binding to be active.

.. code:: cpp

    Binding {
        target: contactName; property: 'text'
        value: name; when: list.ListView.isCurrentItem
    }

When the binding becomes inactive again, any direct bindings that were previously set on the property will be restored.

