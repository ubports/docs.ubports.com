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

-  :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel_limit-prop>`
   : int
-  :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel_offset-prop>`
   : int
-  :ref:`plugin <sdk_qtlocation_placesearchsuggestionmodel_plugin-prop>`
   : Plugin
-  :ref:`searchArea <sdk_qtlocation_placesearchsuggestionmodel_searchArea-prop>`
   : geoshape
-  :ref:`searchTerm <sdk_qtlocation_placesearchsuggestionmodel_searchTerm-prop>`
   : string
-  :ref:`status <sdk_qtlocation_placesearchsuggestionmodel_status-prop>`
   : enum
-  :ref:`suggestions <sdk_qtlocation_placesearchsuggestionmodel_suggestions-prop>`
   : stringlist

Methods
-------

-  :ref:`cancel <sdk_qtlocation_placesearchsuggestionmodel_cancel-method>`\ ()
-  string
   **:ref:`errorString <sdk_qtlocation_placesearchsuggestionmodel#errorString-method>`**\ ()
-  :ref:`reset <sdk_qtlocation_placesearchsuggestionmodel_reset-method>`\ ()
-  :ref:`update <sdk_qtlocation_placesearchsuggestionmodel_update-method>`\ ()

Detailed Description
--------------------

The
:ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`
can be used to provide search term suggestions as the user enters their
search term. The properties of this model should match that of the
:ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`, which will be
used to perform the actual search query, to ensure that the search
suggestion results are relevant.

There are two ways of accessing the data provided by this model, either
through the
:ref:`suggestions <sdk_qtlocation_placesearchsuggestionmodel#suggestions-prop>`
property or through views and delegates. The latter is the preferred
method.

The :ref:`offset <sdk_qtlocation_placesearchsuggestionmodel#offset-prop>`
and :ref:`limit <sdk_qtlocation_placesearchsuggestionmodel#limit-prop>`
properties can be used to access paged suggestions. When the
:ref:`offset <sdk_qtlocation_placesearchsuggestionmodel#offset-prop>` and
:ref:`limit <sdk_qtlocation_placesearchsuggestionmodel#limit-prop>`
properties are set the suggestions between
:ref:`offset <sdk_qtlocation_placesearchsuggestionmodel#offset-prop>` and
(:ref:`offset <sdk_qtlocation_placesearchsuggestionmodel#offset-prop>` +
:ref:`limit <sdk_qtlocation_placesearchsuggestionmodel#limit-prop>` - 1)
will be returned. Support for paging may vary from plugin to plugin.

The model returns data for the following roles:

+--------------+----------+--------------------------+
| Role         | Type     | Description              |
+==============+==========+==========================+
| suggestion   | string   | Suggested search term.   |
+--------------+----------+--------------------------+

The following example shows how to use the
:ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`
to get suggested search terms from a partial search term. The
:ref:`searchArea <sdk_qtlocation_placesearchsuggestionmodel#searchArea-prop>`
is set to match what would be used to perform the actual place search
with :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.

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

.. _sdk_qtlocation_placesearchsuggestionmodel_limit-prop:

+--------------------------------------------------------------------------+
|        \ limit : int                                                     |
+--------------------------------------------------------------------------+

This property holds the limit of the number of items that will be
returned.

**See also**
:ref:`offset <sdk_qtlocation_placesearchsuggestionmodel#offset-prop>`.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_offset-prop:

+--------------------------------------------------------------------------+
|        \ offset : int                                                    |
+--------------------------------------------------------------------------+

This property holds the index of the first item in the model.

**See also**
:ref:`limit <sdk_qtlocation_placesearchsuggestionmodel#limit-prop>`.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ plugin : `Plugin <sdk_qtlocation_plugin>`                  |
+--------------------------------------------------------------------------+

