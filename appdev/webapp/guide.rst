Guide
=====

How the webapp fits into the shell
----------------------------------

A web app displays in a webview inside a webapp-container that runs as an Ubuntu app in the Ubuntu/Unity shell.

Taking a closer look:

    At the innermost level, there is a website that the developer identifies by URL.
    The website is rendered and runs in an Oxide webview. Oxide is a Blink/Chrome webview that is customized for Ubuntu.
    The Oxide webview runs and displays in the webapp-container. The webapp-container is the executable app runtime that is integrated with the Ubuntu/unity shell.

Launching
---------

You can launch a webapp from the terminal with:::

  webapp-container URL

For example:::

  webapp-container http://www.ubuntu.com

This simple form works, but almost every webapp also uses other features, such as URL containment with URL patterns as described below.

User interface
--------------

A webapp generally fills the entire app screen space, without the need of the UI controls generally found on standard browsers.

In some cases some navigation controls are appropriate, such as Back and Forward buttons, or a URL address bar. These are added as command line arguments:

 - ``--enable-back-forward`` Enable the display of the back and forward buttons in the toolbar (at the bottom of the webapp window)
 - ``--enable-addressbar`` Enable the display of the address bar (at the bottom of the webapp window)

URL patterns
------------

Webapp authors often want to contain browsing to the target website. That is, the developer wants to control the URLs that can be opened in the webapp (all other URLs are opened in the browser). This is done with URL patterns as part of the webapp command line.

However, many web apps use pages that are hosted over multiple sites or that use external resources and pages.

However, both containment and access to specified external URLs are implemented with URL patterns provided as arguments at launch time. Let’s take a closer look.

Uncontained by default
----------------------

By default, there is no URL containment. Suppose you launch a webapp without any patters and only a starting URL like this:::

  webapp-container http://www.ubuntu.com

The user can navigate to any URL without limitation. For example, if they click the Developer button at the top, they navigate to developer.ubuntu.com, and it displays in the webapp.

Tip: You can see the URL of the current page by enabling the address bar with ``--enable-addressbar``.

Simple containment to the site
------------------------------

One often wants to contain users to the site itself. That is, if the website is www.ubuntu.com, it may be useful to contain webapp users only to subpages of www.ubuntu.com. This is done by adding a wildcard URL pattern to the launch command, as follows:::

  webapp-container --webappUrlPatterns=http://www.ubuntu.com/* http://www.ubuntu.com

``--webappUrlPatterns=`` indicates a pattern is next
    http://www.ubuntu.com/* is the pattern
    The asterisk is a wildcard that matches any valid sequence of trailing (right-most) characters in a URL

With this launch command and URL pattern, the user can navigate to and open in the webapp any URL that starts with http://www.ubuntu.com/. For example, they can click on the Phone button (http://www.ubuntu.com/phone) in the banner and it opens in the webapp, or the Tablet button (http://www.ubuntu.com/tablet). But, clicking Developer opens the corresponding URL in the browser.

Tip: Make sure to fully specify the subdomain in your starting URL, that is, use http://www.ubuntu.com instead of www.ubuntu.com. Not specifying the subdomain would create an ambiguous URL and thus introduces security concerns.


More complex wildcard patterns
------------------------------

You might want to limit access to only some subpages of your site from within the webapp. This is easy with wildcard patterns. (Links to other subpages are opened in the browser.) For example, the following allows access to www.ubuntu.com/desktop/features and www.ubuntu.com/phone/features while not allowing access to www.ubuntu.com/desktop or www.ubuntu.com/phone::

  webapp-container --webappUrlPatterns=http://www.ubuntu.com/*/features http://www.ubuntu.com


Multiple patterns
-----------------

You can use multiple patterns by separating them with a comma. For example, the following allows access only to www.ubuntu.com/desktop/features and www.ubuntu.com/phone/features:::

  webapp-container --webappUrlPatterns=http://www.ubuntu.com/desktop/features,http://www.ubuntu.com/phone/features  http://www.ubuntu.com

