

.. rubric:: Application name
   :name: application-name

First of all, the application must have a proper application name set.
If you use Qt Creator's Ubuntu project wizards, you will have the
application name set by default, name which is in sync with the name
from the application's desktop file.

The application name plays an essential role in storing the state
archive. By specifying different application names, different state
archives can be serialized for the application. However runtime
application name change would require application restart.

Having these preconditions, we can deduct that
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__'s
applicationName property is one of the properties which cannot be
serialized.

.. rubric:: IDs
   :name: ids

Components for which property saving is wanted should define an ID, even
though it is otherwise not justified. For example the following code
snippet would give runtime error:

.. code:: qml

    Rectangle {
        color: "green"
        StateSaver.properties: "color"
    }

but giving an ID would make it serializable:

.. code:: qml

    Rectangle {
        id: rectangle
        color: "green"
        StateSaver.properties: "color"
    }

This rule must also be applied on component parents in the object
hierarchy.

.. code:: qml

    Item {
        id: root
        Rectangle {
            id: rectangle
            color: "green"
            StateSaver.properties: "color"
        }
    }

`Saving multiple
properties </sdk/apps/qml/UbuntuUserInterfaceToolkit/statesaving2/>`__
