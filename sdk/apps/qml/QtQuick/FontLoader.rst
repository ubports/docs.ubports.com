.. _sdk_qtquick_fontloader:

QtQuick FontLoader
==================

Allows fonts to be loaded by name or URL

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`name <sdk_qtquick_fontloader_name>` : string
-  :ref:`source <sdk_qtquick_fontloader_source>` : url
-  :ref:`status <sdk_qtquick_fontloader_status>` : enumeration

Detailed Description
--------------------

The :ref:`FontLoader <sdk_qtquick_fontloader>` type is used to load fonts by name or URL.

The :ref:`status <sdk_qtquick_fontloader_status>` indicates when the font has been loaded, which is useful for fonts loaded from remote sources.

For example:

.. code:: qml

    import QtQuick 2.0
    Column {
        FontLoader { id: fixedFont; name: "Courier" }
        FontLoader { id: webFont; source: "http://www.mysite.com/myfont.ttf" }
        Text { text: "Fixed-size font"; font.family: fixedFont.name }
        Text { text: "Fancy font"; font.family: webFont.name }
    }

**See also** `Qt Quick Examples - Text Fonts </sdk/apps/qml/QtQuick/text/#fonts>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_fontloader_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the font family. It is set automatically when a font is loaded using the ``url`` property.

Use this to set the ``font.family`` property of a ``Text`` item.

Example:

.. code:: qml

    Item {
        width: 200; height: 50
        FontLoader {
            id: webFont
            source: "http://www.mysite.com/myfont.ttf"
        }
        Text {
            text: "Fancy font"
            font.family: webFont.name
        }
    }

.. _sdk_qtquick_fontloader_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The url of the font to load.

.. _sdk_qtquick_fontloader_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of font loading. It can be one of:

-  :ref:`FontLoader <sdk_qtquick_fontloader>`.Null - no font has been set
-  :ref:`FontLoader <sdk_qtquick_fontloader>`.Ready - the font has been loaded
-  :ref:`FontLoader <sdk_qtquick_fontloader>`.Loading - the font is currently being loaded
-  :ref:`FontLoader <sdk_qtquick_fontloader>`.Error - an error occurred while loading the font

Use this status to provide an update or respond to the status change in some way. For example, you could:

-  Trigger a state change:

   .. code:: qml

       State { name: 'loaded'; when: loader.status == FontLoader.Ready }

-  Implement an ``onStatusChanged`` signal handler:

   .. code:: qml

       FontLoader {
           id: loader
           onStatusChanged: if (loader.status == FontLoader.Ready) console.log('Loaded')
       }

-  Bind to the status value:

   .. code:: qml

       Text { text: loader.status == FontLoader.Ready ? 'Loaded' : 'Not loaded' }

