Debug web application
=====================

Developers of a web application will probably do most of their coding
and debugging in the usual desktop browser environment. Because UBports'
browser has excellent compliance with modern web standards, such code
will most often operate on the UBports browser without further changes.

For those (hopefully) rare cases where further debugging is needed,
there are two ways to gain further information on the failure. 

Watch the logs
--------------

If you are comfortable in a CLI environment, most Javascript errors will leave an entry in this file::

  .cache/upstart/application-legacy-webbrowser-app-.log 



Debugging in the browser
------------------------


The native UBports web browser, known as ``webbrowser-app``, is based on Google's Blink technology, which also powers their Chrome/Chromium browsers.
By starting your phone's browser in a special mode, you have access to the regular Chrome-style debugger.

On your phone, start the browser in inspector mode:::

 ubuntu-app-launch webbrowser-app --inspector 

Now on your computer, launch Chrome/Chromium browser, and point address to ``http://YOUR_UT_IP_ADDRESS:9221``
