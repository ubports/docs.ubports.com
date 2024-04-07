.. _Gitlab-CI:

Standalone Kernel Method (Halium 9 and newer)
=============================================

Starting from Halium 9, it is possible to port a device using only the kernel. This involves a number of scripts that build the kernel, download the generic container image and rootfs, and create flashable images.

This guide expects you to have some mandatory git knowledge, like cloning and pushing, and creating repos.

Setting up your build environment
---------------------------------


Assuming you have already installed the tools specified in the section on :ref:`Setting-up`, there are just a few more to add before your build environment is complete. Run this commmand to add them::

    sudo apt install bc bison build-essential \
    ca-certificates cpio curl flex git kmod libssl-dev libtinfo5 python2 \
    sudo unzip wget xz-utils img2simg jq

Setting up and configuring a device source
------------------------------------------

Creating the device source
^^^^^^^^^^^^^^^^^^^^^^^^^^

Clone an existing repo for a device from https://gitlab.com/ubports/community-ports. Ideally choose a device with similar SoC/Android version as base.
 
deviceinfo contains the configuration used during device build process (kernel, boot, dtb/dtbo if needed + recovery on later porting stages). To craft your own deviceinfo, follow the guide further.

Getting device kernel source code
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

First thing to check is if  your device has an official or unofficial LineageOS port, as the porter may have already done the cleaning up bits needed for the device vendor kernel sources or incorporated out-of-tree kernel modules back into kernel tree, which makes life easier for us.
 
If not, check if device manufacturer provides kernel source at all:
ASUS, Lenovo, Samsung, ZTE usually provide kernel source code tarballs at their website.
Motorola, Realme, OnePlus, Xiaomi usually upload kernel source to their official GitHub account.

After you have acquired the kernel source, you need to upload it somewhere else for making modifications and commits for Ubuntu Touch. GitLab is preferred since when you'll get the port pulled into the UBports org, it can be easily copied from there.

Finding your correct kernel config
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There are two ways to find your correct kernel config, naming some below:
1. Getting your config on device from /proc/config.gz 
2. Getting your defconfig in kernel source

Getting your config from device
"""""""""""""""""""""""""""""""

It is possible to pull your current kernel config from device, if the configuration is present as ``/proc/config.gz`` on device. To pull this config, copy the ``/proc/config.gz`` file from your device to your computer.
Then, run ``zcat`` on the file to get its output. Save this as ``.config`` in your kernel source.
After this, run ``ARCH=<your device's architecture> make savedefconfig``, which will convert your fully fledged config into a defconfig.
Copy ``defconfig`` to ``arch/<your device's architecture>/configs/<your device's codename_defconfig``.

Proceed with the guide to patch your config.

