.. _sdk_scopejs_onlineaccountclient:
ScopeJS OnlineAccountClient
===========================


A simple interface for integrating online accounts access and monitoring
into scopes.

-  Methods

Array of OnlineAccountClientServiceStatus
**``get_service_statuses``**\ ( ``  `` )
Get statuses for all services matching the name, type and provider
specified on construction

**Returns:** <Array of OnlineAccountClientServiceStatus>
list of service statuses

**``refresh_service_statuses``**\ ( ``  `` )
Refresh all service statuses WARNING: If a service update callback is
set, this method will invoke that callback for each service monitored.
Therefore, DO NOT call this method from within your callback function!

**``register_account_login_item``**\ (
``result, query, login_passed_action, login_failed_action `` )
Register a result item that requires the user to be logged in.

**Parameters:**

-  :ref:``result`` **<`Result <sdk_scopejs_result>`>**

   The result item that needs account access

-  ``query`` **<CannedQuery>**

   The scope's current query

-  ``login_passed_action`` **<PostLoginAction>**

   The action to take upon successful login

-  ``login_failed_action`` **<PostLoginAction>**

   The action to take upon unsuccessful login

**``register_account_login_item``**\ (
``widget, login_passed_action, login_failed_action `` )
Refresh all service statuses

**Parameters:**

-  :ref:``widget`` **<`PreviewWidget <sdk_scopejs_previewwidget>`>**

   The widget item that needs account access

-  ``login_passed_action`` **<PostLoginAction>**

   The action to take upon successful login

-  ``login_failed_action`` **<PostLoginAction>**

   The action to take upon unsuccessful login

**``set_service_update_callback``**\ ( ``callback `` )
Set the callback function to be invoked when a service status changes

**Parameters:**

-  ``callback`` **<Function(OnlineAccountServiceStatus)>**

