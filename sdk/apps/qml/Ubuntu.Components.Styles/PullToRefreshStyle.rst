Style API for PullToRefresh component.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Styles 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`activationThreshold </sdk/apps/qml/Ubuntu.Components/Styles.PullToRefreshStyle#activationThreshold-prop>`__****
   : real
-  ****`defaultContent </sdk/apps/qml/Ubuntu.Components/Styles.PullToRefreshStyle#defaultContent-prop>`__****
   : Component
-  ****`releaseToRefresh </sdk/apps/qml/Ubuntu.Components/Styles.PullToRefreshStyle#releaseToRefresh-prop>`__****
   : bool

Detailed Description
--------------------

The component defines the style API for the
`PullToRefresh </sdk/apps/qml/Ubuntu.Components/PullToRefresh/>`__
component.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ activationThreshold : real                                      |
+--------------------------------------------------------------------------+

The property holds the threshold value when the component should enter
into *ready-to-refresh* state when dragged manually. The default value
is the height of the component styled.

| 

+--------------------------------------------------------------------------+
|        \ defaultContent : `Component </sdk/apps/qml/QtQml/Component/>`__ |
+--------------------------------------------------------------------------+

The property holds the style provided default content component. The
value is assigned to the
`PullToRefresh::content </sdk/apps/qml/Ubuntu.Components/PullToRefresh#content-prop>`__
property.

| 

+--------------------------------------------------------------------------+
|        \ releaseToRefresh : bool                                         |
+--------------------------------------------------------------------------+

The property informs the component when a manual refresh can be
triggered. Style implementations (themes) can decide when to flip the
component to be ready to trigger reftesh signal.

| 