Getting your defconfig in kernel source
"""""""""""""""""""""""""""""""""""""""

In order to find your defconfig from kernel source, you will have to search for it in the ``arch/<your device's architecture/configs`` directory.
This defconfig can be named in numerous ways, like ``<your device's codename>_defconfig``, or something weird like ``k61v64_debug_defconfig``.
If you got your kernel source from an OEM, sometimes it includes a ``build.sh`` script which references the defconfig required.
Otherwise if you got your kernel source from somewhere like LineageOS, their device tree's reference the defconfig too.

After finding your defconfig, proceed with the guide to patch it.


Applying minimal patches to your defconfig
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In order for Ubuntu Touch to successfully boot, we need to enable some configs required by the OS.
Start by browsing into your kernel directory, and into the ``arch/<your device's architecture>/configs``, where you will have to add a new file called ``halium.config``.
In this file, add the following content:

| CONFIG_DEVTMPFS=y
| CONFIG_FHANDLE=y
| CONFIG_SYSVIPC=y
| CONFIG_IPC_NS=y
| CONFIG_NET_NS=y
| CONFIG_PID_NS=y
| CONFIG_USER_NS=y
| CONFIG_UTS_NS=y
| CONFIG_VT=y

After this, save and close this file. Commit it into your kernel repo if you wish, because this config name will be added in deviceinfo.

At this point you've almost completed the initial setup for the kernel, move on to configuring ``deviceinfo`` and building.

After you have booted the OS successfully, you can move on to patching the defconfig fully in later stages.

Filling in your deviceinfo
^^^^^^^^^^^^^^^^^^^^^^^^^^

* Full device name, like Redmi 9C or Redmi Note 10S. Replace as necessary.

``deviceinfo_name="Redmi 9C"``


* The name of the device's manufacturer. Change as needed.

``deviceinfo_manufacturer="Xiaomi"``


* The codename of the phone. This can be obtained by googling for it like: "<device name> codename". Replace device name with your phone's full name. Replace the codename below with your own too.

``deviceinfo_codename="angelica"``


* The architecture of your kernel. Most devices released after 2015 have an ARM64 CPU, but some oddities in between can still be armhf. For ARM64 devices, set the config to "aarch64". For armhf devices, set the config to "armv7".

``deviceinfo_arch="aarch64"``


* This defines the git repo where your kernel is located. You already should have this link at hand if you followed section 1, if not go through it again. Replace below link with your own.

``deviceinfo_kernel_source="https://github.com/muhammad23012009/android_kernel_xiaomi_dandelion"``


* The branch of the kernel comes next. This can be easily obtained by looking at the tab under the Code tab on GitHub or the tab on the top left side in GitLab. Replace as necessary.

``deviceinfo_kernel_source_branch="halium10-new"``


* Defconfig is a vital part of the kernel compilation process. Most of the times you can find this defconfig in your kernel source, the path to which is "arch/<your architecture>/configs". The defconfig's name is often built up like "<your codename>_defconfig". After finding your defconfig, replace it as necessary.
  You also need to add ``halium.config`` in this field, due to adding the kernel config patches above.
  (If you still can't find the defconfig refer to section "Finding your defconfig")

``deviceinfo_kernel_defconfig="angelica_defconfig halium.config"``


* The kernel cmdline is one of the key things that is required to make the kernel boot. It has special parameters that allow the kernel to determine which features/things need to be enabled, and which need to be disabled. The Ubuntu Touch rootfs also relies on some key cmdlines which is required to boot, most specifically "console=tty0". To adapt this to your device, try unpacking your boot image (section 8.3) and copying the cmdline from there, or take the help of a LineageOS device tree if it is available. "console=tty0" is a must for cmdline and should not be removed no matter what. Rest of the things can be removed and you can adjust these to your device.
  ``console=tty0`` is a requirement for the rootfs to properly boot. ``systempart`` is added if you want to boot your rootfs from your system partition. It is supposed to point to your system partition.

``deviceinfo_kernel_cmdline="console=tty0 bootopt=64S3,32N2,64N2 systempart=/dev/mapper/system"``


* Add this to your deviceinfo if you wish to compile your kernel with clang. Most devices released with and after Android 10 build their kernels with clang. If you don't want to build with clang, omit this entry entirely.

``deviceinfo_kernel_clang_compile="true"``


* Only required if you wish to use LLD as your linker and enable LTO. For most old kernels LTO is broken.
  If you do want to use it add this entry to your deviceinfo, else omit it.

``deviceinfo_kernel_use_lld="true"``


* Use this to enable 'dtc_ext' for compiling your dtb/dtbo's. Use only if you know what you're doing. The default compiler works most of the times.

``deviceinfo_kernel_use_dtc_ext="true"``


* Use this option to specify the kernel image name after kernel compiles. More than often this option is simply not required, so you can drop it from your deviceinfo. If you do need it, adjust image name as necessary.

``deviceinfo_kernel_image_name="Image.gz"``


* In order to specify your ramdisk compression algorithm, use the below option. It is set to gzip by default.
  Mostly useful for GKI devices.

``deviceinfo_ramdisk_compression="lz4"``


* Add this option to specify your Halium version. Up to Halium 13 is supported at this moment.

``deviceinfo_halium_version="11"``


* Used to define the architecture of your kernel. Most devices released after 2014 are aarch64, but in case yours is not, replace it with arm instead.

``deviceinfo_arch="aarch64"``


* This option defines the boot image header version. It is important you get this right, else your device may not boot. Devices launching with Android versions below 8 (Oreo) use header 0, Android 9 (Pie) uses version 1, Android 10 uses version 2, and GKI devices use version 3/4 (depending on Android version which they were released, Android 12 with GKI uses version 4).

``deviceinfo_bootimg_header_version="2"``


* Use this option to define a prebuilt dtb that you have sourced. Path is relative to your directory where you are editing the deviceinfo file. Edit the dtb name according to what you have.
  If your header version is greater than or equal to 3 (GKI device), this will include dtb in your vendor_boot.

``deviceinfo_bootimg_prebuilt_dtb="mt6765.dtb"``


* This option uses the dtb's created by your kernel while compiling, multiple dtb's can be specified here like:
  "mediatek/mt6765.dtb mediatek/angelica.dtb"
  The path in which the scripts look for the dtb's with this option enabled is "KERNEL_OBJ/arch/<architecture>/boot/dts" where <architecture> will either be arm64 or arm depending on what you set in deviceinfo_arch (aarch64 is arm64 in kernel speak)
  If your header version is greater than or equal to 3 (GKI device), this will include dtb in your vendor_boot.

``deviceinfo_dtb="mediatek/mt6765.dtb"``


* Selecting this will build a DT image that you selected into the boot image. Path is relative to your current directory in which you're editing deviceinfo. (Note: This is only really required in Samsung/Exynos devices.)

``deviceinfo_bootimg_prebuilt_dt="exynos8890-dt.img"``


* Use this to ship a prebuilt dtbo in your OTAs and to build your recovery with this dtbo if it isn't already being compiled. Path is once again relative to your build directory. Edit as desired.

``deviceinfo_prebuilt_dtbo="angelica-dtbo.img"``


* In case you do not want to ship the DTBO image in an OTA, selecting this will only remove the dtbo from the OTA package but recovery will still be compiled with this dtbo, if dtbo isn't already being compiled.

``deviceinfo_skip_dtbo_partition="true"``


* If you want to compile your DTBO from kernel, use this option to select the dtbo files compiled in kernel out directory. The path in which this option will search is KERNEL_OBJ/arch/<architecture>/boot/dts.
  Multiple dtbo's can be supplied like shown in the example. Adapt the names as per your requirements. The resulting dtbo image will be shipped in the OTA if the skip_dtbo_partition option isn't selected, and in any case recovery will also be built with this dtbo. This option is incompatible with the prebuilt dtbo option.

``deviceinfo_dtbo="mediatek/galahad.dtbo mediatek/lancelot.dtbo"``


* Using this will define the board name in your boot image, which some bootloaders require to boot the image successfully. Only use this option if your stock boot image has this flag set in its header. Edit as you wish if necessary.

``deviceinfo_bootimg_board="EXYNOS4412"``


* Use this option to pad your boot image to a specific size. Also required if you want to append a vbmeta image or append a hash footer to your image. Change the size to your stock boot image size. (Note: The size is declared in bytes).

``deviceinfo_bootimg_partition_size="67713847"``


* Pretty self-explanatory. Set it to true if your device requires a vbmeta image appended (Not the case for most devices with a dedicated vbmeta partition.)

``deviceinfo_bootimg_append_vbmeta="true"``


* Use this option when you want to create a recovery.img for booting UBports recovery (Only really required when you're finalizing the port). In most cases you'll want to omit this in the start of your port and add it as you try to get it in installer. Setting to true builds the recovery and setting to false or omitting the entry entirely will cause it to not build at all.

``deviceinfo_has_recovery_partition="true"``


* Use this to pad your recovery image to a specific size. Also a requirement if you want to add a hash footer to your image. Replace the size from your stock recovery image. (Will only work if you're building recovery!)

``deviceinfo_recovery_partition_size="67713847"``


* This is only really required for some old/new Samsung that check for an "SEAndroid" footer on their boot images to check whether or not the boot images are official. If the bootloader doesn't find it it results in an ugly looking red line on the top of the screen. Adding this to your deviceinfo will append this string to the boot image. (Beware! Using this on other devices may cause it to not boot the image!)

``deviceinfo_bootimg_tailtype="SEAndroid"``


* This config determines whether modules should be compiled and installed into rootfs or not. Omitting this config results in the default behaviour, i.e., modules get compiled and installed into rootfs. Adding this option to your deviceinfo and setting it to true (like shown) will disable modules compilation. Only really needed in case you're doing something advanced.

``deviceinfo_kernel_disable_modules="true"``


* This option installs all overlay files (in overlay/ directory) into /system/opt/halium-overlay, therefore overlaying the files onto the files present in rootfs instead of completely replacing them. This is necessary for 20.04 and onwards, but not applicable for 16.04.

``deviceinfo_use_overlaystore="true"``


* This option is mostly used on some Qualcomm devices. Adding this to your deviceinfo will combine all your dtbo's with your dtbs. Only use if you are sure you need this.

``deviceinfo_kernel_apply_overlay="true"``


* Add this configuration to your deviceinfo when you need to specify a fixed size for your rootfs being flashed to system image. Default is 3000M when option is not set. Only use if you need it.

``deviceinfo_system_partition_size="4000M"``


* This config is only relevant for newer devices launched with UFS storage

``deviceinfo_rootfs_image_sector_size="4096"``


* Next up are flash offsets. You can ignore these if you're building only boot.img for a GKI device, but are required if you want to build vendor_boot.img. These offsets will automatically apply for vendor_boot if your header version is greater than or equal to 3.
  A guide to extract them is as follows:

Extracting values from stock boot.img/vendor_boot.img
"""""""""""""""""""""""""""""""""""""""""""""""""""""

