.. _sdk_qtquick_qt_quick_release_notes:

QtQuick Qt Quick Release Notes
==============================



`Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  2.1 is new in Qt 5.1. This is a summary of improvements and new features introduced by the new import and new classes in Qt 5.1:

-  New threaded render loop for Mac, Linux, and Embedded.
-  New render loop for windows for smoother animations.
-  New :ref:`Window <sdk_qtquick_window_window>` properties: activeFocusItem, minimumWidth, minimumHeight, maximumWidth, maximumHeight, visibility, contentOrientation, and opacity.
-  New `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_  attached properties: name, desktopAvailableWidth, desktopAvailableHeight, logicalPixelDensity
-  New `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_  properties: horizontalAlignment, verticalAlignment, and effectiveHorizontalAlignment.
-  New :ref:`TextEdit <sdk_qtquick_textedit>` properties: selectByKeyboard and textDocument
-  A :ref:`Window <sdk_qtquick_window_window>` declared inside another Window or :ref:`Item <sdk_qtquick_item>` will automatically be transient for (centered upon) the outer window.
-  These types are now part of Qt QML:

   -  `VisualItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#visualitemmodel>`_ 
   -  VisualDataModel - Encapsulates a model and a delegate
   -  VisualDataGroup

   These types are kept due to compatibility reasons and are replaced by the Qt QML Models types.

In Qt 5.1, there are several new modules which extend Qt Quick functionalities.

-  Qt Quick Dialogs - contains types for creating and interacting with system dialogs
-  Qt Quick Controls - provides a set of reusable UI components
-  Qt Quick Layouts - contains types that are used to arrange items in the user interface

The What's New in Qt 5.1 has more information about the Qt 5.1 release.

The `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  module is new in Qt 5. It provides the visual canvas and scenegraph back-end as well as the ``QtQuick`` QML module for QML application development.

As of Qt 5, the `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  module is based on an OpenGL scenegraph. Many of the classes in the `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  module have been ported from the QtDeclarative module from Qt 4.8 to use the scenegraph architecture; these classes have been renamed to use a ``QQuick*`` prefix. (See the Porting QML Applications to Qt 5 for porting information.)

The following classes provide the basic functionality for interacting with the QML visual canvas from C++:

-  QQuickItem - the base visual QML type (replaces ``QDeclarativeItem``)
-  QQuickView - a convenience window for rendering a QML scene from a QML file (replaces ``QDeclarativeView``)
-  QQuickWindow - a base window for displaying a QML scene
-  QQuickPaintedItem - convenience for using the QPainter API with the scenegraph
-  QQuickImageProvider - fetches custom images for use in QML applications (replaces ``QDeclarativeImageProvider``)
-  QQuickTextureFactory - use with QQuickImageProvider::requestTexture()

Custom rendering can be performed on the scenegraph using the following new classes:

-  QSGNode
-  QSGMaterial
-  QSGBasicGeometryNode
-  QSGGeometryNode
-  QSGClipNode
-  QSGTransformNode
-  QSGOpacityNode
-  QSGFlatColorMaterial
-  QSGSimpleRectNode
-  QSGSimpleTextureNode
-  QSGTexture
-  QSGDynamicTexture
-  QSGOpaqueTextureMaterial
-  QSGTextureMaterial
-  QSGTextureProvider
-  QSGVertexColorMaterial

The ``QtQuick 2.0`` QML module is a major update.

Below are the additions in ``QtQuick 2.0``. For a list of behavioral changes which may affect applications ported from ``QtQuick 1.x``, see the Porting QML Applications to Qt 5.

-  New :ref:`Canvas <sdk_qtquick_canvas>` type for drawing. This provides an API similar to that of the HTML5 Canvas API, along with some additional features.

   -  Supports two render targets: ``Canvas.Image`` and ``Canvas.FramebufferObject``.
   -  Supports background thread rendering.
   -  Supports tiled canvas rendering.
   -  Supports most of the HTML5 context2d APIs.

-  :ref:`Item <sdk_qtquick_item>`:

   -  New :ref:`layer.enabled <sdk_qtquick_item_layer_enabled>` property enables an item to be rendered into an offscreen cache for optimization.
   -  New :ref:`contains() <sdk_qtquick_item_contains>` method returns whether an item contains a specified point.
   -  New :ref:`anchors.alignWhenCentered <sdk_qtquick_item_anchors_alignWhenCentered>` property can force centered anchors to align on a whole pixel.
   -  New :ref:`enabled <sdk_qtquick_item_enabled>` property is available, which stops input event delivery and removes active focus.

-  `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ :

   -  New :ref:`horizontalAlignment <sdk_qtquick_image_horizontalAlignment>` and :ref:`verticalAlignment <sdk_qtquick_image_verticalAlignment>` properties to set the image alignment.
   -  New ``Image.Pad`` enumeration value for :ref:`fillMode <sdk_qtquick_image_fillMode>` that does not transform the image, unlike other :ref:`fillMode <sdk_qtquick_image_fillMode>` enumeration values.

