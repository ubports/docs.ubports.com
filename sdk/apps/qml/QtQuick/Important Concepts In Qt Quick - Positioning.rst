.. _sdk_qtquick_important_concepts_in_qt_quick_-_positioning:

QtQuick Important Concepts In Qt Quick - Positioning
====================================================


Visual items in QML can be positioned in a variety of ways. The most important positioning-related concept is that of anchoring, a form of relative positioning where items can be anchored (or attached) to each other at certain boundaries. Other positioning concepts include absolute positioning, positioning with coordinate bindings, positioners, and layouts.

Items can be positioned manually. If the user-interface is going to be static, manual positioning provides the most efficient form of positioning.

In any user-interface, the visual types exist at a particular location in the screen coordinates at any instant in time. While fluidly animated and dynamic user-interfaces are a major focus of Qt Quick, statically-positioned user interfaces are still a viable option. What's more, if the position of those types does not change, it can often be more performant to specify the position manually than to use the more dynamic positioning methods documented in proceeding sections.

In Qt Quick, every visual object is positioned within the `coordinate system </sdk/apps/qml/QtQuick/qtquick-visualcanvas-coordinates/>`_  provided by the Qt Quick visual canvas. As described in that document, the x and y coordinates of a visual object are relative to those of its visual parent, with the top-left corner having the coordinate (0, 0).

Thus, the following example will display two rectangles positioned manually:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Example Code                                                                                                                                           | Resultant Layout                                                                                                                                       |
+========================================================================================================================================================+========================================================================================================================================================+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |                                                                                                                                                        |
|     Item {                                                                                                                                             |                                                                                                                                                        |
|         width: 200                                                                                                                                     |                                                                                                                                                        |
|         height: 200                                                                                                                                    |                                                                                                                                                        |
|         Rectangle {                                                                                                                                    |                                                                                                                                                        |
|             x: 50                                                                                                                                      |                                                                                                                                                        |
|             y: 50                                                                                                                                      |                                                                                                                                                        |
|             width: 100                                                                                                                                 |                                                                                                                                                        |
|             height: 100                                                                                                                                |                                                                                                                                                        |
|             color: "green"                                                                                                                             |                                                                                                                                                        |
|          }                                                                                                                                             |                                                                                                                                                        |
|          Rectangle {                                                                                                                                   |                                                                                                                                                        |
|             x: 100                                                                                                                                     |                                                                                                                                                        |
|             y: 100                                                                                                                                     |                                                                                                                                                        |
|             width: 50                                                                                                                                  |                                                                                                                                                        |
|             height: 50                                                                                                                                 |                                                                                                                                                        |
|             color: "yellow"                                                                                                                            |                                                                                                                                                        |
|          }                                                                                                                                             |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Items may also be positioned by assigning binding expressions to the properties associated with their location in the visual canvas. This type of positioning is the most highly dynamic, however some performance cost is associated with positioning items in this manner.

The position and dimensions of a visual object can also be set through property bindings. This has the advantage that the values will automatically be updated as the dependencies of the bindings change. For example, the width of one Rectangle might depend on the width of the Rectangle next to it.

While bindings provide a very flexible and intuitive way of creating dynamic layouts, it should be noted that there is some performance cost associated with them, and where possible, pristine Anchor layouts should be preferred.

Anchors allows an item to be placed either adjacent to or inside of another, by attaching one or more of the item's anchor-points (boundaries) to an anchor-point of the other. These anchors will remain even if the dimensions or location of one of the items changes, allowing for highly dynamic user-interfaces.

A visual object can be thought of as having various anchor-points (or more correctly, anchor-lines). Other items can be anchored to those points, which means that as any object changes, the other objects which are anchored to it will adjust automatically to maintain the anchoring.

Qt Quick provides anchors as a top-level concept. See the documentation about `positioning with anchors </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/>`_  for in-depth information on the topic.

It is important to note that anchor-based layouts are generally far more performant than binding-based layouts, if pristine. A "pristine" anchor layout is one which uses only anchors (with object nesting) to determine the positioning, whereas a "contaminated" anchor layout is one which uses both anchoring and bindings (either on position-related [x,y] properties or on dimension-related [width,height] properties) to determine the position.

Qt Quick also provides some built-in positioner items. For many use cases, the best positioner to use is a simple grid, row, or column, and Qt Quick provides items which will position children in these formations in the most efficient manner possible. See the documentation on `item positioners types </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`_  for more information about utilizing pre-defined positioners.

From Qt 5.1, the module Qt Quick Layouts can also be used to arrange Qt Quick items in a user interface. Unlike positioners, the types in Qt Quick Layouts manage both the positions and sizes of items in a declarative interface. They are well suited for resizable user interfaces.

The directionality of the written form of a language often has a great impact on how the visual types of a user-interface should be positioned. Qt Quick supports right-to-left positioning of types through the predefined-layouts as well as right-to-left text layouts.

Please see the documentation about `right-to-left support in Qt Quick </sdk/apps/qml/QtQuick/qtquick-positioning-righttoleft/>`_  for in-depth information on the topic.

