

.. rubric:: Qt Quick in Qt 5.1
   :name: qt-quick-in-qt-5-1

`Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`__ 2.1 is new in Qt
5.1. This is a summary of improvements and new features introduced by
the new import and new classes in Qt 5.1:

-  New threaded render loop for Mac, Linux, and Embedded.
-  New render loop for windows for smoother animations.
-  New `Window </sdk/apps/qml/QtQuick/Window.Window/>`__ properties:
   activeFocusItem, minimumWidth, minimumHeight, maximumWidth,
   maximumHeight, visibility, contentOrientation, and opacity.
-  New `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`__ attached
   properties: name, desktopAvailableWidth, desktopAvailableHeight,
   logicalPixelDensity
-  New `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__
   properties: horizontalAlignment, verticalAlignment, and
   effectiveHorizontalAlignment.
-  New `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ properties:
   selectByKeyboard and textDocument
-  A `Window </sdk/apps/qml/QtQuick/Window.Window/>`__ declared inside
   another Window or `Item </sdk/apps/qml/QtQuick/Item/>`__ will
   automatically be transient for (centered upon) the outer window.
-  These types are now part of Qt QML:

   -  `VisualItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#visualitemmodel>`__
   -  VisualDataModel - Encapsulates a model and a delegate
   -  VisualDataGroup

   These types are kept due to compatibility reasons and are replaced by
   the Qt QML Models types.

.. rubric:: New Submodules
   :name: new-submodules

In Qt 5.1, there are several new modules which extend Qt Quick
functionalities.

-  Qt Quick Dialogs - contains types for creating and interacting with
   system dialogs
-  Qt Quick Controls - provides a set of reusable UI components
-  Qt Quick Layouts - contains types that are used to arrange items in
   the user interface

The What's New in Qt 5.1 has more information about the Qt 5.1 release.

.. rubric:: Qt Quick in Qt 5.0
   :name: qt-quick-in-qt-5-0

The `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`__ module is new in
Qt 5. It provides the visual canvas and scenegraph back-end as well as
the ``QtQuick`` QML module for QML application development.

As of Qt 5, the `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`__
module is based on an OpenGL scenegraph. Many of the classes in the `Qt
Quick </sdk/apps/qml/QtQuick/qtquick-index/>`__ module have been ported
from the QtDeclarative module from Qt 4.8 to use the scenegraph
architecture; these classes have been renamed to use a ``QQuick*``
prefix. (See the Porting QML Applications to Qt 5 for porting
information.)

The following classes provide the basic functionality for interacting
with the QML visual canvas from C++:

-  QQuickItem - the base visual QML type (replaces ``QDeclarativeItem``)
-  QQuickView - a convenience window for rendering a QML scene from a
   QML file (replaces ``QDeclarativeView``)
-  QQuickWindow - a base window for displaying a QML scene
-  QQuickPaintedItem - convenience for using the QPainter API with the
   scenegraph
-  QQuickImageProvider - fetches custom images for use in QML
   applications (replaces ``QDeclarativeImageProvider``)
-  QQuickTextureFactory - use with QQuickImageProvider::requestTexture()

Custom rendering can be performed on the scenegraph using the following
new classes:

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

.. rubric:: Qt 5.0 - QtQuick QML Module
   :name: qt-5-0-qtquick-qml-module

The ``QtQuick 2.0`` QML module is a major update.

Below are the additions in ``QtQuick 2.0``. For a list of behavioral
changes which may affect applications ported from ``QtQuick 1.x``, see
the Porting QML Applications to Qt 5.

.. rubric:: Visual types, Graphical Effects and Sprites
   :name: visual-types-graphical-effects-and-sprites

-  New `Canvas </sdk/apps/qml/QtQuick/Canvas/>`__ type for drawing. This
   provides an API similar to that of the HTML5 Canvas API, along with
   some additional features.

   -  Supports two render targets: ``Canvas.Image`` and
      ``Canvas.FramebufferObject``.
   -  Supports background thread rendering.
   -  Supports tiled canvas rendering.
   -  Supports most of the HTML5 context2d APIs.

-  `Item </sdk/apps/qml/QtQuick/Item/>`__:

   -  New
      `layer.enabled </sdk/apps/qml/QtQuick/Item#layer.enabled-prop>`__
      property enables an item to be rendered into an offscreen cache
      for optimization.
   -  New `contains() </sdk/apps/qml/QtQuick/Item#contains-method>`__
      method returns whether an item contains a specified point.
   -  New
      `anchors.alignWhenCentered </sdk/apps/qml/QtQuick/Item#anchors.alignWhenCentered-prop>`__
      property can force centered anchors to align on a whole pixel.
   -  New `enabled </sdk/apps/qml/QtQuick/Item#enabled-prop>`__ property
      is available, which stops input event delivery and removes active
      focus.

