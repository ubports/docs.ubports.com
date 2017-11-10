.. _sdk_qtlocation_ratings:

QtLocation Ratings
==================

The Ratings type holds place rating information.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`average <sdk_qtlocation_ratings_average>` : real
-  :ref:`count <sdk_qtlocation_ratings_count>` : int
-  :ref:`maximum <sdk_qtlocation_ratings_maximum>` : real
-  :ref:`ratings <sdk_qtlocation_ratings_ratings>` : QPlaceRatings

Detailed Description
--------------------

Rating information is used to describe how *good* a place is conceived to be. Typically this information is visualized as a number of stars. The :ref:`average <sdk_qtlocation_ratings_average>` property gives an aggregated ratings value out of a possible maximum as given by the :ref:`maximum <sdk_qtlocation_ratings_maximum>` property.

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    Text {
        text: "This place is rated " + place.ratings.average + " out of " + place.ratings.maximum + " stars."
    }

Property Documentation
----------------------

.. _sdk_qtlocation_ratings_average:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| average : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the average of the individual ratings.

**See also** :ref:`maximum <sdk_qtlocation_ratings_maximum>`.

.. _sdk_qtlocation_ratings_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the total number of individual user ratings used in determining the overall ratings :ref:`average <sdk_qtlocation_ratings_average>`.

.. _sdk_qtlocation_ratings_maximum:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximum : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum rating value.

.. _sdk_qtlocation_ratings_ratings:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ratings : QPlaceRatings                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

