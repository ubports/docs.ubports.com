.. _sdk_ubuntuuitoolkit_ubuntuuitoolkitcustomproxyobjectbase:
ubuntuuitoolkit UbuntuUIToolkitCustomProxyObjectBase
====================================================

 *class*
``ubuntuuitoolkit.``\ ``UbuntuUIToolkitCustomProxyObjectBase``\ (*\*args*)\ ` <#ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase>`_ 
    Bases: ``autopilot.introspection.dbus.CustomEmulatorBase``

    A base class for all the Ubuntu UI Toolkit custom proxy objects.

    ``is_flickable``\ ()` <#ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase.is_flickable>`_ 
        Check if the object is flickable.

        If the object has a flicking attribute, we consider it as a
        flickable.

        +------------+-----------------------------------------------------+
        | Returns:   | True if the object is flickable. False otherwise.   |
        +------------+-----------------------------------------------------+

     ``swipe_into_view``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase.swipe_into_view>`_ 
        Make the object visible.

        Currently it works only when the object needs to be swiped
        vertically. TODO implement horizontal swiping. –elopio -
        2014-03-21
