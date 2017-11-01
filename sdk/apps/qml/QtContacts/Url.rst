The Url element contains a url associated with a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`subType </sdk/apps/qml/QtContacts/Url#subType-prop>`__**** :
   enumeration
-  ****`url </sdk/apps/qml/QtContacts/Url#url-prop>`__**** : string

Detailed Description
--------------------

Url element contains the following field types:

-  Url.Url
-  Url.SubType

This element is part of the **QtContacts** module.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ subType : enumeration                                           |
+--------------------------------------------------------------------------+

This property holds the sub type of a QContactUrl.

-  Url.Unknown - indicating this url type is unknown (default).
-  Url.HomePage - indicating this url is a contact's home page.
-  Url.Favourite - indicating this url is one of the contact's favourite
   URLs (or bookmarks).

| 

+--------------------------------------------------------------------------+
|        \ url : string                                                    |
+--------------------------------------------------------------------------+

This property holds the value of the URL.

| 
