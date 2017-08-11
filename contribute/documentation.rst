.. _contribute-doc-index:

Documentation
=============

.. note::
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

Reference
^^^^^^^^^

References create a permanent link to the content they appear before in Sphinx. One should always appear as the first line of your document.

For example, take a look at this document's first four lines::

    .. _contribute-doc-index:
    
    Documentation
    =============

The reference name can be called in another document to easily link to a page::

    For example, check out the :ref:`Documentation intro <contribute-doc-index>`

This will create a link to this page that won't change if this page changes directories in a reorganization later.

Your reference should follow the namespace ``part-section-title``. This document, for example, is the index of the Documentation (doc) section in the Contribute part of the documentation.

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
