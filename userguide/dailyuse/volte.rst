:orphan:

Voice over LTE (VoLTE)
======================

Voice over LTE (VoLTE) is a technology that allows a phone to take a call and send a message while connected to a 4G/LTE cellular network. The benefits of VoLTE include quicker call setup, higher quality voice, and seamless mobile data while on a call.

Carriers in some parts of the world have started phasing out 3G cellular networks, making VoLTE mandatory in order to place a call on that carrier. If VoLTE is not supported or not enabled by the phone, and the carrier still supports 3G network, the phone will automatically switch to 3G network for the duration of the call and will switch back to 4G network after the call ends.

Ubuntu Touch supports VoLTE on some devices. Support for VoLTE on Ubuntu Touch depends on the phone's chipset, the Android version the port is based on, and whether the port has enabled support for VoLTE.

.. note::
    VoLTE is currently in development and is not yet available in any of the stable releases of Ubuntu Touch.

How do I know if VoLTE is supported on my phone?
------------------------------------------------

To check if your phone supports VoLTE, go to *System Settings* > *Cellular* > *Carrier & APN*. If VoLTE is supported, you will be able to toggle *4G calling (VoLTE)*. If the toggle does not appear, or the toggle is disabled, then your phone does not yet support VoLTE on Ubuntu Touch.

.. figure:: /_static/images/userguide/volte-toggle.png

How do I know if VoLTE is working?
----------------------------------

For VoLTE to work, the following conditions have to be met:

* Your phone supports VoLTE on Ubuntu Touch.
* Your carrier and your SIM card supports VoLTE.
* Ubuntu Touch contains a VoLTE configuration for your carrier.

If the conditions are met, and the phone successfully establishes a VoLTE connection, the VoLTE logo will appear after your carrier name in the Network indicator.

.. figure:: /_static/images/userguide/volte-indicator.png
