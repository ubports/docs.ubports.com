Debug webapps
=============

Most web-devs will probably want do most of their coding and debugging in the usual browser environment. The Ubuntu Touch browser is compliant with modern web standards, and most webapps will just work without further changes.

For those (hopefully) rare cases where further debugging is needed, there are two ways to gain further information on the failure.

Watch the logs
--------------

If you are comfortable in a CLI environment, most Javascript errors will leave an entry in the app log file::

  .cache/upstart/application-click-[YOUR_APP_NAME.AUTHOR_NAME..].log

You can check the log file in the terminal or use the `LogViewer <https://open-store.io/app/logviewer.neothethird>`_ app.

.. note::

  Enable developer mode for debugging to keep logs until the next reboot. Without developer mode enabled, logs will get deleted after you close the app.

Debugging in the browser
------------------------

The default Ubuntu Touch browser is based on the Blink technology that is also used in Chrome/Chromium. By starting the browser in a special mode, you have access to the regular Chrome-style debugger.

On your phone, start the browser in inspector mode:::

 export QTWEBENGINE_REMOTE_DEBUGGING=0.0.0.0:9221
 morph-browser --desktop_file_hint=/usr/share/applications/morph-browser.desktop [web_site_url]

Now on your computer, launch Chrome/Chromium browser, and point address to ``http://YOUR_UT_IP_ADDRESS:9221``
