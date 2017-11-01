
.. rubric::         Recognized preview widget types
   :name: recognized-preview-widget-types

The following widget types are recognized by Unity:

-  ``audio``
-  ``video``
-  ``image``
-  ``gallery``
-  ``header``
-  ``actions``
-  ``icon-actions``
-  ``progress``
-  ``text``
-  ``rating-input``
-  ``rating-edit``
-  ``reviews``
-  ``comment-input``
-  ``comment``
-  ``expandable``
-  ``table``

.. rubric::         audio widget
   :name: audio-widget

The audio widget displays a list of tracks with play/pause controls.

List of attributes:

-  ``tracks`` A composite attribute containing an array of tuples, where
   each tuple has up to four fields: ``title`` (mandatory string),
   ``subtitle`` (optional string), ``source`` (mandatory URI), and
   ``length`` (optional integer specifying the track length in seconds)

You can construct composite attributes with
`unity::scopes::VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__:

{

PreviewWidget w1("tracks", "audio");

VariantBuilder builder;

builder.add\_tuple({

{"title", Variant("Track #1")},

{"source", Variant("file:///tmp/song1.mp3")},

{"length", Variant(194)}

});

builder.add\_tuple({

{"title", Variant("Track #2")},

{"source", Variant("file:///tmp/song2.mp3")},

{"length", Variant(207)}

});

w1.add\_attribute\_value("tracks", builder.end());

...

}

.. rubric::         video widget
   :name: video-widget

The video widget displays a still from a video and allows playing the
video.

List of attributes:

-  ``source`` A URI pointing to the video
-  ``screenshot`` A URI pointing to a screenshot of the video (optional)
-  ``share-data`` An optional dictionary for making this video shareable
   with Content Hub. See `content
   sharing </sdk/scopes/cpp/previewwidgets#contentsharing>`__ below.

{

PreviewWidget w1("video1", "video");

w1.add\_attribute\_value("source", Variant("file:///tmp/video1.mp4"));

...

}

.. rubric::         image widget
   :name: image-widget

The image widget displays a single image.

List of attributes:

-  ``source`` A URI pointing to the image
-  ``zoomable`` A boolean specifying whether the image is zoomable
   (default: ``false``)
-  ``fallback`` A fallback image to be used if the image URI is empty or
   cannot be retrieved (default: none)
-  ``share-data`` An optional dictionary for making this image shareable
   with Content Hub. See `content
   sharing </sdk/scopes/cpp/previewwidgets#contentsharing>`__ below.

{

PreviewWidget w1("img1", "image");

w1.add\_attribute\_value("source",
Variant("http://example.com/image.jpg"));

w1.add\_attribute\_value("fallback", Variant("file:///tmp/image.jpg"));

...

}

.. rubric::         gallery widget
   :name: gallery-widget

The gallery widget displays a set of images.

List of attributes:

-  ``sources`` An array of image URIs
-  ``fallback`` A fallback image to be used if an image URI is empty or
   cannot be retrieved (default: none)

{

PreviewWidget w1("gal", "gallery");

`VariantArray </sdk/scopes/cpp/unity.scopes#aa3bf32d584efd902bca79698a07dd934>`__
arr;

arr.push\_back(Variant("http://example.com/image1.jpg"));

arr.push\_back(Variant("file:///tmp/image2.jpg"));

arr.push\_back(Variant("file:///tmp/image3.jpg"));

w1.add\_attribute\_value("sources", Variant(arr));

w1.add\_attribute\_value("fallback",
Variant("file:///tmp/fallback.png"));

...

}

.. rubric::         header widget
   :name: header-widget

The header widget displays basic infomation about the result.

List of attributes:

-  ``title`` A string specifying the title
-  ``subtitle`` A string specifying the subtitle
-  ``mascot`` A URI specifying the mascot
-  ``fallback`` A fallback image to be used if the mascot URI is empty
   or cannot be retrieved (default: none)
