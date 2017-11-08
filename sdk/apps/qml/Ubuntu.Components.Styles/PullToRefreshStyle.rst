.. _sdk_ubuntu_components_styles_pulltorefreshstyle:

Ubuntu.Components.Styles PullToRefreshStyle
===========================================

Style API for PullToRefresh component.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.Styles 1.3                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `activationThreshold </sdk/apps/qml/Ubuntu.Components/Styles.PullToRefreshStyle/#activationThreshold-prop>`_  : real
-  `defaultContent </sdk/apps/qml/Ubuntu.Components/Styles.PullToRefreshStyle/#defaultContent-prop>`_  : Component
-  `releaseToRefresh </sdk/apps/qml/Ubuntu.Components/Styles.PullToRefreshStyle/#releaseToRefresh-prop>`_  : bool

Detailed Description
--------------------

The component defines the style API for the :ref:`PullToRefresh <sdk_ubuntu_components_pulltorefresh>` component.

Property Documentation
----------------------

.. _sdk_ubuntu_components_styles_pulltorefreshstyle_activationThreshold:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activationThreshold : real                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the threshold value when the component should enter into *ready-to-refresh* state when dragged manually. The default value is the height of the component styled.

.. _sdk_ubuntu_components_styles_pulltorefreshstyle_defaultContent:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| defaultContent : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the style provided default content component. The value is assigned to the :ref:`PullToRefresh::content <sdk_ubuntu_components_pulltorefresh_content>` property.

.. _sdk_ubuntu_components_styles_pulltorefreshstyle_releaseToRefresh:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| releaseToRefresh : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property informs the component when a manual refresh can be triggered. Style implementations (themes) can decide when to flip the component to be ready to trigger reftesh signal.

