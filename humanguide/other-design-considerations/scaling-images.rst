Scaling images
==============

Scaling images is important in a convergent app. App icons and images can be created in scalable formats to improve their ability to scale.

.. figure:: /_static/images/humanguide/53.png
   :align: center

One of the most popular scalable formats is `SVG <https://en.wikipedia.org/wiki/Scalable_Vector_Graphics>`__. SVG files can be created using software like `Inkscape <https://inkscape.org/>`__.

One particularity of qml, though, is that SVGs are rendered to use less memory, losing the advantages of scalability. When using a SVG file in an ``Image`` element we can use the property called ``sourceSize``. This will define the rendered size of the SVG image. A SVG image with a ``sourceSize`` width and height of 252 pixels, will be rendered as if the scalable image would be a png of 252 per 252 pixels.

.. figure:: /_static/images/humanguide/icon-sizes.png
   :align: center

   Different rendered sizes of the same svg image

It is not advisable to define ``sourceSize`` as a relative size to avoid performance issues. A good practice is defining ``sourceSize`` based on a set list of thresholds. In the example below the image.svg will be rendered 60 per 60 grid units if the main view is bigger that 70 grid units but as an image of 40 per 40 grid units in the other cases. By defining these thresholds, we get scalable images without a huge performance cost.

.. code:: qml

   Image {
     source: "image.svg"
     sourceSize.width: mainView.width > units.gu(70) ? units.gu(60) : units.gu(40)
     sourceSize.height: sourceSize.width
   }

Read more about image performance in the `Qt wiki <https://wiki.qt.io/Performance_tip_Images>`__.
