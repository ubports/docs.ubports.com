HTML5 Tutorials - online accounts
=================================

Here we provide and discuss two example HTML5 apps that use the Ubuntu
App Platform JavaScript Online Accounts API:

-  **html-example-online-accounts** app: This app lets you browse all
   currently enabled Online Accounts and lets you drill down to see
   account details including authorization status and token.
-  **html-example-online-accounts-facebook-albums** app: This app uses
   the Facebook authorization token derived from Online Accounts to
   browse your Facebook photo albums.

The discussion here is focused primarily on Online Accounts API usage
from JavaScript. For help getting started writing Ubuntu HTML5 apps,
check out the `Online accounts developer
guide <../../platform/guides/online-accounts-developer-guide.md>`__.

Online Accounts overview
------------------------

Ubuntu has a service and a corresponding system settings utility for
Online Accounts. The user may provide login credentials for various
online accounts such as Google, Facebook and others through Online
Accounts settings. For such user-enabled Online Accounts, the service
logs in for the user and receives authorization tokens from the external
accounts. These tokens can be used to enhance the user experience in
Ubuntu and in your app. For example, after enabling the Facebook
account, searches in the Ubuntu Photos scope also return photos your
Facebook friends have posted. And, you can write an app that obtains the
Online Account authentication tokens from the Online Accounts API and
uses them.

Online Accounts API key points
------------------------------

Provider and Services
~~~~~~~~~~~~~~~~~~~~~

An Online Account is identified in the API by a Provider and a Service.

-  Provider: An object that represents a web service provider. For
   example, Facebook is a Provider. Google is another.
-  Service: A Provider can offer one or more Services. For example,
   Facebook has several services: ``facebook-contacts``,
   ``facebook-sharing``, and ``facebook-microblog``.

The API call used to obtain the current accounts allows you to obtain a
filtered set of accounts by specifying the Provider or Service. (This is
used in the example Facebook Albums app discussed below.)

Provider and Service files
~~~~~~~~~~~~~~~~~~~~~~~~~~

In order to be able to use Online Account's API and access accounts
data, it is important to make sure that an application properly declares
appropriate policy group in the application manifest and creates the
necessary ``.provider`` and ``.service`` files as described in the
following reference text: `Online accounts developer
guide <../../platform/guides/online-accounts-developer-guide.md>`__

Authorization data
~~~~~~~~~~~~~~~~~~

When you have an object representing a particular account, you can use
it to check the account authorization status and obtain the
authorization token.

Getting the source trees
------------------------

The app source trees for these two example apps are available as
subdirectories in the ubuntu-sdk-tutorials Bazaar branch on
launchpad.net. Get the branch as follows:

1. Open a terminal with ``Ctrl + Alt + T``.
2. Ensure the bzr package is installed with:
   ``$ sudo apt-get install bzr``

**Tip**: Tell bzr who you are with ``bzr whoami``.

3. Get the branch with: ``$ bzr branch lp:ubuntu-sdk-tutorials``

4. Move into the branch’s ``html5/ directory``:
   ``$ cd ubuntu-sdk-tutorials/html5``

The two apps are subdirectories named for the app:

-  ``html5-example-online-accounts/``
-  ``html5-example-online-accounts-facebook-albums/``

Run the apps
------------

Run both apps to familiarize yourself with them:

1. Ensure you have enabled some Online Accounts with **System Settings**
   > **Online Accounts**
2. Move into the appropriate app subdirectory:
   ``$ cd ubuntu-sdk-tutorials/html5-example-online-accounts`` or
   ``$ cd ubuntu-sdk-tutorials/html5-example-online-accounts-facebook-albums``
3. Launch the app, for example on the Desktop with
   ``ubuntu-html5-app-launcher --www=www``

App 1: Online Accounts browser
------------------------------

This app lets you browse and drill into currently available Online
Accounts.

-  The app’s home page provides optional input fields to limit the
   displayed accounts by filtering by Provider and Service.
-  There’s a **Show Accounts** button to list accounts.
-  You can click an account to show the **Account Details** page, which
   includes the authorization status and token.
-  When on **Account Details**, you can click to show the **Raw
   Details** page for the account, which is simply the account details
   displayed as JSON.
-  The app uses the “deep” navigation pattern, which means the HTML5
   consists of a Pagestack of Pages, so a toolbar with a **Back** button
   is available to remove the current Page from the top of the Pagestack
   and return to the previous Page.

Now, let’s take a closer look at the relevant API calls.

Getting the OnlineAccounts object
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Naturally, you need to get the Online Accounts JavaScript object.

This is done in the ``window.onload`` event handler (or equivalent):

