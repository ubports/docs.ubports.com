The Address element contains an address of a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`country </sdk/apps/qml/QtContacts/Address#country-prop>`__**** :
   string
-  ****`locality </sdk/apps/qml/QtContacts/Address#locality-prop>`__****
   : string
-  ****`postOfficeBox </sdk/apps/qml/QtContacts/Address#postOfficeBox-prop>`__****
   : string
-  ****`postcode </sdk/apps/qml/QtContacts/Address#postcode-prop>`__****
   : string
-  ****`region </sdk/apps/qml/QtContacts/Address#region-prop>`__**** :
   string
-  ****`street </sdk/apps/qml/QtContacts/Address#street-prop>`__**** :
   string
-  ****`subTypes </sdk/apps/qml/QtContacts/Address#subTypes-prop>`__****
   : list<variant>

Detailed Description
--------------------

The fields in the Address element are based on the segments of the ADR
property of a Versit vCard file.

Address element contains the following field types:

-  Address.Street
-  Address.Locality
-  Address.Region
-  Address.PostCode
-  Address.Country
-  Address.SubTypes
-  Address.PostOfficeBox

Versit :sup:`®` is a trademark of the Internet Mail Consortium. This
element is part of the **QtContacts** module.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ country : string                                                |
+--------------------------------------------------------------------------+

This property holds the name of the country of the address.

| 

+--------------------------------------------------------------------------+
|        \ locality : string                                               |
+--------------------------------------------------------------------------+

This property holds the name of the city, town or suburb of the address.

| 

+--------------------------------------------------------------------------+
|        \ postOfficeBox : string                                          |
+--------------------------------------------------------------------------+

This property holds the post office box identifier of the mailing
address.

| 

+--------------------------------------------------------------------------+
|        \ postcode : string                                               |
+--------------------------------------------------------------------------+

This property holds the postal code for the address.

| 

+--------------------------------------------------------------------------+
|        \ region : string                                                 |
+--------------------------------------------------------------------------+

This property holds the name or identifier of the state, province or
region of the address.

| 

+--------------------------------------------------------------------------+
|        \ street : string                                                 |
+--------------------------------------------------------------------------+

This property holds the street number and street name of the address.

| 

+--------------------------------------------------------------------------+
|        \ subTypes : list<variant>                                        |
+--------------------------------------------------------------------------+

This property stores the sub types of the address.

-  Address.Parcel - An address for parcel delivery.
-  Address.Postal - An address for postal delivery.
-  Address.Domestic - An address for domestic mail delivery.
-  Address.International - An address for international mail delivery.

| 
