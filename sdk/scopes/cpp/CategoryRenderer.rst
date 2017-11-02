.. _sdk_categoryrenderer:
CategoryRenderer
================

A category renderer template in JSON format.
`More... </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#details>`_ 

``#include <unity/scopes/CategoryRenderer.h>``

        Public Member Functions
-------------------------------

 

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#a046414ae2092968686ee4ee00629054a>`_ 
(std::string const
&json\_text=\ :ref:`DEFAULT\_RENDERER <sdk_unity_scopes#a697a8f21545922bcfc8345d83f5cc156>`)

 

| Creates a CategoryRenderer from a JSON string.

 

std::string 

`data </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#a3bc0a10ca63c2bb90c14207ca28b536d>`_ 
() const

 

| Returns complete renderer template definition in JSON format.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**CategoryRenderer**
(`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
const &)

 

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_  & 

**operator=**
(`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
const &)

 

         

**CategoryRenderer**
(`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
&&)

 

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_  & 

**operator=**
(`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
&&)

 

        virtual 

**~CategoryRenderer** ()

 

        Static Public Member Functions
--------------------------------------

static
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_  

`from\_file </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#a3236d422bffd659e9e5a8eaae418320c>`_ 
(std::string const &path)

 

| Creates a CategoryRenderer from a text file.

 

Detailed Description
--------------------

A category renderer template in JSON format.

This class specifies how is a particular category rendered by Unity.
Note that the data is likely to change between major versions of Unity,
and therefore the definition isn't strongly typed and provided by a
scope author as a JSON string.

