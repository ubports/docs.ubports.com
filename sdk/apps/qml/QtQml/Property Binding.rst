.. _sdk_qtqml_property_binding:

QtQml Property Binding
======================


An object's property can be assigned a static value which stays constant until it is explicitly assigned a new value. However, to make the fullest use of QML and its built-in support for dynamic object behaviors, most QML objects use *property bindings*.

Property bindings are a core feature of QML that lets developers specify relationships between different object properties. When a property's *dependencies* change in value, the property is automatically updated according to the specified relationship.

Behind the scenes, the QML engine monitors the property's dependencies (that is, the variables in the binding expression). When a change is detected, the QML engine re-evaluates the binding expression and applies the new result to the property.

To create a property binding, a property is assigned a JavaScript expression that evaluates to the desired value. At its simplest, a binding may be a reference to another property. Take the following example, where the blue Rectangle's height is bound to the height of its parent:

.. code:: qml

    Rectangle {
        width: 200; height: 200
        Rectangle {
            width: 100
            height: parent.height
            color: "blue"
        }
    }

Whenever the height of the parent rectangle changes, the height of the blue rectangle automatically updates to be of the same value.

A binding can contain any valid JavaScript expression or statement, as QML uses a standards compliant JavaScript engine. Bindings can access object properties, call methods and use built-in JavaScript objects such as ``Date`` and ``Math``. Below are other possible bindings for the previous example:

.. code:: cpp

    height: parent.height / 2
    height: Math.min(parent.width, parent.height)
    height: parent.height > 100 ? parent.height : parent.height/2
    height: {
        if (parent.height > 100)
            return parent.height
        else
            return parent.height / 2
    }
    height: someMethodThatReturnsHeight()

Below is a more complex example involving more objects and types:

.. code:: qml

    Column {
        id: column
        width: 200
        height: 200
        Rectangle {
            id: topRect
            width: Math.max(bottomRect.width, parent.width/2)
            height: (parent.height / 3) + 10
            color: "yellow"
            TextInput {
                id: myTextInput
                text: "Hello QML!"
            }
        }
        Rectangle {
            id: bottomRect
            width: 100
            height: 50
            color: myTextInput.text.length <= 10 ? "red" : "blue"
        }
    }

In the previous example,

-  ``topRect.width`` depends on ``bottomRect.width`` and ``column.width``
-  ``topRect.height`` depends on ``column.height``
-  ``bottomRect.color`` depends on ``myTextInput.text.length``

Syntactically, bindings are allowed to be of arbitrary complexity. However, if a binding is overly complex - such as involving multiple lines, or imperative loops - it could indicate that the binding is being used for more than describing property relationships. Complex bindings can reduce code performance, readability, and maintainability. It may be a good idea to redesign components that have complex bindings, or at least factor the binding out into a separate function.

A property with a binding is automatically updated as necessary. However, if the property is later assigned a static value from a JavaScript statement, the binding will be removed.

For example, the Rectangle below initially ensures that its ``height`` is always twice its ``width``. However, when the space key is pressed, the current value of ``width*3`` will be assigned to ``height`` as a *static* value. After that, *the ``height`` will remain fixed at this value, even if the ``width`` changes*. The assignment of the static value removes the binding.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100
        height: width * 2
        focus: true
        Keys.onSpacePressed: {
            height = width * 3
        }
    }

If the intention is to give the rectangle a fixed height and stop automatic updates, then this is not a problem. However, if the intention is to establish a new relationship between ``width`` and ``height``, then the new binding expression must be wrapped in the Qt.binding() function instead:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100
        height: width * 2
        focus: true
        Keys.onSpacePressed: {
            height = Qt.binding(function() { return width * 3 })
        }
    }

Now, after the space key is pressed, the rectangle's height will continue auto-updating to always be three times its width.

When creating a property binding from JavaScript, the ``this`` keyword can be used to refer to the object which receives the binding. This is helpful for resolving ambiguities with property names.

For example, the ``Component.onCompleted`` handler below is defined within the scope of the Item. In this scope, ``width`` refers to the Item's width, not the Rectangle's width. To bind the Rectangle's ``height`` to its own ``width``, the binding expression must explicitly refer to ``this.width`` (or alternatively, ``rect.width``):

.. code:: qml

    Item {
        width: 500
        height: 500
        Rectangle {
            id: rect
            width: 100
            color: "yellow"
        }
        Component.onCompleted: {
            rect.height = Qt.binding(function() { return this.width * 2 })
            console.log("rect.height = " + rect.height) // prints 200, not 1000
        }
    }

**Note:** The value of ``this`` is not defined outside of property bindings. See `JavaScript Environment Restrictions </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/#javascript-environment-restrictions>`_  for details.

