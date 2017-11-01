

QML has the following basic layout primitives:

-  `Column <https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-column.html>`__
   - arrange children in a column
-  `Row <https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-row.html>`__
   - arrange children in a row
-  `Grid <https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-grid.html>`__
   - arrange children in a grid of x columns and y rows
-  `Flow <https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-flow.html>`__
   - arrange children side-by-side with wrapping

Unfortunately in a design that needs to work in many different form
factors these aren't very flexible on their own as:

#. not designed to alter size of children - so no form of stretching
   supported by default.
#. as a result no way to have contents fill the container (without
   calculating the width/height of the children manually).

As a result, most applications need to do calculations to size the
children correctly in these primitives to fill the whole container.

Qt offers advice to developers on multi-layouts in QML. In summary they
recommend: *Application top level page definitions, and reusable
component definitions, should use one QML layout definition for the
layout structure. This single definition should include the layout
design for separate Device Orientations and container Aspect Ratios.*

UIs layouts should be constructed to share as many components as
possible. Then on display mode change these shared components can be
reparented, reducing number of components to unload/reload and also
helping to save state.

Using a Loader to switch the QML for different display modes is slower,
and will involve loss of state. Instead the above advice is to use
`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ &
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ to specify
all layouts in one QML document, so switching display mode is dynamic -
but admittedly is a painful for all display modes and states that an
application may want to support.

`QtQuick
Controls <http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qmlmodule-qtquick-layouts1-qtquick-layouts-1-0.html>`__
introduces the
`ColumnLayout <http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-columnlayout.html>`__,
`RowLayout <http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-rowlayout.html>`__
and
`GridLayout <http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-gridlayout.html>`__
components as well as the
`Layout <http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-layout.html>`__
attached properties, which brings additional layouting possibilities to
Qt Quick.

In addition to these, UI toolkit had introduced the Ubuntu.Layouts
module to help developers define different layouts for different
orientations and form factors, all being possible to be done within the
same code base.

This tutorial gives an introduction to layout factoring abilities
offered by Ubuntu UI toolkit. It tries to cover few possible layout
scenarios, however will not cover advanced scenarios application
developers may need.

Tutorial chapters:

#. `Terminology </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts1/>`__
#. `The first conditional
   layout </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts2/>`__
#. `Changing the
   order </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts3/>`__
#. `Lay out a single item differently from
   others </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts4/>`__
#. `Hiding elements, showing
   more </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts5/>`__
#. `Overlay items in an item
   host </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts6/>`__
#. `Defining more layouts for different form
   factors </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts7/>`__

So, let's take them step-by-step...

`Layouts -
Terminology </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts1/>`__
