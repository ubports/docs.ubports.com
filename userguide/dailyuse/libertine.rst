Run desktop applications
========================

Libertine allows you to use standard desktop applications in Ubuntu Touch.

To display and launch applications you need the *Desktop Apps Scope* which is available by swiping from the bottom of your device, and then tapping on the star. To install applications you need to use the commandline as described below.

Manage containers
-----------------

Create a container
^^^^^^^^^^^^^^^^^^

The first step is to create a container where applications can be installed::

  libertine-container-manager create -i CONTAINER-IDENTIFIER

You can add extra options such as:

 * ``-n name`` name is a more user friendly name of the container
 * ``-t type`` type can be either ``chroot`` or ``lxc``. Default is ``chroot`` and is compatible with every device. If the kernel of your device supports it then ``lxc`` is suggested.

The creating process can take some time, due to the size of the container (some hundred of megabytes).

.. note::
    The ``create`` command shown above cannot be run directly in the terminal app, due apparmor restrictions. You can run it from another device using either ``adb`` or ``ssh`` connection. Alternatively, you can run it from the terminal app using a loopback ssh connection running this command: ``ssh localhost``.

List containers
^^^^^^^^^^^^^^^

To list all containers created run::

  libertine-container-manager list

Destroy a container
^^^^^^^^^^^^^^^^^^^
::

  libertine-container-manager destroy -i CONTAINER-IDENTIFIER

Manage applications
-------------------

Once a container is set up, you can list the installed applications::

  libertine-container-manager list-apps

Install a package::

  libertine-container-manager install-package -p PACKAGE-NAME

Remove a package::

  libertine-container-manager remove-package -p PACKAGE-NAME

.. note::
    If you have more than one container, then you can use the option ``-i CONTAINER-IDENTIFIER`` to specify for which container you want to perform an operation.

Run desktop application
-----------------------

To run a graphical application you installed whose package installed a desktop file, i.e. ``gedit``, run in a terminal::

  ubuntu-app-launch xenial_gedit_0.0

If you are in doubt about what the argument must be, just start typing ``xenial`` and then find all the possible ones with the ``tab`` key.

Files
-----

Libertine applications do have access to these folders:

 * Documents
 * Music
 * Pictures
 * Downloads
 * Videos

Tips
----

Locations
^^^^^^^^^

For every container you create there will be two directories created:

  * A root directory ``~/.cache/libertine-container/CONTAINER-IDENTIFIER/rootfs/`` and
  * a user directory ``~/.local/share/libertine-container/user-data/CONTAINER-IDENTIFIER/``

Shell access
^^^^^^^^^^^^

There are 2 options for executing commands inside the container.

**The first option** is based on ``libertine-container-manager exec``. It lets you run your commands as root. The drawback is that the container is not completely set up. So far we know that the `folders mentioned above (Documents, Music, ...) are not mounted <https://askubuntu.com/questions/831830/libertine-terminal-applications-how-to-access-to-the-real-home-dir#comment1273744_833984/>`_ i.e., the ``/home/phablet/`` directory is empty. Likewise the directory referenced in ``TMPDIR`` is not available what may lead to problems with software that tries to create temporary files or directories.
You may use this option e.g., for installing packages.

To execute a command you can use the following pattern::

  libertine-container-manager exec -i CONTAINER-IDENTIFIER -c "COMMAND-LINE"

For example run::

  libertine-container-manager exec -i CONTAINER-IDENTIFIER -c "apt-get --help"

To get a shell into your container as ``root`` run::

  libertine-container-manager exec -i CONTAINER-IDENTIFIER -c "/bin/bash"

**The second option** is based on ``libertine-launch``. It will execute your commands as user phablet in a completely set up container. So you may use this option to modify your files using installed packages.

To execute a command you can use the following pattern::

  libertine-launch -i CONTAINER-IDENTIFIER COMMAND-LINE

For example run::

  libertine-launch -i CONTAINER-IDENTIFIER ls -a

To get a shell as user ``phablet`` run::

  DISPLAY= libertine-launch -i CONTAINER-IDENTIFIER /bin/bash

.. note::
    When you launch bash in this way you will not get any specific feedback to confirm that you are now *inside* the container. You can check ``ls /`` to confirm for yourself that you are inside the container. The listing of ``ls /`` will be different inside and outside of the container.

Accessing SD card
^^^^^^^^^^^^^^^^^

In order to access your SD-card or any other part of the regular filesystem from inside your libertine container you must create a bind mount.

In order to add a bind mount use::

  libertine-container-manager configure -i CONTAINER-IDENTIFIER -b add -p /media/phablet/ID-OF-SD
  
You can also make deep links in case you only want parts of your SD-card available in the container. In this case just the entire path to the directory you want to bind mount::

  libertine-container-manager configure -i CONTAINER-IDENTIFIER -b add -p /media/phablet/ID-OF-SD/directory/you/want
  
This will not allow the container access to any of the directories earlier in the path for anything other than accessing your mounted directory.
    
In order to use the SD-card as extra space for your container, make sure first to format it using ext4 or similar.
There is a mis-feature in udisk2 that mounts SD-cards (showexec) that ensures only files ending in .bat, .exe or .com can be executed from the drive if it is (v)fat formatted. This has been changed in other distributions allowing any file to have execute priviliges, but not ubuntu. The reccomended workaround is to add a udev rule to control how to mount a card with a given id, but since the udev rules are on the read only port on touch, this is not possible.

Shortcuts
^^^^^^^^^

If you want, you can add aliases for command line tools. Add lines like the following ones to your ``~/.bash_aliases``::

    alias git='libertine-launch -i CONTAINER-IDENTIFIER git'
    alias screenfetch='libertine-launch -i CONTAINER-IDENTIFIER screenfetch'

Background
----------

A display server coordinates input and output of an operating system. Most Linux distributions today use the X server. Ubuntu Touch does not use X, but  a new display server called Mir. This means that standard X applications are not directly compatible with Ubuntu Touch. A compatibility layer called XMir resolves this. Libertine relies on XMir to display desktop applications.

Another challenge is that Ubuntu Touch system updates are released as OTA images. A consequence of this is that the root filesystem is read only. Libertine provides a container with a read-write filesystem to allow the installation of regular Linux desktop applications.

