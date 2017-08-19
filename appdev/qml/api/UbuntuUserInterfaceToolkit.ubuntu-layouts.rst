UbuntuUserInterfaceToolkit.ubuntu-layouts
=========================================

.. raw:: html

   <p>

QML has the following basic layout primitives:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Column - arrange children in a column

.. raw:: html

   </li>

.. raw:: html

   <li>

Row - arrange children in a row

.. raw:: html

   </li>

.. raw:: html

   <li>

Grid - arrange children in a grid of x columns and y rows

.. raw:: html

   </li>

.. raw:: html

   <li>

Flow - arrange children side-by-side with wrapping

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Unfortunately in a design that needs to work in many different form
factors these aren't very flexible on their own as:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

not designed to alter size of children - so no form of stretching
supported by default.

.. raw:: html

   </li>

.. raw:: html

   <li>

as a result no way to have contents fill the container (without
calculating the width/height of the children manually).

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

As a result, most applications need to do calculations to size the
children correctly in these primitives to fill the whole container.

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt offers advice to developers on multi-layouts in QML. In summary they
recommend: Application top level page definitions, and reusable
component definitions, should use one QML layout definition for the
layout structure. This single definition should include the layout
design for separate Device Orientations and container Aspect Ratios.

.. raw:: html

   </p>

.. raw:: html

   <p>

UIs layouts should be constructed to share as many components as
possible. Then on display mode change these shared components can be
reparented, reducing number of components to unload/reload and also
helping to save state.

.. raw:: html

   </p>

.. raw:: html

   <p>

Using a Loader to switch the QML for different display modes is slower,
and will involve loss of state. Instead the above advice is to use
AnchorChanges & PropertyChanges to specify all layouts in one QML
document, so switching display mode is dynamic - but admittedly is a
painful for all display modes and states that an application may want to
support.

.. raw:: html

   </p>

.. raw:: html

   <p>

QtQuick Controls introduces the ColumnLayout, RowLayout and GridLayout
components as well as the Layout attached properties, which brings
additional layouting possibilities to Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <p>

In addition to these, UI toolkit had introduced the Ubuntu.Layouts
module to help developers define different layouts for different
orientations and form factors, all being possible to be done within the
same code base.

.. raw:: html

   </p>

.. raw:: html

   <p>

This tutorial gives an introduction to layout factoring abilities
offered by Ubuntu UI toolkit. It tries to cover few possible layout
scenarios, however will not cover advanced scenarios application
developers may need.

.. raw:: html

   </p>

.. raw:: html

   <p>

Tutorial chapters:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Terminology

.. raw:: html

   </li>

.. raw:: html

   <li>

The first conditional layout

.. raw:: html

   </li>

.. raw:: html

   <li>

Changing the order

.. raw:: html

   </li>

.. raw:: html

   <li>

Lay out a single item differently from others

.. raw:: html

   </li>

.. raw:: html

   <li>

Hiding elements, showing more

.. raw:: html

   </li>

.. raw:: html

   <li>

Overlay items in an item host

.. raw:: html

   </li>

.. raw:: html

   <li>

Defining more layouts for different form factors

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

So, let's take them step-by-step...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ubuntu-layouts.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Layouts - Terminology

.. raw:: html

   </li>

.. raw:: html

   </p>
