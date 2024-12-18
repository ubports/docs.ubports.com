Audio Configuration
===================

Quick Reference
---------------
Audio in Ubuntu Touch is automatically configured through the Android audio HAL. Direct modification of PulseAudio configuration files is not recommended.

Understanding Audio Architecture
--------------------------------

Audio Stack Components
^^^^^^^^^^^^^^^^^^^^^^
The Ubuntu Touch audio stack consists of:

1. **Android Layer**

   * Audio HAL (Hardware Abstraction Layer)
   * Hardware drivers and codecs
   * Android audio policy

2. **Integration Layer**

   * PulseAudio droid modules
   * Automatic HAL discovery
   * Hardware access abstraction

3. **User Space**

   * PulseAudio sound server
   * Media framework
   * System audio services

Audio Configuration
-------------------
Ubuntu Touch automatically configures audio through module-droid-discover, which:

* Detects available audio hardware
* Loads appropriate droid modules
* Configures necessary parameters
* Handles Android audio integration

.. note::
    While /etc/pulse/touch.pa contains the audio configuration, it should generally not be modified directly. Future Ubuntu Touch updates will provide proper ways to specify additional parameters if needed.

Implementation Steps
--------------------

1. **Verify Audio Hardware**
   
   * Check Android audio HAL version
   * Verify driver functionality
   * Confirm audio policy configuration

2. **Android Audio Policy**
   
   The Android audio policy configuration in /vendor/etc/audio_policy_configuration.xml defines:

   * Available audio devices
   * Supported formats and rates
   * Audio routing paths
   * Default configurations

3. **Test Integration**
   
   * Verify device detection
   * Test basic playback
   * Check recording capabilities

For debugging and troubleshooting guidance, see :doc:`../hardware-debug/audio`.