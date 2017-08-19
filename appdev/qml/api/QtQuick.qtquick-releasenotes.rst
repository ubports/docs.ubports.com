QtQuick.qtquick-releasenotes
============================

.. raw:: html

   <h2 id="qt-quick-in-qt-5-1">

Qt Quick in Qt 5.1

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt Quick 2.1 is new in Qt 5.1. This is a summary of improvements and new
features introduced by the new import and new classes in Qt 5.1:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New threaded render loop for Mac, Linux, and Embedded.

.. raw:: html

   </li>

.. raw:: html

   <li>

New render loop for windows for smoother animations.

.. raw:: html

   </li>

.. raw:: html

   <li>

New Window properties: activeFocusItem, minimumWidth, minimumHeight,
maximumWidth, maximumHeight, visibility, contentOrientation, and
opacity.

.. raw:: html

   </li>

.. raw:: html

   <li>

New Screen attached properties: name, desktopAvailableWidth,
desktopAvailableHeight, logicalPixelDensity

.. raw:: html

   </li>

.. raw:: html

   <li>

New Grid properties: horizontalAlignment, verticalAlignment, and
effectiveHorizontalAlignment.

.. raw:: html

   </li>

.. raw:: html

   <li>

New TextEdit properties: selectByKeyboard and textDocument

.. raw:: html

   </li>

.. raw:: html

   <li>

A Window declared inside another Window or Item will automatically be
transient for (centered upon) the outer window.

.. raw:: html

   </li>

.. raw:: html

   <li>

These types are now part of Qt QML:

.. raw:: html

   <ul>

.. raw:: html

   <li>

VisualItemModel

.. raw:: html

   </li>

.. raw:: html

   <li>

VisualDataModel - Encapsulates a model and a delegate

.. raw:: html

   </li>

.. raw:: html

   <li>

VisualDataGroup

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These types are kept due to compatibility reasons and are replaced by
the Qt QML Models types.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

New Submodules

.. raw:: html

   </h3>

.. raw:: html

   <p>

In Qt 5.1, there are several new modules which extend Qt Quick
functionalities.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt Quick Dialogs - contains types for creating and interacting with
system dialogs

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt Quick Controls - provides a set of reusable UI components

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt Quick Layouts - contains types that are used to arrange items in the
user interface

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The What's New in Qt 5.1 has more information about the Qt 5.1 release.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qt-quick-in-qt-5-0">

Qt Quick in Qt 5.0

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt Quick module is new in Qt 5. It provides the visual canvas and
scenegraph back-end as well as the QtQuick QML module for QML
application development.

.. raw:: html

   </p>

.. raw:: html

   <p>

As of Qt 5, the Qt Quick module is based on an OpenGL scenegraph. Many
of the classes in the Qt Quick module have been ported from the
QtDeclarative module from Qt 4.8 to use the scenegraph architecture;
these classes have been renamed to use a QQuick\* prefix. (See the
Porting QML Applications to Qt 5 for porting information.)

.. raw:: html

   </p>

.. raw:: html

   <p>

The following classes provide the basic functionality for interacting
with the QML visual canvas from C++:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QQuickItem - the base visual QML type (replaces QDeclarativeItem)

.. raw:: html

   </li>

.. raw:: html

   <li>

QQuickView - a convenience window for rendering a QML scene from a QML
file (replaces QDeclarativeView)

.. raw:: html

   </li>

.. raw:: html

   <li>

QQuickWindow - a base window for displaying a QML scene

.. raw:: html

   </li>

.. raw:: html

   <li>

QQuickPaintedItem - convenience for using the QPainter API with the
scenegraph

.. raw:: html

   </li>

.. raw:: html

   <li>

QQuickImageProvider - fetches custom images for use in QML applications
(replaces QDeclarativeImageProvider)

.. raw:: html

   </li>

.. raw:: html

   <li>

QQuickTextureFactory - use with QQuickImageProvider::requestTexture()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Custom rendering can be performed on the scenegraph using the following
new classes:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QSGNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGMaterial

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGBasicGeometryNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGGeometryNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGClipNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGTransformNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGOpacityNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGFlatColorMaterial

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGSimpleRectNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGSimpleTextureNode

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGTexture

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGDynamicTexture

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGOpaqueTextureMaterial

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGTextureMaterial

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGTextureProvider

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGVertexColorMaterial

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="qt-5-0-qtquick-qml-module">

Qt 5.0 - QtQuick QML Module

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QtQuick 2.0 QML module is a major update.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below are the additions in QtQuick 2.0. For a list of behavioral changes
which may affect applications ported from QtQuick 1.x, see the Porting
QML Applications to Qt 5.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Visual types, Graphical Effects and Sprites

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New Canvas type for drawing. This provides an API similar to that of the
HTML5 Canvas API, along with some additional features.

