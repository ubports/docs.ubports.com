.. _sdk_qtquick_window_closeevent:

QtQuick.Window CloseEvent
=========================

Notification that a Window is about to be closed

+---------------------+-----------------------------+
| Import Statement:   | import QtQuick.Window 2.2   |
+---------------------+-----------------------------+
| Since:              | Qt 5.1                      |
+---------------------+-----------------------------+

Properties
----------

-  `accepted </sdk/apps/qml/QtQuick/Window.CloseEvent/#accepted-prop>`_  : bool

Detailed Description
--------------------

Notification that a window is about to be closed by the windowing system (e.g. the user clicked the title bar close button). The `CloseEvent </sdk/apps/qml/QtQuick/Window.CloseEvent/>`_  contains an accepted property which can be set to false to abort closing the window.

**See also** Window.closing().

Property Documentation
----------------------

.. _sdk_qtquick_window_closeevent_accepted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accepted : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether the application will allow the user to close the window. It is true by default.

