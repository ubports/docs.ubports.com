Making changes and testing locally
==================================

On this page you'll find information on how to build Ubuntu Touch system software for your device. Most of the software preinstalled on your Ubuntu Touch device is shipped in the device image in the form of a Debian package. This format is used by several Linux distributions, such as Debian, Ubuntu, and Linux Mint. Plenty of `documentation on deb packages <https://www.debian.org/doc/manuals/maint-guide/index.en.html>`__ is available, so we won't be covering it here. Besides, in most cases you'll find yourself in need of modifying existing software rather than developing new packages from scratch. For this reason, this guide is mostly about recompiling an existing Ubuntu Touch package.

There are essentially three ways of developing Ubuntu Touch system software locally:

* `Building packages in a chroot using sbuild`_
* `Cross-building with crossbuilder`_
* `Building on the device itself`_

Pros and cons of sbuild and crossbuilder
----------------------------------------

sbuild uses a more minimal chroot-based build environment, while crossbuilder uses an LXD container with more pre-installed packages.
When building with crossbuilder pre-installed build dependencies might be missed which would be caught by sbuild.
crossbuilder can be quicker for subsequent builds since the LXD container persists. sbuild installs all build dependencies on each run.
sbuild automatically creates a log file and runs `lintian <https://lintian.debian.org/manual/lintian.html>`__ on the built packages in order to detect any problems.
The use of LXD by crossbuilder also allows for easier inspection, debugging and manual modification of the build environment. crossbuilder can also automatically deploy build packages on a connected device via ADB.

We'll examine the use of crossbuilder and builds on the device using `address-book-app <https://github.com/ubports/address-book-app>`__ (the Contacts application) as an example.

We only recommend developing packages using a device with Ubuntu Touch installed from the devel channel. This ensures that you are testing your changes against the most current state of the Ubuntu Touch code.

Preparing a package for a build
-------------------------------

``sbuild`` or ``crossbuilder`` need to be invoked from a debianized package source tree (i.e. the package sources with a ``debian`` subdirectory), UBports packages mostly consists of git repositories containing native or non-native packages.  Native packages can be built directly and the following script can be used in order to prepare a non-native package for a build::

    #!/bin/sh

    PATH=/bin:/usr/bin

    die() {
        if [ $# -gt 0 ]; then
            printf "%s\n" "$1" >&2
        fi
        exit 1
    }

    if [ ! -d "./debian" ]; then
        die "not in a debianized package directory"
    fi

    if [ -f "./debian/ubports.source_location" ]; then

        {
            read -r src_url && \
            read -r src_filename
        } < "./debian/ubports.source_location" || \
            die "failed to parse ubports.source_location"
        case ${src_url} in
        http://*|https://*|ftp://*)
            ;;
        *)
            die "invalid url: \"${src_url}\""
            ;;
        esac
        src_filename="$(basename "${src_filename}")"

        wget -O "../${src_filename}" "${src_url}" || \
            die "failed to download source archive"
    fi


Building packages in a chroot using sbuild
------------------------------------------

`sbuild <https://tracker.debian.org/pkg/sbuild>`__ is a tool for building Debian packages from source in an isolated environment using a chroot created by `schroot <https://wiki.debian.org/Schroot>`__. It closely resembles the package build process on the UBports CI system by using an isolated build environment with a minimal set of pre-installed packages. This detects any missing build dependencies and sbuild will also detect problems with the resulting packages by running `lintian <https://lintian.debian.org/manual/lintian.html>`__

Prerequisites
^^^^^^^^^^^^^

A host system running either Debian 11 (Bullseye) or later or Ubuntu 20.04 (Focal Fossa) or later is required.
An easy and performant way to set up Debian or Ubuntu on other distributions is to run it in a container using `LXD <https://linuxcontainers.org/lxd/getting-started-cli/#installing-a-package>`__.

A LXD container requires the following configuration setting in order to allow debootstrap to use the mknod system call for creating pseudo devices such as ``/dev/null`` inside a chroot::

    lxc config set <container> security.syscalls.intercept.mknod true

It is assumed that the user who is building packages is allowed to execute commands with superuser privilege using ``sudo``.

``sbuild`` uses ``schroot`` in order to manage chroots which in turn uses debootstrap for creating the chroot.  The required packages are installed with::

    sudo apt install sbuild schroot devscripts debhelper dh-migrations ccache