.. raw:: html

   <ul>

.. raw:: html

   <li>

Supports two render targets: Canvas.Image and Canvas.FramebufferObject.

.. raw:: html

   </li>

.. raw:: html

   <li>

Supports background thread rendering.

.. raw:: html

   </li>

.. raw:: html

   <li>

Supports tiled canvas rendering.

.. raw:: html

   </li>

.. raw:: html

   <li>

Supports most of the HTML5 context2d APIs.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Item:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New layer.enabled property enables an item to be rendered into an
offscreen cache for optimization.

.. raw:: html

   </li>

.. raw:: html

   <li>

New contains() method returns whether an item contains a specified
point.

.. raw:: html

   </li>

.. raw:: html

   <li>

New anchors.alignWhenCentered property can force centered anchors to
align on a whole pixel.

.. raw:: html

   </li>

.. raw:: html

   <li>

New enabled property is available, which stops input event delivery and
removes active focus.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Image:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New horizontalAlignment and verticalAlignment properties to set the
image alignment.

.. raw:: html

   </li>

.. raw:: html

   <li>

New Image.Pad enumeration value for fillMode that does not transform the
image, unlike other fillMode enumeration values.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

New ShaderEffect and ShaderEffectSource types enable GLSL shader
programs to be integrated directly into QML code and applied to QML
items and images. (This obsoletes the experimental Qt.labs.shaders
module.)

.. raw:: html

   </li>

.. raw:: html

   <li>

New SpriteSequence type renders animated sprites and can transition
between animations. Each animation in a sequence is represented by the
new Sprite type.

.. raw:: html

   </li>

.. raw:: html

   <li>

New AnimatedSprite type for drawing single sprite animations.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Animations and Transitions

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New AnimationController type enables an animation to be manually driven
by a progress value.

.. raw:: html

   </li>

.. raw:: html

   <li>

New PathAnimation type animates an item along a Path.

.. raw:: html

   </li>

.. raw:: html

   <li>

New PathInterpolator type provides updated attribute values for an item
animating along a path. It can be used as an low-level alternative to
PathAnimation.

.. raw:: html

   </li>

.. raw:: html

   <li>

Transition:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New running property holds whether a transition is currently running.

.. raw:: html

   </li>

.. raw:: html

   <li>

New enabled property controls whether a transition is enabled.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Paths

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New PathArc type creates an arc-type path.

.. raw:: html

   </li>

.. raw:: html

   <li>

New PathCurve type creates a catmull-rom curve path.

.. raw:: html

   </li>

.. raw:: html

   <li>

New PathSvg type creates a path from a SVG string.

.. raw:: html

   </li>

.. raw:: html

   <li>

Changes common to PathLine, PathQuad and PathCubic:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New relativeX and relativeY properties define the start and end points
of a path relative to its start.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

PathCubic only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New relativeControl1X, relativeControl1Y, relativeControl2X and
relativeControl2Y properties define the positions of the control points
relative to the start of the curve.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

PathQuad only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New relativeControlX and relativeControlY define the positions of the
control points relative to the start of the curve.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Text

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Changes common to Text, TextEdit and TextInput:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New contentWidth and contentHeight properties provide the dimensions of
the textual content.

.. raw:: html

   </li>

.. raw:: html

   <li>

New effectiveHorizontalAlignment property provides the read-only actual
horizontal alignment.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Changes common to both TextEdit and TextInput:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New canUndo and canRedo properties specify whether undo and redo
operations are available.

.. raw:: html

   </li>

.. raw:: html

   <li>

New getText() method returns the text located between specified start
and end indexes. Additionally TextEdit has a getFormattedText() method
that returns the formatted text.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Text only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

Text.RightElide is now supported where text spans multiple lines.

.. raw:: html

   </li>

.. raw:: html

   <li>

New linkColor property controls the color of linked text.

.. raw:: html

   </li>

.. raw:: html

   <li>

New lineLaidOut signal is emitted for every line during the layout
process to give the option of positioning and/or resizing lines as they
are laid out.

.. raw:: html

   </li>

.. raw:: html

   <li>

New doLayout() method will trigger the text layout from Javascript.

.. raw:: html

   </li>

.. raw:: html

   <li>

New fontSizeMode property allows text to be fitted to the item size.

.. raw:: html

   </li>

.. raw:: html

   <li>

New minimumPixelSize and minimumPointSize properties can be used to
specify a lower bound when auto-fitting.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

TextEdit only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New baseUrl property specified the base URL used to resolve relative
URLs within the text.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

