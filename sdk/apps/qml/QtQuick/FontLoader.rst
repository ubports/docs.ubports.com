Allows fonts to be loaded by name or URL

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`name </sdk/apps/qml/QtQuick/FontLoader#name-prop>`__**** :
   string
-  ****`source </sdk/apps/qml/QtQuick/FontLoader#source-prop>`__**** :
   url
-  ****`status </sdk/apps/qml/QtQuick/FontLoader#status-prop>`__**** :
   enumeration

Detailed Description
--------------------

The `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__ type is used to
load fonts by name or URL.

The `status </sdk/apps/qml/QtQuick/FontLoader#status-prop>`__ indicates
when the font has been loaded, which is useful for fonts loaded from
remote sources.

For example:

.. code:: qml

    import QtQuick 2.0
    Column {
        FontLoader { id: fixedFont; name: "Courier" }
        FontLoader { id: webFont; source: "http://www.mysite.com/myfont.ttf" }
        Text { text: "Fixed-size font"; font.family: fixedFont.name }
        Text { text: "Fancy font"; font.family: webFont.name }
    }

**See also** `Qt Quick Examples - Text
Fonts </sdk/apps/qml/QtQuick/text#fonts>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the font family. It is set automatically
when a font is loaded using the ``url`` property.

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

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

The url of the font to load.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the status of font loading. It can be one of:

-  `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__.Null - no font has
   been set
-  `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__.Ready - the font
   has been loaded
-  `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__.Loading - the font
   is currently being loaded
-  `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__.Error - an error
   occurred while loading the font

Use this status to provide an update or respond to the status change in
some way. For example, you could:

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

| 
