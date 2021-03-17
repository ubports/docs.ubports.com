..  _Key:

Key to this porting guide
=========================

The table below lists the steps necessary to complete a port of Ubuntu Touch to a new device. As explained in the introduction, porting can be done according to one of three methods, and a number of steps are shared by more than one porting method.

Use this table for quick reference and navigation to any desired section by clicking on it.

=========================================== ======== ======== ========
Section/subsection                          Method 1 Method 2 Method 3
------------------------------------------- -------- -------- --------
:ref:`Preparations`                             x        x        x
:ref:`Setting up <Setting-up>`                  x        x        x
:ref:`Get Halium source <Get-Halium>`           x        x        
:ref:`Get kernel source <Kernel-source>`                          x
:ref:`Build boot image <Boot-img>`              x        x        
:ref:`Build system image <System>`              x            
:ref:`Build kernel <Kernel>`                                      x
:ref:`Flash boot image <Flash-boot>`            x        x        
:ref:`Install kernel <Inst-kern>`                                 x
:ref:`Install system.img/rootfs <Inst-sys>`     x        x        x
:ref:`Boot <Boot>`                              x        x        x
:ref:`Bring up Lomiri <Lomiri>`                 x        x        x
:ref:`Configure features <Configuring>`         x        x        
:ref:`Build recovery <Recovery>`                x        x        x
:ref:`Set up installer <Installer>`             x        x        x
=========================================== ======== ======== ========

* **Method 1:** Build both the halium-boot.img and the full device specific system.img (*i.e.* not GSI) from source and install these together with the UBports rootfs. (This is the only possible method for Halium 7.1 porting.)
* **Method 2:** Build halium-boot.img and install this together with the Halium GSI and the UBports rootfs. (Halium 9.0 and newer.)
* **Method 3:** Build only the kernel and install this together with the Halium ramdisk, the Halium GSI and the UBports rootfs. (Halium 9.0 and newer.)