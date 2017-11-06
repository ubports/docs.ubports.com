.. _sdk_ubuntu_components_ubuntushape:

Ubuntu.Components UbuntuShape
=============================

Rounded rectangle containing a source image blended over a background color.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`aspect <sdk_ubuntu_components_ubuntushape_aspect>` : enumeration
-  :ref:`backgroundColor <sdk_ubuntu_components_ubuntushape_backgroundColor>` : color
-  :ref:`backgroundMode <sdk_ubuntu_components_ubuntushape_backgroundMode>` : enumeration
-  :ref:`radius <sdk_ubuntu_components_ubuntushape_radius>` : string
-  :ref:`relativeRadius <sdk_ubuntu_components_ubuntushape_relativeRadius>` : real
-  :ref:`secondaryBackgroundColor <sdk_ubuntu_components_ubuntushape_secondaryBackgroundColor>` : color
-  :ref:`source <sdk_ubuntu_components_ubuntushape_source>` : variant
-  :ref:`sourceFillMode <sdk_ubuntu_components_ubuntushape_sourceFillMode>` : enumeration
-  :ref:`sourceHorizontalAlignment <sdk_ubuntu_components_ubuntushape_sourceHorizontalAlignment>` : enumeration
-  :ref:`sourceHorizontalWrapMode <sdk_ubuntu_components_ubuntushape_sourceHorizontalWrapMode>` : enumeration
-  :ref:`sourceOpacity <sdk_ubuntu_components_ubuntushape_sourceOpacity>` : real
-  :ref:`sourceScale <sdk_ubuntu_components_ubuntushape_sourceScale>` : vector2d
-  :ref:`sourceTranslation <sdk_ubuntu_components_ubuntushape_sourceTranslation>` : vector2d
-  :ref:`sourceVerticalAlignment <sdk_ubuntu_components_ubuntushape_sourceVerticalAlignment>` : enumeration
-  :ref:`sourceVerticalWrapMode <sdk_ubuntu_components_ubuntushape_sourceVerticalWrapMode>` : enumeration

Detailed Description
--------------------

The :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` is a rounded rectangle (based on a `squircle <https://en.wikipedia.org/wiki/Squircle>`_ ) containing an optional source image blended over a background color (solid or linear gradient). Different properties allow to change the look of the shape.

Examples:

.. code:: qml

    import Ubuntu.Components 1.2
    UbuntuShape {
        backgroundColor: "green"
    }

