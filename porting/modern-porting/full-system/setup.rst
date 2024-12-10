Setting Up Full System Build
============================

Environment Setup
-----------------

1. **System Requirements**

   * Ubuntu 22.04 LTS recommended
   * 32GB RAM (16GB minimum)
   * 200GB storage
   * High-speed internet

2. **Install Dependencies**::

    sudo apt update
    sudo apt install git gnupg flex bison gperf build-essential \
      zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
      libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
      libgl1-mesa-dev g++-multilib tofrodos python3-markdown \
      libxml2-utils xsltproc zlib1g-dev:i386 schedtool \
      repo liblz4-tool bc lzop

3. **Configure Git**::

    git config --global user.name "Your Name"
    git config --global user.email "you@example.com"

Source Setup
------------

1. **Create Build Directory**::

    mkdir halium && cd halium

2. **Initialize Repository**::

    repo init -u https://github.com/Halium/android -b halium-9.0 --depth=1
    repo sync -c -j$(nproc --all)

3. **Device Sources**

   * Create manifest in halium/devices/manifests/[vendor]_[device].xml
   * Include device tree
   * Add vendor blobs
   * Include kernel source

Example Manifest
----------------
.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <project path="device/[vendor]/[device]"
                 name="[repository-name]"
                 remote="[remote]"
                 revision="[branch]" />
        <project path="kernel/[vendor]/[device]"
                 name="[kernel-repository]"
                 remote="[remote]"
                 revision="[branch]" />
        <project path="vendor/[vendor]"
                 name="[vendor-repository]"
                 remote="[remote]"
                 revision="[branch]" />
    </manifest>

4. **Sync Sources**::

    ./halium/devices/setup [device]

Verification
------------
* Verify sources downloaded correctly
* Check all repositories synced
* Ensure vendor blobs present
* Validate device tree structure

Next Steps
----------
* :doc:`build` - Building system images
* :doc:`../standalone-kernel/device-config` - Device configuration