TextInput only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New wrapMode property sets the text wrapping mode.

.. raw:: html

   </li>

.. raw:: html

   <li>

New horizontalAlignment and verticalAlignment properties.

.. raw:: html

   </li>

.. raw:: html

   <li>

New length property provides the total number of text characters.

.. raw:: html

   </li>

.. raw:: html

   <li>

New persistentSelection property enables the text selection to persist
when the window loses focus.

.. raw:: html

   </li>

.. raw:: html

   <li>

positionAt() method now takes a y parameter.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

User Input

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New MultiPointTouchArea type processes multi-point touches and provides
information on touch points including position, pressure and velocity.
Touch point data is provided by the new TouchPoint type.

.. raw:: html

   </li>

.. raw:: html

   <li>

New DropArea type provides more advanced drag and drop functionality.

.. raw:: html

   </li>

.. raw:: html

   <li>

MouseArea:

.. raw:: html

   <ul>

.. raw:: html

   <li>

Wheel events are now supported; events are provided through the new
WheelEvent type.

.. raw:: html

   </li>

.. raw:: html

   <li>

New propagateComposedEvents property sets whether composed events are
propagated to other mouse areas. If this property is true and the
handlers of the clicked, doubleClicked or pressAndHold signals reject a
mouse event, the event will be propagated to overlapping MouseArea items
in the same area that are lower in the stacking order.

.. raw:: html

   </li>

.. raw:: html

   <li>

New cursorShape property controls the cursor shape.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Specialized Containers

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Flickable:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New rebound property specifies the transition to be applied when a
flickable snaps back to its bounds.

.. raw:: html

   </li>

.. raw:: html

   <li>

New topMargin, bottomMargin, leftMargin, rightMargin allow extra margin
space to be specified for a flickable. This can be used, for example, to
implement pull-to-refresh functionality for a list.

.. raw:: html

   </li>

.. raw:: html

   <li>

New originX and originY properties provide the top left position of the
content item.

.. raw:: html

   </li>

.. raw:: html

   <li>

New dragging, draggingHorizontally and draggingVertically properties
provide information on whether a flickable is currently being dragged.

.. raw:: html

   </li>

.. raw:: html

   <li>

New flick() method flicks the view with a specific velocity.

.. raw:: html

   </li>

.. raw:: html

   <li>

New cancelFlick() method stops any current flicking movement.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Positioners (Row, Column, Grid, Flow types):

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Changes common to Row, Column, Grid and Flow:

.. raw:: html

   <ul>

.. raw:: html

   <li>

