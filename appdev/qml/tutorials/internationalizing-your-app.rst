Tutorials - internationalizing your app
=======================================

As a developer, you probably want to see your apps in many hands. One
way to make it happen is to enable your application for translation.

With minimal effort, you can mark your application strings for
translation, expose them to community translators and integrate these
translations into your package. The translations building process is
handled by the SDK itself and if you happen to use Launchpad,
translators will quickly see your project and help you, but you still
need to mark your user-visible strings as translatable. Let's get
started.

Glossary
~~~~~~~~

A few terms you need to understand before diving in.

-  **Gettext**: the technology used by Ubuntu to translate applications
-  **Internationalization (i18n)**: what you will be doing in your app
   to enable translations
-  **Localization (l10n)**: what translators do
-  **User locale**: for most cases, you can think of it as the language
   the user has chosen for the UI of their system. However, locale is
   the broader term that includes the group of settings associated with
   a particular localized configuration: language, date/time format,
   currency, etc.
-  **POT files**: template files containing all your application
   strings, exposed to translators. There is generally only one and it
   is also known as “Translation template.”
-  **PO files**: what translators (or an online translation system)
   produce, they contain translated strings based on a POT file. There
   is a .po file for each language a translation is available in, and
   the files are commonly called the “Translations”.
-  **MO files**: binary files loaded in your app at runtime, built from
   PO files. These are the only files that your packaged app will need
   to ship to use translations.

Getting started
---------------

First, make sure you are up-to-date on what an SDK app needs in term of
preparation, for example, adding click targets to build for a specific
device.

During this tutorial, we are going to use a sample app and see what it
takes to get a translated version into users hands. You can grab the
code by running:

``bzr branch lp:~davidc3/howmanyapples/no-i18n``

Or `read it
online › <http://bazaar.launchpad.net/~davidc3/howmanyapples/no-i18n/files>`__

Or simply use one of your existing projects and try to follow along
(Note: make sure to update your project to the latest SDK template by
following these steps).

This tutorial is generic, so that in practice you can apply the steps to
any QML project that uses the Ubuntu UI Toolkit.

Before getting into the code, let's have a look at some common methods.

Marking a string for translation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The SDK provides an i18n API with a very straightforward way to do that.
Marking a string is as simple as calling ``i18n.tr(string)``.

For example:

.. code:: qml

    Label {
        text:i18n.tr("My Label")
    }

Managing plural forms
~~~~~~~~~~~~~~~~~~~~~

In many latin languages such as english or french, putting a sentence to
the plural form is - most of the time - simply a matter of adding an
“s”. But this is not the case in a lot of languages, for example, Arabic
has six different plural forms, Croatian and Russian have three, etc.

The i18n API gives you a clean solution:

``i18n.tr("%1 cat", "%1 cats", nb_of_cats).arg(nb_of_cats)``

In the example, the first argument to ``i18n.tr()`` is the english
singular form, the second one is the English plural, then comes the
integer which will trigger the change of form. They will be used to
generate a translation template suited to all languages.

Working with the plural form and i18n has been extensively documented,
for more information on that topic, such as a guide to design a correct
plural form, have a look
`here <http://localization-guide.readthedocs.org/en/latest/l10n/pluralforms.html>`__.

Providing context
~~~~~~~~~~~~~~~~~

Translators only see the string enabled for translation, not the code
around, which means they can be confused by the exact meaning or context
of a string, and most of the time, they don’t see the app in action at
this specific step. Don’t let them in the dark and make sure they fully
understand what the purpose of your strings are.

You can do that by adding translators comments to your code. Above any
translatable string, you can add a special comment starting with
“\ ``TRANSLATORS:``\ ”. Note that the default Ubuntu SDK setup will only
pick up translators comment starting this way. For example

.. code:: qml

    // TRANSLATORS: %1 refers to the amount of animals, %2 to the species
    text: i18n.tr(“Do you want to buy %1 more %2?”).arg(nb_animals).arg(species)

In practice
-----------

If you haven't already, download the source of the sample app by opening
a terminal with Ctrl+Alt+t and running

.. code:: qml

    bzr branch lp:~davidc3/howmanyapples/no-i18n

Open it with the SDK

.. code:: qml

    cd no-i18n
    ubuntu-sdk .

It will open the editor. Click on ``Main.qml`` in the left column. The
file should look like this:
http://bazaar.launchpad.net/~davidc3/howmanyapples/no-i18n/view/head:/Main.qml

Now, try to change all user-visible strings to ``i18n.tr(string)``

