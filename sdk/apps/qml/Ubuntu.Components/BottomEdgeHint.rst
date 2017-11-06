.. _sdk_ubuntu_components_bottomedgehint:

Ubuntu.Components BottomEdgeHint
================================

The BottomEdgeHint shows the availability of extra features available from the bottom edge of the application.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`ActionItem <sdk_ubuntu_components_actionitem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`deactivateTimeout <sdk_ubuntu_components_bottomedgehint_deactivateTimeout>` : int
-  :ref:`flickable <sdk_ubuntu_components_bottomedgehint_flickable>` : Flickable
-  :ref:`iconName <sdk_ubuntu_components_bottomedgehint_iconName>` : string
-  :ref:`iconSource <sdk_ubuntu_components_bottomedgehint_iconSource>` : url
-  :ref:`status <sdk_ubuntu_components_bottomedgehint_status>` : Status
-  :ref:`swipeArea <sdk_ubuntu_components_bottomedgehint_swipeArea>` : SwipeArea
-  :ref:`text <sdk_ubuntu_components_bottomedgehint_text>` : string

Signals
-------

-  void :ref:`clicked <sdk_ubuntu_components_bottomedgehint_clicked>`\ ()

Detailed Description
--------------------

It displays a label and/or an icon at the bottom of the component it is attached to.

When used with a mouse it acts like a button. The typical action associated with clicking on it should be revealing the extra features provided by the bottom edge.

Example:

.. code:: qml

    BottomEdgeHint {
        id: bottomEdgeHint
        text: i18n.tr("Favorites")
        onClicked: revealBottomEdge()
    }

The component is styled through **BottomEdgeHintStyle**.

Property Documentation
----------------------

.. _sdk_ubuntu_components_bottomedgehint_deactivateTimeout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| deactivateTimeout : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property specifies the timeout interval in milliseconds the :ref:`status <sdk_ubuntu_components_bottomedgehint_status>` is set to *Inactive* after a gesture based activation. Gesture based activation is only possible when mouse is not attached to the device. Defaults to 800 milliseconds.

.. _sdk_ubuntu_components_bottomedgehint_flickable:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickable : :ref:`Flickable <sdk_qtquick_flickable>`                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the flickable, which when flicked hides the hint. *Hidden* state is reached when this property is set to a Flickable which is flicking or moving. It is recommended to set the property when the hint is placed above a flickable content. Defaults to null.

.. _sdk_ubuntu_components_bottomedgehint_iconName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iconName : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The icon associated with the :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>` in the icon theme.

If both :ref:`iconSource <sdk_ubuntu_components_bottomedgehint_iconSource>` and iconName are defined, iconName will be ignored.

.. _sdk_ubuntu_components_bottomedgehint_iconSource:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iconSource : `url <http://doc.qt.io/qt-5/qml-url.html>`_                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The icon displayed by the :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>`.

This is the URL of any image file. If both iconSource and :ref:`iconName <sdk_ubuntu_components_bottomedgehint_iconName>` are defined, :ref:`iconName <sdk_ubuntu_components_bottomedgehint_iconName>` will be ignored.

.. _sdk_ubuntu_components_bottomedgehint_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : Status                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property represents the status of the hint. The property is writable so it can be set to any of the following values programatically:

+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status     | Description                                                                                                                                                                                          |
+============+======================================================================================================================================================================================================+
| Hidden     | The hint is not shown. Equivalent with setting *visible* to ``false``, however visuals may do animations when altering this property. It can only be set if the current status is not *Locked*.      |
+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inactive   | The hint is shown and inactive. Styles can represent this state with different visuals. When inactive, :ref:`clicked <sdk_ubuntu_components_bottomedgehint_clicked>` signal cannot be emitted.       |
+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Active     | The hint is shown and active, meaning :ref:`clicked <sdk_ubuntu_components_bottomedgehint_clicked>` signal is emitted when clicked with mouse.                                                       |
+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Locked     | Similar to *Active* the hint is shown and active, but no automatic transition to any other state is allowed. This is relevant for style implementations.                                             |
+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**Note:** *Locked* status value is set automatically when the system detects a mouse attached. In this case any change into other state value than *Locked* is rejected. Defaults to

-  Inactive if no mouse is attached or
-  Locked if there is a mouse detected.

.. _sdk_ubuntu_components_bottomedgehint_swipeArea:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] swipeArea : :ref:`SwipeArea <sdk_ubuntu_components_swipearea>`                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property specifies the :ref:`SwipeArea <sdk_ubuntu_components_swipearea>` attached to the component driving its behavior.

.. _sdk_ubuntu_components_bottomedgehint_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The label displayed by the :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>`.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_bottomedgehint_clicked:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void clicked()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This handler is called when there is a mouse click on the :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>` and the :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>` is not disabled.

