Sound
=====

Ubuntu Touch uses Pulseaudio as sound server. Documentation can be found at `freedesktop.org <https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/>_` and in the `Ubuntu manpages <https://manpages.ubuntu.com/manpages/focal/man1/pulseaudio.1.html>_`

The default configuration file used on Ubuntu Touch is ``touch.pa``. This file is located in the ``/etc/pulse`` directory of your device and this will need adjustment in order for sound to function properly. Extract the file and copy it to your the ``ubuntu`` you created in your device repo.

Locate the line::

    load-module module-droid-discover voice_virtual_stream=true

and replace it with this::

    load-module module-droid-discover rate=48000 quirks=+unload_call_exit

At the end of the file, append this::

    ### Automatically load the audioflinger glue
    .ifexists module-droid-glue-24.so
    load-module module-droid-glue-24
    .endif

Now complete :ref:`the last steps of the overlay method <Overlay-steps>`, taking care to remember to correctly :ref:`rebuild the system image. <Rebuild-system.img>`