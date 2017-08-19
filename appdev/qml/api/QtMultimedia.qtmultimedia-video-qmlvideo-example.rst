QtMultimedia.qtmultimedia-video-qmlvideo-example
================================================

.. raw:: html

   <p>

QML Video demonstrates the various transformations (move; resize;
rotate; change aspect ratio) that can be applied to QML VideoOutput and
Camera types.

.. raw:: html

   </p>

.. raw:: html

   <p>

It also shows how native code can be combined with QML to implement more
advanced functionality - in this case, C++ code is used to calculate the
QML frame rate. This value is rendered in QML in a semi-transparent item
overlaid on the video content.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following image shows the application executing the video-overlay
scene, which creates a dummy overlay item (just a semi-transparent
Rectangle), which moves across the VideoOutput item.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="application-structure">

Application Structure

.. raw:: html

   </h2>

.. raw:: html

   <p>

The video/qmlvideo/qml/qmlvideo/main.qml file creates a UI which
includes the following items:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Two Button instances, each of which displays a filename, and can be used
to launch a FileBrowser

.. raw:: html

   </li>

.. raw:: html

   <li>

An exit Button

.. raw:: html

   </li>

.. raw:: html

   <li>

A SceneSelectionPanel, which is a flickable list displaying the
available scenes

.. raw:: html

   </li>

.. raw:: html

   <li>

At the lower left, an item which displays the QML repainting rate - the
upper number is the instantaneous frame rate and the lower number is the
average over the past second.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Each scene in the flickable list is implemented in its own QML file -
for example the video-basic scene (which just displays a static
VideoOutput in the center of the screen) is implemented in the
VideoBasic.qml file. As you can see from the code, this makes use of a
type of inheritance: a VideoBasic item ...

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">SceneBasic</span> {
   <span class="name">contentType</span>: <span class="string">&quot;video&quot;</span>
   }</pre>

.. raw:: html

   <p>

... is-a SceneBasic ...

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Scene</span> {
   <span class="name">id</span>: <span class="name">root</span>
   property <span class="type">string</span> <span class="name">contentType</span>
   ...
   <span class="type">Content</span> {
   <span class="name">id</span>: <span class="name">content</span>
   ...
   }
   <span class="type">Text</span> {
   <span class="type">anchors</span> {
   <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">margins</span>: <span class="number">20</span>
   }
   <span class="name">text</span>: <span class="name">content</span>.<span class="name">started</span> ? <span class="string">&quot;Tap the screen to stop content&quot;</span>
   : <span class="string">&quot;Tap the screen to start content&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;#e0e0e0&quot;</span>
   <span class="name">z</span>: <span class="number">2.0</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> (<span class="name">content</span>.<span class="name">started</span>)
   <span class="name">content</span>.<span class="name">stop</span>()
   <span class="keyword">else</span>
   <span class="name">content</span>.<span class="name">start</span>()
   }
   }
   <span class="name">Component</span>.onCompleted: <span class="name">root</span>.<span class="name">content</span> <span class="operator">=</span> <span class="name">content</span>
   }</pre>

.. raw:: html

   <p>

... which is-a Scene:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">root</span>
   ...
   property <span class="type">QtObject</span> <span class="name">content</span>
   ...
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">closeButton</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">margins</span>: <span class="name">root</span>.<span class="name">margins</span>
   }
   <span class="name">width</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">parent</span>.<span class="name">width</span>, <span class="name">parent</span>.<span class="name">height</span>) <span class="operator">/</span> <span class="number">12</span>
   <span class="name">height</span>: <span class="name">Math</span>.<span class="name">min</span>(<span class="name">parent</span>.<span class="name">width</span>, <span class="name">parent</span>.<span class="name">height</span>) <span class="operator">/</span> <span class="number">12</span>
   <span class="name">z</span>: <span class="number">2.0</span>
   <span class="name">bgColor</span>: <span class="string">&quot;#212121&quot;</span>
   <span class="name">bgColorSelected</span>: <span class="string">&quot;#757575&quot;</span>
   <span class="name">textColorSelected</span>: <span class="string">&quot;white&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Back&quot;</span>
   <span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">close</span>()
   }
   }</pre>

.. raw:: html

   <p>

SceneBasic describes the structure and behaviour of the scene, but is
agnostic of the type of content which will be displayed - this is
abstracted by Content.

.. raw:: html

   </p>

.. raw:: html

   <p>

This pattern allows us to define a particular use case (in this case,
simply display a static piece of content), and then instantiate that use
case for both video content (VideoBasic) and camera content
(CameraBasic). This approach is used to implement many of the other
scenes - for example, "repeatedly slide the content from left to right
and back again" is implemented by SceneMove, on which VideoMove and
CameraMove are based.

.. raw:: html

   </p>

.. raw:: html

   <p>

Depending on the value of the contentType property in the top-level
scene instance, the embedded Content item creates either a MediaPlayer
or a Camera item.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="calculating-and-displaying-qml-painting-rate">