-  `Image </sdk/apps/qml/QtQuick/imageelements#image>`__:

   -  New
      `horizontalAlignment </sdk/apps/qml/QtQuick/Image#horizontalAlignment-prop>`__
      and
      `verticalAlignment </sdk/apps/qml/QtQuick/Image#verticalAlignment-prop>`__
      properties to set the image alignment.
   -  New ``Image.Pad`` enumeration value for
      `fillMode </sdk/apps/qml/QtQuick/Image#fillMode-prop>`__ that does
      not transform the image, unlike other
      `fillMode </sdk/apps/qml/QtQuick/Image#fillMode-prop>`__
      enumeration values.

-  New `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__ and
   `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__
   types enable GLSL shader programs to be integrated directly into QML
   code and applied to QML items and images. (This obsoletes the
   experimental Qt.labs.shaders module.)
-  New
   `SpriteSequence </sdk/apps/qml/QtQuick/imageelements#spritesequence>`__
   type renders animated sprites and can transition between animations.
   Each animation in a sequence is represented by the new
   `Sprite </sdk/apps/qml/QtQuick/Sprite/>`__ type.
-  New
   `AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__
   type for drawing single sprite animations.

.. rubric:: Animations and Transitions
   :name: animations-and-transitions

-  New
   `AnimationController </sdk/apps/qml/QtQuick/AnimationController/>`__
   type enables an animation to be manually driven by a
   `progress </sdk/apps/qml/QtQuick/AnimationController#progress-prop>`__
   value.
-  New `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__
   type animates an item along a `Path </sdk/apps/qml/QtQuick/Path/>`__.
-  New
   `PathInterpolator </sdk/apps/qml/QtQuick/animation#pathinterpolator>`__
   type provides updated attribute values for an item animating along a
   path. It can be used as an low-level alternative to
   `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__.
-  `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__:

   -  New `running </sdk/apps/qml/QtQuick/Transition#running-prop>`__
      property holds whether a transition is currently running.
   -  New `enabled </sdk/apps/qml/QtQuick/Transition#enabled-prop>`__
      property controls whether a transition is enabled.

.. rubric:: Paths
   :name: paths

-  New `PathArc </sdk/apps/qml/QtQuick/PathArc/>`__ type creates an
   arc-type path.
-  New `PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__ type creates a
   catmull-rom curve path.
-  New `PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__ type creates a path
   from a SVG string.
-  Changes common to `PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
   `PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__ and
   `PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__:

   -  New ``relativeX`` and ``relativeY`` properties define the start
      and end points of a path relative to its start.

-  `PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__ only:

   -  New
      `relativeControl1X </sdk/apps/qml/QtQuick/PathCubic#relativeControl1X-prop>`__,
      `relativeControl1Y </sdk/apps/qml/QtQuick/PathCubic#relativeControl1Y-prop>`__,
      `relativeControl2X </sdk/apps/qml/QtQuick/PathCubic#relativeControl2X-prop>`__
      and
      `relativeControl2Y </sdk/apps/qml/QtQuick/PathCubic#relativeControl2Y-prop>`__
      properties define the positions of the control points relative to
      the start of the curve.

-  `PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__ only:

   -  New
      `relativeControlX </sdk/apps/qml/QtQuick/PathQuad#relativeControlX-prop>`__
      and
      `relativeControlY </sdk/apps/qml/QtQuick/PathQuad#relativeControlY-prop>`__
      define the positions of the control points relative to the start
      of the curve.

.. rubric:: Text
   :name: text

-  Changes common to
   `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__,
   `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ and
   `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__:

   -  New ``contentWidth`` and ``contentHeight`` properties provide the
      dimensions of the textual content.
   -  New ``effectiveHorizontalAlignment`` property provides the
      read-only actual horizontal alignment.

-  Changes common to both `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__
   and `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__:

   -  New ``canUndo`` and ``canRedo`` properties specify whether undo
      and redo operations are available.
   -  New ``getText()`` method returns the text located between
      specified start and end indexes. Additionally
      `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ has a
      `getFormattedText() </sdk/apps/qml/QtQuick/TextEdit#getFormattedText-method>`__
      method that returns the formatted text.

