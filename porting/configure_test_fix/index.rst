Configuring, testing and fixing
===============================

Now that you have successfully booted your build, you are ready to bring up the graphical UI, merge apparmor into your port and see to any remaining functionality that needs configuring. This section explains how to perform these tasks.

If you are doing a GSI port, much, if not all device features, should already work 'out of the box' once you have brought up Lomiri and added Apparmor. For this reason, Halium-9/GSI porting as well as porting based on standalone kernel builds should normally require only udev rules, Apparmor patches and only limited configuring using the overlay file method. If despite performing these tasks your GSI-based build still does not function properly, you may have to resort to building a device-specific ``system.img`` in order to reach your goal.

On the other hand, Halium 7.1 porting and Halium-9.0 porting (when building the full device-specific ``system.img``) will require the most work.

Start by bringing up Lomiri, adjusting the display as required, and adding AppArmor. The remaining steps can be performed in arbitrary order. Note that there are differences between Halium versions and porting methods with respect to which of the steps below that need to be performed and how to go about it. This is explained in the text.

.. toctree::
   :maxdepth: 1
   :name: configure_test_fix

   Lomiri
   Overlay
   Display
   Apparmor
   Wifi
   Sound
   Ofono
   Bluetooth
   Sensors
   Camera_video