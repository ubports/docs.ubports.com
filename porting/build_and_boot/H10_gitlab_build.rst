Halium-10.0 - Standalone kernel method
======================================

Starting from halium 10.0, the only plausible method for building a port is using the CI method. This involves a number of scripts that build the kernel, download the generic container image and rootfs, and create flashable images.

This guide expects you to have some mandatory git knowledge, like cloning and pushing, and creating repos.

Getting device kernel source code
---------------------------------

First thing to check is if  your device has an official or unofficial LineageOS port, as the porter may have already done the cleaning up bits needed for the device vendor kernel sources or incorporated out-of-tree kernel modules back into kernel tree, which makes life easier for us.
 
If not, check if device manufacturer provides kernel source at all:
ASUS, Lenovo, Samsung, ZTE usually provide kernel source code tarballs at their website.
Motorola, Realme, OnePlus, Xiaomi usually upload kernel source to their official GitHub account.

After you have acquired the kernel source, you need to upload it somewhere else for making modifications and commits for Ubuntu Touch. GitLab is preferred since when you'll get the port pulled into the UBports org, it can be easily copied from there.

Making a device source for build
--------------------------------

Clone an existing repo for a device from https://gitlab.com/ubports/community-ports. Ideally choose a device with similar SoC/Android version as base.
 
deviceinfo contains the configuration used during device build process (kernel, boot, dtb/dtbo if needed + recovery on later porting stages). To craft your own deviceinfo, follow the guide below:

Filling in your deviceinfo
^^^^^^^^^^^^^^^^^^^^^^^^^^

    # Full device name, like Redmi 9C or Redmi Note 10S. Replace as necessary.

    deviceinfo_name="Redmi 9C"


    # The name of the device's manufacturer. Change as needed.

    deviceinfo_manufacturer="Xiaomi"


    # The codename of the phone. This can be obtained by googling for it like: "<device name> codename". Replace device name with your phone's full name. Replace the codename below with your own too.

    deviceinfo_codename="angelica"


    # The architecture of your kernel. Most devices released after 2015 have an ARM64 CPU, but some oddities in between can still be armhf. For ARM64 devices, set the config to "aarch64". For armhf devices, set the config to "armv7".

    deviceinfo_arch="aarch64"


    # Here comes the meat of the port, the kernel. You already should have this link at hand if you followed section 1, if not go through it again. Replace below link with your own.

    deviceinfo_kernel_source=https://github.com/muhammad23012009/android_kernel_xiaomi_dandelion


    # The branch of the kernel comes next. This can be easily obtained by looking at the tab under the Code tab on GitHub or the tab on the top left side in GitLab. Replace as necessary.

    deviceinfo_kernel_source_branch="halium10-new"


    # Defconfig is a vital part of the kernel compilation process. Most of the times you can find this defconfig in your kernel source, the path to which is "arch/<your architecture>/configs". The defconfig's name is often built up like "<your codename>_defconfig". After finding your defconfig, replace it as necessary.

    (If you still can't find the defconfig refer to section "Finding your defconfig")

    deviceinfo_kernel_defconfig="angelica_defconfig"


    # The kernel cmdline is one of the key things that is required to make the kernel boot. It has special parameters that allow the kernel to determine which features/things need to be enabled, and which need to be disabled. The Ubuntu Touch rootfs also relies on some key cmdlines which is required to boot, most specifically "console=tty0". To adapt this to your device, try unpacking your boot image (section 8.3) and copying the cmdline from there, or take the help of a LineageOS device tree if it is available. "console=tty0" is a must for cmdline and should not be removed no matter what. Rest of the things can be removed and you can adjust these to your device.

    deviceinfo_kernel_cmdline="console=tty0 bootopt=64S3,32N2,64N2 systempart=/dev/mapper/system:ro"


    # Add this to your deviceinfo if you wish to compile your kernel with clang. Most devices released with and after Android 10 build their kernels with clang. If you don't want to build with clang, omit this entry entirely.

    deviceinfo_kernel_clang_compile="true"


    # Only required if you wish to use LLD as your linker and enable LTO. For most old kernels LTO is broken.

    If you do want to use it add this entry to your deviceinfo, else omit it.

    deviceinfo_kernel_use_lld="true"


    # Use this to enable 'dtc_ext' for compiling your dtb/dtbo's. Use only if you know what you're doing. The default compiler works most of the times.

    deviceinfo_kernel_use_dtc_ext="true"


    # Use this option to specify the kernel image name after kernel compiles. More than often this option is simply not required, so you can drop it from your deviceinfo. If you do need it, adjust image name as necessary.

    deviceinfo_kernel_image_name="Image.gz"


    # Used to define the architecture of your kernel. Most devices released after 2014 are aarch64, but in case yours is not, replace it with arm instead.

    deviceinfo_arch="aarch64"


    # This option defines the boot image header version. It is important you get this right, else your device may not boot. Devices launching with Android versions below 8 (Oreo) use header 0, Android 9 (Pie) uses version 1, Android 10 uses version 2, and GKI devices use version 3/4 (depending on Android version which they were released, Android 12 with GKI uses version 4).

    deviceinfo_bootimg_header_version="2"


    # Use this option to define a prebuilt dtb that you have sourced. Path is relative to your directory where you are editing the deviceinfo file. Edit the dtb name according to what you have.

    deviceinfo_bootimg_prebuilt_dtb="mt6765.dtb"


    # This option uses the dtb's created by your kernel while compiling, multiple dtb's can be specified here like:

    "mediatek/mt6765.dtb mediatek/angelica.dtb"

    The path in which the scripts look for the dtb's with this option enabled is "KERNEL_OBJ/arch/<architecture>/boot/dts" where <architecture> will either be arm64 or arm depending on what you set in deviceinfo_arch (aarch64 is arm64 in kernel speak)

    deviceinfo_dtb="mediatek/mt6765.dtb"


    # Selecting this will build a DT image that you selected into the boot image. Path is relative to your current directory in which you're editing deviceinfo. (Note: This is only really required in Samsung/Exynos devices.)

    deviceinfo_bootimg_prebuilt_dt="exynos8890-dt.img"


    # Use this to ship a prebuilt dtbo in your OTAs and to build your recovery with this dtbo if it isn't already being compiled. Path is once again relative to your build directory. Edit as desired.

    deviceinfo_prebuilt_dtbo="angelica-dtbo.img"


    # In case you do not want to ship the DTBO image in an OTA, selecting this will only remove the dtbo from the OTA package but recovery will still be compiled with this dtbo, if dtbo isn't already being compiled.

    deviceinfo_skip_dtbo_partition="true"


    # If you want to compile your DTBO from kernel, use this option to select the dtbo files compiled in kernel out directory. The path in which this option will search is KERNEL_OBJ/arch/<architecture>/boot/dts.

    Multiple dtbo's can be supplied like shown in the example. Adapt the names as per your requirements. The resulting dtbo image will be shipped in the OTA if the skip_dtbo_partition option isn't selected, and in any case recovery will also be built with this dtbo. This option is incompatible with the prebuilt dtbo option.

    deviceinfo_dtbo="mediatek/galahad.dtbo mediatek/lancelot.dtbo"


    # Using this will define the board name in your boot image, which some bootloaders require to boot the image successfully. Only use this option if your stock boot image has this flag set in its header. Edit as you wish if necessary.

    deviceinfo_bootimg_board="EXYNOS4412"


    # Use this option to pad your boot image to a specific size. Also required if you want to append a vbmeta image or append a hash footer to your image. Change the size to your stock boot image size. (Note: The size is declared in bytes).

    deviceinfo_bootimg_partition_size="67713847"


    # Pretty self-explanatory. Set it to true if your device requires a vbmeta image appended (Not the case for most devices with a dedicated vbmeta partition.)

    deviceinfo_bootimg_append_vbmeta="true"


    # Use this option when you want to create a recovery.img for booting UBports recovery (Only really required when you're finalizing the port). In most cases you'll want to omit this in the start of your port and add it as you try to get it in installer. Setting to true builds the recovery and setting to false or omitting the entry entirely will cause it to not build at all.

    deviceinfo_has_recovery_partition="true"


    # Use this to pad your recovery image to a specific size. Also a requirement if you want to add a hash footer to your image. Replace the size from your stock recovery image. (Will only work if you're building recovery!)

    deviceinfo_recovery_partition_size="67713847"


    # This is only really required for some old/new Samsung that check for an "SEAndroid" footer on their boot images to check whether or not the boot images are official. If the bootloader doesn't find it it results in an ugly looking red line on the top of the screen. Adding this to your deviceinfo will append this string to the boot image. (Beware! Using this on other devices may cause it to not boot the image!)

    deviceinfo_bootimg_tailtype="SEAndroid"


    # This config determines whether modules should be compiled and installed into rootfs or not. Omitting this config results in the default behaviour, i.e., modules get compiled and installed into rootfs. Adding this option to your deviceinfo and setting it to true (like shown) will disable modules compilation. Only really needed in case you're doing something advanced.

    deviceinfo_kernel_disable_modules="true"


    # This option installs all overlay files (in overlay/ directory) into /system/opt/halium-overlay, therefore overlaying the files onto the files present in rootfs instead of completely replacing them. This is necessary for 20.04 and onwards, but not applicable for 16.04.

    deviceinfo_use_overlaystore="true"


    # This option is mostly used on some Qualcomm devices. Adding this to your deviceinfo will combine all your dtbo's with your dtbs. Only use if you are sure you need this.

    deviceinfo_kernel_apply_overlay="true"


    # Add this configuration to your deviceinfo when you need to specify a fixed size for your rootfs being flashed to system image. Default is 3000M when option is not set. Only use if you need it.

    deviceinfo_system_partition_size="4000M"


    # This config is only relevant for newer devices launched with UFS storage

    deviceinfo_rootfs_image_sector_size="4096"


    # Now comes the true parts of deviceinfo, the flash offsets. But don't worry, we'll guide you through on how to extract these!


    Extracting values from stock boot.img
    """""""""""""""""""""""""""""""""""""

    For any port to boot, some values must be pulled from the stock boot.img. First and foremost, try to get your stock firmware. Some manufacturers like Samsung like to encrypt their firmwares, but still some tools are available to get them. Others like Xiaomi provide the firmware, but you need to use Google to search it. And then there's the good guy Google, who provide full firmware binaries easily accessible. Long story short, you need to at least find your stock firmware, and then get the boot.img. Once you have the boot.img acquired, follow the following steps:


    * Make a directory in which you'll store all your unpacked data. It can be anywhere, and can have any name. For now, we'll call it `temp`.

    * Run "mkdir ~/temp" to create the directory and "cd ~/temp" to go to it.

    * Now to unpack the boot image there are several utilities to do so. One of them is the python script provided by Android. For now we'll use this. To download it into your current working directory run "wget https://raw.githubusercontent.com/LineageOS/android_system_tools_mkbootimg/lineage-19.1/unpack_bootimg.py" This will download the unpack_bootimg.py script, which you'll now use to pull your kernel offsets and other values alike

    * Bring your boot.img into the temp directory.

    * Now run the script. The usual syntax is "python3 unpack_bootimg.py --boot_img boot.img --out out" This will unpack the boot image, store the output files in the out directory, and it will also print the offsets on screen.


    A sample output will look like this: 

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


    * Here's where this will get interesting.

      * "kernel load address" is the kernel offset. The value after the colon is what you need, for example,   0x40080000. This will be different in your case.

      * "ramdisk load address" will be your ramdisk offset. Take the value next to it. For example, 0x51b00000.

      * "second bootloader load address" is mostly unnecessary by today's standards. But if your boot image does spit this value, make sure to take it. For example, 0xc0ff0000.

      * "kernel tags load address" is a special one. It's used for both kernel tags and dtb, but in some cases these values can be different. Take the value as well. For example, 0x47880000.

      * "dtb load address" is sometimes the same as "kernel tags load address". But if it's different, you should use this for dtb and tags for tags. This value does require some magic modifications. To get the proper value for this, run "python3 -c "print(hex(<your "dtb address" value here>))" (obviously removing the < and >). For example, 

    python3 -c "print(hex(0x0000000047880000))"

    will print 0x47880000. This is your required value.

      * "page size" is required for the ramdisk to know what your flash chip uses for page sizes. Value after colon is what you need. For example, 2048.

      * "os version" is the value which determines which Android version this boot.img has. Some bootloaders enforce this. For example, 10.0.

      * "os patch level" is a similar story. You'll also want to grab this value, for example, 2021-11.

      * "command line args" go straight into deviceinfo_kernel_cmdline. Make sure to keep "console=tty0" in there. No examples here :(

      * Apart from these mentioned values, you'll want to skip everything else.


    Now according to said guide, fill in your boot.img offsets:


    # Put the value from "page size" into this config.

    deviceinfo_flash_pagesize="2048"


    # Base offset will always remain 0x00000000.

    deviceinfo_flash_offset_base="0x00000000"


    # Fill this in from "kernel load address".

    deviceinfo_flash_offset_kernel="0x40080000"


    # This gets its value from "ramdisk load address".

    deviceinfo_flash_offset_ramdisk="0x51b00000"


    # Although not mission critical, if you did get its value, fill it in from "second bootloader load address".

    deviceinfo_flash_offset_second="0xc0ff0000"


    # Tags should be filled in from "kernel tags load address".

    deviceinfo_flash_offset_tags="0x47880000"


    # DTB offset comes from "dtb load address" after fixing it using the guide.

    deviceinfo_flash_offset_dtb="0x47880000"


    # This comes from "os version". Not exactly required but some OEMs enforce it.

        deviceinfo_bootimg_os_version="10.0"


     # You'll want to put the "os patch level" value here.

        deviceinfo_bootimg_os_patch_level="2021-11"


    And just like that, you've filled in your deviceinfo properly and can now get on with the port!
    

Running build without modifications
-----------------------------------

After you've completed your deviceinfo and filled in all needed stuff, its time you get to the main part, the build. For this just run "./build.sh -b out", that should download all the needed toolchains and then the kernel, and finally build everything. This process may take about 5 to 50 minutes to build the kernel.

Making initial changes to kernel to get device to boot
------------------------------------------------------

Now that your kernel is compiled, it won't boot straight away because it's missing some Halium and Ubuntu Touch patches. To combat this, instead of manually patching kernel configs, we can use kernel fragments to combine device-specific configs with the Ubuntu Touch kernel configs. These configs are shipped in a repo that you can add as a sub-module into your kernel tree and use it for your defconfigs. But because our configs are extremely minimal, there's only 5 configs you can attach to make your patched defconfig.
To create your custom config with UT kernel configs included, you will have to browse into your kernel directory in the out/ folder. The directory structure is ``out/downloads/<your kernel repo name which you added in deviceinfo>``. For example, ``out/downloads/kernel-xiaomi-mt6765``. After you have found it, ``cd` to it.
Now, to add your config, open a file called ``ut-config.config`` in the root of the kernel source. Don't worry, we'll wipe this file out afterwards. After you have opened the file, paste in the following content:

``
CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
CONFIG_DEVTMPFS=y
CONFIG_FHANDLE=y
CONFIG_NAMESPACES=y
CONFIG_SYSVIPC=y
# CONFIG_DEVTMPFS_MOUNT is not set
CONFIG_EXPORTFS=y
CONFIG_IPC_NS=y
CONFIG_NET_NS=y
CONFIG_PID_NS=y
CONFIG_USER_NS=y
CONFIG_UTS_NS=y
CONFIG_RFKILL=y
``
These are the bare minimal configs needed to boot Ubuntu Touch on your device. Now, save and close your text editor. Now it's time to combine all your configs and create one single config that you'll convert to a defconfig.
``ARCH=<arm or arm64 depending on what you got from finding the defconfig> scripts/kconfig/merge_config.sh arch/<arm or arm64 depending on defconfig found>/<your defconfig here> ./ut-config.config``

This will merge your defconfig with the UT kernel configs and create a singular kernel config, named ``.config``
Now to convert it back to your defconfig,
``ARCH=<again, depending on whether your CPU is arm or arm64> make savedefconfig``
Then, you can simply copy the ``defconfig`` file to where your original defconfig was, and just for good measure:
``make mrproper``
to clean up your kernel source.

At this point you've almost completed the initial setup for the kernel, now all that's left is to go back to the directory with deviceinfo in it and run "./build.sh -b out/" and cross your fingers for any errors in case you do get errors report all of the errors in a pastebin to t.me/UBportsPorting, make sure to include your changes as well.

Installing Ubuntu Touch rootfs + generic Halium image on device
---------------------------------------------------------------

If you've reached this step, hurrah! Your kernel compiles with UT and Halium changes and are ready to get this going! Start off by re-running "./build.sh -b out/" just to confirm everything is correct. After that is complete run "./build/prepare-fake-ota.sh out/device_<codename>.tar.xz ota". Replace codename with your device's codename. This will take a while as it downloads the whole OS from the servers, so be patient and get yourself a tea or coffee.

    After that's done you will need to create an image to flash onto the phone, for that run "./build/system-image-from-ota.sh ota/ubuntu_command out". This command will begin to create the flashable images that are needed for UT, beware it requires your sudo password as well to mount images and copy the OS onto them. This process can take anywhere from 30 seconds to 10 minutes top, it mostly matters on your HDD or SSD speeds.


Now that that's finished you should see some image files appear in the out/ directory, these are the OS files. Boot your device into flashing state (For most phones this is fastboot, but for Samsung's refer to Download Mode) and flash the system.img and boot.img. For fastboot it's easy enough as "fastboot flash boot out/boot.img" and "fastboot flash system out/system.img". If you have a phone with dynamic partitions however it gets a bit more complicated, that'll get covered in the next part.

For Samsung's install heimdall via your package manager and run "heimdall flash --BOOT out/boot.img". This will reboot the device, reboot it back into Download Mode and run "heimdall flash --SYSTEM out/system.img".

Installing on devices with dynamic partitions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Dynamic partition devices are a picky bunch, they like to mess about, make lives harder for us porter. But fret not, newcomer! For we have a solution for you to flash these images on to your device!
Start by updating your fastboot package. This is dependent on your distribution's package manager, and won't be covered here.
After you have confirmed you have a recent-ish fastboot, you need to reboot into ``fastbootd``, which is basically fastboot living in recovery. This is necessary, since bootloader fastboot cannot parse the logical partitions present inside the big super partition.
You can either choose a custom recovery, or use your stock recovery for this. To reboot into fastbootd from bootloader, run ``fastboot reboot fastboot``. After you have booted to fastbootd, run the following commands to flash the images:

``fastboot delete-logical-partition product``
``fastboot flash system out/system.img``
``fastboot flash boot out/boot.img``
And just like that, you've installed the images on your dynamic partitions!

Finding your correct defconfig
------------------------------
To find your correct defconfig, there are several ways to find it. The easiest one is if your device is supported by a ROM like LineageOS. The device trees used by them often include the defconfig name, for example https://github.com/LineageOS/android_device_xiaomi_surya/blob/lineage-20/BoardConfig.mk#L119 is the name of the defconfig for the device "surya".
The other way is if you got your kernel source as a tarball, most OEMs will include a build.sh script inside the kernel source which has the defconfig name inside it as well.
The most overkill way to find your defconfig name is to manually search through your kernel source. For this, you need to look inside the arch/arm/configs or arch/arm64/configs folder, depending on what architecture your CPU uses. Most devices released after 2015 use an arm64 CPU. This info can also be googled. After you have found your CPU architecture, you can use it to find the defconfig in your folder.
Often, device defconfigs are named like <device codename here>_defconfig. The codename can be obtained easily through Google like "<your device name here> codename" After you find your defconfig, you can use this for deviceinfo and for patching your kernel.

Notes
^^^^^

For a lot of kernel-related commands, you'll need the ARCH variable's value, this is either arm or arm64 depending on where you found your defconfig. A thing to keep in mind for kernel patches.