-  `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ only:

   -  ``Text.RightElide`` is now supported where text spans multiple
      lines.
   -  New `linkColor </sdk/apps/qml/QtQuick/Text#linkColor-prop>`__
      property controls the color of linked text.
   -  New
      `lineLaidOut </sdk/apps/qml/QtQuick/Text#lineLaidOut-signal>`__
      signal is emitted for every line during the layout process to give
      the option of positioning and/or resizing lines as they are laid
      out.
   -  New `doLayout() </sdk/apps/qml/QtQuick/Text#doLayout-method>`__
      method will trigger the text layout from Javascript.
   -  New
      `fontSizeMode </sdk/apps/qml/QtQuick/Text#fontSizeMode-prop>`__
      property allows text to be fitted to the item size.
   -  New
      `minimumPixelSize </sdk/apps/qml/QtQuick/Text#minimumPixelSize-prop>`__
      and
      `minimumPointSize </sdk/apps/qml/QtQuick/Text#minimumPointSize-prop>`__
      properties can be used to specify a lower bound when auto-fitting.

-  `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ only:

   -  New `baseUrl </sdk/apps/qml/QtQuick/TextEdit#baseUrl-prop>`__
      property specified the base URL used to resolve relative URLs
      within the text.

-  `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ only:

   -  New `wrapMode </sdk/apps/qml/QtQuick/TextInput#wrapMode-prop>`__
      property sets the text wrapping mode.
   -  New
      `horizontalAlignment </sdk/apps/qml/QtQuick/TextInput#horizontalAlignment-prop>`__
      and
      `verticalAlignment </sdk/apps/qml/QtQuick/TextInput#verticalAlignment-prop>`__
      properties.
   -  New `length </sdk/apps/qml/QtQuick/TextInput#length-prop>`__
      property provides the total number of text characters.
   -  New
      `persistentSelection </sdk/apps/qml/QtQuick/TextInput#persistentSelection-prop>`__
      property enables the text selection to persist when the window
      loses focus.
   -  `positionAt() </sdk/apps/qml/QtQuick/TextInput#positionAt-method>`__
      method now takes a y parameter.

.. rubric:: User Input
   :name: user-input

-  New
   `MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
   type processes multi-point touches and provides information on touch
   points including position, pressure and velocity. Touch point data is
   provided by the new
   `TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`__ type.
-  New `DropArea </sdk/apps/qml/QtQuick/DropArea/>`__ type provides more
   advanced drag and drop functionality.
-  `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__:

   -  Wheel events are now supported; events are provided through the
      new `WheelEvent </sdk/apps/qml/QtQuick/WheelEvent/>`__ type.
   -  New
      `propagateComposedEvents </sdk/apps/qml/QtQuick/MouseArea#propagateComposedEvents-prop>`__
      property sets whether composed events are propagated to other
      mouse areas. If this property is true and the handlers of the
      `clicked </sdk/apps/qml/QtQuick/MouseArea#clicked-signal>`__,
      `doubleClicked </sdk/apps/qml/QtQuick/MouseArea#doubleClicked-signal>`__
      or
      `pressAndHold </sdk/apps/qml/QtQuick/MouseArea#pressAndHold-signal>`__
      signals reject a mouse event, the event will be propagated to
      overlapping `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ items
      in the same area that are lower in the stacking order.
   -  New
      `cursorShape </sdk/apps/qml/QtQuick/MouseArea#cursorShape-prop>`__
      property controls the cursor shape.

.. rubric:: Specialized Containers
   :name: specialized-containers

-  Flickable:

   -  New `rebound </sdk/apps/qml/QtQuick/Flickable#rebound-prop>`__
      property specifies the transition to be applied when a flickable
      snaps back to its bounds.
   -  New
      `topMargin </sdk/apps/qml/QtQuick/Flickable#topMargin-prop>`__,
      `bottomMargin </sdk/apps/qml/QtQuick/Flickable#bottomMargin-prop>`__,
      `leftMargin </sdk/apps/qml/QtQuick/Flickable#leftMargin-prop>`__,
      `rightMargin </sdk/apps/qml/QtQuick/Flickable#rightMargin-prop>`__
      allow extra margin space to be specified for a flickable. This can
      be used, for example, to implement pull-to-refresh functionality
      for a list.
   -  New `originX </sdk/apps/qml/QtQuick/Flickable#originX-prop>`__ and
      `originY </sdk/apps/qml/QtQuick/Flickable#originY-prop>`__
      properties provide the top left position of the content item.
   -  New `dragging </sdk/apps/qml/QtQuick/Flickable#dragging-prop>`__,
      `draggingHorizontally </sdk/apps/qml/QtQuick/Flickable#draggingHorizontally-prop>`__
      and
      `draggingVertically </sdk/apps/qml/QtQuick/Flickable#draggingVertically-prop>`__
      properties provide information on whether a flickable is currently
      being dragged.
   -  New `flick() </sdk/apps/qml/QtQuick/Flickable#flick-method>`__
      method flicks the view with a specific velocity.
   -  New
      `cancelFlick() </sdk/apps/qml/QtQuick/Flickable#cancelFlick-method>`__
      method stops any current flicking movement.

