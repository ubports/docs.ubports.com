.. _sdk_onlineaccounts_onlineaccounts:

OnlineAccounts OnlineAccounts
=============================


The OnlineAccounts object is the entry point to online accounts service access.

-  Methods

**api.getAccounts**\ (``filters, callback``)
Gets the configured accounts satisfying the given filters.

**Parameters:**

- ``filters`` **<Object>**

   A dictionary of parameters to filter the result. The filtering keys are:

   -  applicationId: the ID of a application (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)
   -  provider: the ID of a provider (see /usr/share/accounts/providers/ or ~/.local/share/accounts/providers/ for a list of the available providers)
   -  service: the ID of a service (see /usr/share/accounts/services/ or ~/.local/share/accounts/services/ for a list of the available services)

- ``callback`` **<Function(List of AccountService objects)>**

   Callback that receives the result or null

.. code:: html

              var api = external.getUnityObject(1.0);
                              var oa = api.OnlineAccounts;

                              oa.api.getAccounts({'provider': 'facebook'}, function(result) {
                                for (var i = 0; i < result.length; ++i) {
                                  console.log("name: " + result[i].displayName()
                                              + ', id: ' + result[i].accountId()
                                              + ', providerName: ' + result[i].provider().displayName
                                              + ', enabled: ' + (result[i].enabled() ? "true" : "false")
                                              );
                                }               
                              });

**api.getProviders**\ (``filters, callback``)
Gets list of available providers.

**Parameters:**

- ``filters`` **<Object>**

   A dictionary of parameters to filter the result. The filtering keys are:

   -  applicationId: the ID of a application (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)

- ``callback`` **<Function(List of AccountService objects)>**

   Callback that receives the result or null. The result is a dictionary with the following keys: - displayName: the display name for the corresponding provider - providerId: the provider id

.. code:: html

              var api = external.getUnityObject(1.0);
                              var oa = api.OnlineAccounts;

                              oa.api.getProviders({}, function(result) {
                                for (var i = 0; i < result.length; ++i) {
                                  console.log("displayName: " + result[i].displayName
                                              + ', providerId: ' + result[i].providerId);
                                }
                              });

**api.requestAccount**\ (``applicationId, providerId, callback``)
Requests access to an account.

Applications must invoke this method in order to obtain access to an account. The user will be prompted to grant access to either an existing account, to create a new one or to decline the request.

**Parameters:**

- ``applicationId`` **<String>**

   The ID of the application requesting the account (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)

- ``providerId`` **<String>**

   The ID of the provider of the desired account (see /usr/share/accounts/providers/ or ~/.local/share/accounts/providers/ for a list of the available providers)

- ``callback`` **<Function()>**

   Callback which will be invoked after the access request has been decided (either with the access to an account being granted, or with a refusal).

.. code:: html

              var api = external.getUnityObject(1.0);
                              var oa = api.OnlineAccounts;

                              var appId = 'com.ubuntu.developer.me.MyPackage_MyApp';
                              oa.api.requestAccount(appId,
                                                    'facebook',
                                                    function() {
                                oa.api.getAccounts({ 'application': appId }, function(result) {
                                  for (var i = 0; i < result.length; ++i) {
                                    console.log("name: " + result[i].displayName()
                                                + ', id: ' + result[i].accountId()
                                                + ', providerName: ' + result[i].provider().displayName
                                                + ', enabled: ' + (result[i].enabled() ? "true" : "false")
                                                );
                                  }
                                });
                              });

