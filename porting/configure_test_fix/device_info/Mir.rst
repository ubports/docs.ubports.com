.. _DeviceInfo_Mir:

Mir
===

Overview of all Mir keys::

    <devicename>:
      MirAndroidPlatformClientEglFlush: <comma-separated-list/"all">
      MirAndroidPlatformClientFenceSync: <comma-separated-list/"all">
      MirAndroidPlatformServerBackpressure: <boolean>
      MirAndroidPlatformServerClearFbFence: <boolean>
      MirAndroidPlatformServerEglSync: <boolean>
      MirAndroidPlatformServerPartialUpdates: <boolean>

mir-platform-android
--------------------

======================================  ===========  =============================================  ===========================
Key                                     Description  Value(s)                                       Default value
======================================  ===========  =============================================  ===========================
MirAndroidPlatformClientEglFlush        See below    Comma-separated list (or special value "all")  Empty
MirAndroidPlatformClientFenceSync       See below    Comma-separated list (or special value "all")  Empty
MirAndroidPlatformServerBackpressure    See below    Boolean                                        False
MirAndroidPlatformServerClearFbFence    See below    Boolean                                        False
MirAndroidPlatformServerEglSync         See below    Boolean                                        Launcher argument (``default``)
MirAndroidPlatformServerPartialUpdates  See below    Boolean                                        False
======================================  ===========  =============================================  ===========================

MirAndroidPlatformClientEglFlush
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Force GL command buffer flush on eglSwapBuffers, in case the driver doesn't follow the spec.

MirAndroidPlatformClientFenceSync
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Classic fence-only synchronization without GL command buffer flushing.

MirAndroidPlatformServerBackpressure
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Allows redrawing to be skipped or not after a missed frame, similarly to SurfaceFlinger.

MirAndroidPlatformServerClearFbFence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Framebuffer changes only continue after the fence has been successfully waited on.

MirAndroidPlatformServerEglSync
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Allow or avoid synchronization using EGL fencing primitives when drawing the screen.

Overrules existing launcher argument.

MirAndroidPlatformServerPartialUpdates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Allow partial redraws to HWC-assigned server-side buffers.

Examples
--------

Device `sample` using:

- Enabling egl flushing for every client except for ``lomiri`` and ``unity8``
    - Note that you can use ``!`` to invert conditions and turn the `allow` into a `deny` list.
- Disabling egl sync for the server
- Enabling partial updates for the server

Config file::

    $ cat /etc/deviceinfo/devices/sample.yaml
    sample:
      MirAndroidPlatformClientEglFlush:
        - "!/usr/bin/unity8,!/usr/bin/lomiri,all"
      MirAndroidPlatformServerEglSync:
        - false
      MirAndroidPlatformServerPartialUpdates:
        - true
