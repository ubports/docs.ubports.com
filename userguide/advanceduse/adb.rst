.. _userguide-advanceduse-adb:
Shell access via adb
====================

You can put your UBports device into developer mode and access a Bash shell from your PC. This is useful for debugging or more advanced shell usage.


Install ADB
-----------

First, you'll need ADB installed on your computer. 

On Ubuntu::

    sudo apt install android-tools-adb

On Fedora::

    sudo dnf install android-tools
    
And on MacOS with `Homebrew <https://brew.sh>`_::

    brew install android-platform-tools

For Windows, grab the command-line tools only package from `here <https://developer.android.com/studio/index.html#downloads>`_.

Enable developer mode
---------------------

Next, you'll need to turn on Developer Mode.

#. Reboot your device
#. Place your device into developer mode (Settings - About - Developer Mode - check the box to turn it on)
#. Plug the device into a computer with adb installed
#. Open a terminal and run ``adb devices``.

.. note::
    When you're done using the shell, it's a good idea to turn Developer Mode off again.

If there's a device in the list here (The command doesn't print "List of devices attached" and a blank line), you are able to use ADB successfully. If not, continue to the next section.

Add hardware IDs
----------------

ADB doesn't always know what devices on your computer it should or should not talk to. You can manually add the devices that it does not know how to talk to.

Just run the command for your selected device if it's below. Then, run ``adb kill-server`` followed by the command you were initially trying to run.

Fairphone 2::

    printf "0x2ae5 \n" >> ~/.android/adb_usb.ini

Oneplus One::

    printf "0x9d17 \n" >> ~/.android/adb_usb.ini
