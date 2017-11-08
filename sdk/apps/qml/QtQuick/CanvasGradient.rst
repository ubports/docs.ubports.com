.. _sdk_qtquick_canvasgradient:

QtQuick CanvasGradient
======================

Provides an opaque CanvasGradient interface

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.0               |
+---------------------+----------------------+

Methods
-------

-  CanvasGradient :ref:`addColorStop <sdk_qtquick_canvasgradient_addColorStop>`\ (real *offsetof*, string *color*)

Detailed Description
--------------------

Method Documentation
--------------------

.. _sdk_qtquick_canvasgradient_:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CanvasGradient <sdk_qtquick_canvasgradient>` addColorStop(real *offsetof*, string *color*)                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds a color stop with the given color to the gradient at the given offset. 0.0 is the offset at one end of the gradient, 1.0 is the offset at the other end.

For example:

.. code:: cpp

    var gradient = ctx.createLinearGradient(0, 0, 100, 100);
    gradient.addColorStop(0.3, Qt.rgba(1, 0, 0, 1));
    gradient.addColorStop(0.7, 'rgba(0, 255, 255, 1');

