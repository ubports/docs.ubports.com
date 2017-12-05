Screen Casting your UT device to your computer
==============================================


Ubuntu Touch comes with a command line utility called ``mirscreencast`` which dumps screen frames to a file.
The idea here is to stream UT display to a listening computer over the network so that we can either watch it live or record it to a file.

On computer side:
-----------------

For real time casting:

  Prepare your computer to listen to a tcp port(here 1234) and forward stream to a video player (here mplayer)::

      nc -l -p 1234 | gzip -dc | mplayer -demuxer rawvideo -rawvideo w=384:h=640:format=rgba -

For stream recording:
  

  Prepare your computer to listen to a tcp port(here 1234) and forward raw stream to a video encoder (here mencoder)::

      nc -l -p 1234 | gzip -dc | mencoder -demuxer rawvideo -rawvideo fps=60:w=384:h=640:format=rgba -ovc x264 -o out.avi -

On Ubuntu Touch:
----------------

  forward and gzip stream to computer 10.42.0.209 on port 1234::

    mirscreencast -m /run/mir_socket --stdout --cap-interval 1 -s 384 640 | gzip -c | nc 10.42.0.209 1234



References
----------

* initial source: https://wiki.ubuntu.com/Touch/ScreenRecording
* demo: https://www.youtube.com/watch?v=HYm4RUwwo5Q
