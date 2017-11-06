.. _sdk_ubuntu_components_pickers_picker:

Ubuntu.Components.Pickers Picker
================================

Picker is a slot-machine style value selection component.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.Pickers 1.3                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `circular </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#circular-prop>`_  : bool
-  `delegate </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#delegate-prop>`_  : Component
-  `itemHeight </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#itemHeight-prop>`_  : real
-  `live </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#live-prop>`_  : bool
-  `model </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#model-prop>`_  : var
-  `moving </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#moving-prop>`_  : bool
-  `selectedIndex </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#selectedIndex-prop>`_  : int

Methods
-------

-  `positionViewAtIndex </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#positionViewAtIndex-method>`_ \ (*index*)

Detailed Description
--------------------

The Picker lists the elements specified by the `model </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#model-prop>`_  using the `delegate </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#delegate-prop>`_  vertically using a slot-machine tumbler-like list. The selected item is always the one in the center of the component, and it is represented by the `selectedIndex </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#selectedIndex-prop>`_  property.

The elements can be either in a circular list or in a normal list.

Delegates must be composed using `PickerDelegate </sdk/apps/qml/Ubuntu.Components/Pickers.PickerDelegate/>`_ .

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Pickers 1.0
    Picker {
        model: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
        delegate: PickerDelegate {
            Label {
                text: modelData
            }
        }
        selectedIndex: 5
        onSelectedIndexChanged: {
            print("selected month: " + selectedIndex);
        }
    }

**Note**: the `selectedIndex </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#selectedIndex-prop>`_  must be set explicitly to the desired index if the model is set, filled or changed after the component is complete. In the following example the selected item must be set after the model is set.

.. code:: qml

    Picker {
        selectedIndex: 5 // this will be set to 0 at the model completion
        delegate: PickerDelegate {
            Label {
                text: modelData
            }
        }
        Component.onCompleted: {
            var stack = [];
            for (var i = 0; i < 10; i++) {
                stack.push("Line " + i);
            }
            model = stack;
            // selectedIndex must be set explicitly
            selectedIndex = 3;
        }
    }

Known issues
^^^^^^^^^^^^

-  [1] Circular picker does not react on touch generated flicks (on touch enabled devices) when nested into a Flickable - https://bugreports.qt-project.org/browse/QTBUG-30840
-  [2] Circular picker sets `selectedIndex </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#selectedIndex-prop>`_  to 0 when the model is cleared, contrary to linear one, which sets it to -1 - https://bugreports.qt-project.org/browse/QTBUG-35400

Property Documentation
----------------------

.. _sdk_ubuntu_components_pickers_picker_circular:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| circular : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Property specifying whether the tumbler list is wrap-around (*true*), or normal (*false*). Default value is true.

.. _sdk_ubuntu_components_pickers_picker_delegate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegate : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The delegate visualizing the model elements. Any kind of component can be used as delegate, however it is recommended to use `PickerDelegate </sdk/apps/qml/Ubuntu.Components/Pickers.PickerDelegate/>`_ , which integrates selection functionality into the Picker.

.. _sdk_ubuntu_components_pickers_picker_itemHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemHeight : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property specifies the defautl height of the PickerDelegates. It is recommended to change the delegate height through this property rather than changing it from the delegate itself.

This QML property was introduced in Ubuntu.Components.Pickers 1.3.

.. _sdk_ubuntu_components_pickers_picker_live:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| live : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines whether the `selectedIndex </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#selectedIndex-prop>`_  should be updated while the tumbler changes the selected item during draggingm or only when the tumbler's motion ends. The default behavior is non-live update.

.. _sdk_ubuntu_components_pickers_picker_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : `var <http://doc.qt.io/qt-5/qml-var.html>`_                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the model listing the content of the picker.

.. _sdk_ubuntu_components_pickers_picker_moving:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] moving : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds whether the picker's view is moving due to the user interaction either by dragging, flicking or due to the manual change of the `selectedIndex </sdk/apps/qml/Ubuntu.Components/Pickers.Picker/#selectedIndex-prop>`_  property.

.. _sdk_ubuntu_components_pickers_picker_selectedIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectedIndex : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the index of the selected item

Method Documentation
--------------------

.. _sdk_ubuntu_components_pickers_picker_positionViewAtIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| positionViewAtIndex( *index*)                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function positions the picker's view to the given index without animating the view. The component must be ready when calling the function, e.g. to make sure the Picker shows up at the given index, do the following:

.. code:: qml

    Picker {
        model: 120
        delegate: PickerDelegate {
            Label {
                anchors.fill: parent
                verticalCenter: Text.AlignVCenter
                text: modelData
            }
        }
        Component.onCompleted: positionViewAtIndex(10)
    }