**Hint**: They are located at lines 27, 47 49, 51, 53, 74, 92, 108, 132
& 140

Try to run the app with ``Ctrl+R``, to see if it launches. If it
doesn't, make sure to check the error log for typos you could have made.

That's it, you know how to internationalize!

But that's not all, you can see that at lines 74 and 92, you have the
potential to use the plurals method

Change line 74 to:

.. code:: qml

    text:i18n.tr("You are making %1 for %2 guest",
                "You are making %1 for %2 guests",
                guests).arg(recipe).arg(guests)

The third argument of the ``tr()`` method (here "guests") is the value
that triggers the change to the plural form. Therefore, at line 92, you
can do:

.. code:: qml

    text:i18n.tr("You will need %1 apple for this recipe", "You will need %1 apples for this recipe", apples).arg(apples)

Other internationalization features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In this app, you also have the opportunity to use localized currencies,
with the ``toLocaleCurrencyString()`` method

Change line 108:

.. code:: qml

    text: "This will cost you %1".arg(price)

To:

.. code:: qml

    text: i18n.tr("This will cost you %1").arg(Number(price).toLocaleCurrencyString(Qt.locale())

It will pick the correct currency symbol and the right number format
depending on the locale.

This is a feature of the Locale QML Type, documented
`here <http://doc.qt.io/qt-5/qml-qtqml-locale.html>`__, which provides a
list of convenient methods for app developers: metric and imperial units
formats, nativeCountryName, nativeLanguageName, dateFormat, timeFormat,
etc.

The `Date type <http://doc.qt.io/qt-5/qml-qtqml-date.html>`__ is also
worth looking into if your application is displaying dates or times.
This will be the topic of another tutorial.

Let's have a look at the final internationalized version of our `sample
app <http://bazaar.launchpad.net/~davidc3/howmanyapples/trunk/view/head:/Main.qml>`__

As you can see, I've also added a few translator comments. Make sure to
use them for any strings needing context!

Building the POT file
---------------------

The POT file will be located in a ``po/`` folder in our app and will
contain every string we have marked for translations (including
translators comments).

The SDK automatically builds it during the build step of your
application. When you run it, create your click package or click the
build button, it generates or re-generates it.

If you use Launchpad to get your app translated collaboratively by a
community of translators, the Translations page
(``https://translations.launchpad.net/<projectname>``) will propose you
to use this POT file for translations and automatically import available
translations back in your project, as ``.po`` files, when they are
available. Remember to add the ``.pot`` file to revision control and to
`set up your project
fortranslations <https://wiki.ubuntu.com/Translations/LpProjectConfiguration>`__.

Building translations before publishing your app
------------------------------------------------

Once translators have worked on your app, make sure you run a last
``bzr pull`` to get all the translations (``.po`` files) from Launchpad
before building the actual files (``.mo``) that will be shipped in your
package.

Build your application one more time or simply create your click package
from the Publish tab of the SDK to build your translations.

This creates binary ``.mo`` files from the ``.po`` files provided by
translators. They will be loaded at runtime depending on the user
locale.

That's it, you are ready to publish a multi-language QML app!

Shipping translations
~~~~~~~~~~~~~~~~~~~~~

Translations are included in your click package in
``share/locale/$lang/LC_MESSAGES/$appname.mo``, if you have built your
package outside of the SDK, make sure to check they are included in this
path, or your app won’t be translated on users devices.

Testing your app in other languages
-----------------------------------

To evaluate the quality of your translations or just see how your UI
looks in another language, the easiest way is to use your target device
(phone, tablet, emulator…) and change its language from System Settings
> Language & Text > Language.

There is more to internationalization
-------------------------------------

Some areas of i18n are not covered by this tutorial. For example, The
SDK doesn’t automatically mark for translation the content of the
``.desktop`` file of your app (its name, description, etc.), which is
handled separately by CMake. This will be the topic of a more general
i18n guide, stay tuned!

Optional: Updating your project SDK template
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From time to time, project templates provided by the SDK get updated. To
get the changes needed for this tutorial (released end of April 2015),
you need to update your project template manually. If your project as
been created after this date, you don’t have anything to do.

1. Make sure you have updated to the latest version of the Ubuntu SDK
2. Rename your project folder to something else
3. Create a new project with the SDK similar in all points to your
   original project
4. Copy everything from your renamed project folder to the new one.
   **Except the Makefile, .qmlproject and .qmlproject.user**. Don't
   forget to copy your ``.bzr`` folder if you use bzr.