-  New :ref:`ShaderEffect <sdk_qtquick_shadereffect>` and :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` types enable GLSL shader programs to be integrated directly into QML code and applied to QML items and images. (This obsoletes the experimental Qt.labs.shaders module.)
-  New `SpriteSequence </sdk/apps/qml/QtQuick/imageelements/#spritesequence>`_  type renders animated sprites and can transition between animations. Each animation in a sequence is represented by the new :ref:`Sprite <sdk_qtquick_sprite>` type.
-  New `AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites/#animatedsprite>`_  type for drawing single sprite animations.

-  New :ref:`AnimationController <sdk_qtquick_animationcontroller>` type enables an animation to be manually driven by a :ref:`progress <sdk_qtquick_animationcontroller_progress>` value.
-  New `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_  type animates an item along a :ref:`Path <sdk_qtquick_path>`.
-  New `PathInterpolator </sdk/apps/qml/QtQuick/animation/#pathinterpolator>`_  type provides updated attribute values for an item animating along a path. It can be used as an low-level alternative to `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ .
-  `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ :

   -  New :ref:`running <sdk_qtquick_transition_running>` property holds whether a transition is currently running.
   -  New :ref:`enabled <sdk_qtquick_transition_enabled>` property controls whether a transition is enabled.

-  New :ref:`PathArc <sdk_qtquick_patharc>` type creates an arc-type path.
-  New :ref:`PathCurve <sdk_qtquick_pathcurve>` type creates a catmull-rom curve path.
-  New :ref:`PathSvg <sdk_qtquick_pathsvg>` type creates a path from a SVG string.
-  Changes common to :ref:`PathLine <sdk_qtquick_pathline>`, :ref:`PathQuad <sdk_qtquick_pathquad>` and :ref:`PathCubic <sdk_qtquick_pathcubic>`:

   -  New ``relativeX`` and ``relativeY`` properties define the start and end points of a path relative to its start.

-  :ref:`PathCubic <sdk_qtquick_pathcubic>` only:

   -  New :ref:`relativeControl1X <sdk_qtquick_pathcubic_relativeControl1X>`, :ref:`relativeControl1Y <sdk_qtquick_pathcubic_relativeControl1Y>`, :ref:`relativeControl2X <sdk_qtquick_pathcubic_relativeControl2X>` and :ref:`relativeControl2Y <sdk_qtquick_pathcubic_relativeControl2Y>` properties define the positions of the control points relative to the start of the curve.

-  :ref:`PathQuad <sdk_qtquick_pathquad>` only:

   -  New :ref:`relativeControlX <sdk_qtquick_pathquad_relativeControlX>` and :ref:`relativeControlY <sdk_qtquick_pathquad_relativeControlY>` define the positions of the control points relative to the start of the curve.

-  Changes common to `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_ , :ref:`TextEdit <sdk_qtquick_textedit>` and :ref:`TextInput <sdk_qtquick_textinput>`:

   -  New ``contentWidth`` and ``contentHeight`` properties provide the dimensions of the textual content.
   -  New ``effectiveHorizontalAlignment`` property provides the read-only actual horizontal alignment.

