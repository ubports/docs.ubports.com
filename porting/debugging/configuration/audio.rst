Audio Configuration
===================

Configuring PulseAudio for device audio support.

Configuration File
------------------

Modify /etc/pulse/touch.pa:

.. code-block:: none

    load-module module-droid-discover rate=48000 quirks=+unload_call_exit
    
    .ifexists module-droid-glue-24.so
    load-module module-droid-glue-24
    .endif

Common Issues
-------------

- Missing audio modules
- UCM file configuration
- Hardware detection problems