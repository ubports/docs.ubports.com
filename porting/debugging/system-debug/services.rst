System Services Debug
=====================

Service Management
------------------
Status checks::

    systemctl list-units
    systemctl status NAME
    systemd-analyze blame

Common Services
---------------
Critical services::

    lightdm          # Display
    repowerd        # Power
    lxc@android     # Container
    ofono          # Telephony

Debug Methods
-------------
Service logs::

    journalctl -u SERVICE
    systemctl status SERVICE
    systemd-analyze critical-chain