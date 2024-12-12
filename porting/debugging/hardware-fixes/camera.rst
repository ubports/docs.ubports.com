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

Troubleshooting
---------------

- Permission issues
- Missing codecs
- Format compatibility
- Preview/capture issues