-  ``emblem`` A URI specifying the emblem

{

PreviewWidget w1("hdr", "header");

w1.add\_attribute\_value("title", Variant("Result item"));

w1.add\_attribute\_value("mascot",
Variant("http://example.com/image.png"));

w1.add\_attribute\_value("fallback",
Variant("file:///tmp/fallback\_mascot.png"));

...

}

.. rubric::         actions widget
   :name: actions-widget

The actions widget displays one or more buttons.

List of attributes:

-  ``actions`` A composite attribute containing an array of tuples,
   where each tuple has at least these fields: ``id`` (a mandatory
   string that is passed to
   unity::scopes::ScopeBase::activate\_preview\_action()), ``label``
   (mandatory string), and ``icon`` (optional URI).

You can construct composite attributes with
`unity::scopes::VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__:

{

PreviewWidget w1("buttons", "actions");

VariantBuilder builder;

builder.add\_tuple({

{"id", Variant("open")},

{"label", Variant("Open")}

});

builder.add\_tuple({

{"id", Variant("download")},

{"label", Variant("Download")}

});

w1.add\_attribute\_value("actions", builder.end());

...

}

.. rubric::         icon-actions widget
   :name: icon-actions-widget

The icon-actions widget displays one or more buttons represented by
icons and/or labels. It's similar to actions widget, but uses different
layout. Every button can provide an optional temporary icon to be
displayed immediately after user taps it.

List of attributes:

-  ``actions`` A composite attribute containing an array of tuples,
   where each tuple has at least these fields: ``id`` (a mandatory
   string that is passed to
   unity::scopes::ScopeBase::activate\_preview\_action()), ``label``
   (optional string), ``icon`` (optional URI, required if label is
   missing), ``temporaryIcon`` (optional URI).

.. rubric::         progress widget
   :name: progress-widget

The progress widget displays the progress of an action, such as download
progress.

On completion, the scope receives a preview action activation with the
id ``"finished"`` or ``"failed"``, depending on the outcome of the
operation.

List of attributes:

-  ``source`` A tuple with keys understood by a progress provider

{

PreviewWidget w1("download", "progress");

`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__
tuple;

tuple["dbus-name"] = "com.canonical.DownloadManager";

tuple["dbus-object"] = "/com/canonical/download/obj1";

w1.add\_attribute\_value("source", Variant(tuple));

...

}

.. rubric::         text widget
   :name: text-widget

A text widget can be used for text of any length (without formatting).

List of attributes:

-  ``title`` Optional string
-  ``text`` A string containing the text

{

PreviewWidget w1("summary", "text");

w1.add\_attribute\_value("text", Variant("Lorem Ipsum ..."));

...

}

.. rubric::         rating-input widget
   :name: rating-input-widget

The rating-input widget allows users to rate content. It consists of two
types of widget: a star-based rating and an input field for the user to
enter his/her review. It is possible to hide each widget as well as to
require them to be filled in.

When a user presses the "Send" button, the scope receives a preview
action activation with the id ``"rated"``. The actual rating and/or
review can be accessed via
`unity::scopes::ActionMetadata::scope\_data </sdk/scopes/cpp/unity.scopes.ActionMetadata#a34777e687ce700a7b6313f3dad6d3340>`__.
The scope data will be a VariantMap with the following keys:

-  ``"rating"`` - a double holding the number of stars the user selected
   (1 to 5)
-  ``"review"`` - a string holding the free text review

List of attributes:

