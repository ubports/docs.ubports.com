.. _sdk_ubuntu_components_popupcontext:

Ubuntu.Components PopupContext
==============================

A special ActionContext used in Dialogs and Popups.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`ActionContext <sdk_ubuntu_components_actioncontext>`                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Detailed Description
--------------------

A :ref:`PopupContext <sdk_ubuntu_components_popupcontext>` is similar to the :ref:`ActionContext <sdk_ubuntu_components_actioncontext>`, with the only difference being that there can be only one :ref:`PopupContext <sdk_ubuntu_components_popupcontext>` active at a time in an application. A :ref:`PopupContext <sdk_ubuntu_components_popupcontext>` can have several active :ref:`ActionContext <sdk_ubuntu_components_actioncontext>` children declared, however when deactivated all child contexts will be deactivated as well, and no Action declared in these contexts will be available through shortcuts.

The toolkit provides this kind of contexts in :ref:`MainView <sdk_ubuntu_components_mainview>`, Popup and Dialog. It is highly recommended for applications to have a :ref:`PopupContext <sdk_ubuntu_components_popupcontext>` defined in their rootItem.
