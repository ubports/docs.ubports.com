Run desktop applications
========================

Libertine allows you to use standard desktop applications in Ubuntu Touch.

To display and launch applications you need the *Desktop Apps Scope* which is available in the Canonical App Store. To install applications you need to use the commandline as described below.

Manage containers
-----------------

Create a container
^^^^^^^^^^^^^^^^^^

The first step is to create a container where applications can be installed:

  ``libertine-container-manager create -i CONTAINER-IDENTIFIER``

You can add extra options such as:

 * ``-n name`` name is a more user friendly name of the container
 * ``-t type`` type can be either ``chroot`` or ``lxc``. Default is ``chroot`` and is compatible with every device. If the kernel of your device supports it then ``lxc`` is suggested.

The creating process can take some time, due to the size of the container (some hundred of megabytes).

.. note::
    The ``create`` command shown above cannot be run directly in the terminal app, due apparmor restrictions. You can run it from another device using either ``adb`` or ``ssh`` connection. Alternatively, you can run it from the terminal app using a loopback ssh connection running this command: ``ssh localhost``.

List containers
^^^^^^^^^^^^^^^

To list all containers created run:
  ``libertine-container-manager list``

Destroy a container
^^^^^^^^^^^^^^^^^^^

  ``libertine-container-manager destroy -i CONTAINER-IDENTIFIER``

Manage applications
-------------------

Once a container is set up, you can list the installed applications:

  ``libertine-container-manager list-apps``

Install a package:

  ``libertine-container-manager install-package -p PACKAGE-NAME``

Remove a package:

  ``libertine-container-manager remove-package -p PACKAGE-NAME``

.. note::
    If you have more than one container, then you can use the option ``-i CONTAINER-IDENTIFIER`` to specify for which container you want to perform an operation.


Files
-----

Libertine applications do have access to these folders:

 * Documents
 * Music
 * Pictures
 * Downloads 
 * Videos 

Tipps
-----

Locations
^^^^^^^^^

For every container you create there will be two directories created:

  * A root directory ``~/.cache/libertine-container/CONTAINER-IDENTIFIER/rootfs/`` and
  * a user directory ``~/.local/share/libertine-container/user-data/CONTAINER-IDENTIFIER/``

Shell access
^^^^^^^^^^^^

To execute any arbitrary command as root inside the container run:

  ``libertine-container-manager exec -c COMMAND``

For example, to get a shell into your container you can run:

  ``libertine-container-manager exec -c /bin/bash``

.. note::
    When you launch bash in this way you will not get any specific feedback to confirm that you are now *inside* the container. You can check ``ls /`` to confirm for yourself that you are inside the container. The listing of ``ls /`` will be different inside and outside of the container.

To get a shell as user ``phablet`` run:

  ``DISPLAY= libertine-launch -i CONTAINER-IDENTIFIER /bin/bash``

Background
----------

A display server coordinates input and output of an operating system. Most Linux distributions today use the X server. Ubuntu Touch does not use X, but  a new display server called Mir. This means that standard X applications are not directly compatible with Ubuntu Touch. A compatibility layer called XMir resolves this. Libertine relies on XMir to display desktop applications.

Another challenge is that Ubuntu Touch system updates are released as OTA images. A consequence of this is that the root filesystem is read only. Libertine provides a container with a read-write filesystem to allow the installation of regular Linux desktop applications.

