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

All pages must have a document title. This title is shown on the table of contents (to the left) and at the top of the page.

The title, underlined with the Equals sign, is shown in the table of contents to the left of the page.

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

Contribution workflow
---------------------

.. Note::
    You will need a GitHub account to complete these steps. If you do not have one, click `here <https://github.com/join>`_ to begin the process of making an account.

Directly on GitHub
^^^^^^^^^^^^^^^^^^

Read the Docs and GitHub make it fairly simple to contribute to this documentation. This section will show you the basic workflow to get started by editing an existing page on GitHub


#. Find the page you would like to edit
#. Click the "Edit on GitHub" link to the right of the title
#. Make your changes to the document. Remember to write in ReStructuredText!
#. Propose your changes as a Pull Request.

If there are any errors with your proposed changes, the documentation team will ask you make some changes and resubmit. This is as simple as editing the file on GitHub from your fork of the repository.

Manually forking the repository
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can make more advanced edits to our documentation by forking `ubports/docs.ubports.com <https://github.com/ubports/docs.ubports.com>`_ on GitHub. If you're not sure how to do this, check out the excellent GitHub guide on `forking projects <https://guides.github.com/activities/forking/>`_.

Building this documentation locally
-----------------------------------

If you'd like to build this documentation *before* sending a PR (which you should), follow these instructions on your *local copy* of your fork of the repository.

.. Note::
    You must have pip installed before following these instructions. On Ubuntu, install the pip package by running ``sudo apt install python-pip``. `This page <https://pip.pypa.io/en/stable/installing/>`_ has instructions for installing Pip on other operating systems and distros.

1. Install the Read the Docs theme and ReCommonMark (for Markdown parsing)::

    pip install sphinx sphinx_rtd_theme recommonmark

2. Change into the ``docs.ubports.com`` directory::

    cd path/to/docs.ubports.com

3. Build the documentation::

    python -m sphinx . _build

This tells Sphinx to build the documentation found in the current directory, and put it all into ``_build``. There will be a couple of warnings about README.md and a nonexistent static path. Watch out for warnings about anything else, though, they could mean something has gone wrong.

If all went well, you can enter the ``_build`` directory and double-click on ``index.html`` to view the UBports documentation.
