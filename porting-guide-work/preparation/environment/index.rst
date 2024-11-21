.. _environment-setup:

Environment Setup
=================

This guide covers setting up your development environment for Halium porting. A properly configured environment is essential for successful development.

Quick Reference
---------------
For experienced developers::

    # Ubuntu/Debian setup
    sudo apt update
    sudo apt install git gcc adb fastboot repo python3 python-is-python3 android-tools-adb android-tools-fastboot htop iotop ccache
    
    # Configure git
    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"
    
    # Install repo tool
    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+x ~/bin/repo

System Requirements
-------------------

Hardware Requirements
^^^^^^^^^^^^^^^^^^^^^
* **CPU**: Multi-core processor recommended
* **RAM**: Minimum 16GB
* **Storage**: 100GB+ free space
* **Internet**: High-speed connection for downloads

Operating System
^^^^^^^^^^^^^^^^
Recommended: Ubuntu 22.04 LTS or newer

Alternative options:

* Debian 11 or newer
* Other Linux distributions (may require additional setup)

Required Packages
^^^^^^^^^^^^^^^^^

Core Development Tools
""""""""""""""""""""""
Setup basic development tools::

    sudo apt install git gcc make curl wget
    sudo apt install python3 python-is-python3
    sudo apt install android-tools-adb android-tools-fastboot

Build Dependencies
""""""""""""""""""
Install build dependencies::

    sudo apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf
    sudo apt install imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool
    sudo apt install libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils
    sudo apt install lzop pngcrush rsync schedtool squashfs-tools xsltproc
    sudo apt install zip zlib1g-dev

Tool Configuration
------------------

1. Git Setup
^^^^^^^^^^^^
Configure git with your credentials::

    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"

2. Repo Tool
^^^^^^^^^^^^
Install and configure repo tool::

    mkdir -p ~/bin
    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+x ~/bin/repo
    echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc

3. ADB/Fastboot
^^^^^^^^^^^^^^^
Enable USB debugging on device:

1. Enable Developer Options (tap Build Number 7 times)
2. Enable USB Debugging in Developer Options
3. Connect device and authorize computer

Test setup::

    adb devices
    fastboot devices

Storage Setup
-------------
1. Ensure adequate free space
2. Set up build directory::

    mkdir halium-build
    cd halium-build

Account Setup
-------------

1. Required Accounts
^^^^^^^^^^^^^^^^^^^^
* GitHub/GitLab account for:
    - Source code access
    - Contribution submission
    - Issue tracking

2. Community Resources
^^^^^^^^^^^^^^^^^^^^^^
* UBports Forums account
* Telegram/Matrix for community support
* IRC for developer discussion

Development Safety
------------------

1. Backup Procedures
^^^^^^^^^^^^^^^^^^^^
* Back up all device data
* Document current device state
* Save stock firmware copy

2. Recovery Setup
^^^^^^^^^^^^^^^^^
* Install custom recovery (TWRP recommended)
* Test recovery functionality
* Verify backup/restore capability

Verification
------------
Run these checks to verify environment setup::

    # Check basic tools
    git --version
    repo --version
    adb version
    fastboot --version

    # Check build tools
    gcc --version
    python3 --version

    # Check storage
    df -h

.. note::
    A properly configured environment prevents many common issues during development.

.. toctree::
   :maxdepth: 2
   :name: environment-setup-toc
   
   development-tools

See Also
--------
* :ref:`development-tools` - Development environment tools and monitoring
* :ref:`Quick Start Guide <quick-start>` - Streamlined setup process
* :ref:`Build Systems <build-systems>` - Understanding build requirements