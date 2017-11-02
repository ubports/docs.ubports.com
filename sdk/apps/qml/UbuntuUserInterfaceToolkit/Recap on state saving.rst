.. _sdk_ubuntuuserinterfacetoolkit_recap_on_state_saving:
UbuntuUserInterfaceToolkit Recap on state saving
================================================



The following issues must be considered when deciding on state saving:

-  - don't try to save
   :ref:`MainView <sdk_ubuntu_components_mainview>`.applicationName, as its
   change will take effect next time the application is launched
-  - specify IDs for all components as well as for parents even if their
   presence is not justified in the document
-  types other than the ones listed in `QML base
   types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_  will not
   be serialized
-  - grouped properties can be saved by specifying the complete path to
   the property i.e. *border.width*, *border.color*, etc.

When chosing the IDs, try to use as unique identifiers as possible. In
most of the cases applications load content (document) dynamically using
Loaders. Usually elements in these documents use different IDs for their
elements, but there can be cases when the same IDs will be used with the
same hierarchy (i.e. root->item can occur in several documents). UID
computation takes into account the file name and line number the
property's owner (attachee) is declared, therefore the property saving
will be successful in these cases too.

See documentation on :ref:`StateSaver <sdk_ubuntu_components_statesaver>`
properties under
`Services </sdk/apps/qml/UbuntuUserInterfaceToolkit/overview-ubuntu-sdk/#services>`_ 
section.

`Ubuntu User Interface
Toolkit </sdk/apps/qml/UbuntuUserInterfaceToolkit/overview-ubuntu-sdk/>`_ 
