.. _sdk_ubuntu_components_popups_popuputils:

Ubuntu.Components.Popups popupUtils
===================================

Popover utility functions.

+---------------------+---------------------------------------+
| Import Statement:   | import Ubuntu.Components.Popups 1.3   |
+---------------------+---------------------------------------+

Methods
-------

-  `close </sdk/apps/qml/Ubuntu.Components/Popups.popupUtils/#close-method>`_ \ (popupObject)
-  `open </sdk/apps/qml/Ubuntu.Components/Popups.popupUtils/#open-method>`_ \ (popup, caller, params)

Detailed Description
--------------------

Method Documentation
--------------------

.. _sdk_ubuntu_components_popups_popuputils_close:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| close(popupObject)                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Closes (hides and destroys) the given popup.

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.Popups 1.3
    Button {
        onClicked: PopupUtils.close(popup)
    }

.. _sdk_ubuntu_components_popups_popuputils_open:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| open(popup, caller, params)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function creates and shows a popup object from either a **Component** or URL of a QML document. The caller drives the placement of the popup as well as the pointer's. The third parameter (param) can hold a series of properties configuring the popup to be opened. This can be any property defined by the popups and additional custom ones defined in derived popups.

*caller* should be given when a `ComposerSheet </sdk/apps/qml/Ubuntu.Components/Popups.ComposerSheet/>`_  or `Dialog </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/>`_  is specified using a URL and opened inside a **Window**. If not, the application's root item will be the dismiss area.

Returns a popop object, which can be closed using `close </sdk/apps/qml/Ubuntu.Components/Popups.popupUtils/#close-method>`_ .

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.Popups 1.3
    Button {
        onClicked: PopupUtils.open(popoverComponent, popoverButton, { 'dummy': true } )
    }

See `Popover </sdk/apps/qml/Ubuntu.Components/Popups.Popover/>`_ , `ComposerSheet </sdk/apps/qml/Ubuntu.Components/Popups.ComposerSheet/>`_  and `Dialog </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/>`_  for their respective documentation and more examples.

