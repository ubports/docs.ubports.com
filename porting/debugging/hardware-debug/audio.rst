Audio Debugging
===============

Audio Stack
-----------
Components::

    ALSA -> PulseAudio -> Android HAL
    UCM -> Audio Policy -> Audio HAL

Debug Commands
--------------
Hardware detection::

    aplay -l                # List devices
    pacmd list-sinks        # PulseAudio sinks
    tinymix                 # Mixer controls

Routing tests::

    speaker-test -D hw:0,0  # Direct ALSA
    paplay test.wav         # PulseAudio
    arecord -f cd           # Recording

Common Issues
-------------
No audio output::

    # Check HAL
    systemctl status android-audiosystem
    logcat -s audio_hw_hal
    
    # Verify routing
    pacmd list-cards
    amixer -c 0 contents

Distorted sound::

    # Check levels
    alsamixer
    pacmd list-sink-inputs
    
    # Test paths
    alsaucm -c $CARD test Playback
    
UCM Configuration
-----------------
Debug methods::

    # Test config
    alsaucm -c $CARD dump
    amixer -c 0 contents
    
    # Verify paths
    cat /usr/share/alsa/ucm2/*/*.conf