For any port to boot, some values must be pulled from the stock boot.img. First and foremost, try to get your stock firmware. Some manufacturers like Samsung like to encrypt their firmwares, but still some tools are available to get them. Others like Xiaomi provide the firmware, but you need to use Google to search it. And then there's the good guy Google, who provide full firmware binaries easily accessible. Long story short, you need to at least find your stock firmware, and then get the boot.img. Once you have the boot.img acquired, follow the following steps:


    * Make a directory in which you'll store all your unpacked data. It can be anywhere, and can have any name. For now, we'll call it `temp`.

    * Run "mkdir ~/temp" to create the directory and "cd ~/temp" to go to it.

    * Now to unpack the boot image there are several utilities to do so. One of them is the python script provided by Android. For now we'll use this. To download it into your current working directory run "wget https://raw.githubusercontent.com/LineageOS/android_system_tools_mkbootimg/lineage-19.1/unpack_bootimg.py" This will download the unpack_bootimg.py script, which you'll now use to pull your kernel offsets and other values alike

    * Bring your boot.img into the temp directory.

    * Now run the script. The usual syntax is "python3 unpack_bootimg.py --boot_img <boot.img or vendor_boot.img> --out out" This will unpack the boot image, store the output files in the out directory, and it will also print the offsets on screen.


    A sample output for boot.img will look like this: 

    boot magic: ANDROID!

    kernel_size: 11399060

    kernel load address: 0x40080000

    ramdisk size: 6576255

    ramdisk load address: 0x51b00000

    second bootloader size: 0

    second bootloader load address: 0xc0ff0000

    kernel tags load address: 0x47880000

    page size: 2048

    os version: 10.0.0

    os patch level: None

    boot image header version: 2

    product name: 

    command line args: bootopt=64S3,32N2,64N2 buildvariant=user systempart=/dev/mapper/system:ro

    additional command line args: 

    recovery dtbo size: 0

    recovery dtbo offset: 0x0000000000000000

    boot header size: 1660

    dtb size: 216417

    dtb address: 0x0000000047880000


    whereas for vendor_boot.img, will look like this:

    boot magic: VNDRBOOT

    vendor boot image header version: 4

    page size: 0x00001000

    kernel load address: 0x10008000

    ramdisk load address: 0x10000000

    vendor ramdisk total size: 13685168

    vendor command line args: bootconfig loop.max_part=7

    kernel tags load address: 0x10000000

    product name: SRPUK23A007

    vendor boot image header size: 2128

    dtb size: 231604

    dtb address: 0x0000000011f00000

    vendor ramdisk table size: 216

    vendor bootconfig size: 28


    * Here's where this will get interesting.

      * "kernel load address" is the kernel offset. The value after the colon is what you need, for example,   0x40080000. This will be different in your case.

      * "ramdisk load address" will be your ramdisk offset. Take the value next to it. For example, 0x51b00000.

      * "second bootloader load address" is mostly unnecessary by today's standards. But if your boot image does spit this value, make sure to take it. For example, 0xc0ff0000.

      * "kernel tags load address" is a special one. It's used for both kernel tags and dtb, but in some cases these values can be different. Take the value as well. For example, 0x47880000.

      * "dtb address" is sometimes the same as "kernel tags load address". But if it's different, you should use this for dtb and tags for tags. This value does require some magic modifications. To get the proper value for this, run "python3 -c "print(hex(<your "dtb address" value here>))" (obviously removing the < and >). For example, 

    python3 -c "print(hex(0x0000000047880000))"

    will print 0x47880000. This is your required value.

      * "page size" is required for the ramdisk to know what your flash chip uses for page sizes. Value after colon is what you need. For example, 2048.

      * "os version" is the value which determines which Android version this boot.img has. Some bootloaders enforce this. For example, 10.0.

      * "os patch level" is a similar story. You'll also want to grab this value, for example, 2021-11.

      * "command line args" go straight into deviceinfo_kernel_cmdline. Make sure to keep "console=tty0" in there. No examples here :(

      * If you're building vendor_boot, this command will also output a ``bootconfig`` file in your output directory. Move this to your source tree's root.

      * Apart from these mentioned values, you'll want to skip everything else.


Now according to said guide, fill in your offsets:


* Put the value from "page size" into this config.

``deviceinfo_flash_pagesize="2048"``


* Base offset will always remain 0x00000000.

``deviceinfo_flash_offset_base="0x00000000"``


* Fill this in from "kernel load address".

``deviceinfo_flash_offset_kernel="0x40080000"``


* This gets its value from "ramdisk load address".

``deviceinfo_flash_offset_ramdisk="0x51b00000"``


* Although not mission critical, if you did get its value, fill it in from "second bootloader load address".

``deviceinfo_flash_offset_second="0xc0ff0000"``


* Tags should be filled in from "kernel tags load address".

``deviceinfo_flash_offset_tags="0x47880000"``


* DTB offset comes from "dtb load address" after fixing it using the guide.

``deviceinfo_flash_offset_dtb="0x47880000"``


* This comes from "os version". Not exactly required but some OEMs enforce it.

``deviceinfo_bootimg_os_version="10.0"``


* You'll want to put the "os patch level" value here.

``deviceinfo_bootimg_os_patch_level="2021-11"``


* If you're building a vendor_boot and you have moved the ``bootconfig`` file to your tree's root, add the following:

``deviceinfo_vendor_bootconfig_path="bootconfig"``


And just like that, you've filled in your deviceinfo properly and can now get on with the port!
    

Building, installing and running
--------------------------------

After you've completed your deviceinfo and filled in all needed stuff, its time you get to the main part, the build. For this just run:
``./build.sh -b out``

That should download all the needed toolchains and then the kernel, and finally build everything. This process may take about 5 to 50 minutes to build the kernel.

After your kernel is done building, you will have to build the rootfs. For this, just execute this:

``./build/prepare-fake-ota.sh out/device_<your device's codename>_usrmerge.tar.xz ota``
This will download the rootfs, extract it and pack it into tarballs for our final script to create flashable images.

Next up, run:

``./build/system-image-from-ota.sh ota/ubuntu_command images``
This will convert the tarballs into flashable images, and your images will be stored in the `images/` directory. There will be a number of files depending on how you configured your deviceinfo.
But the basic file structure will be as given:

|    images/
|    ├── boot.img
|    ├── rootfs.img
|    └── system.img


The ``boot.img`` will be flashed onto the boot partition of the phone.
The ``system.img`` and ``rootfs.img`` are interchangable. ``rootfs.img`` is pushed to the data partition as ``ubuntu.img`` if you didn't include ``systempart`` in deviceinfo's cmdline.
Otherwise, ``system.img`` is flashed to your system partition.

Notes
^^^^^

For a lot of kernel-related commands, you'll need the ARCH variable's value, this is either arm or arm64 depending on where you found your defconfig. A thing to keep in mind for kernel patches.
