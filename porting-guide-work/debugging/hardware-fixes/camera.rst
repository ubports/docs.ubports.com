Camera Configuration
====================

Requirements
------------
- Working camera HAL
- Proper media codecs
- GStreamer integration

HAL Setup
---------
1. Verify camera service:

   .. code-block:: bash

       systemctl status camera-service

2. Check camera nodes:

   .. code-block:: bash

       ls /dev/video*

Configuration
-------------
Camera config location:
/etc/camera/camera-config.cfg

Common settings:

.. code-block:: none

    [camera]
    orientation=0
    video_pixel_format=UYVY
    preview_pixel_format=YUV420

Troubleshooting
---------------
- Permission issues
- Missing codecs
- Format compatibility
- Preview/capture issues