The add and move transitions can access a new ViewTransition attached
property (see the ViewTransition documentation for examples) and can now
animate arbitrary item properties (instead of being restricted to
animating an item's position).

.. raw:: html

   </li>

.. raw:: html

   <li>

New effectiveLayoutDirection property provides the read-only actual
layout direction of a positioner.

.. raw:: html

   </li>

.. raw:: html

   <li>

New Positioner type provides index, isFirstItem and isLastItem attached
properties for items within positioners.

.. raw:: html

   </li>

.. raw:: html

   <li>

All spacing properties on positioners now use real numbers instead of
integers.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Grid only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New rowSpacing and columnSpacing properties.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Models and Views

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Any delegate of a view that uses a QAbstractItemModel-derived model type
can use the syntax model.<role> = <newDataValue> to modify the data for
a particular role. (Previously, the model.<role> syntax was only
available for reading, not writing to, a role value.)

.. raw:: html

   </li>

.. raw:: html

   <li>

ListModel:

.. raw:: html

   <ul>

.. raw:: html

   <li>

By default, roles can no longer change type during a model's lifetime.
The new dynamicRoles property can be set to restore the original (less
performant) behavior.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

VisualDataModel:

.. raw:: html

   <ul>

.. raw:: html

   <li>

Now has features to filter the items to be displayed in a view. This is
supported by the new groups, filterOnGroup, items and persistedItems
properties.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Changes common to both ListView and GridView:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New transition support for animating the adding, removing and moving of
items in a ListView or GridView. See the ViewTransition documentation
for details.

.. raw:: html

   </li>

.. raw:: html

   <li>

New verticalLayoutDirection property enables items to be laid out from
bottom-to-top using the new BottomToTop enumeration value.

.. raw:: html

   </li>

.. raw:: html

   <li>

New headerItem and footerItem properties provide access to the
instantiated header and footer items.

.. raw:: html

   </li>

.. raw:: html

   <li>

The cacheBuffer property now has a non-zero default.

.. raw:: html

   </li>

.. raw:: html

   <li>

Delegates in the cache buffer are now created asynchronously.

.. raw:: html

   </li>

.. raw:: html

   <li>

Setting a RightToLeft layout now also reverses the
preferredHighlightBegin and preferredHighlightEnd.

.. raw:: html

   </li>

.. raw:: html

   <li>

If the model is changed after the component is completed, currentIndex
is reset to 0.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New section.labelPositioning property can fix the current section label
to the start of the view, and the next section label to the end of the
view, to prevent labels from scrolling while section items are still in
view.

.. raw:: html

   </li>

.. raw:: html

   <li>

highlightMoveSpeed and highlightResizeSpeed have been renamed to
highlightMoveVelocity and highlightResizeVelocity.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView only:

.. raw:: html

   <ul>

.. raw:: html

   <li>

cellWidth and cellHeight now use real numbers instead of integers.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New currentItem property holds the current item in the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

New maximumFlickVelocity property controls the maximum flick velocity of
the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

New snapMode property controls the snap model when flicking between
items

.. raw:: html

   </li>

.. raw:: html

   <li>

If the model is changed after the component is completed, the offset and
currentIndex are reset to 0.

.. raw:: html

   </li>

.. raw:: html

   <li>

New positionViewAtIndex() function allows the view to be moved to
display the specified index.

.. raw:: html

   </li>

.. raw:: html

   <li>

New indexAt() and itemAt() functions return the index or item at a
specified point in the view.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Utility types

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New Accessible attached property for implementing accessibility features
in QML applications.

.. raw:: html

   </li>

.. raw:: html

   <li>

Loader:

.. raw:: html

   <ul>

.. raw:: html

   <li>

New asynchronous property allows components to be instantiated with
lower chance of blocking. If source is used with asynchronous: true the
component will be compiled in a background thread.

.. raw:: html

   </li>

.. raw:: html

   <li>

New active property can delay instantiation of a Loader object's item.

.. raw:: html

   </li>

.. raw:: html

   <li>

New setSource() method loads an object with specific initial property
values, similar to Component::createObject().

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Binding:

.. raw:: html

   <ul>

.. raw:: html

   <li>

This type can now be used as a value source, and will also restore any
previously set binding when its when clause becomes false.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Property types

.. raw:: html

   </h3>

.. raw:: html

   <p>

Support for various math and geometry-related value types, including
QVector2D, QVector3D, QVector4D, QMatrix4x4 and QQuaternion, as well as
QColor and QFont, are now provided by Qt Quick. Properties of these
types can be declared in QML documents via the property syntax where the
type name is vector2d, vector3d, vector4d, matrix4x4, quaternion, color
and font respectively.

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt Quick also provides implementation for the various value type factory
or utility functions of the Qt object which return or operate on values
of the above types. The functions are:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value type

.. raw:: html

   </th>

.. raw:: html

   <th>

Functions

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

color

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt.rgba(), Qt.hsla(), Qt.tint(), Qt.lighter(), Qt.darker(),
Qt.colorEqual()

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

font

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt.font(), Qt.fontFamilies()

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

vector2d

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt.vector2d()

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

vector3d

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt.vector3d()

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

vector4d

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt.vector4d()

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

matrix4x4

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt.matrix4x4()

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

quaternion

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt.quaternion()

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The Qt.rgba(), Qt.hsla(), Qt.tint(), Qt.lighter(), Qt.darker() and
Qt.fontFamilies() functions already existed in QtDeclarative prior to Qt
Quick 2; the other functions are all new in Qt Quick 2.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qt-5-0-additional-qml-modules">

Qt 5.0 - Additional QML Modules

.. raw:: html

   </h2>

.. raw:: html

   <h3>

QtQuick.Particles

.. raw:: html

   </h3>

.. raw:: html

   <p>

This new module provides particle system support for creating a variety
of 2D particle systems. See the QtQuick.Particles documentation for
comprehensive details.

.. raw:: html

   </p>

.. raw:: html

   <p>

This obsoletes the experimental Qt.labs.particles module.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QtQuick.Window

.. raw:: html

   </h3>

.. raw:: html

   <p>

This new module contains the Window type for creating a basic window and
the Screen type for accessing a screen's resolution and other details.
See the QtQuick.Window documentation for comprehensive details.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QtQuick.XmlListModel

.. raw:: html

   </h3>

.. raw:: html

   <p>

This new module contains XmlListModel and associated types, which were
previously in the QtQuick module. See the QtQuick.XmlListModel
documentation for details.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QtQuick.LocalStorage

.. raw:: html

   </h3>

.. raw:: html

   <p>

This new module provides access to the SQL Local Storage API that was
previously accessible from the QML Global Object. See the
QtQuick.LocalStorage documentation for details.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-releasenotes.html -->
