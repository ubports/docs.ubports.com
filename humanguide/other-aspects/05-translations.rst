Translations
============

As part of the accessibility, translating an app is important.
`Clickable <http://clickable.bhdouglass.com/>`__ will handle this
process automatically, extracting new translatable strings into a pot
file (the source strings of your app, to be translated)

Marking a string to be translatable is as simple as calling
i18n.tr(string). For example:

::

   Label {
       text:i18n.tr("My Label")
   }

More information and options can be found in this a bit outdated
`tutorial on
localization <https://docs.ubuntu.com/phone/en/apps/qml/tutorials-internationalizing-your-app>`__
an app.
