.. _environment-setup:

Environment Setup
=================

Quick Setup
-----------
For experienced developers familiar with Android building::

    # Essential packages for Ubuntu/Debian
    sudo apt update && sudo apt install git gcc adb fastboot repo \
    python3 python-is-python3 android-tools-adb android-tools-fastboot \
    htop iotop ccache

    # Configure git and repo
    git config --global user.name "Your Name"
    git config --global user.email "your@email.com"
    mkdir -p ~/bin
    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+x ~/bin/repo
    echo 'export PATH=~/bin:$PATH' >> ~/.bashrc

    # Verify installation
    repo --version
    adb version
    fastboot --version

System Requirements
-------------------

Hardware Requirements
^^^^^^^^^^^^^^^^^^^^^
Minimum specifications:
* CPU: 4+ cores recommended
* RAM: 16GB minimum, 32GB recommended
* Storage: 100GB free space
* Internet: High-speed connection

Recommended specifications for faster builds:
* CPU: 8+ cores
* RAM: 32GB
* Storage: 200GB+ SSD
* Internet: 100Mbps+

Operating System
^^^^^^^^^^^^^^^^
Ubuntu 22.04 LTS is recommended and best supported. While other Linux distributions can work, this guide assumes Ubuntu/Debian-based systems.

Detailed Setup Guide
--------------------

1. Base Development Environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Essential build tools and libraries::

    sudo apt install bc bison build-essential ccache curl flex g++-multilib \
        gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev \
        lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev \
        libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync \
        schedtool squashfs-tools xsltproc zip zlib1g-dev

Why these packages?

* build-essential: Basic compilation tools
* ccache: Speeds up rebuilds
* Others: Required by various build stages

2. Android Development Tools
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Set up tools for device communication and source management.

ADB and Fastboot::

    sudo apt install android-tools-adb android-tools-fastboot

Configure udev rules for device access::

    sudo curl -o /etc/udev/rules.d/51-android.rules \
    https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/51-android.rules
    sudo chmod 644 /etc/udev/rules.d/51-android.rules
    sudo udevadm control --reload-rules

3. Source Control Setup
^^^^^^^^^^^^^^^^^^^^^^^
Configure git with your credentials::

    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"

Install and configure repo tool::

    mkdir -p ~/bin
    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+x ~/bin/repo
    echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc

4. Build Environment Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Set up ccache for faster rebuilds::

    export USE_CCACHE=1
    export CCACHE_DIR=~/.ccache
    export CCACHE_SIZE=50G
    ccache -M 50G

Add to ~/.bashrc for persistence::

    echo 'export USE_CCACHE=1' >> ~/.bashrc
    echo 'export CCACHE_DIR=~/.ccache' >> ~/.bashrc

5. Storage Setup
^^^^^^^^^^^^^^^^
Prepare build directory::

    mkdir ~/ubports-builds
    cd ~/ubports-builds

Check available space::

    df -h .

Environment Verification
------------------------
Run these checks to verify your setup::

    # Check essential tools
    git --version
    repo --version
    adb version
    fastboot --version
    gcc --version
    python3 --version

    # Verify build environment
    echo $PATH
    echo $USE_CCACHE
    df -h

Next Steps
----------
Environment ready? Choose your path:

**Ready to start building?**
    → :doc:`../../modern-porting/standalone-kernel/index`

**Need to understand the build system?**
    → :doc:`../../fundamentals/build-systems`

**Want to check device compatibility?**
    → :doc:`../device-selection/index`

See Also
--------
* :doc:`development-tools` - Additional development tools and monitoring
* :ref:`build-systems` - Understanding build requirements
* :ref:`android-architecture` - Android build system context

.. toctree::
   :maxdepth: 1
   :hidden:

   development-tools