A `Category </sdk/scopes/cpp/unity.scopes.Category/>`_  contains all the
information needed by Unity to render results provided by a scope author
(by handling
`unity::scopes::SearchQueryBase::run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ )
in a way that gives the user as much useful information as possible.
When pushing results to the query originator
(`unity::scopes::SearchReply::push() </sdk/scopes/cpp/unity.scopes.SearchReply/#a63d6de93152b3a972901c2d406ef5760>`_ ),
each result needs to have a category associated, and this association
determines what will the result look like.

The most important part of a category definition is the
`unity::scopes::CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
instance. If you use the default constructor
`CategoryRenderer() </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#a046414ae2092968686ee4ee00629054a>`_ ,
the renderer will use the following definition:

.. code:: fragment

    {
      "schema-version" : 1,
      "template" : {
        "category-layout" : "grid"
      },
      "components" : {
        "title" : "title",
        "art" : "art"
      }
    }

As specified by the ``"category-layout"`` key of the ``"template"``
dictionary, Unity will render results associated with this category in a
grid layout. The ``"components"`` dictionary specifies which result
fields are used by Unity. In case of this definition, each tile of the
grid will map the "title" field from the result (set also by the call to
`unity::scopes::Result::set\_title() </sdk/scopes/cpp/unity.scopes.Result/#adf8cf3d863babb02107fb5ef35acc925>`_ )
as title for the grid tile, and "art" field from the result (see
`unity::scopes::Result::set\_art() </sdk/scopes/cpp/unity.scopes.Result/#a3f2e512b10dbf2ed867d260ec33a89a1>`_ )
as the icon for the grid tile.

To sum up, the ``"template"`` dictionary contains information to
determine the correct renderer and its parameters, and the
``"components"`` dictionary contains a mapping that specifies which
fields of the results are used by the renderer. The keys of the
dictionary are understood by Unity and the values specify a field name
of the results. For example, ``{"title": "album_name"}`` means that
Unity will use ``result["album_name"]`` as a title for the grid tile.r

A value also can specify extra hints for the renderer, such as the
result field name and a fallback image. For example,
``{"art": {"field": "icon", "aspect-ratio": 1.3, "fallback": "file:///path_to_fallback_image}}``.
The fallback image is shown by Unity if no image URL is provided by the
result, but the card requires an image. The fallback image is also shown
if the result provides an empty URL for an image, the image does not
load due to an error, or if loading results in an empty image. If a
result does not specify a fallback image and the actual image is empty
or cannot be loaded, Unity substitutes a generic fallback image.

.. rubric::         JSON structure (v1)
   :name: json-structure-v1

When using ``{"schema-version": 1}``, the following keys are understood:

.. rubric::         template keys
   :name: template-keys

-  ``category-layout`` Specifies renderer type; possible values:
   ``"grid"`` (default), ``"carousel"``, ``"vertical-journal"``,
   ``"horizontal-list"``
-  ``card-layout`` Specifies layout of the individual result cards;
   possible values: ``"vertical"`` (default), ``"horizontal"``
-  ``card-size`` Size of the result cards; possible values: ``"small"``,
   ``"medium"`` (default), ``"large"``; when using
   ``"category-layout": "vertical-journal"`` any integer between 12 and
   38
-  ``overlay`` Overlay text data on top of the art; boolean, default
   false
-  ``collapsed-rows`` Number of result rows displayed while the category
   is collapsed; possible values: any non-negative integer, where 0
   fully expands the category (only affects grid)
-  ``card-background`` Background color for the cards; string; URI in
   the format

   .. code:: fragment

       color:///#rrggbb 

   or

   .. code:: fragment

       color:///color_name

   or

   .. code:: fragment

       gradient:///#rrggbb/#rrggbb 

   or an image URI (will be stretched)

-  ``quick-preview-type`` The type of media content represented by
   result cards, for use with inline playback; the only currently
   supported type is "audio".

.. rubric::         components keys
   :name: components-keys

-  ``title`` String specifying card's title
-  ``subtitle`` String specifying subtitle of a card
-  ``art`` URI specifying card's art (primary graphics), can contain
   subkeys: ``"aspect-ratio"`` (double specifying the aspect ratio of
   the graphics, default: 1.0), ``"field"`` (specifying the result's
   field name that contains the URI), and ``"fallback"`` (fallback image
   to be used if the URI for a result's artwork cannot be retrieved).
-  ``mascot`` URI specifying card's mascot (secondary graphics), can
   contain subkeys: ``"aspect-ratio"`` (double specifying the aspect
   ratio of the graphics, default: 1.0), ``"field"`` (specifying the
   result's field name that contains the URI), and ``"fallback"``
   (fallback image to be used if the URI for a result's mascot cannot be
   retrieved).
-  ``emblem`` URI specifying card's emblem
-  ``summary`` String specifying text summary
-  ``background`` Card background URI, can override the default
   specified in the card-background field of the template section (same
   format as for card-background)
-  ``attributes`` Array of dictionaries specifying text and an optional
   icon (keys: "value", "icon")
-  ``overlay-color`` Color of overlay for templates with overlay
-  ``quick-preview-data`` A dictionary with the following keys:
   ``"uri"`` (an uri of audio stream or file), ``"duration"`` (duration
   in seconds), ``"playlist"`` (an array of uris of additional songs to
   be played in sequence when the main song finishes).

.. rubric::         Example
   :name: example

In the following example a category named "Recommended" containing three
components is created (title, art, and subtitle), and a result providing
values for these components is pushed.

Note that the scope is free to set any other extra result fields even if
they are not used by the renderer (and therefore not specified in the
``"components"`` dictionary), such fields will be preserved and
available to the scope when handling result-specific methods (for
example
`unity::scopes::ScopeBase::preview() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ ).

// use raw string literal, so we don't have to escape all the quotes

std::string CATEGORY\_DEFINITION = R"(

{

 "schema-version" : 1,

 "template" : {

 "category-layout" : "carousel",

 "card-size" : "small"

 },

 "components" : {

 "title" : "title",

 "art" : {

 "field" : "art",

 "aspect-ratio" : 1.3

 "fallback" : "file:///path\_to\_fallback\_image",

 },

 "subtitle" : "publisher"

 }

}

)";

void
MyQuery::run(\ :ref:`SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`
const& reply)

{

auto category = reply->register\_category("recommended", "Recommended",
icon,
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#a046414ae2092968686ee4ee00629054a>`_ \ (CATEGORY\_DEFINITION));

// push a sample result

CategorisedResult result(category); // create a result item in
"recommended" category

result.set\_uri("http://www.example.org");

result.set\_title("Example Result");

result.set\_art("http://www.example.org/graphics.png");

result.set\_dnd\_uri("http://www.example.org");

result["publisher"] = "Example.org";

reply->push(result); // send result to the client

}

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | explicit                             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | unity::scope | (            | std: |                                      |
| :string  | *json\_text* | )          |                                      |
|    |              |                  |                                      |
| | s::CategoryR |              | cons |                                      |
| t &      | =            |            |                                      |
|    |              |                  |                                      |
| | enderer::Cat |              |      |                                      |
|          | ``DEFAULT_RE |            |                                      |
|    |              |                  |                                      |
| | egoryRendere |              |      |                                      |
|          | NDERER``     |            |                                      |
|    |              |                  |                                      |
| | r            |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Creates a
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
from a JSON string.

Parameters
    +--------------+------------------------------------+
    | json\_text   | Renderer template in JSON format   |
    +--------------+------------------------------------+

Exceptions
    +-----------------------------------+----------------------------------+
    | unity::InvalidArgumentException   | if json\_text cannot be parsed   |
    +-----------------------------------+----------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :CategoryRende |                |                |                |                |
| rer::data      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns complete renderer template definition in JSON format.

Returns
    The renderer template (JSON).

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | static                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | static       | (            | std: |                                      |
| :string  | *path*       | )          |                                      |
|    |              |                  |                                      |
| | `CategoryRen |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | derer </sdk/ |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | scopes/cpp/u |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | nity.scopes. |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | CategoryRend |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | erer/>`_     |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | unity::scope |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::CategoryR |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | enderer::fro |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | m\_file      |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Creates a
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
from a text file.

Returns
    The
    `CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
    corresponding to the information in the file.

