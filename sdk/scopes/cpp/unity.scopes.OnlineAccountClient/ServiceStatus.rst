.. _sdk_unity_scopes_onlineaccountclient_servicestatus:
unity.scopes.OnlineAccountClient ServiceStatus
==============================================

A container for details about a service's status and authorization
parameters.
:ref:`More... <sdk_unity_scopes_onlineaccountclient_servicestatus#details>`

``#include <unity/scopes/OnlineAccountClient.h>``

        Public Attributes
-------------------------

        unsigned int 

:ref:`account\_id <sdk_unity_scopes_onlineaccountclient_servicestatus#a3fff11d6960ba38de9eab3be2028352a>`

 

| A unique ID of the online account parenting this service.

 

        bool 

:ref:`service\_enabled <sdk_unity_scopes_onlineaccountclient_servicestatus#af38877a3d603f348af2af6d411aef1e2>`

 

| True if this service is enabled.

 

        bool 

:ref:`service\_authenticated <sdk_unity_scopes_onlineaccountclient_servicestatus#ad9e794cbd45b76b73efdc8915685609a>`

 

| True if this service is authenticated.

 

        std::string 

:ref:`client\_id <sdk_unity_scopes_onlineaccountclient_servicestatus#a8bac7d6bcec29cc8d4c45309a6dce350>`

 

| "ConsumerKey" / "ClientId" OAuth (1 / 2) parameter.

 

        std::string 

:ref:`client\_secret <sdk_unity_scopes_onlineaccountclient_servicestatus#a3025d89ff5f55e267e95c17d9af89d83>`

 

| "ClientSecret" / "ConsumerSecret" OAuth (1 / 2) parameter.

 

        std::string 

:ref:`access\_token <sdk_unity_scopes_onlineaccountclient_servicestatus#a0f0f2471eaeb130f65cdbebd8c6cd40e>`

 

| "AccessToken" OAuth parameter.

 

        std::string 

:ref:`token\_secret <sdk_unity_scopes_onlineaccountclient_servicestatus#abfb75786e9d517da4dce71e65c3f5bec>`

 

| "TokenSecret" OAuth parameter.

 

        std::string 

:ref:`error <sdk_unity_scopes_onlineaccountclient_servicestatus#a73fac8ec582336993a476026d80c250b>`

 

| Error message (empty if no error occurred).

 

Detailed Description
--------------------
