.. _Setting-up:

Setting up the build environment
================================

.. Tip::
    Applies to:
        * Method 1
        * Method 2
        * Method 3

        (See :ref:`porting methods <Porting-methods>`.)

Your host PC needs a number of tools installed before you can begin to port. This section describes the necessary preparations.

Prerequisites
-------------

When setting up the build environment you need to have Python 3.6 or newer installed on your system. This can be installed via your system's package management system. Note that significant changes in syntax were introduced from Python 2 to Python 3, and that both versions can coexist on your system. Check which is active by issuing::

    python -V

If you are using Linux Arch, this distribution uses Python 3 as it's default python version, but Python 2 can be invoked using a virtual environment. Please refer to `‘Python/Virtual environment’ on the Arch Wiki <https://wiki.archlinux.org/index.php/Python/Virtual_environment>`_ for instructions on setting this up.

Debian (Stretch or newer) / Ubuntu (16.04 or 18.04)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If your host PC has a 64-bit architecture (amd64), enable the usage of the i386 architecture::  

    sudo dpkg --add-architecture i386

Update your package lists to take advantage of the new architecture::

    sudo apt update

Install the required dependencies::

    sudo apt install git gnupg flex bison gperf build-essential \
    zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
    libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
    libgl1-mesa-dev g++-multilib mingw-w64-i686-dev tofrodos \
    python-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool \
    repo liblz4-tool bc lzop imagemagick libncurses5 rsync

Ubuntu (20.04 or newer)
^^^^^^^^^^^^^^^^^^^^^^^

If your host PC has a 64-bit architecture (amd64), enable the usage of the i386 architecture::  

    sudo dpkg --add-architecture i386

Update your package lists to take advantage of the new architecture::

    sudo apt update

Install the required dependencies::

    sudo apt install git gnupg flex bison gperf build-essential \
    zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
    libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
    libgl1-mesa-dev g++-multilib mingw-w64-i686-dev tofrodos \
    python-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool \
    liblz4-tool bc lzop imagemagick libncurses5 rsync \
    python-is-python3

Create a directory named 'bin' in your home directory, and include it in your path::

    mkdir -p ~/bin
    echo export PATH=\$PATH:\$HOME/bin >> ~/.bashrc
    source ~/.bashrc

Download the repo script and make it executable::

    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+rx ~/bin/repo

Arch
^^^^^

If your host PC has a 64-bit architecture, you need to add the [multilib] repository to your /etc/pacman.conf . This will allow you to install and run i686 packages. Please refer to `‘Official Repositories/multilib’ on the Arch Wiki <https://wiki.archlinux.org/index.php/Official_repositories>`_.

Make sure you have the base-devel package installed.

Install the required dependencies from AUR::

    git clone https://aur.archlinux.org/halium-devel.git && cd halium-devel && makepkg -i