::

    window.onload = function () {
       var UI = new UbuntuUI();
       UI.init();
    [...]
       var api = external.getUnityObject('1.0');
       var oa = api.OnlineAccounts;

Getting the list of providers for the current application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Through the .provider and .service files, an application defines the
list of Online Account providers and specific services from those
providers that it would require. Although this is a necessary step for
the application to use Online Account, this is not enough to get started
using API to access account information.

As an UbuntuTouch application, the user has to first grant the
application the right to access a given provider. If no account exists
for a given provider, the user should have the option to create one
before being able to use it.

Those important elements are taken care of by one specific Online
Account HTML5 API function:   var api = external.getUnityObject('1.0');
var oa = api.OnlineAccounts; oa.api.requestAccount(string
short\_application\_id, string provider\_id, function callback)

The API function requestAccount does the work described above: allows to
the user to grant access to a given provider and (if it applies) to
create a new account for this provider.

For the definition of "``short application id``" and "``provider_id``"
please refer to `Online accounts developer
guide <../../platform/guides/online-accounts-developer-guide.md>`__

Getting and displaying a list of enabled accounts
-------------------------------------------------

This is done by providing a FILTERS object and a CALLBACK function to
the oa.api.getAccounts(FILTERS, CALLBACK) function.

-  The ``FILTERS`` object has two keys: ‘provider’ and ‘service’. When
   these keys have values, the returned accounts are limited to those
   that match.
-  The ``CALLBACK`` runs and receives an object that is a list of the
   current accounts.

Let’s take a closer look at the ``CALLBACK``.

::

    oa.api.getAccounts(FILTERS, function(accounts) { [...] });

This defines an anonymous callback function that receives the list of
accounts, here as accounts.

**Tip**: The app then checks whether there are no accounts and, if so,
alerts the user through the app home page.

Populating the list of accounts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The app then populates an Ubuntu List with the accounts, where the
displayed text is extracted from the particular account, including its
displayName, Provider ID and Service ID, obtained with the API as
follows:

::

    var info =
       act.displayName() + ' '
       + JSON.stringify((act.provider()['id'])) + ' '
       + JSON.stringify(act.service()['id']);

This List is populated with the Ubuntu ``List.append()`` method. This
uses the above info string and also takes the name of a callback
function to be executed when the user clicks the list item. So the app
creates the mod object (a few lines above) to store the values of the
current account:

::

    var mod = {
       'name': act.displayName(),
       [...]
       'act': act
    }

The callback function is created and passed the mod object with:

::

    var dL = displayList(mod);

And the list is populated for each account with key account info and the
callback ``dL`` function.

Account Details page
~~~~~~~~~~~~~~~~~~~~

When the user clicks the account list item on the home page, the dL
callback displays the **Account Details** page. This page consists of
four Ubuntu lists:

-  The first displays a single item, the account’s displayName, obtained
   with ``ACCOUNT.displayname()``
-  The second iterates through the Provider object keys and adds a list
   item with the key and its value
-  The third does the same, but for the Service object
-  The fourth does the same for the the Authorization object, and here
   the authorization token and other data is obtained through another
   API call, discussed next

Get authentication data for an account
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To obtain current authentication data for an account, use the following.

::

    ACCOUNT.authenticate(CALLBACK)

Where ``ACCOUNT`` is one of the items in the array returned by
``oa.api.getAccounts(...)``.

The callback function receives an object with the authorization data. In
this case, we name it results:

**Note**: in the following ``mod[‘act’]`` is the ``ACCOUNT`` object.

::

    mod['act'].authenticate(function (results) {
    // CODE TO HANDLE THE RESULTS
       }
    );

The results object is parsed and added to the fourth list on the
**Account Details** page.

App2: Facebook Albums browser
-----------------------------

As noted, this app lets you browse and drill into your Facebook photo
albums, displaying the photos for each.

-  The app home page has a **Get Albums** button that displays a list of
   your Facebook albums
-  You can click an album list item to display an **Album** page that
   displays photos in the album using the Ubuntu Shapes widget
-  You can click a photo shape on the **Album** page to display the
   **Photo** page that displays the photo in larger format
-  The app uses the “deep” navigation pattern, which means the HTML5
   consists of a Pagestack of Pages, so a toolbar with a **Back** button
   is available to remove the current Page from the top of the Pagestack
   and return to the previous Page.

Getting the OnlineAccounts object
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This app also obtains the OnlineAccounts object in the same way as the
previous app:

::

    window.onload = function () {
    [...]
       var api = external.getUnityObject('1.0');
       var oa = api.OnlineAccounts;

Getting the list of enabled accounts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Then, the list of accounts is obtained. However in this case a filter
object is provided that ensure only Facebook accounts are returned.

::

    var filters = {'provider': 'facebook', 'service': ''};
    oa.api.getAccounts(filters, function(accounts){
    [...]
    }

As you can see, the getAccounts method is passed an anonymous function
as the callback, and this receives the accounts array.

Authenticating
~~~~~~~~~~~~~~

Next, the first account in accounts has its authenticate method called
and a callback is provided. All Facebook accounts use the same
authentication token, so it is sufficient to use the first Facebook
account without checking the Service type.

::

    accounts[0].authenticate(authcallback);

The authcallback function receives the authentication data, here named
res, and the authentication token is obtained from it:

::

    function authcallback(res){
       token = res['data']['AccessToken'];
    [...]
    }

Getting albums and photos from the Facebook Graph API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now that we have covered the Ubuntu Online Accounts API usage, let’s
only touch the highest points on the rest of the code.

The app uses the token to get a list of the user’s Facebook albums
through the Facebook Graph API with this function:

::

    getFacebookAlbums(token, function(albums) {
    [...]
    }

getFacebookAlbums is passed an anonymous that receives the list of
Facebook albums as albums.

The albums are iterated through and the home page GUI is constructed. It
consists of an Ubuntu List, where the text is the album name and album
id. Each listitem has a click callback that on execution obtains the
photos in the album from Facebook and displays the Album page populated
with photos as Ubuntu Shape widgets, each of which has a click function
to display the **Photo** page with the right photo.

Key points
----------

-  Online Accounts keeps track of user enabled web accounts, including
   authorization status and tokens
-  The Online Accounts JavaScript API lets your HTML5 app obtain this
   information
-  You can get a list of Accounts identified by Provider and Service
-  You can get authorization data for each account for the current user
-  You can use the authorization data to interact with the external web
   site with their API and build rich apps that include personal content
   from protected external sources
