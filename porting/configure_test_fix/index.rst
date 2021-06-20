Configuring, testing and fixing
===============================

Now that you have successfully booted your build, you are ready to bring up the graphical UI, merge apparmor into your port and see to any remaining functionality that needs configuring. This section explains how to perform these tasks.

Start by bringing up Lomiri. The remaining steps can be performed in arbitrary order. Note that there are differences between Halium versions and porting methods with respect to which of the steps below that need to be performed and how to go about it. This is explained in the text.

As a rule of thumb, Halium 7.1 porting and Halium-9.0 porting, when building the full device-specific ``system.img``, will require the most work. Halium-9/GSI porting as well as porting based on standalone kernel builds, on the other hand, will require only udev rules, Apparmor patches and possibly some some configuring using the overlay file method. If despite performing these tasks your GSI-based build still does not function properly, you may have to build a device-specific ``system.img`` in order to reach your goal.

.. toctree::
   :maxdepth: 1
   :name: configure_test_fix

   Lomiri
   Overlay
   Display
   Apparmor
   Sound
   Bluetooth
   Sensors
   Camera_video