.. code:: qml

    import Ubuntu.Components 1.2
    UbuntuShape {
        source: Image {
            source: "ubuntu.png"
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_ubuntushape_aspect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| aspect : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the graphical style of the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>`. The default value is ``UbuntuShape.Inset``.

**Note:** Setting this disables support for the deprecated borderSource property. Use the UbuntuShapeOverlay item in order to provide the inset "pressed" aspect previously supported by that property.

-  **UbuntuShape.Flat** - no effects applied
-  **UbuntuShape.Inset** - inner shadow slightly moved downwards and bevelled bottom

.. _sdk_ubuntu_components_ubuntushape_backgroundColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| backgroundColor : color                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the background color. The default value is transparent black.

**Note:** Setting this disables support for the deprecated color and gradientColor properties.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_backgroundMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| backgroundMode : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the background rendering mode. The default value is ``UbuntuShape.SolidColor``.

**Note:** Setting this disables support for the deprecated color and gradientColor properties.

-  **UbuntuShape.SolidColor** - the color is :ref:`backgroundColor <sdk_ubuntu_components_ubuntushape_backgroundColor>`
-  **UbuntuShape.VerticalGradient** - the color is a vertical gradient from :ref:`backgroundColor <sdk_ubuntu_components_ubuntushape_backgroundColor>` to :ref:`secondaryBackgroundColor <sdk_ubuntu_components_ubuntushape_secondaryBackgroundColor>`.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_radius:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| radius : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the corner radius. Three fixed values are supported: ``"small"``, ``"medium"`` and ``"large"``. The default value is ``"small"``.

**Note:** Setting a non-zero :ref:`relativeRadius <sdk_ubuntu_components_ubuntushape_relativeRadius>` value disables this property temporarily.

.. _sdk_ubuntu_components_ubuntushape_relativeRadius:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeRadius : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines a radius relative to the size of the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>`. It is specified as a number between 0.0 (0%) and 0.75 (75%) corresponding to the proportion of the radius with regards to the smallest side (divided by 2 since a side has 2 angles). The default value is 0.0.

**Note:** Setting a non-zero value takes over the :ref:`radius <sdk_ubuntu_components_ubuntushape_radius>` property.

This QML property was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_ubuntushape_secondaryBackgroundColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| secondaryBackgroundColor : color                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the secondary background color. It is used when :ref:`backgroundMode <sdk_ubuntu_components_ubuntushape_backgroundMode>` is set to ``UbuntuShape.VerticalGradient``. The default value is transparent black.

**Note:** Setting this disables support for the deprecated color and gradientColor properties.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : `variant <http://doc.qt.io/qt-5/qml-variant.html>`_                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets the source provider of a texture rendered in the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>`. Supported types are ``Image``, ``AnimatedImage`` (to render a GIF image for instance) and ``ShaderEffectSource`` (to embed a UI previously rendered with QML). It is blended over the background color. The default value is ``null``.

It can be set either with an inlined ``Image``:

.. code:: qml

    Item {
        UbuntuShape {
            source: Image { source: "ubuntu.png" }
        }
    }

or with an ``Image`` ``id``:

.. code:: qml

    Item {
        Image {
            id: img
            visible: false
            source: "ubuntu.png"
        }
        UbuntuShape {
            source: img
        }
    }

Note that in this case, the ``Image`` is stored in the scene tree as any other items. So setting it as not visible might be needed.

The `sampling filter <https://en.wikipedia.org/wiki/Texture_filtering>`_  is set through the given Item's ``smooth`` property. Set it to ``false`` for nearest-neighbor filtering or to ``true`` for bilinear filtering.

The fill modes and alignments set on the ``Image`` and ``AnimatedImage`` are not monitored, use the appropriate :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` properties instead (:ref:`sourceFillMode <sdk_ubuntu_components_ubuntushape_sourceFillMode>`, :ref:`sourceHorizontalAlignment <sdk_ubuntu_components_ubuntushape_sourceHorizontalAlignment>` and :ref:`sourceVerticalAlignment <sdk_ubuntu_components_ubuntushape_sourceVerticalAlignment>`).

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceFillMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceFillMode : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This properties defines how the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture fills the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>`. The modes are the same as the ones used by ``Image``, minus the tiling which is exposed through wrapping properties (:ref:`sourceHorizontalWrapMode <sdk_ubuntu_components_ubuntushape_sourceHorizontalWrapMode>` and :ref:`sourceVerticalWrapMode <sdk_ubuntu_components_ubuntushape_sourceVerticalWrapMode>`). The default value is ``UbuntuShape.Stretch``.

**Note:** Setting this disables support for the deprecated image property.

-  **UbuntuShape.Stretch** - the source is scaled non-uniformly to fit
-  **UbuntuShape.PreserveAspectFit** - the source is scaled uniformly to fit without cropping
-  **UbuntuShape.PreserveAspectCrop** - the source is scaled uniformly to fit with cropping
-  **UbuntuShape.Pad** - the source is not scaled

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceHorizontalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceHorizontalAlignment : enumeration                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines how the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture is horizontally aligned inside the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` area. The default value is ``UbuntuShape.AlignLeft``.

**Note:** Setting this disables support for the deprecated image property.

-  **UbuntuShape.AlignLeft** - the source is aligned to the left
-  **UbuntuShape.AlignHCenter** - the source is aligned to the horizontal center
-  **UbuntuShape.AlignRight** - the source is aligned to the right

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceHorizontalWrapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceHorizontalWrapMode : enumeration                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When the :ref:`sourceFillMode <sdk_ubuntu_components_ubuntushape_sourceFillMode>` is set to ``UbuntuShape.Pad`` or ``UbuntuShape.PreserveAspectFit`` or when the :ref:`sourceScale <sdk_ubuntu_components_ubuntushape_sourceScale>` and/or :ref:`sourceTranslation <sdk_ubuntu_components_ubuntushape_sourceTranslation>` properties are changed, the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture might not cover the entire :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` area. This property defines how the source texture wraps outside of its content area. The default value is ``UbuntuShape.Transparent``.

Ensure ``UbuntuShape.Repeat`` is used only when necessary (in case of an ``Image`` or ``AnimatedImage`` source) as it requires the underlying texture to be extracted from its atlas. That slows down the rendering speed since it prevents the `QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`_  renderer to batch the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` with others.

**Note:** Some OpenGL ES 2 implementations do not support ``UbuntuShape.Repeat`` with non-power-of-two sized source textures.

**Note:** Setting this disables support for the deprecated image property.

-  **UbuntuShape.Transparent** - the source is clamped to transparent
-  **UbuntuShape.Repeat** - the source is repeated indefinitely

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceOpacity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceOpacity : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the opacity of the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture. Opacity is specified as a number between 0.0 (fully transparent) and 1.0 (fully opaque). The default value is 1.0.

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceScale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceScale : `vector2d <http://doc.qt.io/qt-5/qml-vector2d.html>`_                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the two-component vector used to scale the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture. The texture is scaled at the alignment point defined by :ref:`sourceHorizontalAlignment <sdk_ubuntu_components_ubuntushape_sourceHorizontalAlignment>` and :ref:`sourceVerticalAlignment <sdk_ubuntu_components_ubuntushape_sourceVerticalAlignment>`. The default value is ``Qt.vector2d(1.0,1.0)``.

That can be used to change the size of the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture, to flip it horizontally and/or vertically, to achieve pulsing animations, etc.

Here is a code sample showing how to apply an horizontal flip:

.. code:: qml

    UbuntuShape {
        source: Image { source: "ubuntu.png" }
        sourceScale: Qt.vector2d(-1.0, 1.0)
    }

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceTranslation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceTranslation : `vector2d <http://doc.qt.io/qt-5/qml-vector2d.html>`_                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the two-component vector in normalized item coordinates used to translate the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture. The default value is ``Qt.vector2d(0.0,0.0)``.

That can be used to put the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture at a precise position, to create infinite scrolling animations (using the ``UbuntuShape.Repeat`` wrap mode), etc.

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceVerticalAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceVerticalAlignment : enumeration                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines how the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture is vertically aligned inside the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` area. The default value is ``UbuntuShape.AlignTop``.

**Note:** Setting this disables support for the deprecated image property.

-  **UbuntuShape.AlignTop** - the source is aligned to the top
-  **UbuntuShape.AlignVCenter** - the source is aligned to the vertical center
-  **UbuntuShape.AlignBottom** - the source is aligned to the bottom

This QML property was introduced in Ubuntu.Components 1.2.

.. _sdk_ubuntu_components_ubuntushape_sourceVerticalWrapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceVerticalWrapMode : enumeration                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When the :ref:`sourceFillMode <sdk_ubuntu_components_ubuntushape_sourceFillMode>` is set to ``UbuntuShape.Pad`` or ``UbuntuShape.PreserveAspectFit`` or when the :ref:`sourceScale <sdk_ubuntu_components_ubuntushape_sourceScale>` and/or :ref:`sourceTranslation <sdk_ubuntu_components_ubuntushape_sourceTranslation>` properties are changed, the :ref:`source <sdk_ubuntu_components_ubuntushape_source>` texture might not cover the entire :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` area. This property defines how the source texture wraps outside of its content area. The default value is ``UbuntuShape.Transparent``.

Ensure ``UbuntuShape.Repeat`` is used only when necessary (in case of an ``Image`` or ``AnimatedImage`` source) as it requires the underlying texture to be extracted from its atlas. That slows down the rendering speed since it prevents the `QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`_  renderer to batch the :ref:`UbuntuShape <sdk_ubuntu_components_ubuntushape>` with others.

**Note:** Some OpenGL ES 2 implementations do not support ``UbuntuShape.Repeat`` with non-power-of-two sized source textures.

**Note:** Setting this disables support for the deprecated image property.

-  **UbuntuShape.Transparent** - the source is clamped to transparent
-  **UbuntuShape.Repeat** - the source is repeated indefinitely

This QML property was introduced in Ubuntu.Components 1.2.