-  Changes common to both :ref:`TextEdit <sdk_qtquick_textedit>` and :ref:`TextInput <sdk_qtquick_textinput>`:

   -  New ``canUndo`` and ``canRedo`` properties specify whether undo and redo operations are available.
   -  New ``getText()`` method returns the text located between specified start and end indexes. Additionally :ref:`TextEdit <sdk_qtquick_textedit>` has a :ref:`getFormattedText() <sdk_qtquick_textedit_getFormattedText>` method that returns the formatted text.

-  `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  only:

   -  ``Text.RightElide`` is now supported where text spans multiple lines.
   -  New :ref:`linkColor <sdk_qtquick_text_linkColor>` property controls the color of linked text.
   -  New :ref:`lineLaidOut <sdk_qtquick_text_lineLaidOut>` signal is emitted for every line during the layout process to give the option of positioning and/or resizing lines as they are laid out.
   -  New :ref:`doLayout() <sdk_qtquick_text_doLayout>` method will trigger the text layout from Javascript.
   -  New :ref:`fontSizeMode <sdk_qtquick_text_fontSizeMode>` property allows text to be fitted to the item size.
   -  New :ref:`minimumPixelSize <sdk_qtquick_text_minimumPixelSize>` and :ref:`minimumPointSize <sdk_qtquick_text_minimumPointSize>` properties can be used to specify a lower bound when auto-fitting.

-  :ref:`TextEdit <sdk_qtquick_textedit>` only:

   -  New :ref:`baseUrl <sdk_qtquick_textedit_baseUrl>` property specified the base URL used to resolve relative URLs within the text.

-  :ref:`TextInput <sdk_qtquick_textinput>` only:

   -  New :ref:`wrapMode <sdk_qtquick_textinput_wrapMode>` property sets the text wrapping mode.
   -  New :ref:`horizontalAlignment <sdk_qtquick_textinput_horizontalAlignment>` and :ref:`verticalAlignment <sdk_qtquick_textinput_verticalAlignment>` properties.
   -  New :ref:`length <sdk_qtquick_textinput_length>` property provides the total number of text characters.
   -  New :ref:`persistentSelection <sdk_qtquick_textinput_persistentSelection>` property enables the text selection to persist when the window loses focus.
   -  :ref:`positionAt() <sdk_qtquick_textinput_positionAt>` method now takes a y parameter.

-  New :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` type processes multi-point touches and provides information on touch points including position, pressure and velocity. Touch point data is provided by the new :ref:`TouchPoint <sdk_qtquick_touchpoint>` type.
-  New :ref:`DropArea <sdk_qtquick_droparea>` type provides more advanced drag and drop functionality.
-  :ref:`MouseArea <sdk_qtquick_mousearea>`:

   -  Wheel events are now supported; events are provided through the new :ref:`WheelEvent <sdk_qtquick_wheelevent>` type.
   -  New :ref:`propagateComposedEvents <sdk_qtquick_mousearea_propagateComposedEvents>` property sets whether composed events are propagated to other mouse areas. If this property is true and the handlers of the :ref:`clicked <sdk_qtquick_mousearea_clicked>`, :ref:`doubleClicked <sdk_qtquick_mousearea_doubleClicked>` or :ref:`pressAndHold <sdk_qtquick_mousearea_pressAndHold>` signals reject a mouse event, the event will be propagated to overlapping :ref:`MouseArea <sdk_qtquick_mousearea>` items in the same area that are lower in the stacking order.
   -  New :ref:`cursorShape <sdk_qtquick_mousearea_cursorShape>` property controls the cursor shape.

-  Flickable:

   -  New :ref:`rebound <sdk_qtquick_flickable_rebound>` property specifies the transition to be applied when a flickable snaps back to its bounds.
   -  New :ref:`topMargin <sdk_qtquick_flickable_topMargin>`, :ref:`bottomMargin <sdk_qtquick_flickable_bottomMargin>`, :ref:`leftMargin <sdk_qtquick_flickable_leftMargin>`, :ref:`rightMargin <sdk_qtquick_flickable_rightMargin>` allow extra margin space to be specified for a flickable. This can be used, for example, to implement pull-to-refresh functionality for a list.
   -  New :ref:`originX <sdk_qtquick_flickable_originX>` and :ref:`originY <sdk_qtquick_flickable_originY>` properties provide the top left position of the content item.
   -  New :ref:`dragging <sdk_qtquick_flickable_dragging>`, :ref:`draggingHorizontally <sdk_qtquick_flickable_draggingHorizontally>` and :ref:`draggingVertically <sdk_qtquick_flickable_draggingVertically>` properties provide information on whether a flickable is currently being dragged.
   -  New :ref:`flick() <sdk_qtquick_flickable_flick>` method flicks the view with a specific velocity.
   -  New :ref:`cancelFlick() <sdk_qtquick_flickable_cancelFlick>` method stops any current flicking movement.

