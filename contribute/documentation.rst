Documentation
=============

.. tip::
    Documentation on this site is written in ReStructuredText, or RST for short. Please check the `RST Primer <http://www.sphinx-doc.org/en/stable/rest.html>`_ if you are not familiar with RST.

This page will guide you through writing great documentation for the UBports project that can be featured on this site.

Documentation guidelines
------------------------

These rules govern *how* you should write your documentation to avoid problems with style, format, or linking. If you don't follow these guidelines, we will not accept your document.

Title
^^^^^

All pages must have a document title that will be shown in the table of contents (left sidebar) and at the top of the page. This title is underlined with equals signs.

Titles should be sentence cased rather than Title Cased. For example::

    Incorrect casing:
        Writing A Good Bug Report
    Correct casing:
        Writing a good bug report
    Correct casing when proper nouns are involved:
        Installing Ubuntu Touch on your phone

There isn't a single definition of title casing that everyone follows, but sentence casing is easy. This helps keep capitalization in the table of contents consistent.

Table of contents
^^^^^^^^^^^^^^^^^

People can't navigate to your new page if they can't find it. Neither can Sphinx. That's why you need to add new pages to Sphinx's table of contents.

You can do this by adding the page to the ``index.rst`` file in the same directory that you created it. For example, if you create a file called "newpage.rst", you would add the line marked with a chevron (>) in the nearest index::

    .. toctree::
        :maxdepth: 1
        :name: example-toc

        oldpage
        anotheroldpage
    >   newpage

The order matters. If you would like your page to appear in a certain place in the table of contents, place it there. In the previous example, newpage would be added to the end of this table of contents.

Warnings
^^^^^^^^

Your edits must not introduce any warnings into the documentation build. If any warnings occur, the build will fail and your pull request will be marked with a red 'X'. Please ensure that your RST is valid and correct before you create a pull request. This is done automatically (via sphinx-build crashing with your error) if you follow our build instructions below.

Update translations
^^^^^^^^^^^^^^^^^^^

You must update the translation files to match your changes before you commit them. To do this, run ``update-translations.sh`` in this repository.

Contribution workflow
---------------------

The following steps will help you to make a contribution to this documentation after you have written a document.

.. Note::
    You will need a GitHub account to complete these steps. If you do not have one, click `here <https://github.com/join>`_ to begin the process of making an account.

Forking the repository
^^^^^^^^^^^^^^^^^^^^^^

You can make more advanced edits to our documentation by forking `ubports/docs.ubports.com <https://github.com/ubports/docs.ubports.com>`_ on GitHub. If you're not sure how to do this, check out the excellent GitHub guide on `forking projects <https://guides.github.com/activities/forking/>`_.

Building the documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^

If you'd like to build this documentation *before* sending a PR (which you should), follow these instructions on your *local copy* of your fork of the repository.

The documentation can be built by running ``./build.sh`` in the root of this repository. The script will also create a virtual build environment in ``~/ubportsdocsenv`` if none is present.

If all went well, you can enter the ``_build/html`` directory and open ``index.html`` to view the UBports documentation.

If you have trouble building the docs, the first thing to try is deleting the build environment. Run ``rm -r ~/ubportsdocsenv`` and try the build again. Depending on when you first used the build script, you may need to run the ``rm`` command with ``sudo``.

Remember to `update translations`_, then commit your changes and submit a pull request. 

Alternative methods to contribute
---------------------------------

Translations
^^^^^^^^^^^^

You may find the components of this document to translate at `its project in UBports Weblate`_.

Writing documents not in RST format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you would like to write documents for UBports but are not comfortable writing ReStructuredText, please write it without formatting and post it on the `UBports Forum`_ in the relevant section (likely General). Someone will be able to help you revise your draft and write the required ReStructuredText.

Uncomfortable with Git
^^^^^^^^^^^^^^^^^^^^^^

If you've written a complete document in ReStructuredText but aren't comfortable using Git or GitHub, please post it on the `UBports Forum`_ in the relevant section (likely General). Someone will be able to help you revise your draft and submit it to this documentation.

Current TODOs
-------------

This page lists the TODOs that have been included in this documentation. If you know how to fix one, please send us a Pull Request to make it better!

.. toctree::
   :maxdepth: 1

   documentation-todo

To create a todo, add this markup to your page::

    .. todo:

       My todo text


.. _Its project in UBports Weblate: https://translate.ubports.com/projects/ubports-docs/
.. _UBports Forum: https://forums.ubports.com/