
Contents

-  `Installing
   Autopilot </sdk/autopilot/python/guides-installation#installing-autopilot>`__

   -  `Ubuntu </sdk/autopilot/python/guides-installation#ubuntu>`__
   -  `Other
      Linux’s </sdk/autopilot/python/guides-installation#other-linux-s>`__

Autopilot is in continuous development, and the best way to get the
latest version of autopilot is to run the latest Ubuntu development
image. The autopilot developers traditionally support the Ubuntu release
immediately prior to the development release via the autopilot PPA.

.. rubric:: `Ubuntu </sdk/autopilot/python/guides-installation#id3>`__\ ` <#ubuntu>`__
   :name: ubuntu

**I am running the latest development image!**

In that case you can install autopilot directly from the repository and
know you are getting the latest release. Check out the packages below.

**I am running a stable version of Ubuntu!**

You may install the version of autopilot in the archive directly,
however it will not be up to date. Instead, you should add the latest
autopilot ppa to your system (as of this writing, that is autopilot
1.5).

To add the PPA to your system, run the following command:

::

    sudo add-apt-repository ppa:autopilot/1.5 && sudo apt-get update

Once the PPA has been added to your system, you should be able to
install the autopilot packages below.

**Which packages should I install?**

Are you working on ubuntu touch applications? The ``autopilot-touch``
metapackage is for you:

::

    sudo apt-get install autopilot-touch

If you are sticking with gtk desktop applications, install the
``autopilot-desktop`` metapackage instead:

::

    sudo apt-get install autopilot-desktop

Feel free to install both metapackages to ensure you have support for
all autopilot tests.

.. rubric:: `Other
   Linux’s </sdk/autopilot/python/guides-installation#id4>`__\ ` <#other-linux-s>`__
   :name: other-linuxs

You may have to download the source code, and either run from source, or
build the packages locally. Your best bet is to ask in the autopilot IRC
channel ( `*Q. Where can I get help /
support?* </sdk/autopilot/python/faq-faq#help-and-support>`__).

