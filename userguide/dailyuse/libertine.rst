Run desktop applications
========================

Libertine allows you to use standard desktop applications in Ubuntu Touch.

To install applications you can use the *Settings* interface on your Ubuntu Touch device, or the command-line as described further below.

Manage containers
-----------------

Create a container
^^^^^^^^^^^^^^^^^^

The first step is to create a container where applications can be installed:

Open Settings and scroll down to *Libertine* under the *System* sub-heading.

Tap *Libertine* to get to the *Manage Libertine Containers* sub-menu.
Already installed containers will be visible here.
Tap the + sign at the upper right to add a container.

The *Container Options* dialog box will open asking you to enter a container name and optionally a password.
Confirm your entries by tapping "OK", and the container will be created.

To do this via the command-line::

  libertine-container-manager create -i CONTAINER-IDENTIFIER

You can add extra options such as:

 * ``-n name`` name is a more user-friendly name of the container
 * ``-t type`` type can be either ``chroot`` or ``lxc``. The default is ``chroot`` , which is compatible with every device.
 
 If the kernel of your device supports it, ``lxc`` is suggested.

Creation can take a while due to the size of the container (some hundred megabytes).

.. note::
    The ``create`` command shown above cannot be run directly in the terminal app, due to AppArmor restrictions.
    You can run it from another device using either an ADB or SSH connection.
    Alternatively, you can run it from the terminal app using a loopback SSH connection by running this command: ``ssh localhost``.

List containers
^^^^^^^^^^^^^^^

Use the *Settings Manage Libertine Containers* sub-menu to list all the containers you have created on the device.

You can also use the command-line. Run::

  libertine-container-manager list

Destroy a container
^^^^^^^^^^^^^^^^^^^
::

  libertine-container-manager destroy -i CONTAINER-IDENTIFIER

Manage applications
-------------------

Once a container is set up, the installed applications are available in the app drawer.
You can also tap the name of the container in the *Manage Libertine Containers* menu.

You can also list them via the command-line::

  libertine-container-manager list-apps

Install a package
^^^^^^^^^^^^^^^^^

From the apps list in the *Manage Libertine Containers* menu you can tap the + sign to get a dialog box that lets you add a package.

Enter the package name if you know it.
Otherwise you can search the archives for a package.
You can make this process easier by making a software center like gnome-software your first package install.
Being a desktop app, you will need to use the *Libertine Tweak Tool* in the *Open Store* to make the text large enough to read on a mobile device.

Packages may also be installed via the command-line::

  libertine-container-manager install-package -p PACKAGE-NAME

Remove a package
^^^^^^^^^^^^^^^^

Remove a package by swiping it to the right from its entry in the package list (in *System Settings* > *Libertine* > *Manage Libertine Containers* > *CONTAINER NAME*). An option to remove it will be revealed.

Or you can remove the package via the command-line::

  libertine-container-manager remove-package -p PACKAGE-NAME

.. note::
    If you have more than one container, you can use the option ``-i CONTAINER-IDENTIFIER`` to specify which container you want to perform an operation on.

Run desktop application
-----------------------

Run it from the app menu like any other app. To start a graphical app from the command-line, for example ``gedit``, run this in a terminal::

  # lomiri-app-launch <CONTAINER_ID>_<desktop_file_name>_0.0
  lomiri-app-launch focal_gedit_0.0

Files
-----

Libertine applications have access to these folders:

 * Documents
 * Music
 * Pictures
 * Downloads
 * Videos

Tips
----

Locations
^^^^^^^^^

For every container you create, two directories will be created:

  * A root directory ``~/.cache/libertine-container/CONTAINER-IDENTIFIER/rootfs/`` and
  * a user directory ``~/.local/share/libertine-container/user-data/CONTAINER-IDENTIFIER/``

Shell access
^^^^^^^^^^^^

There are two options for executing commands inside the container.

