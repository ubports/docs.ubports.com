3   Halium 7.1 Porting
======================


3.1 Introduction
----------------

A Halium 7.1 - Ubuntu Touch port consists of the following parts:
    
    * The boot image, halium-boot.img
    * The system image, system.img
    * The UBports - Ubuntu Touch - root file system (hereafter referred to as the *rootfs*)

The boot image contains the Linux kernel, the heart of the operative system, which needs to be built from source code for each specific device. The system image is also specific to the device and is similarly built from source code. The rootfs, on the other hand, is maintained by the UBports Foundation and is downloadable in the form of a prebuilt .tar.gz bundle which is then installed together with the system.img.

3.2 Build the Halium system image
---------------------------------



3.2 Build halium-boot.img and system.img for Ubuntu Touch
---------------------------------------------------------



3.3 Install and debug initial boot
----------------------------------



3.4 Bring up Unity 8 (the graphical UI)
---------------------------------------



3.5 Configure and enable remaining device functionality
-------------------------------------------------------



Draft:
------

- Subsection 1: Introduction
    * Explain the main parts that need to be built, why they are required and how they relate to each other

- Subsection 2: Build Halium according to Halium guide. 
    * Explain this next step (building the Halium system image, including why the first build is not actually for being installed on the device.
    * Redirect to Halium porting guide for details of 
        + acquiring the necessary source, 
        + setting up and executing the initial build
    (Note: In the future, the Halium guide should also be reworked and updated.)

- Subsection 3: Modify source and build halium-boot.img and system.img for UT.

- Subsection 4: Installation and debugging the initial boot.
    * This section should cover only the most common issues (but include a link to further resources in section 5)

- Subsection 5: Bringing up Unity 8 (the graphical user interface)

- Sucsection 6: Configuring the device to enable remaining functionality

