.. _sdk_qtlocation_reviewmodel:
QtLocation ReviewModel
======================

Provides access to reviews of a Place.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`batchSize <sdk_qtlocation_reviewmodel_batchSize-prop>` :
   int
-  :ref:`place <sdk_qtlocation_reviewmodel_place-prop>` : Place
-  :ref:`totalCount <sdk_qtlocation_reviewmodel_totalCount-prop>` :
   int

Detailed Description
--------------------

The :ref:`ReviewModel <sdk_qtlocation_reviewmodel>` is a read-only model
used to fetch reviews about a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ . The model
incrementally fetches. The number of reviews which are fetched at a time
is specified by the
:ref:`batchSize <sdk_qtlocation_reviewmodel#batchSize-prop>` property. The
total number of reviews available can be accessed via the
:ref:`totalCount <sdk_qtlocation_reviewmodel#totalCount-prop>` property.

To use the :ref:`ReviewModel <sdk_qtlocation_reviewmodel>` we need a view
and a delegate. In this snippet we see the setting up of a ListView with
a :ref:`ReviewModel <sdk_qtlocation_reviewmodel>` model and a delegate.

.. code:: qml

        ListView {
            anchors.fill: parent
            model: place.reviewModel
            delegate: ReviewDelegate { }
        }

The model returns data for the following roles:

+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Role          | Type                                     | Description                                                                                                                       |
+===============+==========================================+===================================================================================================================================+
| dateTime      | datetime                                 | The date and time that the review was posted.                                                                                     |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| text          | string                                   | The review's textual description of the place. It can be either rich (HTML based) text or plain text depending on the provider.   |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| language      | string                                   | The language that the review is written in.                                                                                       |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| rating        | real                                     | The rating that the reviewer gave to the place.                                                                                   |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| reviewId      | string                                   | The identifier of the review.                                                                                                     |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| title         | string                                   | The title of the review.                                                                                                          |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| supplier      | :ref:`Supplier <sdk_qtlocation_supplier>`| The supplier of the review.                                                                                                       |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| user          | :ref:`User <sdk_qtlocation_user>`        | The user who contributed the review.                                                                                              |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| attribution   | string                                   | Attribution text which must be displayed when displaying the review.                                                              |
+---------------+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

Property Documentation
----------------------

.. _sdk_qtlocation_reviewmodel_batchSize-prop:

+--------------------------------------------------------------------------+
|        \ batchSize : int                                                 |
+--------------------------------------------------------------------------+

This property holds the batch size to use when fetching more reviews.

| 

.. _sdk_qtlocation_reviewmodel_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ place : `Place <sdk_qtlocation_place>`                     |
+--------------------------------------------------------------------------+

This property holds the Place that the reviews are for.

| 

.. _sdk_qtlocation_reviewmodel_totalCount-prop:

+--------------------------------------------------------------------------+
|        \ totalCount : int                                                |
+--------------------------------------------------------------------------+

This property holds the total number of reviews for the place.

| 
