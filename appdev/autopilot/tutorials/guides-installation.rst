guides-installation
===================

.. raw:: html

   <p class="topic-title first">

Contents

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Installing Autopilot

.. raw:: html

   <ul>

.. raw:: html

   <li>

Ubuntu

.. raw:: html

   </li>

.. raw:: html

   <li>

Other Linux’s

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Autopilot is in continuous development, and the best way to get the
latest version of autopilot is to run the latest Ubuntu development
image. The autopilot developers traditionally support the Ubuntu release
immediately prior to the development release via the autopilot PPA.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Ubuntu

.. raw:: html

   </h2>

.. raw:: html

   <p>

I am running the latest development image!

.. raw:: html

   </p>

.. raw:: html

   <p>

In that case you can install autopilot directly from the repository and
know you are getting the latest release. Check out the packages below.

.. raw:: html

   </p>

.. raw:: html

   <p>

I am running a stable version of Ubuntu!

.. raw:: html

   </p>

.. raw:: html

   <p>

You may install the version of autopilot in the archive directly,
however it will not be up to date. Instead, you should add the latest
autopilot ppa to your system (as of this writing, that is autopilot
1.5).

.. raw:: html

   </p>

.. raw:: html

   <p>

To add the PPA to your system, run the following command:

.. raw:: html

   </p>

.. raw:: html

   <pre>sudo add-apt-repository ppa:autopilot/1.5 &amp;&amp; sudo apt-get update
   </pre>

.. raw:: html

   <p>

Once the PPA has been added to your system, you should be able to
install the autopilot packages below.

.. raw:: html

   </p>

.. raw:: html

   <p>

Which packages should I install?

.. raw:: html

   </p>

.. raw:: html

   <p>

Are you working on ubuntu touch applications? The autopilot-touch
metapackage is for you:

.. raw:: html

   </p>

.. raw:: html

   <pre>sudo apt-get install autopilot-touch
   </pre>

.. raw:: html

   <p>

If you are sticking with gtk desktop applications, install the
autopilot-desktop metapackage instead:

.. raw:: html

   </p>

.. raw:: html

   <pre>sudo apt-get install autopilot-desktop
   </pre>

.. raw:: html

   <p>

Feel free to install both metapackages to ensure you have support for
all autopilot tests.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Other Linux’s

.. raw:: html

   </h2>

.. raw:: html

   <p>

You may have to download the source code, and either run from source, or
build the packages locally. Your best bet is to ask in the autopilot IRC
channel ( Q. Where can I get help / support?).

.. raw:: html

   </p>
