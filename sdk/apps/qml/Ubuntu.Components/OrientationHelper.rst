The OrientationHelper automatically rotates its children following the
orientation of the device.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `PopupBase </sdk/apps/qml/Ubuntu.Com |
|                                      | ponents/Popups.PopupBase/>`__.       |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`anchorToKeyboard </sdk/apps/qml/Ubuntu.Components/OrientationHelper#anchorToKeyboard-prop>`__****
   : bool
-  ****`automaticOrientation </sdk/apps/qml/Ubuntu.Components/OrientationHelper#automaticOrientation-prop>`__****
   : bool
-  ****`orientationAngle </sdk/apps/qml/Ubuntu.Components/OrientationHelper#orientationAngle-prop>`__****
   : int
-  ****`rotating </sdk/apps/qml/Ubuntu.Components/OrientationHelper#rotating-prop>`__****
   : bool
-  ****`transitionEnabled </sdk/apps/qml/Ubuntu.Components/OrientationHelper#transitionEnabled-prop>`__****
   : bool

Detailed Description
--------------------

Any Item placed inside an Orientation Helper will be automatically
rotated following the orientation of the device.

Note that
`OrientationHelper </sdk/apps/qml/Ubuntu.Components/OrientationHelper/>`__
is always filling its parent (anchors.parent: fill).

Example:

.. code:: qml

    Item {
        OrientationHelper {
            Label {
                text: "Automatically rotated"
            }
            Button {
                text: "Automatically rotated"
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ anchorToKeyboard : bool                                         |
+--------------------------------------------------------------------------+

The property holds if the
`OrientationHelper </sdk/apps/qml/Ubuntu.Components/OrientationHelper/>`__
should automatically resize the contents when the input method appears

The default value is false.

| 

+--------------------------------------------------------------------------+
|        \ automaticOrientation : bool                                     |
+--------------------------------------------------------------------------+

Sets whether it will be automatically rotating when the device is.

The default value is true.

| 

+--------------------------------------------------------------------------+
|        \ orientationAngle : int                                          |
+--------------------------------------------------------------------------+

Calculates the current orientation angle.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] rotating : bool                                     |
+--------------------------------------------------------------------------+

Exposes whether the orientationTransition is running.

| 

+--------------------------------------------------------------------------+
|        \ transitionEnabled : bool                                        |
+--------------------------------------------------------------------------+

Sets whether the rotation transition is performed.

The default value is true.

| 
