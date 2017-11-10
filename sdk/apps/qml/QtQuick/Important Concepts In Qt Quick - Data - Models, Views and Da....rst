.. _sdk_qtquick_important_concepts_in_qt_quick_-_data_-_models,_views_and_da___:

QtQuick Important Concepts In Qt Quick - Data - Models, Views and Da...
=======================================================================


Most applications will have data that needs to be displayed to the user. That data might come from a variety of sources: network sources, local files, and databases are all common sources of data.

It is often advantageous to show similar data in a similar manner, within an application, and this gives rise to the idea of having a model which contains data, and a view which displays the data. The view will display a delegate for every datum in the model.

For information about how the Model/View paradigm is implemented in Qt Quick, see the page titled `Models and Views in Qt Quick </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/>`_ .

Databases are commonly used to store information in applications. Qt Quick provides simplified access to relational databases via the `QtQuick.LocalStorage </sdk/apps/qml/QtQuick/qtquick-releasenotes/#qtquick-localstorage>`_  module.