Calculating and Displaying QML Painting Rate

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML painting rate is calculated by the FrequencyMonitor class, which
turns a stream of events (received via the notify() slot), into an
instantaneous and an averaged frequency:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="keyword">class</span> FrequencyMonitor : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">qreal</span> instantaneousFrequency READ instantaneousFrequency NOTIFY instantaneousFrequencyChanged)
   Q_PROPERTY(<span class="type">qreal</span> averageFrequency READ averageFrequency NOTIFY averageFrequencyChanged)
   <span class="keyword">public</span>:
   ...
   <span class="keyword">static</span> <span class="type">void</span> qmlRegisterType();
   <span class="keyword">public</span> <span class="keyword">slots</span>:
   Q_INVOKABLE <span class="type">void</span> notify();
   };</pre>

.. raw:: html

   <p>

The FrequencyMonitor class is exposed to QML like this

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">void</span> FrequencyMonitor<span class="operator">::</span>qmlRegisterType()
   {
   <span class="operator">::</span>qmlRegisterType<span class="operator">&lt;</span>FrequencyMonitor<span class="operator">&gt;</span>(<span class="string">&quot;FrequencyMonitor&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;FrequencyMonitor&quot;</span>);
   }</pre>

.. raw:: html

   <p>

and its data is displayed by defining a QML item called FrequencyItem,
like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import FrequencyMonitor 1.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">root</span>
   ...
   <span class="keyword">function</span> <span class="name">notify</span>() {
   <span class="name">monitor</span>.<span class="name">notify</span>()
   }
   <span class="type">FrequencyMonitor</span> {
   <span class="name">id</span>: <span class="name">monitor</span>
   <span class="name">onAverageFrequencyChanged</span>: {
   <span class="name">averageFrequencyText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">monitor</span>.<span class="name">averageFrequency</span>.<span class="name">toFixed</span>(<span class="number">2</span>)
   }
   }
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">labelText</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">margins</span>: <span class="number">10</span>
   }
   <span class="name">color</span>: <span class="name">root</span>.<span class="name">textColor</span>
   <span class="name">font</span>.pixelSize: <span class="number">0.6</span> <span class="operator">*</span> <span class="name">root</span>.<span class="name">textSize</span>
   <span class="name">text</span>: <span class="name">root</span>.<span class="name">label</span>
   <span class="name">width</span>: <span class="name">root</span>.<span class="name">width</span> <span class="operator">-</span> <span class="number">2</span><span class="operator">*</span><span class="name">anchors</span>.<span class="name">margins</span>
   <span class="name">elide</span>: <span class="name">Text</span>.<span class="name">ElideRight</span>
   }
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">averageFrequencyText</span>
   <span class="type">anchors</span> {
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">margins</span>: <span class="number">10</span>
   }
   <span class="name">color</span>: <span class="name">root</span>.<span class="name">textColor</span>
   <span class="name">font</span>.pixelSize: <span class="name">root</span>.<span class="name">textSize</span>
   }
   }</pre>

.. raw:: html

   <p>

The result looks like this:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

All that remains is to connect the afterRendering() signal of the
QQuickView object to a JavaScript function, which will eventually call
frequencyItem.notify():

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="preprocessor">#include &lt;QtGui/QGuiApplication&gt;</span>
   <span class="preprocessor">#include &lt;QtQuick/QQuickItem&gt;</span>
   <span class="preprocessor">#include &lt;QtQuick/QQuickView&gt;</span>
   <span class="preprocessor">#include &quot;trace.h&quot;</span>
   <span class="preprocessor">#ifdef PERFORMANCEMONITOR_SUPPORT</span>
   <span class="preprocessor">#include &quot;performancemonitordeclarative.h&quot;</span>
   <span class="preprocessor">#endif</span>
   <span class="keyword">static</span> <span class="keyword">const</span> <span class="type">QString</span> DefaultFileName1 <span class="operator">=</span> <span class="string">&quot;&quot;</span>;
   ...
   <span class="type">QQuickItem</span> <span class="operator">*</span>rootObject <span class="operator">=</span> viewer<span class="operator">.</span>rootObject();
   ...
   <span class="type">QObject</span><span class="operator">::</span>connect(<span class="operator">&amp;</span>viewer<span class="operator">,</span> SIGNAL(afterRendering())<span class="operator">,</span>
   rootObject<span class="operator">,</span> SLOT(qmlFramePainted()));</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

video/qmlvideo/qmlvideo.svg

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/trace.h

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraBasic.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraDrag.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraDummy.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraFullScreen.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraFullScreenInverted.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraMove.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraOverlay.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraResize.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraRotate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/CameraSpin.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/Content.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/ErrorDialog.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/FileBrowser.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/Scene.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneBasic.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneDrag.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneFullScreen.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneFullScreenInverted.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneMove.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneMulti.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneOverlay.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneResize.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneRotate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneSelectionPanel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SceneSpin.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/SeekControl.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoBasic.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoDrag.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoDummy.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoFillMode.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoFullScreen.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoFullScreenInverted.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoMetadata.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoMove.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoOverlay.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoPlaybackRate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoResize.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoRotate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoSeek.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/VideoSpin.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qml/qmlvideo/main.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qmlvideo.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/qmlvideo.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Images:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

video/qmlvideo/images/folder.png

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/images/leaves.jpg

.. raw:: html

   </li>

.. raw:: html

   <li>

video/qmlvideo/images/up.png

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@video/qmlvideo -->