Tip: Multiple patterns are often necessary to achieve the intended containment behavior.


Adding a specific subdomain
---------------------------

Many URLs have one or more subdomains. (For example, in the following, "developer" is the subdomain: developer.ubuntu.com.) You can allow access to a single subdomain (and all of its subpages) with a pattern like this:::

  --webappUrlPatterns=http://developer.ubuntu.com/*

However, one usually wants the user to be able to navigate back to the starting URL (and its subpages). So, if the starting URL is http://www.ubuntu.com, a second pattern is needed:::

  --webappUrlPatterns=http://developer.ubuntu.com/*,http://www.ubuntu.com/*

Putting these together, here’s an example that starts on http://www.ubuntu.com and allows navigation to http://developer.ubuntu.com and subpages and back to http://www.ubuntu.com and subpages:::

  webapp-container --webappUrlPatterns=http://developer.ubuntu.com/*,http://www.ubuntu.com/*  http://www.ubuntu.com

Adding subdomains with a wildcard
---------------------------------

Some URLs have multiple subdomains. For example, www.ubuntu.com has design.ubuntu.com, developer.ubuntu.com and more. You can add access to all subdomains with a wildcard in the subdomain position:::

  webapp-container --webappUrlPatterns=http://*.ubuntu.com/*  http://www.ubuntu.com

Note: An asterisk in the subdomain position matches any valid single subdomain. This single pattern is sufficient to enable browsing to any subdomain and subpages, including back to the starting URL (http://www.ubuntu.com) and its subpages.

Adding https
------------

Sometimes a site uses https for some of its URLs. Here is an example that allows https and https as access within the webapp to www.launchpad.net (and all subpages due to the wildcard):::

  webapp-container --webappUrlPatterns=https?://http://www.launchpad.net/* http://www.launchpad.net

Note: the question mark in https?. This means the preceding character (the ‘s’) is optional. If https is always required, omit the question mark.

Command line arguments
----------------------

The webapp-container accepts many options to fine tune how it hosts various web applications.

See all help with:::

  webapp-container --help

Note: Only the following options apply to converged Ubuntu.::

    --fullscreen Display full screen
    --inspector[=PORT] Run a remote inspector on a specified port or 9221 as the default port
    --app-id=APP_ID Run the application with a specific APP_ID
    --name=NAME Display name of the webapp, shown in the splash screen
    --icon=PATH Icon to be shown in the splash screen. PATH can be an absolute or path relative to CWD
    --webappUrlPatterns=URL_PATTERNS List of comma-separated url patterns (wildcard based) that the webapp is allowed to navigate to
    --accountProvider=PROVIDER_NAME Online account provider for the application if the application is to reuse a local account.
    --accountSwitcher Enable switching between different Online Accounts identities
    --store-session-cookies Store session cookies on disk
    --enable-media-hub-audio Enable media-hub for audio playback
    --user-agent-string=USER_AGENT Overrides the default User Agent with the provided one.

Chrome options (if none specified, no chrome is shown by default):::

    --enable-back-forward Enable the display of the back and forward buttons (implies --enable-addressbar)
    --enable-addressbar Enable the display of a minimal chrome (favicon and title)

Note: The other available options are specific to desktop webapps. It is recommended to not use them anymore.

User-Agent string override
--------------------------

Some websites check specific portions of the web engine identity, aka the User-Agent string, to adjust their presentation or enable certain features. While not a recommended practice, it is sometimes necessary to change the default string sent by the webapp container.

To change the string from the command line, use the following option:::

  --user-agent-string='<string>' Replaces the default user-agent string by the string specified as a parameter

Browser data containment
------------------------

The webapp experience is contained and isolated from the browser data point of view. That is webapps do not access data from any other installed browser, such as history, cookies and so on. Other browser on the system do not access the webapp’s data.

Storage
-------

W3C allows apps to use local storage, and Oxide/Webapp-container supports the main standards here: LocalStorage, IndexedDB, WebSQL.