-  Changes common to `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ , `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_ , `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_  and `Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_ :

   -  The ``add`` and ``move`` transitions can access a new :ref:`ViewTransition <sdk_qtquick_viewtransition>` attached property (see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for examples) and can now animate arbitrary item properties (instead of being restricted to animating an item's position).
   -  New ``effectiveLayoutDirection`` property provides the read-only actual layout direction of a positioner.
   -  New :ref:`Positioner <sdk_qtquick_positioner>` type provides ``index``, ``isFirstItem`` and ``isLastItem`` attached properties for items within positioners.
   -  All ``spacing`` properties on positioners now use real numbers instead of integers.

-  Grid only:

   -  New :ref:`rowSpacing <sdk_qtquick_grid_rowSpacing>` and :ref:`columnSpacing <sdk_qtquick_grid_columnSpacing>` properties.

-  Any delegate of a view that uses a `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ -derived model type can use the syntax ``model.<role> = <newDataValue>`` to modify the data for a particular role. (Previously, the ``model.<role>`` syntax was only available for reading, not writing to, a role value.)
-  `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ :

   -  By default, roles can no longer change type during a model's lifetime. The new dynamicRoles property can be set to restore the original (less performant) behavior.

-  VisualDataModel:

   -  Now has features to filter the items to be displayed in a view. This is supported by the new groups, filterOnGroup, items and persistedItems properties.

-  Changes common to both :ref:`ListView <sdk_qtquick_listview>` and `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ :

   -  New transition support for animating the adding, removing and moving of items in a :ref:`ListView <sdk_qtquick_listview>` or `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ . See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for details.
   -  New ``verticalLayoutDirection`` property enables items to be laid out from bottom-to-top using the new ``BottomToTop`` enumeration value.
   -  New ``headerItem`` and ``footerItem`` properties provide access to the instantiated header and footer items.
   -  The ``cacheBuffer`` property now has a non-zero default.
   -  Delegates in the cache buffer are now created asynchronously.
   -  Setting a ``RightToLeft`` layout now also reverses the ``preferredHighlightBegin`` and ``preferredHighlightEnd``.
   -  If the model is changed after the component is completed, currentIndex is reset to 0.

-  :ref:`ListView <sdk_qtquick_listview>` only:

   -  New :ref:`section.labelPositioning <sdk_qtquick_listview_section_labelPositioning>` property can fix the current section label to the start of the view, and the next section label to the end of the view, to prevent labels from scrolling while section items are still in view.
   -  ``highlightMoveSpeed`` and ``highlightResizeSpeed`` have been renamed to :ref:`highlightMoveVelocity <sdk_qtquick_listview_highlightMoveVelocity>` and :ref:`highlightResizeVelocity <sdk_qtquick_listview_highlightResizeVelocity>`.

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  only:

   -  :ref:`cellWidth <sdk_qtquick_gridview_cellWidth>` and :ref:`cellHeight <sdk_qtquick_gridview_cellHeight>` now use real numbers instead of integers.

-  :ref:`PathView <sdk_qtquick_pathview>`:

   -  New :ref:`currentItem <sdk_qtquick_pathview_currentItem>` property holds the current item in the view.
   -  New :ref:`maximumFlickVelocity <sdk_qtquick_pathview_maximumFlickVelocity>` property controls the maximum flick velocity of the view.
   -  New :ref:`snapMode <sdk_qtquick_pathview_snapMode>` property controls the snap model when flicking between items
   -  If the model is changed after the component is completed, the offset and currentIndex are reset to 0.
   -  New :ref:`positionViewAtIndex() <sdk_qtquick_pathview_positionViewAtIndex>` function allows the view to be moved to display the specified index.
   -  New :ref:`indexAt() <sdk_qtquick_pathview_indexAt>` and :ref:`itemAt() <sdk_qtquick_pathview_itemAt>` functions return the index or item at a specified point in the view.

-  New :ref:`Accessible <sdk_qtquick_accessible>` attached property for implementing accessibility features in QML applications.
-  :ref:`Loader <sdk_qtquick_loader>`:

   -  New :ref:`asynchronous <sdk_qtquick_loader_asynchronous>` property allows components to be instantiated with lower chance of blocking. If source is used with *asynchronous: true* the component will be compiled in a background thread.
   -  New :ref:`active <sdk_qtquick_loader_active>` property can delay instantiation of a :ref:`Loader <sdk_qtquick_loader>` object's :ref:`item <sdk_qtquick_loader_item>`.
   -  New :ref:`setSource() <sdk_qtquick_loader_setSource>` method loads an object with specific initial property values, similar to Component::createObject().

-  Binding:

   -  This type can now be used as a value source, and will also restore any previously set binding when its when clause becomes false.

Support for various math and geometry-related value types, including QVector2D, QVector3D, QVector4D, QMatrix4x4 and QQuaternion, as well as QColor and QFont, are now provided by `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_ . Properties of these types can be declared in QML documents via the property syntax where the type name is ``vector2d``, ``vector3d``, ``vector4d``, ``matrix4x4``, ``quaternion``, ``color`` and ``font`` respectively.

`Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  also provides implementation for the various value type factory or utility functions of the ``Qt`` object which return or operate on values of the above types. The functions are:

+--------------+-------------------------------------------------------------------------------+
| Value type   | Functions                                                                     |
+==============+===============================================================================+
| color        | Qt.rgba(), Qt.hsla(), Qt.tint(), Qt.lighter(), Qt.darker(), Qt.colorEqual()   |
+--------------+-------------------------------------------------------------------------------+
| font         | Qt.font(), Qt.fontFamilies()                                                  |
+--------------+-------------------------------------------------------------------------------+
| vector2d     | Qt.vector2d()                                                                 |
+--------------+-------------------------------------------------------------------------------+
| vector3d     | Qt.vector3d()                                                                 |
+--------------+-------------------------------------------------------------------------------+
| vector4d     | Qt.vector4d()                                                                 |
+--------------+-------------------------------------------------------------------------------+
| matrix4x4    | Qt.matrix4x4()                                                                |
+--------------+-------------------------------------------------------------------------------+
| quaternion   | Qt.quaternion()                                                               |
+--------------+-------------------------------------------------------------------------------+

The ``Qt.rgba()``, ``Qt.hsla()``, ``Qt.tint()``, ``Qt.lighter()``, ``Qt.darker()`` and ``Qt.fontFamilies()`` functions already existed in QtDeclarative prior to `Qt Quick 2 </sdk/apps/qml/QtQuick/qtquick-index/>`_ ; the other functions are all new in `Qt Quick 2 </sdk/apps/qml/QtQuick/qtquick-index/>`_ .

This new module provides particle system support for creating a variety of 2D particle systems. See the `QtQuick.Particles </sdk/apps/qml/QtQuick/qtquick-releasenotes/#qtquick-particles>`_  documentation for comprehensive details.

This obsoletes the experimental ``Qt.labs.particles`` module.

This new module contains the :ref:`Window <sdk_qtquick_window_window>` type for creating a basic window and the `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`_  type for accessing a screen's resolution and other details. See the `QtQuick.Window </sdk/apps/qml/QtQuick/qtquick-releasenotes/#qtquick-window>`_  documentation for comprehensive details.

This new module contains `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  and associated types, which were previously in the ``QtQuick`` module. See the `QtQuick.XmlListModel </sdk/apps/qml/QtQuick/qtquick-releasenotes/#qtquick-xmllistmodel>`_  documentation for details.

This new module provides access to the SQL Local Storage API that was previously accessible from the QML Global Object. See the `QtQuick.LocalStorage </sdk/apps/qml/QtQuick/qtquick-releasenotes/#qtquick-localstorage>`_  documentation for details.

