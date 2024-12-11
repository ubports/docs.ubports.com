Audio Configuration 
===================

Quick Reference
---------------
Essential configurations::

    # Edit /etc/pulse/touch.pa
    load-module module-droid-discover rate=48000 quirks=+unload_call_exit
    
    # Load glue module if available
    .ifexists module-droid-glue-24.so
    load-module module-droid-glue-24
    .endif

Common UCM paths::

    /usr/share/alsa/ucm2/[codename]/     # Device-specific UCM files
    /vendor/etc/mixer_paths.xml          # Android mixer paths

Understanding Audio Architecture
--------------------------------

Audio Stack Components
^^^^^^^^^^^^^^^^^^^^^^
The Ubuntu Touch audio stack consists of multiple layers:

1. **Hardware Layer**
   
   * ALSA kernel drivers
   * Android Audio HAL
   * Hardware codec drivers

2. **Middleware Layer**
   
   * PulseAudio sound server
   * Android AudioFlinger bridge
   * UCM (Use Case Manager)

3. **User Space**
   
   * PulseAudio clients
   * Android audio services
   * System sound services

Think of this stack as a chain where each component handles a specific part of audio processing:

* Hardware drivers capture/output raw audio
* HAL provides standard interface
* PulseAudio manages audio streams
* Applications play/record audio

Configuration Steps
-------------------

1. PulseAudio Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Create or modify /etc/pulse/touch.pa::

    ### Load Android audio support
    load-module module-droid-discover rate=48000 quirks=+unload_call_exit

    ### Optionally load glue module
    .ifexists module-droid-glue-24.so
    load-module module-droid-glue-24
    .endif

Understanding these settings:

* rate=48000: Standard sample rate for most devices
* quirks=+unload_call_exit: Helps with audio service cleanup
* module-droid-glue-24: Provides Android 12+ compatibility

2. UCM Configuration
^^^^^^^^^^^^^^^^^^^^
UCM (Use Case Manager) defines audio routes and controls.

Basic UCM structure::

    /usr/share/alsa/ucm2/[codename]/
    ├── [codename].conf          # Main config
    ├── HiFi.conf               # Audio paths
    └── VoiceCall.conf         # Call audio (if needed)

Example HiFi.conf::

    SectionDevice."Speaker" {
        Comment "Internal Speaker"
        
        EnableSequence [
            cset "name='Speaker Switch' on"
            cset "name='Speaker Volume' 20"
        ]
        
        DisableSequence [
            cset "name='Speaker Switch' off"
        ]
        
        Value {
            PlaybackPCM "hw:0,0"
            PlaybackMixerElem "Speaker"
        }
    }

Key configuration parts:

* SectionDevice: Defines an audio path
* EnableSequence: Commands to enable the path
* DisableSequence: Commands to disable
* Value: Defines PCM device and mixer

3. Mixer Path Configuration 
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Android mixer paths define the hardware controls::

    <!-- /vendor/etc/mixer_paths.xml -->
    <path name="speaker">
        <ctl name="Speaker Switch" value="1" />
        <ctl name="Speaker Volume" value="20" />
    </path>

These correspond to ALSA mixer controls and should match your UCM configuration.

4. Audio Policy
^^^^^^^^^^^^^^^
Configure audio routing priorities in /etc/audio_policy.conf::

    audio_hw_modules {
        primary {
            outputs {
                speaker {
                    sampling_rates 48000
                    channel_masks AUDIO_CHANNEL_OUT_STEREO
                    formats AUDIO_FORMAT_PCM_16_BIT
                    devices AUDIO_DEVICE_OUT_SPEAKER
                }
            }
            inputs {
                mic {
                    sampling_rates 48000
                    channel_masks AUDIO_CHANNEL_IN_MONO
                    formats AUDIO_FORMAT_PCM_16_BIT
                    devices AUDIO_DEVICE_IN_BUILTIN_MIC
                }
            }
        }
    }

This defines:

* Available audio devices
* Supported formats
* Channel configurations
* Sampling rates

Implementation Steps
--------------------

1. **Identify Audio Hardware**
   
   * Check kernel driver name
   * Identify codec type
   * Note available devices

2. **Create Basic Configuration**
   
   * Set up PulseAudio config
   * Create initial UCM files
   * Configure basic audio policy

3. **Configure Audio Routes**
   
   * Define speaker path
   * Set up microphone
   * Configure headphone jack
   * Add call audio if needed

4. **Test Configuration**
   
   * Verify device detection
   * Test basic playback
   * Check recording
   * Verify volume controls

For debugging and troubleshooting guidance, see :doc:`../hardware-debug/audio`.