This property holds the provider
`Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  which
will be used to perform the search.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_searchArea-prop:

+--------------------------------------------------------------------------+
|        \ searchArea : geoshape                                           |
+--------------------------------------------------------------------------+

This property holds the search area. Search suggestion results returned
by the model will be relevant to the given search area.

If this property is set to a geocircle its radius property may be left
unset, in which case the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  will
choose an appropriate radius for the search.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_searchTerm-prop:

+--------------------------------------------------------------------------+
|        \ searchTerm : string                                             |
+--------------------------------------------------------------------------+

This property holds the partial search term used in query.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_status-prop:

+--------------------------------------------------------------------------+
|        \ status : enum                                                   |
+--------------------------------------------------------------------------+

This property holds the status of the model. It can be one of:

.. _sdk_qtlocation_placesearchsuggestionmodel_-prop:

+--------------------------------------------------------------------------------------+------------------------------------------------------------------+
.. _sdk_qtlocation_placesearchsuggestionmodel_-prop:
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Null      | No search query has been executed. The model is empty.           |
+--------------------------------------------------------------------------------------+------------------------------------------------------------------+
.. _sdk_qtlocation_placesearchsuggestionmodel_-prop:
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Ready     | The search query has completed, and the results are available.   |
+--------------------------------------------------------------------------------------+------------------------------------------------------------------+
.. _sdk_qtlocation_placesearchsuggestionmodel_-prop:
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Loading   | A search query is currently being executed.                      |
+--------------------------------------------------------------------------------------+------------------------------------------------------------------+
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Error     | An error occurred when executing the previous search query.      |
+--------------------------------------------------------------------------------------+------------------------------------------------------------------+

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_suggestions-prop:

+--------------------------------------------------------------------------+
|        \ suggestions : stringlist                                        |
+--------------------------------------------------------------------------+

This property holds the list of predicted search terms that the model
currently has.

| 

Method Documentation
--------------------

.. _sdk_qtlocation_placesearchsuggestionmodel_cancel-method:

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

Cancels an ongoing search suggestion operation immediately and sets the
model status to
:ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Ready.
The model retains any search suggestions it had before the operation was
started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also**
:ref:`update() <sdk_qtlocation_placesearchsuggestionmodel#update-method>`
and :ref:`status <sdk_qtlocation_placesearchsuggestionmodel#status-prop>`.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_string errorString-method:

+--------------------------------------------------------------------------+
|        \ string errorString() const                                      |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest search
suggestion model error. If no error has occurred, or if the model was
cleared, an empty string is returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_reset-method:

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

Resets the model. All search suggestions are cleared, any outstanding
requests are aborted and possible errors are cleared. Model status will
be set to
:ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`.Null.

| 

.. _sdk_qtlocation_placesearchsuggestionmodel_update-method:

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Updates the model based on the provided query parameters. The model will
be populated with a list of search suggestions for the partial
:ref:`searchTerm <sdk_qtlocation_placesearchsuggestionmodel#searchTerm-prop>`
and
:ref:`searchArea <sdk_qtlocation_placesearchsuggestionmodel#searchArea-prop>`.
If the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ 
supports it, other parameters such as
:ref:`limit <sdk_qtlocation_placesearchsuggestionmodel#limit-prop>` and
:ref:`offset <sdk_qtlocation_placesearchsuggestionmodel#offset-prop>` may
be specified. ``update()`` submits the set of parameters to the
`plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  to
process.

While the model is updating the
:ref:`status <sdk_qtlocation_placesearchsuggestionmodel#status-prop>` of
the model is set to ``PlaceSearchSuggestionModel.Loading``. If the model
is successfully updated, the
:ref:`status <sdk_qtlocation_placesearchsuggestionmodel#status-prop>` is
set to ``PlaceSearchSuggestionModel.Ready``, while if it unsuccessfully
completes, the
:ref:`status <sdk_qtlocation_placesearchsuggestionmodel#status-prop>` is
set to ``PlaceSearchSuggestionModel.Error`` and the model cleared.

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

A more detailed example can be found in the in `Places
(QML) </sdk/apps/qml/QtLocation/places/#presenting-search-suggestions>`_ 
example.

**See also**
:ref:`cancel() <sdk_qtlocation_placesearchsuggestionmodel#cancel-method>`
and :ref:`status <sdk_qtlocation_placesearchsuggestionmodel#status-prop>`.

| 