.. rubric:: Positioners (Row, Column, Grid, Flow types):
   :name: positioners-row-column-grid-flow-types

-  Changes common to
   `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__,
   `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__,
   `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__ and
   `Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#flow>`__:

   -  The ``add`` and ``move`` transitions can access a new
      `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__
      attached property (see the
      `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__
      documentation for examples) and can now animate arbitrary item
      properties (instead of being restricted to animating an item's
      position).
   -  New ``effectiveLayoutDirection`` property provides the read-only
      actual layout direction of a positioner.
   -  New `Positioner </sdk/apps/qml/QtQuick/Positioner/>`__ type
      provides ``index``, ``isFirstItem`` and ``isLastItem`` attached
      properties for items within positioners.
   -  All ``spacing`` properties on positioners now use real numbers
      instead of integers.

-  Grid only:

   -  New `rowSpacing </sdk/apps/qml/QtQuick/Grid#rowSpacing-prop>`__
      and
      `columnSpacing </sdk/apps/qml/QtQuick/Grid#columnSpacing-prop>`__
      properties.

.. rubric:: Models and Views
   :name: models-and-views

-  Any delegate of a view that uses a
   `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels#qabstractitemmodel>`__-derived
   model type can use the syntax ``model.<role> = <newDataValue>`` to
   modify the data for a particular role. (Previously, the
   ``model.<role>`` syntax was only available for reading, not writing
   to, a role value.)
-  `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__:

   -  By default, roles can no longer change type during a model's
      lifetime. The new dynamicRoles property can be set to restore the
      original (less performant) behavior.

-  VisualDataModel:

   -  Now has features to filter the items to be displayed in a view.
      This is supported by the new groups, filterOnGroup, items and
      persistedItems properties.

-  Changes common to both `ListView </sdk/apps/qml/QtQuick/ListView/>`__
   and `GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__:

   -  New transition support for animating the adding, removing and
      moving of items in a
      `ListView </sdk/apps/qml/QtQuick/ListView/>`__ or
      `GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__. See the
      `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__
      documentation for details.
   -  New ``verticalLayoutDirection`` property enables items to be laid
      out from bottom-to-top using the new ``BottomToTop`` enumeration
      value.
   -  New ``headerItem`` and ``footerItem`` properties provide access to
      the instantiated header and footer items.
   -  The ``cacheBuffer`` property now has a non-zero default.
   -  Delegates in the cache buffer are now created asynchronously.
   -  Setting a ``RightToLeft`` layout now also reverses the
      ``preferredHighlightBegin`` and ``preferredHighlightEnd``.
   -  If the model is changed after the component is completed,
      currentIndex is reset to 0.

-  `ListView </sdk/apps/qml/QtQuick/ListView/>`__ only:

   -  New
      `section.labelPositioning </sdk/apps/qml/QtQuick/ListView#section.labelPositioning-prop>`__
      property can fix the current section label to the start of the
      view, and the next section label to the end of the view, to
      prevent labels from scrolling while section items are still in
      view.
   -  ``highlightMoveSpeed`` and ``highlightResizeSpeed`` have been
      renamed to
      `highlightMoveVelocity </sdk/apps/qml/QtQuick/ListView#highlightMoveVelocity-prop>`__
      and
      `highlightResizeVelocity </sdk/apps/qml/QtQuick/ListView#highlightResizeVelocity-prop>`__.

-  `GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__ only:

   -  `cellWidth </sdk/apps/qml/QtQuick/GridView#cellWidth-prop>`__ and
      `cellHeight </sdk/apps/qml/QtQuick/GridView#cellHeight-prop>`__
      now use real numbers instead of integers.

