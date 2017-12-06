Screen Casting your UT device to your computer
==============================================


Ubuntu Touch comes with a command line utility called ``mirscreencast`` which dumps screen frames to a file.
The idea here is to stream UT display to a listening computer over the network or directy trough adb so that we can either watch it live or record it to a file.

Using adb:
----------

You can catch output directly from ``adb exec-out`` command and forward it to mplayer::

  adb exec-out timeout 120 mirscreencast -m /run/mir_socket --stdout --cap-interval 2 -s 384 640 | mplayer -demuxer rawvideo -rawvideo w=384:h=640:format=rgba -
  
NB: ``timeout`` here is used in order to kill process properly on device ( here 120 seconds ). Otherwise process still continuing even if killed on computer.
You can reduce or increase frame per second with``--cap-interval`` (1 = 60fps, 2=30fps, ...)  and size of frames ``384 640`` means width=384 height=640

Via network:
------------
  
On computer side:
^^^^^^^^^^^^^^^^

For real time casting:


  Prepare your computer to listen to a tcp port(here 1234) and forward raw stream to a video player (here mplayer) with a frame size of 384x640::

    nc -l -p 1234 | gzip -dc | mplayer -demuxer rawvideo -rawvideo w=384:h=640:format=rgba -

For stream recording:

  Prepare your computer to listen to a tcp port(here 1234), ungzip and forward raw stream to a video encoder (here mencoder)::

    nc -l -p 1234 | gzip -dc | mencoder -demuxer rawvideo -rawvideo fps=60:w=384:h=640:format=rgba -ovc x264 -o out.avi -

On Ubuntu Touch:
^^^^^^^^^^^^^^^^

Forward and gzip stream with 60fps (--cap-interval 1) and frame size of 384x640 to computer 10.42.0.209 on port 1234 ::

  mirscreencast -m /run/mir_socket --stdout --cap-interval 1 -s 384 640 | gzip -c | nc 10.42.0.209 1234


Example script:
^^^^^^^^^^^^^^^

This script allows you to screen cast remote UT device to your local PC (must have ssh access to UT and mplayer installed on PC), run it on your computer::

      #!/bin/bash
      SCREEN_WIDTH=384
      SCREEN_HEIGHT=640
      PORT=1234
      FORMAT=rgba


      if [[ $# -eq 0 ]] ; then
          echo 'usage: ./mircast.sh UT_IP_ADDRESS , e.g: ./mircast.sh 192.168.1.68'
          exit 1
      fi

      IP=$1

      LOCAL_COMMAND='nc -l -p $PORT | gzip -dc | mplayer -demuxer rawvideo -rawvideo w=$SCREEN_WIDTH:h=$SCREEN_HEIGHT:format=$FORMAT -'
      REMOTE_COMMAND="mirscreencast -m /run/mir_socket --stdout --cap-interval 1 -s $SCREEN_WIDTH $SCREEN_HEIGHT | gzip -c | nc \$SSH_CLIENT $PORT"
      ssh -f phablet@$IP "$REMOTE_COMMAND"
      eval $LOCAL_COMMAND
    
    
References
----------

* initial source: https://wiki.ubuntu.com/Touch/ScreenRecording
* demo: https://www.youtube.com/watch?v=HYm4RUwwo5Q
