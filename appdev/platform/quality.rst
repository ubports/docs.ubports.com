Develop with quality
====================

Create rock-solid products with Ubuntu's Quality Assurance tools.

Users demand stable, reliable and bug-free scopes and apps. With Ubuntu,
developers can satisfy those needs and ensure their software is
regression- free and thoroughly tested release after release.

A well-tested application will cover all the levels of the testing
pyramid and provide many more low-level unit tests than high level
end-to-end tests running through a GUI. Ubuntu has you covered on all
levels.

.. figure:: ../../media/testing-integration-c.png
   :alt: 

Unit tests
----------

Unit tests are the foundation of a good testing story for your
application. Tests cover a single unit of code with known input and
expected output. Unit tests ensure your methods and logic perform as
expected in isolation.

For scope developers
~~~~~~~~~~~~~~~~~~~~

-  `Write your first scope unit
   test <../scopes/tutorials/scopes-unit-testing.md>`__
-  `Scopes testing API
   reference <https://developer.ubuntu.com/api/devel/ubuntu-14.10/cplusplus/unity-scopes/dir_4a2a62c60bd6f2d5db6599a21d12fb4a.html>`__

For QML app developers
~~~~~~~~~~~~~~~~~~~~~~

-  `Write your first QML unit
   test <../apps/qml/tutorials-qml-unit-testing.md>`__
-  `Ubuntu Test components API
   reference <../apps/api-qml-current/Ubuntu.Test.md>`__

For HTML5 app developers
~~~~~~~~~~~~~~~~~~~~~~~~

-  `Write your first HTML5 unit
   test <../apps/html-5/tutorials-unit-testing.md>`__
-  `Jasmine API reference <http://jasmine.github.io/>`__

Integration tests
-----------------

Integration tests help ensure any custom components work well with the
application and the SDK. It's also a chance to test any external
dependencies for an application.

The Ubuntu Test components and the Qt Test framework are well suited for
writing integration tests.

For QML app developers
~~~~~~~~~~~~~~~~~~~~~~

-  `Write your first QML integration
   test <../apps/qml/tutorials-qml-integration-testing.md>`__
-  `Ubuntu Test components API
   reference <../apps/api-qml-current/Ubuntu.Test.md>`__

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/En1MaDDp9_8?rel=0" frameborder="0" allowfullscreen>

.. raw:: html

   </iframe>

Functional tests
----------------

Functional or acceptance tests help ensure your application behaves
properly from a user perspective. The tests seek to mimic the user as
closely as possible. Autopilot is the recommended tool for testing.

-  `Get started with the Autopilot
   tutorial <../apps/api-autopilot-current/tutorial-getting_started.md>`__
-  `Guide to the page object model for functional
   testing <guides/acceptance-testing-using-the-page-object-model.md>`__
-  `Autopilot API reference <../apps/api-autopilot-current/index.md>`__
-  `Running Autopilot Tests <guides/running-autopilot-tests.md>`__

For scope developers
~~~~~~~~~~~~~~~~~~~~

-  `Writing scope functional
   tests <http://people.canonical.com/~nskaggs/scopes-harness/tutorial/tutorial.html>`__
-  `Scopes Testing Harness
   API <http://people.canonical.com/~nskaggs/scopes-harness/api/api.html>`__

For QML app developers
~~~~~~~~~~~~~~~~~~~~~~

-  `Write your first Autopilot
   test <../apps/qml/tutorials-writing-qml-acceptance-tests.md>`__
-  `Autopilot SDK helpers API
   reference <../apps/api-autopilot-current/ubuntuuitoolkit.md>`__

For HTML5 app developers
~~~~~~~~~~~~~~~~~~~~~~~~

-  `Writing HTML5 functional
   tests <../apps/html-5/tutorials-writing-functional-tests.md>`__
-  `Selenium API <http://selenium-python.readthedocs.io/api.html>`__
