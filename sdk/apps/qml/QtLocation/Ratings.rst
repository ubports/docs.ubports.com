The Ratings type holds place rating information.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`average </sdk/apps/qml/QtLocation/Ratings#average-prop>`__**** :
   real
-  ****`count </sdk/apps/qml/QtLocation/Ratings#count-prop>`__**** : int
-  ****`maximum </sdk/apps/qml/QtLocation/Ratings#maximum-prop>`__**** :
   real
-  ****`ratings </sdk/apps/qml/QtLocation/Ratings#ratings-prop>`__**** :
   QPlaceRatings

Detailed Description
--------------------

Rating information is used to describe how *good* a place is conceived
to be. Typically this information is visualized as a number of stars.
The `average </sdk/apps/qml/QtLocation/Ratings#average-prop>`__ property
gives an aggregated ratings value out of a possible maximum as given by
the `maximum </sdk/apps/qml/QtLocation/Ratings#maximum-prop>`__
property.

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    Text {
        text: "This place is rated " + place.ratings.average + " out of " + place.ratings.maximum + " stars."
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ average : real                                                  |
+--------------------------------------------------------------------------+

This property holds the average of the individual ratings.

**See also**
`maximum </sdk/apps/qml/QtLocation/Ratings#maximum-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds the total number of individual user ratings used in
determining the overall ratings
`average </sdk/apps/qml/QtLocation/Ratings#average-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ maximum : real                                                  |
+--------------------------------------------------------------------------+

This property holds the maximum rating value.

| 

+--------------------------------------------------------------------------+
|        \ ratings : QPlaceRatings                                         |
+--------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

| 
