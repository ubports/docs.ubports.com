Check and enable device features
================================

Once your device boots normally and you are able to login to the graphical user interface, you are ready to apply AppArmor kernel patches and check device feature functionality.

.. _Hal-9-apply-AppArmor-patches:

Apply AppArmor kernel patches
-----------------------------

`What is AppArmor? <https://wiki.ubuntu.com/AppArmor>`_

Certain (but not all) device features require AppArmor patches to the kernel, and they are mandatory in order for the vast majority of user apps and system apps to work. Without the patches installed many apps will crash on launch, while others will display some form of function anomaly.

Follow the method detailed in the Halium 7.1 chapter (:ref:`Apply-AppArmor-kernel-patches`).

Remaining device features
-------------------------

When following one of the two first :ref:`porting methods <Hal_9_porting_methods>` mentioned in the overview section, the only adjustments possible in order to enable features which do not immediately work are adjustments to the kernel configuration. If the kernel itself is not the source of the problem, you will most likely have to opt for the third porting method mentioned in the overview section, *i.e.* the complete halium-boot and device specific system image build.

If your device requires the device-specific build, you will be faced with the same challenges posed by Halium 7.1 porting, and pending the further development of this guide, you may refer to the corresponding section for Halium 7.1 porting (:ref:`Configuring_UT`) for information on how to enable features that do not work "out of the box".

The challenges of this porting method boil down to determining the root cause of a function anomaly and making necessary adjustments to eliminate it. This is often very time-consuming and complicated work, and the average porter will need to seek advice frequently. The better your understanding of the inner workings of the system you are building, the better your chances of solving problems on your own. The same can be said for your programming skills, your aptitude at working from the command line and how familiar you are with investigating logs and your knowledge of debugging methods.