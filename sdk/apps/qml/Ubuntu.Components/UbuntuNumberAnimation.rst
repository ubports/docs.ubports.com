UbuntuNumberAnimation is a NumberAnimation that has predefined settings
to ensure that Ubuntu applications are consistent in their animations.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `NumberAnimation </sdk/apps/qml/QtQu |
|                                      | ick/NumberAnimation/>`__             |
+--------------------------------------+--------------------------------------+

Detailed Description
--------------------

Example of use:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Rectangle {
        width: 100; height: 100
        color: UbuntuColors.orange
        UbuntuNumberAnimation on x { to: 50 }
    }

`UbuntuNumberAnimation </sdk/apps/qml/Ubuntu.Components/UbuntuNumberAnimation/>`__
is predefined with the following settings:

-  *duration*:
   `UbuntuAnimation.FastDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#FastDuration-prop>`__
-  *easing*:
   `UbuntuAnimation.StandardEasing </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#StandardEasing-prop>`__

If the standard duration and easing used by
`UbuntuNumberAnimation </sdk/apps/qml/Ubuntu.Components/UbuntuNumberAnimation/>`__
do not satisfy a use case or you need to use a different type of
Animation (e.g.
`ColorAnimation </sdk/apps/qml/QtQuick/qtquick-animation-example#coloranimation>`__),
use standard durations and easing defined in
`UbuntuAnimation </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation/>`__
manually in order to ensure consistency.
