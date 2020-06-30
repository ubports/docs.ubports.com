Documentation
=============

.. tip::
    Documentation on this site is written in ReStructuredText, or RST for short. Please check the `RST Primer <http://www.sphinx-doc.org/en/stable/rest.html>`_ if you are not familiar with RST.

This page will guide you through writing great documentation for the UBports project that can be featured on this site.

Documentation guidelines
------------------------

These rules govern how you should write your documentation to avoid problems with style, format, or linking.

Title
^^^^^

All pages must have a document title that will be shown in the table of contents (left sidebar) and at the top of the page.

Titles should be "sentence cased" rather than "Title Cased". For example::

    Incorrect casing:
        Writing A Good Bug Report
    Correct casing:
        Writing a good bug report
    Correct casing when proper nouns are involved:
        Installing Ubuntu Touch on your phone

There isn't a single definition of title casing that everyone follows, but sentence casing is easy. This helps keep capitalization in the table of contents consistent.

Page titles are underlined with equals signs. For example, the markup for :doc:`./bugreporting` includes the following title:

.. code-block:: rst

    Bug reporting
    =============

Note that:

#. The title is sentence cased
#. The title is underlined with equals signs
#. The underline spans the title completely without going over

Incorrect examples of titles include:

* Incorrect casing

    .. code-block:: rst

        Bug Reporting
        =============

* Underline too short

    .. code-block:: rst

        Bug reporting
        =====

* Underline too long

    .. code-block:: rst

        Bug reporting
        ================


Headings
^^^^^^^^

There are several levels of headings that you may place on your page. These levels are shown here in order:

.. code-block:: rst

    Page title
    ==========

    Level one
    ---------

    Level two
    ^^^^^^^^^

    Level three
    """""""""""

Each heading level creates a sub-section in the global table of contents tree available when the documentation is built. In the primary (web) version of the documentation, this only shows four levels deep from the top level of the documentation. Please refrain from using more heading levels than will show in this tree as it makes navigating your document difficult. If you must use this many heading levels, it is a good sign that your document should be split up into multiple pages.

Table of contents
^^^^^^^^^^^^^^^^^

People can't navigate to your new page if they can't find it. Neither can Sphinx. That's why you need to add new pages to Sphinx's table of contents.

You can do this by adding the page to the ``index.rst`` file in the same directory that you created it. For example, if you create a file called "newpage.rst", you would add the line marked with a chevron (>) in the nearest index:

.. code-block:: rst

    .. toctree::
        :maxdepth: 1
        :name: example-toc

        oldpage
        anotheroldpage
    >   newpage

The order matters. If you would like your page to appear in a certain place in the table of contents, place it there. In the previous example, newpage would be added to the end of this table of contents.

Warnings
^^^^^^^^

Your edits must not introduce any warnings into the documentation build. If any warnings occur, the build will fail and your pull request will be marked with a red 'X'. Please ensure that your RST is valid and correct before you create a pull request. This is done automatically (via sphinx-build crashing with your error) if you follow :ref:`our build instructions <doc-contribution-workflow>` below.


Line length
^^^^^^^^^^^

There is no restriction on line length in this repository. Please do not break lines at an arbitrary line length. Instead, turn on word wrap in your text editor.

.. _doc-contribution-workflow:

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

Final check of your contribution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

After you have created your PR on github, the CI (continuous integration) system will make a test build of your contribution. Please double check whether this builds successfully and whether the result looks as you intended it to:

* Scroll to the bottom of the "Conversation" tab of your PR on github, here you will see the checks (You may have to click on "Show all checks")
* It can have a yellow dot, i.e., "pending" then wait a few more seconds.
* Or it may have a red X, i.e., it failed. In this case please check why it failed
* If it shows a green check mark, it means the PR could be built successfully
* Now please click on "Details",
* then "Artifacts" on the top right,
* then "_build/html/..index.html",
* and finally on "Go to start page".

Now you can browse a complete build of the UBports docs site with your contribution included. Double check whether your changes look ok.


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

This section lists the TODOs that have been included in this documentation. If you know how to fix one, please send us a Pull Request to make it better!

To create a todo, add this markup to your page::

    .. todo::

       My todo text

.. todolist::

.. _Its project in UBports Weblate: https://translate.ubports.com/projects/ubports-docs/
.. _UBports Forum: https://forums.ubports.com/