-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__:

   -  New
      `currentItem </sdk/apps/qml/QtQuick/PathView#currentItem-prop>`__
      property holds the current item in the view.
   -  New
      `maximumFlickVelocity </sdk/apps/qml/QtQuick/PathView#maximumFlickVelocity-prop>`__
      property controls the maximum flick velocity of the view.
   -  New `snapMode </sdk/apps/qml/QtQuick/PathView#snapMode-prop>`__
      property controls the snap model when flicking between items
   -  If the model is changed after the component is completed, the
      offset and currentIndex are reset to 0.
   -  New
      `positionViewAtIndex() </sdk/apps/qml/QtQuick/PathView#positionViewAtIndex-method>`__
      function allows the view to be moved to display the specified
      index.
   -  New `indexAt() </sdk/apps/qml/QtQuick/PathView#indexAt-method>`__
      and `itemAt() </sdk/apps/qml/QtQuick/PathView#itemAt-method>`__
      functions return the index or item at a specified point in the
      view.

.. rubric:: Utility types
   :name: utility-types

-  New `Accessible </sdk/apps/qml/QtQuick/Accessible/>`__ attached
   property for implementing accessibility features in QML applications.
-  `Loader </sdk/apps/qml/QtQuick/Loader/>`__:

   -  New
      `asynchronous </sdk/apps/qml/QtQuick/Loader#asynchronous-prop>`__
      property allows components to be instantiated with lower chance of
      blocking. If source is used with *asynchronous: true* the
      component will be compiled in a background thread.
   -  New `active </sdk/apps/qml/QtQuick/Loader#active-prop>`__ property
      can delay instantiation of a
      `Loader </sdk/apps/qml/QtQuick/Loader/>`__ object's
      `item </sdk/apps/qml/QtQuick/Loader#item-prop>`__.
   -  New
      `setSource() </sdk/apps/qml/QtQuick/Loader#setSource-method>`__
      method loads an object with specific initial property values,
      similar to Component::createObject().

-  Binding:

   -  This type can now be used as a value source, and will also restore
      any previously set binding when its when clause becomes false.

.. rubric:: Property types
   :name: property-types

Support for various math and geometry-related value types, including
QVector2D, QVector3D, QVector4D, QMatrix4x4 and QQuaternion, as well as
QColor and QFont, are now provided by `Qt
Quick </sdk/apps/qml/QtQuick/qtquick-index/>`__. Properties of these
types can be declared in QML documents via the property syntax where the
type name is ``vector2d``, ``vector3d``, ``vector4d``, ``matrix4x4``,
``quaternion``, ``color`` and ``font`` respectively.

`Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`__ also provides
implementation for the various value type factory or utility functions
of the ``Qt`` object which return or operate on values of the above
types. The functions are:

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

The ``Qt.rgba()``, ``Qt.hsla()``, ``Qt.tint()``, ``Qt.lighter()``,
``Qt.darker()`` and ``Qt.fontFamilies()`` functions already existed in
QtDeclarative prior to `Qt Quick
2 </sdk/apps/qml/QtQuick/qtquick-index/>`__; the other functions are all
new in `Qt Quick 2 </sdk/apps/qml/QtQuick/qtquick-index/>`__.

.. rubric:: Qt 5.0 - Additional QML Modules
   :name: qt-5-0-additional-qml-modules

.. rubric:: QtQuick.Particles
   :name: qtquick.particles

This new module provides particle system support for creating a variety
of 2D particle systems. See the
`QtQuick.Particles </sdk/apps/qml/QtQuick/qtquick-releasenotes#qtquick-particles>`__
documentation for comprehensive details.

This obsoletes the experimental ``Qt.labs.particles`` module.

.. rubric:: QtQuick.Window
   :name: qtquick.window

This new module contains the
`Window </sdk/apps/qml/QtQuick/Window.Window/>`__ type for creating a
basic window and the `Screen </sdk/apps/qml/QtQuick/Window.Screen/>`__
type for accessing a screen's resolution and other details. See the
`QtQuick.Window </sdk/apps/qml/QtQuick/qtquick-releasenotes#qtquick-window>`__
documentation for comprehensive details.

.. rubric:: QtQuick.XmlListModel
   :name: qtquick.xmllistmodel

This new module contains
`XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#xmllistmodel>`__
and associated types, which were previously in the ``QtQuick`` module.
See the
`QtQuick.XmlListModel </sdk/apps/qml/QtQuick/qtquick-releasenotes#qtquick-xmllistmodel>`__
documentation for details.

.. rubric:: QtQuick.LocalStorage
   :name: qtquick.localstorage

This new module provides access to the SQL Local Storage API that was
previously accessible from the QML Global Object. See the
`QtQuick.LocalStorage </sdk/apps/qml/QtQuick/qtquick-releasenotes#qtquick-localstorage>`__
documentation for details.

