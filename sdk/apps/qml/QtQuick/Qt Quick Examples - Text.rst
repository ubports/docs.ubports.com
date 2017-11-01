

|image0|

*Text* is a collection of small QML examples relating to text. Each
example is a small QML file, usually containing or emphasizing a
particular type or feature. You can run and observe the behavior of each
example.

.. rubric:: Hello
   :name: hello

*Hello* shows how to change and animate the letter spacing of a
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ type. It uses
a sequential animation to first animate the font.letterSpacing property
from ``0`` to ``50`` over three seconds and then move the text to a
random position on screen:

.. code:: qml

                SequentialAnimation on font.letterSpacing {
                    loops: Animation.Infinite;
                    NumberAnimation { from: 0; to: 50; easing.type: Easing.InQuad; duration: 3000 }
                    ScriptAction {
                        script: {
                            container.y = (screen.height / 4) + (Math.random() * screen.height / 2)
                            container.x = (screen.width / 4) + (Math.random() * screen.width / 2)
                        }
                    }
                }

.. rubric:: Fonts
   :name: fonts

*Fonts* shows different ways of using fonts with the
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ type. Simply
by name, using the font.family property directly:

.. code:: qml

                font.family: "Times"

or using a `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__ type:

.. code:: qml

        FontLoader { id: fixedFont; name: "Courier" }

or using a `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__ and
specifying a local font file:

.. code:: qml

        FontLoader { id: localFont; source: "content/fonts/tarzeau_ocr_a.ttf" }

or finally using a `FontLoader </sdk/apps/qml/QtQuick/FontLoader/>`__
and specifying a remote font file:

.. code:: qml

        FontLoader { id: webFont; source: "http://www.princexml.com/fonts/steffmann/Starburst.ttf" }

.. rubric:: Available Fonts
   :name: available-fonts

*Available Fonts* shows how to use the QML Qt global object and a list
view to display all the fonts available on the system. The
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ type uses the list of
fonts available as its model:

.. code:: qml

            model: Qt.fontFamilies()

Inside the delegate, the font family is set with the modelData:

.. code:: qml

                    font.family: modelData

.. rubric:: Banner
   :name: banner

*Banner* is a simple example showing how to create a banner using a row
of text types and a
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__.

.. rubric:: Img Tag
   :name: img-tag

*Img tag* shows different ways of displaying images in text objects
using the ``<img>`` tag.

.. rubric:: Text Layout
   :name: text-layout

*Text Layout* shows how to create a more complex layout for a text item.
This example lays out the text in two columns using the onLineLaidOut
handler that allows you to position and resize each line:

.. code:: qml

            onLineLaidOut: {
                line.width = width / 2  - (margin)
                if (line.y + line.height >= height) {
                    line.y -= height - margin
                    line.x = width / 2 + margin
                }
            }

Files:

-  text/styledtext-layout.qml
-  text/text.qml
-  text/fonts/availableFonts.qml
-  text/fonts/banner.qml
-  text/fonts/fonts.qml
-  text/fonts/hello.qml
-  text/imgtag/TextWithImage.qml
-  text/imgtag/imgtag.qml
-  text/textselection/textselection.qml
-  text/main.cpp
-  text/text.pro
-  text/text.qmlproject
-  text/text.qrc

.. |image0| image:: /media/sdk/apps/qml/qtquick-text-example/images/qml-text-example.png