-  ``rating-label`` String for the star-based rating (default: "Rate
   this")
-  ``review-label`` String for the review input (default: "Add a
   review")
-  ``submit-label`` String for the confirmation button (default: "Send")
-  ``rating-icon-empty`` URI for an empty rating icon
-  ``rating-icon-full`` URI for a full rating icon
-  ``visible`` String specifying which of the two widgets are visible
   (``"rating"``, ``"review"`` or default:\ ``"both"``)
-  ``required`` String specifying which of the two widgets are required
   to be filled in (``"rating"``, ``"review"`` or default:\ ``"both"``)

{

PreviewWidget w1("rating", "rating-input");

w1.add\_attribute\_value("visible", Variant("rating"));

w1.add\_attribute\_value("required", Variant("rating"));

w1.add\_attribute\_value("rating-icon-empty",
Variant("file:///tmp/star-empty.svg"));

w1.add\_attribute\_value("rating-icon-full",
Variant("file:///tmp/star-full.svg"));

...

}

.. rubric::         rating-edit widget
   :name: rating-edit-widget

The rating-edit widget allows users to edit an existing review and
rating. When used in a preview, the widget displays an existing review
and a small "pen" icon; user can update the review and/or rating after
tapping the "pen" icon.

This widget supports all the attributes of rating-input widget, plus
three extra attributes (``"review"``, ``"rating"``, ``"author"``) to
pre-fill the widget with data of an existing review.

List of attributes:

-  ``rating-label`` String for the star-based rating (default: "Rate
   this")
-  ``review-label`` String for the review input (default: "Add a
   review")
-  ``submit-label`` String for the confirmation button (default: "Send")
-  ``rating-icon-empty`` URI for an empty rating icon
-  ``rating-icon-full`` URI for a full rating icon
-  ``visible`` String specifying which of the two widgets are visible
   (``"rating"``, ``"review"`` or default:\ ``"both"``)
-  ``required`` String specifying which of the two widgets are required
   to be filled in (``"rating"``, ``"review"`` or default:\ ``"both"``)
-  ``author`` String for the name of the reviewer (optional)
-  ``review`` String for the text of existing review (optional)
-  ``rating`` Number for the rating value (optional)

Note: The rating-edit widget may not be supported by older versions of
unity8 shell.

.. rubric::         reviews widget
   :name: reviews-widget

The reviews widget is used to display previously-rated content.

List of attributes:

-  ``rating-icon-empty`` URI for an empty rating icon
-  ``rating-icon-half`` URI for an half-full rating icon
-  ``rating-icon-full`` URI for a full rating icon
-  ``reviews`` A composite attribute containing an array of tuples,
   where each tuple has up to three fields: ``rating`` (optional integer
   specifying the number of stars), ``author`` (mandatory string) and
   ``review`` (optional string).

You can construct composite attributes with
`unity::scopes::VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__:

{

PreviewWidget w1("summary", "reviews");

w1.add\_attribute\_value("rating-icon-empty",
Variant("file:///tmp/star-empty.svg"));

w1.add\_attribute\_value("rating-icon-full",
Variant("file:///tmp/star-full.svg"));

VariantBuilder builder;

builder.add\_tuple({

{"author", Variant("John Doe")},

{"rating", Variant(3)}

});

builder.add\_tuple({

{"author", Variant("Mr. Smith")},

{"rating", Variant(5)}

});

w1.add\_attribute\_value("reviews", builder.end());

...

}

.. rubric::         comment-input widget
   :name: comment-input-widget

The comment-input widget allows users to add comments. It displays an
input box along with "Send" button.

When a user presses the "Send" button, the scope receives a preview
action activation with the id ``"commented"``. The actual comment can be
accessed via
`unity::scopes::ActionMetadata::scope\_data </sdk/scopes/cpp/unity.scopes.ActionMetadata#a34777e687ce700a7b6313f3dad6d3340>`__.
The scope data will be a VariantMap with the ``"comment"`` field holding
the text entered by the user.

List of attributes:

-  ``submit-label`` String for the label of the submit button (optional,
   uses "Submit" by default).

{

PreviewWidget w1("cmt", "comment-input");

w1.add\_attribute\_value("submit-label", Variant("Comment it!"));

...

}

.. rubric::         comment widget
   :name: comment-widget

The comment widget shows an avatar, author name, subtitle and a comment
text.

List of attributes:

-  ``source`` URI for an avatar icon (optional)
-  ``author`` A string specifying the author of the comment (mandatory)
-  ``subtitle`` A string for the subtitle (optional)
-  ``comment`` A string for the comment text (mandatory)

.. rubric::         expandable widget
   :name: expandable-widget

The expandable widget is used to group several widgets into an
expandable pane. The expandable widget can be collapsed or uncollapsed.
When it's uncollapsed then all the contained widgets are shown. When
collapsed, only the first few widgets determined by collapsed-widgets
attribute are shown.

List of attributes:

-  ``title`` A string specifying the title
-  ``collapsed-widgets`` A number of widgets to show when the expandable
   widget is collapsed (optional).

PreviewWidget expandable("exp", "expandable");

expandable.add\_attribute\_value("title", Variant("This is an expandable
widget"));

expandable.add\_attribute\_value("collapsed-widgets", Variant(2));

PreviewWidget w1("w1", "text");

w1.add\_attribute\_value("title", Variant("Subwidget 1"));

w1.add\_attribute\_value("text", Variant("A text"));

PreviewWidget w2("w2", "text");

w2.add\_attribute\_value("title", Variant("Subwidget 2"));

w2.add\_attribute\_value("text", Variant("A text"));

PreviewWidget w3("w3", "text");

w3.add\_attribute\_value("title", Variant("Subwidget 3"));

w3.add\_attribute\_value("text", Variant("A text"));

expandable.add\_widget(w1);

expandable.add\_widget(w2);

expandable.add\_widget(w3);

...

.. rubric::         table widget
   :name: table-widget

The table widget is used to show a table with labels and values. When
used inside an Expandable widget, the topmost 3 rows are shown until
it's expanded.

List of attributes:

-  ``title`` A string specifying the title to be shown on top
-  ``values`` An array with one element per row. Each element is an
   array of two strings: label and value

PreviewWidget table("details", "table");

table.add\_attribute\_value("title", Variant("This is a table widget"));

`VariantArray </sdk/scopes/cpp/unity.scopes#aa3bf32d584efd902bca79698a07dd934>`__
values {

Variant{\ `VariantArray </sdk/scopes/cpp/unity.scopes#aa3bf32d584efd902bca79698a07dd934>`__\ {Variant{\_("Version
number")}, Variant{"0.83b"}}},

Variant{\ `VariantArray </sdk/scopes/cpp/unity.scopes#aa3bf32d584efd902bca79698a07dd934>`__\ {Variant{\_("Last
updated")}, Variant{"2015-01-15"}}},

Variant{\ `VariantArray </sdk/scopes/cpp/unity.scopes#aa3bf32d584efd902bca79698a07dd934>`__\ {Variant{\_("First
released")}, Variant{"2013-12-16"}}},

Variant{\ `VariantArray </sdk/scopes/cpp/unity.scopes#aa3bf32d584efd902bca79698a07dd934>`__\ {Variant{\_("Size")},
Variant{"11.3 MiB"}}},

};

table.add\_attribute\_value("values", Variant(values));

...

.. rubric::         Content sharing
   :name: content-sharing

Some widgets support content sharing with the special share-data
attribute. When the widget is tapped (clicked), data (image, video etc.)
can be shared with Content Hub.

The share-data attribute is a dictionary (VariantMap) that needs to
contain the following keys:

-  ``uri`` A single URI to share or an array of URIs.
-  ``content-type`` A name of the content type known to Content Hub,
   e.g. "links", "pictures", "videos". Please refer to Content Hub
   documentation for information on supported content types.

Here is an example of a shareable image:

PreviewWidget image("img", "image");

image.add\_attribute\_value("source",
Variant("http://www.example.org/graphics.png"));

`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__
share\_data;

share\_data["uri"] =
Variant("http://www.example.org/graphics\_big.png");

share\_data["content-type"] = Variant("pictures");

image.add\_attribute\_value("share-data", share\_data);

