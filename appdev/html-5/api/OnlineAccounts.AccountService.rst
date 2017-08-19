OnlineAccounts.AccountService
=============================

.. raw:: html

   <p>

AccountService represents an instance of a service in an Online
Accounts.

.. raw:: html

   </p>

.. raw:: html

   <p>

The AcountService object is not directly constructible but returned as a
result of OnlineAccounts api calls.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

String accountId( )

.. raw:: html

   <p>

Returns the account's numeric ID; note that all AccountService objects
which work on the same online account will have the same ID.

.. raw:: html

   </p>

Returns: <String>

.. raw:: html

   <p>

Value for the accountId

.. raw:: html

   </p>

authenticate( callback )

.. raw:: html

   <p>

Perform the authentication on this account.

.. raw:: html

   </p>

.. raw:: html

   <p>

The callback will be called with the authentication result object which
will have these properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

'error': error message if the authentication was a failure

.. raw:: html

   </li>

.. raw:: html

   <li>

'authenticated': boolean value that identifies if the operation was a
success

.. raw:: html

   </li>

.. raw:: html

   <li>

'data': Object with the data returned by the authentication process. An
'AccessToken' property can be usually found (when it applies) with the
OAuth access token.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the callback parameter is not set, the current "local" value is
retrieved.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(Object)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

destroy( )

.. raw:: html

   <p>

Destroys the remote object. This proxy object is not valid anymore.

.. raw:: html

   </p>

String displayName( )

.. raw:: html

   <p>

Returns The account's display name (usually the user's login or ID).
Note that all AccountService objects which work on the same online
account will share the same display name.

.. raw:: html

   </p>

Returns: <String>

.. raw:: html

   <p>

Value of the displayName

.. raw:: html

   </p>

Boolean enabled( )

.. raw:: html

   <p>

This read-only property returns whether the AccountService is enabled.
An application shouldn't use an AccountService which is disabled

.. raw:: html

   </p>

Returns: <Boolean>

.. raw:: html

   <p>

Value for the enabled flag

.. raw:: html

   </p>

Object provider( )

.. raw:: html

   <p>

Returns an object representing the provider which provides the account.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned object will have at least these properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

'id' is the unique identifier for this provider

.. raw:: html

   </li>

.. raw:: html

   <li>

'displayName'

.. raw:: html

   </li>

.. raw:: html

   <li>

'iconName'

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Object>

.. raw:: html

   <p>

Value object for the provider

.. raw:: html

   </p>

Object service( )

.. raw:: html

   <p>

Returns an object representing the service which this AccountService
instantiates

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned object will have at least these properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

'id' is the unique identifier for this service

.. raw:: html

   </li>

.. raw:: html

   <li>

'displayName'

.. raw:: html

   </li>

.. raw:: html

   <li>

'iconName'

.. raw:: html

   </li>

.. raw:: html

   <li>

'serviceTypeId' identifies the provided service type

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Object>

.. raw:: html

   <p>

Value object for the service

.. raw:: html

   </p>
