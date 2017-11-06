.. _sdk_qtlocation_placesearchsuggestionmodel:

QtLocation PlaceSearchSuggestionModel
=====================================

Provides access to search term suggestions.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel_limit>` : int
-  :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset>` : int
-  :ref:`plugin <sdk_qtlocation_placesearchsuggestionmodel_plugin>` : Plugin
-  :ref:`searchArea <sdk_qtlocation_placesearchsuggestionmodel_searchArea>` : geoshape
-  :ref:`searchTerm <sdk_qtlocation_placesearchsuggestionmodel_searchTerm>` : string
-  :ref:`status <sdk_qtlocation_placesearchsuggestionmodel_status>` : enum
-  :ref:`suggestions <sdk_qtlocation_placesearchsuggestionmodel_suggestions>` : stringlist

Methods
-------

-  :ref:`cancel <sdk_qtlocation_placesearchsuggestionmodel_cancel>`\ ()
-  string :ref:`errorString <sdk_qtlocation_placesearchsuggestionmodel_errorString>`\ ()
-  :ref:`reset <sdk_qtlocation_placesearchsuggestionmodel_reset>`\ ()
-  :ref:`update <sdk_qtlocation_placesearchsuggestionmodel_update>`\ ()

Detailed Description
--------------------

The :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>` can be used to provide search term suggestions as the user enters their search term. The properties of this model should match that of the :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`, which will be used to perform the actual search query, to ensure that the search suggestion results are relevant.

There are two ways of accessing the data provided by this model, either through the :ref:`suggestions <sdk_qtlocation_placesearchsuggestionmodel_suggestions>` property or through views and delegates. The latter is the preferred method.

The :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset>` and :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel_limit>` properties can be used to access paged suggestions. When the :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset>` and :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel_limit>` properties are set the suggestions between :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset>` and (:ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset>` + :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel_limit>` - 1) will be returned. Support for paging may vary from plugin to plugin.

The model returns data for the following roles:

+--------------+----------+--------------------------+
| Role         | Type     | Description              |
+==============+==========+==========================+
| suggestion   | string   | Suggested search term.   |
+--------------+----------+--------------------------+

The following example shows how to use the :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>` to get suggested search terms from a partial search term. The :ref:`searchArea <sdk_qtlocation_placesearchsuggestionmodel_searchArea>` is set to match what would be used to perform the actual place search with :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    PlaceSearchSuggestionModel {
        id: suggestionModel
        plugin: myPlugin
        // Brisbane
        searchArea: QtLocation.circle(QtLocation.coordinate(-27.46778, 153.02778))
        onSearchTermChanged: update()
    }
    ListView {
        model: suggestionModel
        delegate: Text { text: suggestion }
    }

**See also** PlaceSearchModel and QPlaceManager.

Property Documentation
----------------------

.. _sdk_qtlocation_placesearchsuggestionmodel_limit:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| limit : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the limit of the number of items that will be returned.

**See also** :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset>`.

.. _sdk_qtlocation_placesearchsuggestionmodel_offset:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| offset : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the index of the first item in the model.

**See also** :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel_limit>`.

.. _sdk_qtlocation_placesearchsuggestionmodel_plugin:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| plugin : :ref:`Plugin <sdk_qtlocation_plugin>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the provider `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  which will be used to perform the search.

.. _sdk_qtlocation_placesearchsuggestionmodel_searchArea:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| searchArea : geoshape                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the search area. Search suggestion results returned by the model will be relevant to the given search area.

If this property is set to a geocircle its radius property may be left unset, in which case the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  will choose an appropriate radius for the search.

.. _sdk_qtlocation_placesearchsuggestionmodel_searchTerm:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| searchTerm : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the partial search term used in query.

.. _sdk_qtlocation_placesearchsuggestionmodel_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enum                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of the model. It can be one of:

+--------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Null      | No search query has been executed. The model is empty.           |
+--------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Ready     | The search query has completed, and the results are available.   |
+--------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Loading   | A search query is currently being executed.                      |
+--------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Error     | An error occurred when executing the previous search query.      |
+--------------------------------------------------------------------------------------+---------------------------------------------------------------------+

.. _sdk_qtlocation_placesearchsuggestionmodel_suggestions:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| suggestions : stringlist                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of predicted search terms that the model currently has.

Method Documentation
--------------------

.. _sdk_qtlocation_placesearchsuggestionmodel_cancel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancel()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Cancels an ongoing search suggestion operation immediately and sets the model status to :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Ready. The model retains any search suggestions it had before the operation was started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also** :ref:`update() <sdk_qtlocation_placesearchsuggestionmodel_update>` and :ref:`status <sdk_qtlocation_placesearchsuggestionmodel_status>`.

.. _sdk_qtlocation_placesearchsuggestionmodel_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string errorString() const                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest search suggestion model error. If no error has occurred, or if the model was cleared, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

.. _sdk_qtlocation_placesearchsuggestionmodel_reset:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| reset()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Resets the model. All search suggestions are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Null.

.. _sdk_qtlocation_placesearchsuggestionmodel_update:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| update()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Updates the model based on the provided query parameters. The model will be populated with a list of search suggestions for the partial :ref:`searchTerm <sdk_qtlocation_placesearchsuggestionmodel_searchTerm>` and :ref:`searchArea <sdk_qtlocation_placesearchsuggestionmodel_searchArea>`. If the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  supports it, other parameters such as :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel_limit>` and :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset>` may be specified. ``update()`` submits the set of parameters to the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  to process.

While the model is updating the :ref:`status <sdk_qtlocation_placesearchsuggestionmodel_status>` of the model is set to ``PlaceSearchSuggestionModel.Loading``. If the model is successfully updated, the :ref:`status <sdk_qtlocation_placesearchsuggestionmodel_status>` is set to ``PlaceSearchSuggestionModel.Ready``, while if it unsuccessfully completes, the :ref:`status <sdk_qtlocation_placesearchsuggestionmodel_status>` is set to ``PlaceSearchSuggestionModel.Error`` and the model cleared.

This example shows use of the model

.. code:: cpp

    PlaceSeachSuggestionModel {
        id: model
        plugin: backendPlugin
        searchArea: QtPositioning.circle(QtPositioning.coordinate(10, 10))
        ...
    }
    MouseArea {
        ...
        onClicked: {
            model.searchTerm = "piz"
            model.searchArea.center.latitude = -27.5;
            model.searchArea.cetner.longitude = 153;
            model.update();
        }
    }

A more detailed example can be found in the in `Places (QML) </sdk/apps/qml/QtLocation/places/#presenting-search-suggestions>`_  example.

**See also** :ref:`cancel() <sdk_qtlocation_placesearchsuggestionmodel_cancel>` and :ref:`status <sdk_qtlocation_placesearchsuggestionmodel_status>`.

