Building and booting
====================

Now it's time to download and configure the necessary source code.
Then we'll build it and get it to boot.
Firstly follow the **Building** steps for your Halium version and porting method.
Secondly, proceed with the final **Install and boot** section.


Building
--------

Full system image method or Halium-boot method
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you are using either of the **Full system image** method (for Halium 7.1 or 9.0),
or the **Halium-boot** method (for Halium 9.0),
then please pick the two steps below matching your Halium version.

.. toctree::
   :maxdepth: 1

   H7_setup_sources
   H7_build
   H9_setup_sources
   H9_build

Standalone kernel method
^^^^^^^^^^^^^^^^^^^^^^^^

If you are using the **Standalone kernel** method, then please pick the step below.

.. toctree::
   :maxdepth: 1

   H9_gitlab_build

Install and boot
----------------

Afterwards, proceed with these steps for any porting method.

.. toctree::
   :maxdepth: 1

   Halium_install
   Boot_debug
