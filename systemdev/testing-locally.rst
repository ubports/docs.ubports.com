Making changes and testing locally
==================================

On this page you'll find information on how to build Ubuntu Touch system software for your device. Most of the software preinstalled on your Ubuntu Touch device is shipped in the device image in the form of a Debian package. This format is used by several Linux distributions, such as Debian, Ubuntu, and Linux Mint. Plenty of `documentation on deb packages <https://www.debian.org/doc/manuals/maint-guide/index.en.html>`__ is available, so we won't be covering it here. Besides, in most cases you'll find yourself in need of modifying existing software rather than developing new packages from scratch. For this reason, this guide is mostly about recompiling an existing Ubuntu Touch package.

There are essentially two ways of developing Ubuntu Touch system software locally:

* `Cross-building with crossbuilder`_
* `Building on the device itself`_

We'll examine both methods, using `address-book-app <https://github.com/ubports/address-book-app>`__ (the Contacts application) as an example.

We only recommend developing packages using a device with Ubuntu Touch installed from the devel channel. This ensures that you are testing your changes against the most current state of the Ubuntu Touch code.

.. warning::

    Installing packages has a risk of damaging the software on your device, rendering it unusable. If this happens, you can :doc:`reinstall Ubuntu Touch </userguide/install>`.

Cross-building with crossbuilder
--------------------------------

Crossbuilder is a script which automates the setup and use of a crossbuild environment for Debian packages. It is suitable for developers with any device since the code compilation occurs on your desktop PC rather than the target device. This makes Crossbuilder the recommended way to develop non-trivial changes to Ubuntu Touch.

.. note::

    Crossbuilder requires a Linux distribution with ``lxd`` installed and the unprivileged commandset available. In other words, you must be able to run the ``lxc`` command. If you are running Ubuntu on your host, Crossbuilder will set up ``lxd`` for you.

Start by installing Crossbuilder on your host::

    cd ~
    git clone https://github.com/ubports/crossbuilder.git

Crossbuilder is a shell script, so you don't need to build it. Instead, you will need to add its directory to your ``PATH`` environment variable, so that you can execute it from any directory::

    echo 'export PATH="$HOME/crossbuilder:$PATH"' >> ~/.bashrc
    # and add it to your current session:
    source ~/.bashrc

Now that Crossbuilder is installed, we can use it to set up LXD::

    crossbuilder setup-lxd

If this is the first time you have used LXD, you might need to reboot your host once everything has completed.

After LXD has been set up, move to the directory where the source code of your project is located (for example, ``cd ~/src/git/address-book-app``) and launch Crossbuilder::

    crossbuilder

Crossbuilder will create the LXD container, download the development image, install all your package build dependencies, and perform the package build. It will also copy the packages over to your target device and install them if it is connected (see :doc:`/userguide/advanceduse/adb` to learn more about connecting your device). The first two steps (creating the LXD image and getting the dependencies) can take a few minutes, but will be executed only the first time you launch crossbuilder for a new package.

Now, whenever you change the source code in your git repository, the same changes will be available inside the container. The next time you type the ``crossbuilder`` command, only the changed files will be rebuilt.

Unit tests
^^^^^^^^^^

By default crossbuilder does not run unit tests; that's both for speed reasons, and because the container created by crossbuilder is not meant to run native (target) executables: the development tools (qmake/cmake, make, gcc, etc.) are all run in the host architecture, with no emulation (again, for speed reasons). However, qemu emulation is available inside the container, so it should be possible to run unit tests. You can do that by getting a shell inside the container::

    crossbuilder shell

Then find the unit tests and execute them. Be aware that the emulation is not perfect, so there's a very good chance that the tests will fail even when they'd otherwise succeed when run in a proper environment. For that reason, it's probably wiser not to worry about unit tests when working with crossbuilder, and run them only when not cross-compiling.

Building on the device itself
-----------------------------

This is the fastest and simplest method to develop small changes and test them in nearly real-time. Depending on your device resources, however, it might not be possible to follow this path: if you don't have enough free space in your root filesystem you won't be able to install all the package build dependencies; you may also run out of RAM while compiling.

.. warning::

    This method is limited. Many devices do not have enough free image space to install the packages required to build components of Ubuntu Touch.

In this example, we'll build and install the address-book-app. All commands shown here must be run on your Ubuntu Touch device over a remote shell.

You can gain a shell on the device using :doc:`/userguide/advanceduse/adb` or :doc:`/userguide/advanceduse/ssh`. Remount the root filesystem read-write to begin::

    sudo mount / -o remount,rw

Next, install all the packages needed to rebuild the component you want to modify (the Contacts app, in this example)::

    sudo apt update
    sudo apt build-dep address-book-app
    sudo apt install fakeroot

Additionally, you probably want to install ``git`` in order to get your app's source code on the device and later push your changes back into the repository::

    sudo apt install git

Once you're finished, you can retrieve the source for an app (in our example, the address book) and move into its directory::

    git clone https://github.com/ubports/address-book-app.git
    cd address-book-app

Now, you are ready to build the package::

    DEB_BUILD_OPTIONS="parallel=2 debug" dpkg-buildpackage -rfakeroot -b

The ``dpkg-buildpackage`` command will print out the names of generated packages. Install those packages with ``dpkg``::

    sudo dpkg -i ../<package>.deb [../<package2>.deb ...]

Note, however, that you might not need to install all the packages: generally, you can skip all packages whose names end with ``-doc`` or ``dev``, since they don't contain code used by the device.

Next steps
----------

Now that you've successfully made changes and tested them locally, you're ready to upload them to GitHub. Move on to the next page to learn about using the UBports CI to build and provide development packages!
