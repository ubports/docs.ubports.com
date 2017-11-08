.. _sdk_onlineaccounts_accountservice:

OnlineAccounts AccountService
=============================


AccountService represents an instance of a service in an Online Accounts.

The AcountService object is not directly constructible but returned as a result of OnlineAccounts api calls.

-  Methods

String **accountId**\ ()
Returns the account's numeric ID; note that all AccountService objects which work on the same online account will have the same ID.

**Returns:** <String>
Value for the accountId

**authenticate**\ (``callback``)
Perform the authentication on this account.

The callback will be called with the authentication result object which will have these properties:

-  'error': error message if the authentication was a failure
-  'authenticated': boolean value that identifies if the operation was a success
-  'data': Object with the data returned by the authentication process. An 'AccessToken' property can be usually found (when it applies) with the OAuth access token.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(Object)>**

**destroy**\ ()
Destroys the remote object. This proxy object is not valid anymore.

String **displayName**\ ()
Returns The account's display name (usually the user's login or ID). Note that all AccountService objects which work on the same online account will share the same display name.

**Returns:** <String>
Value of the displayName

Boolean **enabled**\ ()
This read-only property returns whether the AccountService is enabled. An application shouldn't use an AccountService which is disabled

**Returns:** <Boolean>
Value for the enabled flag

Object **provider**\ ()
Returns an object representing the provider which provides the account.

The returned object will have at least these properties:

-  'id' is the unique identifier for this provider
-  'displayName'
-  'iconName'

**Returns:** <Object>
Value object for the provider

Object **service**\ ()
Returns an object representing the service which this AccountService instantiates

The returned object will have at least these properties:

-  'id' is the unique identifier for this service
-  'displayName'
-  'iconName'
-  'serviceTypeId' identifies the provided service type

**Returns:** <Object>
Value object for the service

