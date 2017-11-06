.. _sdk_qtquick_qt_quick_text_input_handling_and_validators:

QtQuick Qt Quick Text Input Handling and Validators
===================================================



Qt Quick provides several types to display text onto the screen. The `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  type will display formatted text onto the screen, the :ref:`TextEdit <sdk_qtquick_textedit>` type will place a multiline line edit onto the screen, and the :ref:`TextInput <sdk_qtquick_textinput>` will place a single editable line field onto the screen.

To learn more about their specific features and properties, visit their respective documentation.

The *validator* types enforce the type and format of :ref:`TextInput <sdk_qtquick_textinput>` objects.

.. code:: qml

    Column {
        spacing: 10
        Text {
            text: "Enter a value from 0 to 2000"
        }
        TextInput {
            focus: true
            validator: IntValidator { bottom:0; top: 2000}
        }
    }

The validator types bind to ``TextInput``'s ``validator`` property.

.. code:: qml

    Column {
        spacing: 10
        Text {
            text: "Which basket?"
        }
        TextInput {
            focus: true
            validator: RegExpValidator { regExp: /fruit basket/ }
        }
    }

The regular expression in the snippet will only allow the inputted text to be ``fruit basket``.

Note that QML parses JavaScript regular expressions, while Qt's QRegExp class' regular expressions are based on Perl regular expressions.

