Provides access to search term suggestions.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`limit </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#limit-prop>`__****
   : int
-  ****`offset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#offset-prop>`__****
   : int
-  ****`plugin </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#plugin-prop>`__****
   : Plugin
-  ****`searchArea </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#searchArea-prop>`__****
   : geoshape
-  ****`searchTerm </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#searchTerm-prop>`__****
   : string
-  ****`status </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#status-prop>`__****
   : enum
-  ****`suggestions </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#suggestions-prop>`__****
   : stringlist

Methods
-------

-  ****`cancel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#cancel-method>`__****\ ()
-  string
   ****`errorString </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#errorString-method>`__****\ ()
-  ****`reset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#reset-method>`__****\ ()
-  ****`update </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#update-method>`__****\ ()

Detailed Description
--------------------

The
`PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__
can be used to provide search term suggestions as the user enters their
search term. The properties of this model should match that of the
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__, which
will be used to perform the actual search query, to ensure that the
search suggestion results are relevant.

There are two ways of accessing the data provided by this model, either
through the
`suggestions </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#suggestions-prop>`__
property or through views and delegates. The latter is the preferred
method.

The
`offset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#offset-prop>`__
and
`limit </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#limit-prop>`__
properties can be used to access paged suggestions. When the
`offset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#offset-prop>`__
and
`limit </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#limit-prop>`__
properties are set the suggestions between
`offset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#offset-prop>`__
and
(`offset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#offset-prop>`__
+
`limit </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#limit-prop>`__
- 1) will be returned. Support for paging may vary from plugin to
plugin.

The model returns data for the following roles:

+--------------+----------+--------------------------+
| Role         | Type     | Description              |
+==============+==========+==========================+
| suggestion   | string   | Suggested search term.   |
+--------------+----------+--------------------------+

The following example shows how to use the
`PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__
to get suggested search terms from a partial search term. The
`searchArea </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#searchArea-prop>`__
is set to match what would be used to perform the actual place search
with `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.

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

+--------------------------------------------------------------------------+
|        \ limit : int                                                     |
+--------------------------------------------------------------------------+

This property holds the limit of the number of items that will be
returned.

**See also**
`offset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#offset-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ offset : int                                                    |
+--------------------------------------------------------------------------+

This property holds the index of the first item in the model.

**See also**
`limit </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#limit-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ plugin : `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__          |
+--------------------------------------------------------------------------+

This property holds the provider
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ which
will be used to perform the search.

| 

+--------------------------------------------------------------------------+
|        \ searchArea : geoshape                                           |
+--------------------------------------------------------------------------+

This property holds the search area. Search suggestion results returned
by the model will be relevant to the given search area.

If this property is set to a geocircle its radius property may be left
unset, in which case the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ will
choose an appropriate radius for the search.

| 

+--------------------------------------------------------------------------+
|        \ searchTerm : string                                             |
+--------------------------------------------------------------------------+

This property holds the partial search term used in query.

| 

+--------------------------------------------------------------------------+
|        \ status : enum                                                   |
+--------------------------------------------------------------------------+

This property holds the status of the model. It can be one of:

+-------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__.Null      | No search query has been executed. The model is empty.           |
+-------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__.Ready     | The search query has completed, and the results are available.   |
+-------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__.Loading   | A search query is currently being executed.                      |
+-------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__.Error     | An error occurred when executing the previous search query.      |
+-------------------------------------------------------------------------------------------------+------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ suggestions : stringlist                                        |
+--------------------------------------------------------------------------+

This property holds the list of predicted search terms that the model
currently has.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

Cancels an ongoing search suggestion operation immediately and sets the
model status to
`PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__.Ready.
The model retains any search suggestions it had before the operation was
started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also**
`update() </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#update-method>`__
and
`status </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#status-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ string errorString() const                                      |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest search
suggestion model error. If no error has occurred, or if the model was
cleared, an empty string is returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

Resets the model. All search suggestions are cleared, any outstanding
requests are aborted and possible errors are cleared. Model status will
be set to
`PlaceSearchSuggestionModel </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel/>`__.Null.

| 

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Updates the model based on the provided query parameters. The model will
be populated with a list of search suggestions for the partial
`searchTerm </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#searchTerm-prop>`__
and
`searchArea </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#searchArea-prop>`__.
If the `plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
supports it, other parameters such as
`limit </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#limit-prop>`__
and
`offset </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#offset-prop>`__
may be specified. ``update()`` submits the set of parameters to the
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ to
process.

While the model is updating the
`status </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#status-prop>`__
of the model is set to ``PlaceSearchSuggestionModel.Loading``. If the
model is successfully updated, the
`status </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#status-prop>`__
is set to ``PlaceSearchSuggestionModel.Ready``, while if it
unsuccessfully completes, the
`status </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#status-prop>`__
is set to ``PlaceSearchSuggestionModel.Error`` and the model cleared.

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
(QML) </sdk/apps/qml/QtLocation/places#presenting-search-suggestions>`__
example.

**See also**
`cancel() </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#cancel-method>`__
and
`status </sdk/apps/qml/QtLocation/PlaceSearchSuggestionModel#status-prop>`__.

| 