A Debian or Ubuntu system can also be installed inside a virtual machine, however this comes with a performance overhead.

Setting up sbuild
^^^^^^^^^^^^^^^^^

An unprivileged user needs to be added to the sbuild group in order to gain the necessary privilege to build packages::

    sudo sbuild-adduser <username>

The build user can configure ``sbuild`` by creating a file ``~/.sbuildrc`` as follows::

    cat >~/.sbuildrc <<'EOF'
    # directory containing the build logs
    $log_dir = "$HOME/logs";
    1;
    EOF

For further customizations see the example file at ``/usr/share/doc/sbuild/examples/example.sbuildrc``.

Create the directory ``~/logs`` if it does not exist, yet::

    mkdir ~/logs

Creating a build chroot
^^^^^^^^^^^^^^^^^^^^^^^
In order to create a chroot based on Ubuntu 20.04 (Focal Fossa) with the amd64 architecture under the directory ``/srv/chroot/ubports-${distro}-amd64`` (``chroot_base`` can be changed if needed) the following variables can be defined for later use by the actual commands::

    chroot_distro=focal
    chroot_base=/srv/chroot/ubports-${chroot_distro}-amd64
    chroot_repo=http://repo2.ubports.com/

For creating a chroot based on Ubuntu 16.04 (Xenial Xerus) with the amd64 architecture define the following variables instead::

    chroot_distro=xenial
    chroot_base=/srv/chroot/ubports-${chroot_distro}-amd64
    chroot_repo=http://repo.ubports.com/

In both cases the chroot will be created by running the following command::

    sudo sbuild-createchroot --components=main,restricted,universe --extra-repository="deb http://archive.ubuntu.com/ubuntu/ ${chroot_distro}-updates main restricted universe" --include=ccache "${chroot_distro}" "${chroot_base}" http://archive.ubuntu.com/ubuntu/

A chroot for cross-building arm64 packages on an amd64 host can e.g. be created under the directory ``/srv/chroot/ubports-${distro}-arm64`` using::

    chroot_base=/srv/chroot/ubports-${distro}-arm64
    sudo sbuild-createchroot --arch=arm64 --components=main,restricted,universe --extra-repository="deb http://ports.ubuntu.com/ubuntu-ports/ ${chroot_distro}-updates main restricted universe" --include=ccache "${chroot_distro}" "${chroot_base}" http://archive.ubuntu.com/ubuntu/

For cross-building armhf packages the above command can be used with ``arm64`` changed to ``armhf``.

The UBports package repository needs to be added using::

    wget 'http://repo.ubports.com/keyring.gpg' -O - | sudo tee "${chroot_base}/usr/share/keyrings/ubports-keyring.gpg" >/dev/null
    printf 'deb [signed-by=/usr/share/keyrings/ubports-keyring.gpg] %s %s main\n' "${chroot_repo}" "${chroot_distro}" | sudo tee "${chroot_base}/etc/apt/sources.list.d/ubports.list" >/dev/null
    sbuild-update -u -d "${chroot_distro}"

Maintaining build chroots
^^^^^^^^^^^^^^^^^^^^^^^^^

Synchronizing package index files and subsequent package upgrades can be performed using::

    sbuild-update -u -d focal

Optimizations
^^^^^^^^^^^^^

Caching package downloads
"""""""""""""""""""""""""

In order to save bandwidth and time it is highly advisable to cache downloaded packages by using ``apt-cacher-ng``.  It can be installed with::

    apt install apt-cacher-ng

Chroots then need to be configured so that apt inside the chroot uses ``apt-cacher-ng`` on the host as a proxy server::

    printf 'Acquire::http { Proxy "http://localhost:3142"; }\n' | sudo tee "${chroot_base}/etc/apt/apt.conf.d/proxy" >/dev/null

