Scaling images
==============

One important aspect for app convergence is the images and how to scale
them. From app icon to in-app images can be done in
`svg <https://en.wikipedia.org/wiki/Scalable_Vector_Graphics>`__
(scalable format) using software like
`Inkscape <https://inkscape.org/>`__.

.. figure:: /_static/images/humanguide/53.png

One particularity of qml, though, is that svg are rendered to use low
memory. So we seem to lose the power of scalable images. Image element
has a property called ``sourceSize`` that may indicate the size for a
svg to be rendered. It is not advisable to make this property a
percentage but we can use to render to different scales for different
devices:

.. code:: qml

   Image {
     source: "../assets/floral.svg"
     sourceSize.width: mainPage.width > units.gu(60) ? units.gu(90) : units.gu(40)
   }

In this way, we use a very small image for any kind of screen size.
