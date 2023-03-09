Screencasting your Ubuntu touch device to your computer
=======================================================

The bundled ``mirscreencast`` command-line utility dumps screen-frames to a file.
Use it to stream your Ubuntu Touch display to a computer over the network (or directly through ADB) to watch it live or record it to a file.

Using ADB
---------

You can catch output directly from the ``adb exec-out`` command and forward it to MPlayer::

  adb exec-out timeout 120 mirscreencast -m /run/mir_socket --stdout --cap-interval 2 -s 384 640 | mplayer -demuxer rawvideo -rawvideo w=384:h=640:format=rgba -
  
``timeout`` above is used to kill the process in a proper manner on the Ubuntu Touch device (120 seconds here).
(Otherwise the process continues even if killed on the computer.)
Reduce or increase the number of frames per second with``--cap-interval`` (1 = 60fps, 2=30fps, …)
and the size of frames ``384 640`` means a width of 384 px and a height of 640 px. If red and blue
colors look reversed you can use format=bgra instead of format=rbga

Via the network
---------------
  
On the receiver
^^^^^^^^^^^^^^^

For real-time casting:


  Prepare your computer to listen to a TCP port (1234 here) and forward the raw stream to a video player (MPlayer here) with a framesize of 384x640::

    nc -l -p 1234 | gzip -dc | mplayer -demuxer rawvideo -rawvideo w=384:h=640:format=rgba -

For stream recording:

  Prepare your computer to listen to a TCP port (1234 here), unpack and forward the raw stream to a video encoder (MEncoder here)::

    nc -l -p 1234 | gzip -dc | mencoder -demuxer rawvideo -rawvideo fps=60:w=384:h=640:format=rgba -ovc x264 -o out.avi -

On the Ubuntu Touch device
^^^^^^^^^^^^^^^^^^^^^^^^^^

Forward and gzip the stream with 60 FPS (--cap-interval 1) and a framesize of 384x640 to the computer at 10.42.0.209 on port 1234::

  mirscreencast -m /run/mir_socket --stdout --cap-interval 1 -s 384 640 | gzip -c | nc 10.42.0.209 1234


Example script
^^^^^^^^^^^^^^

Run this on a computer (with MPlayer installed and SSH access to the Ubuntu Touch device) to screencast a remote Ubuntu Touch device to it.::

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
    
You can download it here: :download:`files/mircast.sh`

References
----------

* Initial source: https://wiki.ubuntu.com/Touch/ScreenRecording
* Demo: https://www.youtube.com/watch?v=HYm4RUwwo5Q