Caching compilation results
"""""""""""""""""""""""""""

``ccache`` is a compiler cache which speeds up repeated compilation of the same source code by caching the resulting object files. The actual cache is stored on the host system and bind-mounted into ``sbuild`` chroots with a ``schroot`` hook::

    ccache_dir=/var/cache/ccache-sbuild
    sudo install --group=sbuild --mode=2775 -d "${ccache_dir}"
    sudo env CCACHE_DIR="${ccache_dir}" ccache --max-size 4G
    printf '%s %s none rw,bind 0 0\n' "${ccache_dir}" "${ccache_dir}" | sudo tee -a /etc/schroot/sbuild/fstab >/dev/null

In order to make use of ``ccache inside`` a ``sbuild`` chroot a wrapper script needs to be created::

    cat >"${ccache_dir}/sbuild-ccache.sh" <<EOF
    #!/bin/sh
    export CCACHE_DIR=$ccache_dir
    export CCACHE_UMASK=002
    export CCACHE_COMPRESS=1
    unset CCACHE_HARDLINK
    export PATH=/usr/lib/ccache:\$PATH
    exec "\$@"
    EOF
    chmod +x "${ccache_dir}/sbuild-ccache.sh"

In order to use this wrapper script the following line must be added to the configuration of a ``schroot`` chroot in ``/etc/schroot/chroot.d/``::

    command-prefix=/var/cache/ccache-sbuild/sbuild-ccache.sh

Building a package
^^^^^^^^^^^^^^^^^^
A build can be started from inside the debianized package source directory using::

    sbuild -d <distribution>

If the build was successful, the binary packages will be placed in the parent directory.  The build log will be placed inside ``~/logs``.  In case the build failed, the chroot can be inspected using::

    sbuild-shell <distribution>

Further reading
^^^^^^^^^^^^^^^

Technical details are available from the `sbuild(1) <https://manpages.debian.org/bullseye/sbuild/sbuild.1.en.html>`__ and `sbuild-createchroot(8) <https://manpages.debian.org/bullseye/sbuild/sbuild-createchroot.8.en.html>`__ manual pages and the `Debian wiki <https://wiki.debian.org/sbuild>`__.

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

After LXD has been set up, a build for UBports based on Ubuntu 20.04 (Focal Fossa) using the arm64 architecture can be started from inside the debianized package source directory using::

    distro=20.04
    arch=arm64
    crossbuilder --lxd-image="ubuntu:${distro}" --architecture="${arch}" build

For building against a different UBports release or architecture change ``distro`` and ``arch`` as needed.

Crossbuilder will create the LXD container, download the development image, install all your package build dependencies, and perform the package build. It will also copy the packages over to your target device and install them if it is connected (see :doc:`/userguide/advanceduse/adb` to learn more about connecting your device). The first two steps (creating the LXD image and getting the dependencies) can take a few minutes, but will be executed only the first time you launch crossbuilder for a new package.

Now, whenever you change the source code in your git repository, the same changes will be available inside the container. The next time you type the above ``crossbuilder`` command, only the changed files will be rebuilt.

If the build dependencies have changed the following command can be used to update the container accordingly (``distro`` and ``arch`` should be set as above)::

    crossbuilder --lxd-image="ubuntu:${distro}" --architecture="${arch}" dependencies

While ``crossbuilder`` does not create log files for the build process, the ``script`` utility may be used for that purpose::

    script -c "crossbuilder --lxd-image=\"ubuntu:${distro}\" --architecture=\"${arch}\" build" build.log

When a build container is no longer needed it maybe removed using::

    crossbuilder --lxd-image="ubuntu:${distro}" --architecture="${arch}" delete

Unit tests
^^^^^^^^^^

By default crossbuilder does not run unit tests; that's both for speed reasons, and because the container created by crossbuilder is not meant to run native (target) executables: the development tools (qmake/cmake, make, gcc, etc.) are all run in the host architecture, with no emulation (again, for speed reasons). However, qemu emulation is available inside the container, so it should be possible to run unit tests. You can do that by getting a shell inside the container::

    crossbuilder --lxd-image="ubuntu:${distro}" --architecture="${arch}" shell

Then find the unit tests and execute them. Be aware that the emulation is not perfect, so there's a very good chance that the tests will fail even when they'd otherwise succeed when run in a proper environment. For that reason, it's probably wiser not to worry about unit tests when working with crossbuilder, and run them only when not cross-compiling.

Building on the device itself
-----------------------------

This is the fastest and simplest method to develop small changes and test them in nearly real-time. Depending on your device resources, however, it might not be possible to follow this path: if you don't have enough free space in your root filesystem you won't be able to install all the package build dependencies; you may also run out of RAM while compiling.

.. warning::

    This method is limited. Many devices do not have enough free image space to install the packages required to build components of Ubuntu Touch.
    Installing packages has a risk of damaging the software on your device, rendering it unusable. If this happens, you can :doc:`reinstall Ubuntu Touch </userguide/install>`.

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
