.. _Finalize:

Finalizing the port
===================

Once most frequently used features are working on your port you can start thinking about finalizing it, i.e. building recovery and preparing the installer so that other people may start installing and testing it. This can give valuable feedback that will potentially help you to find and diagnose remaining issues faster than you could have done on your own.

In order to build UBports recovery so that the port to be offered through the installer some modifications to the code are required. Previously, your port has been based on a rootfs and system image living on the userdata partition. These need to be moved to the system partitino in order to ensure a maximum of available space for user data. This is done by modifying the code, building recovery.img and subsequently rebuilding the boot image.

With the necessary components prepared, these should first be installed in their correct places manually for testing purposes. Once it has been confirmed that the port works as it should, the final step is to prepare and test and installer config file that will permit the automation of the whole process.

.. toctree::
   :maxdepth: 1
   :name: finalizing

   UBports_recovery
   UBports_installer