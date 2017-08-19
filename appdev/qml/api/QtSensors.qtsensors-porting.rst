QtSensors.qtsensors-porting
===========================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The initial release of Qt Sensors (5.0) is generally expected to be
source compatible with QtMobility Sensors 1.2. This document attempts to
explain where things need to be changed in order to port applications to
Qt Sensors.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qml">

QML

.. raw:: html

   </h2>

.. raw:: html

   <p>

In QtMobility, the C++ classes like QAccelerometer were directly used as
QML types. In Qt Sensors, there are now separate classes for the QML
types, which have no public C++ API.

.. raw:: html

   </p>

.. raw:: html

   <p>

The new QML types in Qt Sensors fix some issues the former QtMobility
QML types had, for example:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The reading types now have proper change notifications.

.. raw:: html

   </li>

.. raw:: html

   <li>

availableDataRates and outputRanges of the Sensor type are now proper
list types.

.. raw:: html

   </li>

.. raw:: html

   <li>

The identifier and type properties of Sensor can now be used.

.. raw:: html

   </li>

.. raw:: html

   <li>

The lux property of LightSensorReading has been renamed to illuminance.

.. raw:: html

   </li>

.. raw:: html

   <li>

The QmlSensors singleton now allows to query for sensor types.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For more information, see the QML API documentation.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="c">

C++

.. raw:: html

   </h2>

.. raw:: html

   <p>

The C++ API mainly remained the same as in QtMobility.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Includes

.. raw:: html

   </h3>

.. raw:: html

   <p>

QtMobility Sensors installed headers into a Qt Sensors directory. This
is also the directory that Qt Sensors uses. It is therefore expected
that includes that worked with QtMobility Sensors should continue to
work.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &lt;QAccelerometer&gt;</span>
   <span class="preprocessor">#include &lt;qaccelerometer.h&gt;</span>
   <span class="preprocessor">#include &lt;QtSensors/QAccelerometer&gt;</span>
   <span class="preprocessor">#include &lt;QtSensors/qaccelerometer.h&gt;</span></pre>

.. raw:: html

   <h3>

Macros and Namespace

.. raw:: html

   </h3>

.. raw:: html

   <p>

QtMobility Sensors was built in a QtMobility namespace. This was enabled
by the use of various macros. Qt Sensors does not normally build into a
namespace and the macros from QtMobility no longer exist.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QTM\_BEGIN\_NAMESPACE

.. raw:: html

   </li>

.. raw:: html

   <li>

QTM\_END\_NAMESPACE

.. raw:: html

   </li>

.. raw:: html

   <li>

QTM\_USE\_NAMESPACE

.. raw:: html

   </li>

.. raw:: html

   <li>

QTM\_PREPEND\_NAMESPACE(x)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note that Qt can be configured to build into a namespace. If Qt is built
in this way then Qt Sensors is also built into the nominated namespace.
However, as this is optional, the macros for this are typically defined
to do nothing.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QT\_BEGIN\_NAMESPACE

.. raw:: html

   </li>

.. raw:: html

   <li>

QT\_END\_NAMESPACE

.. raw:: html

   </li>

.. raw:: html

   <li>

QT\_USE\_NAMESPACE

.. raw:: html

   </li>

.. raw:: html

   <li>

QT\_PREPEND\_NAMESPACE(x)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

qtimestamp

.. raw:: html

   </h3>

.. raw:: html

   <p>

qtimestamp was previously defined as an opaque type equivalent to a
quint64. It existed as a class due to an implementation detail.

.. raw:: html

   </p>

.. raw:: html

   <p>

In Qt Sensors, the API uses quint64 instead of qtimestamp. qtimestamp
still exists as a typedef so that applications that refer to qtimestamp
can be compiled.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="project-files">

Project Files

.. raw:: html

   </h2>

.. raw:: html

   <p>

QtMobility Sensors applications used this in their project files to
enable the Sensors API.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">CONFIG <span class="operator">+</span><span class="operator">=</span> mobility
   MOBILITY <span class="operator">+</span><span class="operator">=</span> sensors</pre>

.. raw:: html

   <p>

Applications should remove these lines and instead use the following
statement to enable the Qt Sensors API:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> sensors</pre>

.. raw:: html

   <!-- @@@qtsensors-porting.html -->