**The first option** is based on ``libertine-container-manager exec``.
It lets you run your commands as root. The drawback is that the container is not completely set up.
So far we know that the `folders mentioned above (Documents, Music, …) are not mounted <https://askubuntu.com/questions/831830/libertine-terminal-applications-how-to-access-to-the-real-home-dir#comment1273744_833984/>`_ i.e., the ``/home/phablet/`` directory is empty.
Likewise the directory referenced in ``TMPDIR`` is not available, which may lead to problems with software trying to create temporary files or directories.
You may use this option to installing packages.

To execute a command you can use the following pattern::

  libertine-container-manager exec -i CONTAINER-IDENTIFIER -c "COMMAND-LINE"

For example, run::

  libertine-container-manager exec -i CONTAINER-IDENTIFIER -c "apt-get --help"

To get a shell into your container as ``root``, run::

  libertine-container-manager exec -i CONTAINER-IDENTIFIER -c "/bin/bash"

**The second option** is based on ``libertine-launch``.
It will execute your commands as user phablet in a completely set up container.
You may use this option to modify your files using installed packages.

To execute a command you can use the following pattern::

  libertine-launch -i CONTAINER-IDENTIFIER COMMAND-LINE

For example, run::

  libertine-launch -i CONTAINER-IDENTIFIER ls -a

To get a shell as the user ``phablet``, run::

  DISPLAY= libertine-launch -i CONTAINER-IDENTIFIER /bin/bash

.. note::
    When you launch Bash in this way you will not get any specific feedback to confirm being *inside* the container.
    You can check ``ls /`` to confirm for yourself you are actually inside the container.
    The listing of ``ls /`` will be different inside and outside the container.

Accessing SD card
^^^^^^^^^^^^^^^^^

To access your SD-card or any other part of the regular filesystem from inside your Libertine container you must create a bind mount.

To add a bind mount, use::

  libertine-container-manager configure -i CONTAINER-IDENTIFIER -b add -p /media/phablet/ID-OF-SD
  
You can also make deep links if you only want parts of your SD-card available in the container.
In this case just add the entire path to the directory you want to bind mount::

  libertine-container-manager configure -i CONTAINER-IDENTIFIER -b add -p /media/phablet/ID-OF-SD/directory/you/want
  
This will not give the container access to any of the directories earlier in the path for anything other than accessing your mounted directory.
    
In order to use the SD card as extra space for your container, make sure to first format it using ext4 or similar.
There is a mis-feature in UDisks2 that mounts SD-cards (showexec), ensuring only files ending in .bat, .exe or .com can be executed from the drive if it is (V)FAT formatted.
This has been changed in other distributions, allowing any file to have execute priviliges, but not in Ubuntu.
The recommended workaround is to add a udev rule to control how to mount a card with a given ID, but since the udev rules are on the read-only port on Ubuntu Touch, this is not possible.

Shortcuts
^^^^^^^^^

If you want, you can add aliases for command-line tools.
Add lines like the following ones to your ``~/.bash_aliases``::

    alias git='libertine-launch -i CONTAINER-IDENTIFIER git'
    alias screenfetch='libertine-launch -i CONTAINER-IDENTIFIER screenfetch'
    
Installing packages manually
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you want to install a package from a file, you will first have to make it available to the root user, for example by copying it to the ``/root`` directory::

    cp ~/Downloads/somepackage.deb ~/.cache/libertine-container/CONTAINER-IDENTIFIER/rootfs/root/

Then install it using dpkg::

    libertine-container-manager exec -i CONTAINER-IDENTIFIER -c "dpkg -i /root/somepackage.deb"

Background
----------

A display server coordinates input and output of an operating system.
Ubuntu Touch does not use X, but a new display server called Mir.
This means standard X applications are not directly compatible with Ubuntu Touch.
A compatibility layer called XMir resolves this.
Libertine relies on XMir to display desktop applications.

Another challenge is that Ubuntu Touch system updates are released as OTA images.
As a consequence of this the root filesystem is read-only.
Libertine provides a container with a read-write filesystem to allow installation of regular Linux desktop applications.
