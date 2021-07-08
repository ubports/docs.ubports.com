Configuring, testing and fixing
===============================

Now that you have successfully booted your build, you are ready to bring up the graphical UI, merge apparmor into your port and see to any remaining functionality that needs configuring. This section explains how to perform these tasks.

If you are doing a GSI port, much, if not all device features, should already work 'out of the box' once you have brought up Lomiri and added Apparmor. For this reason, Halium-9/GSI porting as well as porting based on standalone kernel builds should normally require only udev rules, Apparmor patches and only limited, if any, configuring using the overlay file method. If, despite performing these tasks, your GSI-based build still does not function properly, you may have to resort to building a device-specific ``system.img`` in order to reach your goal.

On the other hand, Halium 7.1 porting and Halium-9.0 porting (when building the full device-specific ``system.img``) will require the most work.

Start by bringing up Lomiri, adjusting the display as required, and adding AppArmor. The remaining steps can be performed in arbitrary order and some may not apply to your particular port.

As you go along, it can be helpful to have a list of device functions to go by when checking what works and what needs debugging and fixing. This list, along with instructions on how to add your device to the list of devices that can run Ubuntu Touch, can be found in `the informative README.md file linked here. <https://gitlab.com/ubports/infrastructure/devices.ubuntu-touch.io/-/blob/main/README.md>`_

.. toctree::
   :maxdepth: 1
   :name: configure_test_fix

   Lomiri
   Overlay
   Apparmor
   Wifi
   Sound
   Bluetooth