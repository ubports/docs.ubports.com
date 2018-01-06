Run android applications
========================

`Anbox <https://anbox.io>`_ is a minimal android container and compatibility layer that allows you to run android applications on GNU/Linux operating systems.

.. note::
    - Anbox is in early development
    - Anbox for Ubuntu Touch is in even more early development
    - Anbox only works on the 16.04 version of Ubuntu Touch, which is also in early development
    - The only device currently supported is the Meizu Pro 5 ("turbo"), more to come in the near future

How to install
--------------

Because this is only recommended for experienced users, installation instructions are intentionally left vague at the moment. With the software becoming more mature,

.. warning::
    Because this feature is in such an early stage of development, the installation is only recommended for experienced users.

- Install the 16.04/devel channel on your Meizu Pro 5 ("turbo")
- flash http://cdimage.ubports.com/anbox-images/anbox-boot-turbo.img
- ``sudo touch /userdata/.writable_image``
- ``sudo reboot``
- ``apt install anbox-ubuntu-touch``
- run ``anbox-setup``
