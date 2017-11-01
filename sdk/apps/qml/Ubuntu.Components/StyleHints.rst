Component holding style specific properties to configure a particular
StyledItem's style runtime.

+---------------------+-------------------------+
| Import Statement:   | import .                |
+---------------------+-------------------------+
| Since:              | Ubuntu.Components 1.3   |
+---------------------+-------------------------+

Properties
----------

-  ****`ignoreUnknownProperties </sdk/apps/qml/Ubuntu.Components/StyleHints#ignoreUnknownProperties-prop>`__****
   : bool

Detailed Description
--------------------

`StyleHints </sdk/apps/qml/Ubuntu.Components/StyleHints/>`__ is a custom
parser, meaning style properties can be listed without any property
declaration, same way as in
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ or
Connections, which are similar custom parsers. Properties enumerated do
not have to be present in the component's style as default, behavior
which can be chenged by setting
`ignoreUnknownProperties </sdk/apps/qml/Ubuntu.Components/StyleHints#ignoreUnknownProperties-prop>`__
to true. In this case properties not found in the style will be
displayed as warnings.

In the following example the Button will be drawn as white when not
pressed, and colored as blue when pressed.

.. code:: qml

    Button {
        id: button
        StyleHints {
            defaultColor: button.pressed ? "blue" : "white"
        }
    }

`StyleHints </sdk/apps/qml/Ubuntu.Components/StyleHints/>`__ does not
support signal properties (i.e signal handlers) and object declarations
as property values.

`StyleHints </sdk/apps/qml/Ubuntu.Components/StyleHints/>`__ can be only
declared in a
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__ or as a
derivate of it.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ ignoreUnknownProperties : bool                                  |
+--------------------------------------------------------------------------+

The property drives whether component should warn on properties not
found in the component's style. The default setting is not to warn.

| 
