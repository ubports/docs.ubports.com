Network Configuration
=====================

Mobile Data
-----------
Check kernel config:

.. code-block:: none

    CONFIG_USB_NET_RNDIS_HOST=y
    CONFIG_USB_CONFIGFS_RNDIS=y

RIL Configuration
^^^^^^^^^^^^^^^^^
Enable RIL service:

.. code-block:: bash

    sudo service ofono start
    sudo service urfkill start

Wi-Fi Setup
-----------
Required components:

- wpa_supplicant configuration
- Firmware files
- Wi-Fi HAL implementation

Troubleshooting
^^^^^^^^^^^^^^^
Common issues:

- Missing firmware
- Driver initialization failures
- Wrong regulatory domain