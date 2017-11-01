A container for details about a service's status and authorization
parameters.
`More... </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#details>`__

``#include <unity/scopes/OnlineAccountClient.h>``

        Public Attributes
-------------------------

        unsigned int 

`account\_id </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#a3fff11d6960ba38de9eab3be2028352a>`__

 

| A unique ID of the online account parenting this service.

 

        bool 

`service\_enabled </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#af38877a3d603f348af2af6d411aef1e2>`__

 

| True if this service is enabled.

 

        bool 

`service\_authenticated </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#ad9e794cbd45b76b73efdc8915685609a>`__

 

| True if this service is authenticated.

 

        std::string 

`client\_id </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#a8bac7d6bcec29cc8d4c45309a6dce350>`__

 

| "ConsumerKey" / "ClientId" OAuth (1 / 2) parameter.

 

        std::string 

`client\_secret </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#a3025d89ff5f55e267e95c17d9af89d83>`__

 

| "ClientSecret" / "ConsumerSecret" OAuth (1 / 2) parameter.

 

        std::string 

`access\_token </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#a0f0f2471eaeb130f65cdbebd8c6cd40e>`__

 

| "AccessToken" OAuth parameter.

 

        std::string 

`token\_secret </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#abfb75786e9d517da4dce71e65c3f5bec>`__

 

| "TokenSecret" OAuth parameter.

 

        std::string 

`error </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/ServiceStatus#a73fac8ec582336993a476026d80c250b>`__

 

| Error message (empty if no error occurred).

 

Detailed Description
--------------------
