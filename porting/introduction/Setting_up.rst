.. _Setting-up:

Setting up the build environment
================================

Your need to install a number of tools on your host PC before you can begin to port.

Prerequisites
-------------

The build environment requires Python 3.6 or newer installed on your system.
This can be installed via your system's package management system.
Significant changes in syntax were introduced between Python 2 and Python 3,
and some stages of the porting process may require Python 2 instead of Python 3.
Check which version is active on your system by typing::

    python -V

.. Note::
    Any Linux distribution can easily be set up to switch between Python versions.
    Consult the documentation for your distribution to find out how this can be done.

Debian (Stretch or newer) / Ubuntu (16.04 or 18.04)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If your host PC has a 64-bit architecture (AMD64), allow use of the i386 architecture::

    sudo dpkg --add-architecture i386

Update your package lists to take advantage of the added architecture::

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

If your host PC has a 64-bit architecture (AMD64), allow use of the i386 architecture::

    sudo dpkg --add-architecture i386

Update your package lists to take advantage of the added architecture::

    sudo apt update

Install the required dependencies::

    sudo apt install git gnupg flex bison gperf build-essential \
    zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
    libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
    libgl1-mesa-dev g++-multilib mingw-w64-i686-dev tofrodos \
    python3-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool \
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
^^^^

If your host PC has a 64-bit architecture, you need to add the [multilib] repository to your /etc/pacman.conf file.
This allows installing and running i686 packages.
Please refer to `‘Official Repositories/multilib’ on the Arch wiki <https://wiki.archlinux.org/index.php/Official_repositories>`_.

Ensure you have the base-devel package installed.

Install the required dependencies from AUR::

    git clone https://aur.archlinux.org/halium-devel.git && cd halium-devel && makepkg -i
    
    Please note: As of Autumn 2021 this package is no longer maintained.
    You will be unable to clone and build Halium on Arch as not all dependencies are met. 



