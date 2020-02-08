Translations
============

Although English is the official base language for all UBports projects we believe you have the right to use it in any language you want.

We are working hard to meet that goal, and you can help as well. You decide how much time you can put into translation. From minutes to hours, everything counts.

How does a text gets translated (technical background)
------------------------------------------------------
Most apps running on Ubuntu Touch use `GNU gettext <https://www.gnu.org/software/gettext/>`_ for translations. A *.pot* template file holds an apps strings. From this template for every language an individual *.po* file is derived. Those *.po* files do contain the actual translations.
To add a new language a new *.po* file needs to be created. To translate a string the *.po* file needs to be edited. Next to the original string (english in most cases) the appropriate translation needs to be entered following the *.po* gettext file syntax.
Some apps do use `QtLinguist <https://doc.qt.io/qt-5/qtlinguist-index.html>`_ for translation. It does follow the same priciples only using *.ts* files for translations with another syntax. As template one *.ts* file is used.

Within a app strings are marked either this way ``i18n.tr("string")`` when using gettext or like this ``tr("string")`` when using QtLinguist. When the app is build those translatable strings are extracted and written into the *.pot* or *.ts* template files. The *.po* and *.ts* language files then need to be updated from their template.

Once strings have been translated, they are made available for users with a new release of an app.

Methods of Translation
----------------------

There are three common ways used to translate an app:

* Weblate: A web based translation tool. UBports apps using Weblate can be translated `here <https://translate.ubports.com/projects/>`_. There is an automatic transfer of new strings from an apps repo to weblate. Translated strings get back as commits to the repo from weblate.
* Editor: Translation is done by changing *.po* files with the editor of your choice, and a GitHub/GitLab account. The *.po*/*.ts* files for each project are in their repository on `our GitLab organization <https://gitlab.com/ubports/apps>`_ or on `our GitHub organization <https://github.com/ubports>`_. After translating the translator commits new translations to an apps repo generally by opening a merge request/pull request.
* Team translation: We also have  a `Translation Forum <https://forums.ubports.com/category/39/translations>`_ to discuss translating Ubuntu Touch and its core apps. Some projects are using Telegram or matrix groups too, and some teams are still using the Ubuntu Launchpad framework.

Core apps and some community apps like dekko or TELEports are generally using weblate for translation. This is the preferred way to translate and it does not need any programming skills. Please have a look at the `UBports translation projects <https://translate.ubports.com/projects/>`_. When using weblate do not edit *.po* files manually. Commiting edited *.po* files can break the automated process of translation.

Most apps maintained by individual developers are mainly using *.pot*/*.po* files for translation. Those generally need to be edited manually and commited to the apps repo.

How-To
------

UBports Weblate
^^^^^^^^^^^^^^^

You can go to `UBports Weblate <https://translate.ubports.com/projects/>`_, click on "Dashboard" button, go to a project, and start making anonymous suggestions without being registered. If you want to save your translations, you must be logged in.

For that, go to UBports Weblate and click on the "Register" button. Once in the "Registration" page, you'll find two options:

* Register using a valid email address, a username, and your full name. You'll need to resolve an easy control question too.
* Register using a third party registration. Currently the system supports accounts from openSUSE, GitHub, Fedora, and Ubuntu.

Once you're logged in, the site is self-explanatory and you'll find there all the options and customization you can do.

Now, get on with it. The first step is to search if your language already exists in the project of your choice. If your language is not available for a specific project, you can add it yourself.

.po/.ts File Editor
^^^^^^^^^^^^^^^^^^^

If you want to work with *.po*/*.ts* files directly you need to know what you're doing for sure. The first thing you should always remember is:

.. warning::
    Do **never** commit *.po* files to projects that are translated using weblate. This could break the whole translation exchange process with weblate.

As was said up above, you need a file editor of your choice and a GitHub/GitLab account to translate *.po*/*.ts* files directly. Idealy you do have `clickable <http://clickable.bhdouglass.com/en/latest/>`_ set up and know how to build an app.

There are online gettext .po editors and those you can install in your computer. You can choose whatever editor you want, but we prefer to work with free software only. There are too many plain text editors and tools to help you translate *.po*/*.ts* files to put down a list here.

.. note::
    For high quality translations it is recommended to go through all of the steps given below. Although if you are not familiar with building apps using clickable, skip the steps 4. to 6. You may not be able to translate the latest strings though. And you will not know if the strings fit into the apps layout.

How to proceed:

1. fork the apps repo into your GitHub or GitLab account
2. clone the repo locally or use GitLab's online editor
3. (optional) create a new branch for the translation
4. build the app using clickable to get up-to-date *.pot*/*.ts* template files
5. update the desired *.po*/*.ts* language file(s) from the template
6. translate all strings
7. build and install the app on your device and test the translations
8. (optional) repeat steps 6. and 7. until you are satisfied with your work
9. push the translated *.po*/*.ts* file(s) to your forked repo [do NOT commit *.pot*/*.ts* template files]
10. open an merge/pull request from your fork to the apps repo


Translation Team Communication
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You may talk to others regarding translations by using `the forum category <https://forums.ubports.com/category/39/translations>`_ that UBports provides for this task. To use it you need to register, or login if you're registered already.

The only requirement is to start your post putting down your language in brackets in the "Enter your topic title here" field. For example, ``[Spanish] How to translate whatever?``

In your interactions with your team you'll find the best way to coordinate your translations.

License
-------

All the translation projects, and all your contributions to this project, are under a `Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) <https://creativecommons.org/licenses/by-sa/4.0/>`_ license that you explicitly accept by contributing to the project.

Go to that link to learn what this exactly means.
