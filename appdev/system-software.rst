System Software
===============

In this page you'll find information on how to develop system software,
including how to build it, cross-compile it and make it available to
other users. Most of the software preinstalled in your Ubports device is
shipped in the device image in the form of a Debian package. This format
is used by several Linux distributions (such as Debian, Ubuntu, Mint)
and `plenty of
documentation <https://www.debian.org/doc/manuals/maint-guide/index.en.html>`__
is available out there on how to work with it, so we won't be covering
it here. Besides, in most cases you'll find yourself in need of
modifying existing software, rather than developing new packages from
scratch; for this reason, this guide is mostly about recompiling an
existing Ubports package.

There are essentially three ways of developing Ubports system software:
building it directly on device, cross-compiling it or uploading the
source code to a Launchpad PPA and have it built by Launchpad. We'll
examine all of the three methods, and use
`address-book-app <https://github.com/ubports/address-book-app>`__ (the
Contacts application) as an example.

Building on the device itself
-----------------------------

This is the fastest and simplest method to develop small changes and
test them in nearly real-time. Depending on your device resources,
however, it might not be possible to follow this path: if you don't have
enough free space in your root filesystem you won't be able to install
all the package build dependencies; or, your device's RAM might not be
enough for the compiler. Assuming that you are lucky enough not to run
into these restrictions, and that you don't mind reflashing your device
afterwards (to clear it from all the development packages you
installed), please read on.

You can ssh to the device (via ``phablet-shell``, for example) and then
install all the packages needed to rebuild the component you want to
modify (the Contacts app, in this example):

::

    sudo apt-get build-dep address-book-app
    sudo apt-get install fakeroot

If you see an error that ``you must put some 'source' URIs in your sources.list`` then update your sources.list file with the following command:

::

    sudo apt-get update

This will install a bunch of packages into your device's rootfs.
Additionally, you probably want to install ``git`` in order to get your
app's source code in the device and later push your changes back into
the repository:

::

    sudo apt-get install git
    git clone git@github.com:ubports/address-book-app.git   # or your own clone
    cd address-book-app

Now, you are ready to build the package:

::

    DEB_BUILD_OPTIONS="parallel=2 debug" dpkg-buildpackage -rfakeroot -b

and finally, install it. The ``dpkg-buildpackage`` command will print
out the list of generated packages, and it's those filenames you will
need to pass to the next command:

::

    sudo dpkg -i ../<package>.deb [../<package2>.deb ...]

Note, however, that you might not need to install all the packages:
generally, you can skip all packages whose name ends with ``-doc`` or
``dev``, since they don't contain code used by the device.

Cross-building with crossbuilder
--------------------------------

This is the recommended way to develop non trivial changes, and it's
suitable for all devices since the build happens on your desktop PC
(will call it "host" from now on) and not on the target device. It's
also extremely fast and easy to use.

Start with installing ``crossbuilder`` in your host:

::

    git clone git@github.com:ubports/crossbuilder.git

It's a shell script, so you don't need to build it. Instead, you will
need to add its directory to your ``PATH`` environment variable, so that
you can execute it from any directory:

::

    echo "export PATH=$HOME/crossbuilder:$PATH" >> ~/.bashrc
    # and add it to your own session:
    export PATH="$HOME/crossbuilder:$PATH"

Then, you need to setup LXD; luckily, crossbuilder has a command which
does everything for you; you just need to carefully follow its
instructions:

::

    crossbuilder setup-lxd

If this is the first time you used LXD, you might need to reboot your
host once everything has completed. After LXD has been setup, using
crossbuilder is as easy as it can get: just move to the directory where
the source code of your project is (for example,
``~/src/git/address-book-app``) and launch it like this:

::

    cd ~/src/git/address-book-app
    crossbuilder --ubuntu=15.04

*Note: if your device is connected to the PC, you don't need to specify
the ``--ubuntu=15.04`` parameter because crossbuilder will figure out
the proper Ubuntu version by itself. If you don't specify any parameter
and have no device connected to your PC, crossbuilder will assume
``16.04`` (Xenial).*

Crossbuilder will do everything for you: it will create the LXD
container, download the development image, install all your package
build dependencies, perform the build and finally, if your device is
connected to your host, it will copy the packages over to the target and
install them. The first two steps (creating the LXD image and getting
the dependencies) can take a few minutes, but will be executed only the
first time you launch crossbuilder for a new package.

Now, whenever you change the source code in your git repository, the
same changes will be available inside the container, and the next time
you'll type the ``crossbuilder`` command, only the changed files will be
rebuilt. This makes iterative development blazing fast.

