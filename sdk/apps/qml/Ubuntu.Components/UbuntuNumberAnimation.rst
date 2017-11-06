.. _sdk_ubuntu_components_ubuntunumberanimation:

Ubuntu.Components UbuntuNumberAnimation
=======================================

UbuntuNumberAnimation is a NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`NumberAnimation <sdk_qtquick_numberanimation>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

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

:ref:`UbuntuNumberAnimation <sdk_ubuntu_components_ubuntunumberanimation>` is predefined with the following settings:

-  *duration*: :ref:`UbuntuAnimation.FastDuration <sdk_ubuntu_components_ubuntuanimation_FastDuration>`
-  *easing*: :ref:`UbuntuAnimation.StandardEasing <sdk_ubuntu_components_ubuntuanimation_StandardEasing>`

If the standard duration and easing used by :ref:`UbuntuNumberAnimation <sdk_ubuntu_components_ubuntunumberanimation>` do not satisfy a use case or you need to use a different type of Animation (e.g. `ColorAnimation </sdk/apps/qml/QtQuick/qtquick-animation-example/#coloranimation>`_ ), use standard durations and easing defined in :ref:`UbuntuAnimation <sdk_ubuntu_components_ubuntuanimation>` manually in order to ensure consistency.
