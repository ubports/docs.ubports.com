Provides access to reviews of a Place.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`batchSize </sdk/apps/qml/QtLocation/ReviewModel#batchSize-prop>`__****
   : int
-  ****`place </sdk/apps/qml/QtLocation/ReviewModel#place-prop>`__**** :
   Place
-  ****`totalCount </sdk/apps/qml/QtLocation/ReviewModel#totalCount-prop>`__****
   : int

Detailed Description
--------------------

The `ReviewModel </sdk/apps/qml/QtLocation/ReviewModel/>`__ is a
read-only model used to fetch reviews about a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__. The model
incrementally fetches. The number of reviews which are fetched at a time
is specified by the
`batchSize </sdk/apps/qml/QtLocation/ReviewModel#batchSize-prop>`__
property. The total number of reviews available can be accessed via the
`totalCount </sdk/apps/qml/QtLocation/ReviewModel#totalCount-prop>`__
property.

To use the `ReviewModel </sdk/apps/qml/QtLocation/ReviewModel/>`__ we
need a view and a delegate. In this snippet we see the setting up of a
ListView with a `ReviewModel </sdk/apps/qml/QtLocation/ReviewModel/>`__
model and a delegate.

.. code:: qml

        ListView {
            anchors.fill: parent
            model: place.reviewModel
            delegate: ReviewDelegate { }
        }

The model returns data for the following roles:

+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Role          | Type                                                | Description                                                                                                                       |
+===============+=====================================================+===================================================================================================================================+
| dateTime      | datetime                                            | The date and time that the review was posted.                                                                                     |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| text          | string                                              | The review's textual description of the place. It can be either rich (HTML based) text or plain text depending on the provider.   |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| language      | string                                              | The language that the review is written in.                                                                                       |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| rating        | real                                                | The rating that the reviewer gave to the place.                                                                                   |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| reviewId      | string                                              | The identifier of the review.                                                                                                     |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| title         | string                                              | The title of the review.                                                                                                          |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| supplier      | `Supplier </sdk/apps/qml/QtLocation/Supplier/>`__   | The supplier of the review.                                                                                                       |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| user          | `User </sdk/apps/qml/QtLocation/User/>`__           | The user who contributed the review.                                                                                              |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| attribution   | string                                              | Attribution text which must be displayed when displaying the review.                                                              |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ batchSize : int                                                 |
+--------------------------------------------------------------------------+

This property holds the batch size to use when fetching more reviews.

| 

+--------------------------------------------------------------------------+
|        \ place : `Place </sdk/apps/qml/QtLocation/Place/>`__             |
+--------------------------------------------------------------------------+

This property holds the Place that the reviews are for.

| 

+--------------------------------------------------------------------------+
|        \ totalCount : int                                                |
+--------------------------------------------------------------------------+

This property holds the total number of reviews for the place.

| 