Unit tests
~~~~~~~~~~

By default crossbuilder does not run unit tests; that's both for speed
reasons, and because the container created by crossbuilder is not meant
to run native (target) executables: the development tools (qmake/cmake,
make, gcc, etc.) are all run in the host architecture, with no emulation
(again, for speed reasons). However, qemu emulation is available inside
the container, so it should be possible to run unit tests inside the
container. You can do that by getting a shell inside the container with

::

    crossbuilder --ubuntu=15.04 shell

and then find the unit tests and execute them. Be aware that the
emulation is not perfect, so there's a very good chance that the tests
will fail even when they'd otherwise succeed, when run into a proper
environment. For that reason, it's probably wiser not to worry about
unit tests when working with crossbuilder, and run them only when not
cross-compiling.

Developing in the host architecture, deploying via PPA
------------------------------------------------------

Another way to develop system software is to develop it locally on your
desktop machine, and then push the source code to a Launchpad PPA and
have it built there for the armhf architecture. Depending on whether the
feature you are developing can be reasonably tested in your local
machine, and whether you can wait for Launchpad's builders to start
working on your package (this could take some hours), this might or
might not be a suitable way of device development.

*Note: as of late 2017, Launchpad has dropped support for vivid-based
PPAs. So, if you target the current 15.04 Ubports devices, this method
is not suitable for you.*

Start by getting
`VirtualBox <https://www.virtualbox.org/wiki/Downloads>`__ and an Ubuntu
image matching the base image of your device. You can get the Ubuntu
image here:

-  ``16.04 (Xenial)``:
   http://releases.ubuntu.com/16.04/ubuntu-16.04.3-desktop-amd64.iso

Boot your VirtualBox machine with the Ubuntu image you downloaded, and
once the installation is completed and you get to a terminal, add the
`Stable Phone Overlay
PPA <https://launchpad.net/~ci-train-ppa-service/+archive/ubuntu/stable-phone-overlay>`__
like this:

::

    sudo add-apt-repository ppa:ci-train-ppa-service/stable-phone-overlay
    sudo apt-get update
    sudo apt-get dist-upgrade

You can then install the development tools you need, as well as the
build dependencies of the component you want to work on:

::

    sudo apt-get install vim git devscripts
    sudo apt-get build-dep address-book-app

and then build the package locally:

::

    DEB_BUILD_OPTIONS="parallel=4 debug" dpkg-buildpackage -rfakeroot -b

Change the ``parallel`` option according to how many processor cores
you've made available to VirtualBox in order to maximize the build
speed. The command above will build your package and also run all unit
tests associated with it, so it's an easy (though not sufficient!) way
to check that your changes won't break existing functionality. You can
now develop your changes and test them locally (though, if your
component needs access to phone hardware, that will obviously not work),
until you are satisfied with the result.

Once you get to a state where you believe that your changes should work,
you can push them into a PPA, so that they'll be built for your Ubports
device and you (and other users) will be able to test them. First,
create a PPA by visiting https://launchpad.net/~/+activate-ppa; enter a
name and a description, then push the Create button, and on the next
page pick the "Change details" link near the upper right corner. You can
then enable your phone's architecture (with most likelihood, it's "ARM
ARMv7 Hard Float"), disable all the architectures you don't care about,
and click on "Save". Supposing that your Launchpad username is
"ubdeveloper" and the PPA is called "myppa", then the commands to push
your changes to the PPA will be as follows:

::

    debuild -S
    dput ppa:ubdeveloper/myppa ../address-book-app_*_source.changes

where the exact filename of the ``.changes`` file will be printed by the
debuild command near the end of its output. Note that in order for the
upload to succeed you will need to have a valid GPG key setup, and it
must be `added to Launchpad <https://launchpad.net/~/+editpgpkeys>`__.
If you are new to this stuff, it's recommended that you carefully read
the `documentation in
Launchpad <https://help.launchpad.net/Packaging/PPA/Uploading>`__.

After the package has been uploaded, you should receive an e-mail by
launchpad telling you whether the upload was accepted; if it was, then
it means that Launchpad will try to build the source package for all the
architectures supported by your PPA and, if successful, will finally
publish the resulting package(s) in it. Now all what is left to do is to
install the packages in your phone: to accomplish that, you can use
``phablet-shell`` to get access to your phone, and from there type the
following commands:

::

    sudo add-apt-repository ppa:ubdeveloper/myppa
    sudo apt-get update
    sudo apt-get install <your new package(s)>

You can also give the same installation instructions to other community
members, if you want them to test your changes before submitting them
upstream for review.
