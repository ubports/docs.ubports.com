.. _sdk_ubuntu_components_ubuntushapeoverlay:

Ubuntu.Components UbuntuShapeOverlay
====================================

Extended UbuntuShape adding a colored overlay layer.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`overlayColor <sdk_ubuntu_components_ubuntushapeoverlay_overlayColor>` : color
-  :ref:`overlayRect <sdk_ubuntu_components_ubuntushapeoverlay_overlayRect>` : rect

Detailed Description
--------------------

The :ref:`UbuntuShapeOverlay <sdk_ubuntu_components_ubuntushapeoverlay>` is a rounded rectangle (based on a `squircle <https://en.wikipedia.org/wiki/Squircle>`_ ) containing a set of layers composed, from top to bottom, of a colored rectangle overlay, an optional source image and a background color (solid or linear gradient). Different properties allow to change the look of the shape.

Example:

.. code:: qml

    import Ubuntu.Components 1.2
    UbuntuShapeOverlay {
        backgroundColor: "white"
        overlayColor: "black"
        overlayRect: Qt.rect(0.25, 0.25, 0.5, 0.5)
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_ubuntushapeoverlay_overlayColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| overlayColor : color                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets the color of the overlay rectangle defined by :ref:`overlayRect <sdk_ubuntu_components_ubuntushapeoverlay_overlayRect>`. The default value is transparent black.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushapeoverlay_overlayRect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| overlayRect : `rect <http://doc.qt.io/qt-5/qml-rect.html>`_                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets the overlay rectangle. The default value is the empty rectangle.

It is defined by a position and a size in normalized item coordinates (in the range between 0 and 1) with the origin at the top-left corner. An overlay covering the bottom part and starting at the vertical center can be done like that:

.. code:: qml

    UbuntuShapeOverlay {
        width: 200; height: 200
        overlayColor: Qt.rgba(0.0, 0.0, 0.5, 0.5)
        overlayRect: Qt.rect(0.0, 0.5, 1.0, 0.5)
    }

Converting a position and a size in pixels to normalized item coordinates can be done with a division by the size. Here is an equivalent of the previous code sample:

.. code:: qml

    UbuntuShapeOverlay {
        width: 200; height: 200
        overlayColor: Qt.rgba(0.0, 0.0, 0.5, 0.5)
        overlayRect: Qt.rect(100.0/width, 100.0/height, 200.0/width, 100.0/height)
    }

A geometry exceeding the item area is cropped.

This QML property was introduced in Ubuntu.Components 1.2.

