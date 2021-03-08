Check and enable device features
================================

Once your device boots normally and you are able to login to the graphical user interface, you are ready to apply AppArmor kernel patches and check device feature functionality.

.. _Hal-9-apply-AppArmor-patches:

Apply AppArmor kernel patches
-----------------------------

`What is AppArmor? <https://wiki.ubuntu.com/AppArmor>`_

Certain (but not all) device features require AppArmor patches to the kernel, and they are mandatory in order for the vast majority of user apps and system apps to work. Apps will crash on launch without the patches installed.

Follow the method detailed in the Halium 7.1 chapter (:ref:`Apply-AppArmor-kernel-patches`).

Remaining device features
-------------------------

When following one of the two first :ref:`porting methods <Hal_9_porting_methods>` mentioned in the overview section, the only adjustments possible in order to enable features which do not immediately work are adjustments to the kernel configuration. If the kernel itself is not the source of the problem, you will most likely have to opt for the third porting method mentioned in the overview section, *i.e.* the complete halium-boot and device specific system image build.

If your device requires the device-specific build, you will be faced with the same challenges posed by Halium 7.1 porting, and pending the further development of this guide, you may refer to the corresponding section for Halium 7.1 porting (:ref:`Configuring_UT`) for guidance.