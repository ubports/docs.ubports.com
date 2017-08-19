QtQuick.qtquick-demos-photosurface-example
==========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Photo Surface demonstrates how to use a Repeater with a FolderListModel
and a FileDialog to access images from a folder selected by a user and
how to handle dragging, rotation and pinch zooming within the same item
using a PinchArea that contains a MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

All the app code is contained in one QML file, photosurface.qml. Inline
JavaScript code is used to place, rotate, and scale images on the photo
surface.

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

   <h2 id="creating-the-main-window">

Creating the Main Window

.. raw:: html

   </h2>

.. raw:: html

   <p>

To create the main window for the Photo Surface app, we use the Window
QML type as the root item. It automatically sets up the window for use
with Qt Quick graphical types:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Window.Window.md">Window</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">visible</span>: <span class="number">true</span>
   <span class="name">width</span>: <span class="number">1024</span>; <span class="name">height</span>: <span class="number">600</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   property <span class="type">int</span> <span class="name">highestZ</span>: <span class="number">0</span>
   property <span class="type">real</span> <span class="name">defaultSize</span>: <span class="number">200</span>
   property <span class="type">var</span> <span class="name">currentFrame</span>: <span class="name">undefined</span></pre>

.. raw:: html

   <p>

To use the Window type, we must import it:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Window <span class="number">2.1</span></pre>

.. raw:: html

   <h2 id="accessing-folder-contents">

Accessing Folder Contents

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use a Repeater QML type together with the FolderListModel to display
GIF, JPG, and PNG images located in a folder:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="name">FolderListModel</span> {
   <span class="name">id</span>: <span class="name">folderModel</span>
   <span class="name">objectName</span>: <span class="string">&quot;folderModel&quot;</span>
   <span class="name">showDirs</span>: <span class="number">false</span>
   <span class="name">nameFilters</span>: [<span class="string">&quot;*.png&quot;</span>, <span class="string">&quot;*.jpg&quot;</span>, <span class="string">&quot;*.gif&quot;</span>]
   }</pre>

.. raw:: html

   <p>

To use the FolderListModel type, we must import it:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">Qt</span><span class="operator">.</span>labs<span class="operator">.</span>folderlistmodel <span class="number">1.0</span></pre>

.. raw:: html

   <p>

We use a FileDialog to enable users to select the folder that contains
the images:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">FileDialog</span> {
   <span class="name">id</span>: <span class="name">fileDialog</span>
   <span class="name">title</span>: <span class="string">&quot;Choose a folder with some images&quot;</span>
   <span class="name">selectFolder</span>: <span class="number">true</span>
   <span class="name">onAccepted</span>: <span class="name">folderModel</span>.<span class="name">folder</span> <span class="operator">=</span> <span class="name">fileUrl</span> <span class="operator">+</span> <span class="string">&quot;/&quot;</span>
   }</pre>

.. raw:: html

   <p>

To use the FileDialog type, we must import Qt Quick Dialogs:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Dialogs <span class="number">1.0</span></pre>

.. raw:: html

   <p>

We use the fileDialog.open() function to open the file dialog when the
app starts:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: fileDialog<span class="operator">.</span>open()</pre>

.. raw:: html

   <p>

Users can also click the file dialog icon to open the file dialog. We
use an Image QML type to display the icon. Inside the Image type, we use
a MouseArea with the onClicked signal handler to call the
fileDialog.open() function:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">anchors</span>.margins: <span class="number">10</span>
   <span class="name">source</span>: <span class="string">&quot;resources/folder.png&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">anchors</span>.margins: -<span class="number">10</span>
   <span class="name">onClicked</span>: <span class="name">fileDialog</span>.<span class="name">open</span>()
   }
   }</pre>

.. raw:: html

   <h2 id="displaying-images-on-the-photo-surface">

Displaying Images on the Photo Surface

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use a Rectangle as a delegate for a Repeater to provide a frame for
each image that the FolderListModel finds in the selected folder. We use
JavaScript Math() methods to place the frames randomly on the photo
surface and to rotate them at random angles, as well as to scale the
images:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">photoFrame</span>
   <span class="name">width</span>: <span class="name">image</span>.<span class="name">width</span> <span class="operator">*</span> <span class="name">image</span>.<span class="name">scale</span> <span class="operator">+</span> <span class="number">20</span>
   <span class="name">height</span>: <span class="name">image</span>.<span class="name">height</span> <span class="operator">*</span> <span class="name">image</span>.<span class="name">scale</span> <span class="operator">+</span> <span class="number">20</span>
   <span class="name">border</span>.color: <span class="string">&quot;black&quot;</span>
   <span class="name">border</span>.width: <span class="number">2</span>
   <span class="name">smooth</span>: <span class="number">true</span>
   <span class="name">antialiasing</span>: <span class="number">true</span>
   <span class="name">x</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">root</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">defaultSize</span>
   <span class="name">y</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">root</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">defaultSize</span>
   <span class="name">rotation</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">13</span> <span class="operator">-</span> <span class="number">6</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">image</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectFit</span>
   <span class="name">source</span>: <span class="name">folderModel</span>.<span class="name">folder</span> <span class="operator">+</span> <span class="name">fileName</span>
   <span class="name">scale</span>: <span class="name">defaultSize</span> <span class="operator">/</span> <span class="name">Math</span>.<span class="name">max</span>(<span class="name">sourceSize</span>.<span class="name">width</span>, <span class="name">sourceSize</span>.<span class="name">height</span>)
   <span class="name">antialiasing</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <h2 id="handling-pinch-gestures">

Handling Pinch Gestures

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use a PinchArea that contains a MouseArea in the photo frames to
handle dragging, rotation and pinch zooming of the frame:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.PinchArea.md">PinchArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">pinch</span>.target: <span class="name">photoFrame</span>
   <span class="name">pinch</span>.minimumRotation: -<span class="number">360</span>
   <span class="name">pinch</span>.maximumRotation: <span class="number">360</span>
   <span class="name">pinch</span>.minimumScale: <span class="number">0.1</span>
   <span class="name">pinch</span>.maximumScale: <span class="number">10</span>
   <span class="name">onPinchStarted</span>: <span class="name">setFrameColor</span>();</pre>

.. raw:: html

   <p>

We use the pinch group property to control how the photo frames react to
pinch gestures. The pinch.target sets photoFrame as the item to
manipulate. The rotation properties specify that the frames can be
rotated at all angles and the scale properties specify that they can be
scaled between 0.1 and 10.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the MouseArea's onPressed signal handler, we raise the selected photo
frame to the top by increasing the value of its z property. The root
item stores the z value of the top-most frame. The border color of the
photo frame is controlled in the onEntered signal handler to highlight
the selected image:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">dragArea</span>
   <span class="name">hoverEnabled</span>: <span class="number">true</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">photoFrame</span>
   <span class="name">onPressed</span>: {
   <span class="name">photoFrame</span>.<span class="name">z</span> <span class="operator">=</span> ++<span class="name">root</span>.<span class="name">highestZ</span>;
   <span class="name">parent</span>.<span class="name">setFrameColor</span>();
   }
   <span class="name">onEntered</span>: <span class="name">parent</span>.<span class="name">setFrameColor</span>();</pre>

.. raw:: html

   <p>

To enable you to test the example on the desktop, we use the MouseArea's
onWheel signal handler to simulate pinch gestures by using a mouse:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                    <span class="name">onWheel</span>: {
   <span class="keyword">if</span> (<span class="name">wheel</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ControlModifier</span>) {
   <span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">+=</span> <span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">y</span> <span class="operator">/</span> <span class="number">120</span> <span class="operator">*</span> <span class="number">5</span>;
   <span class="keyword">if</span> (<span class="name">Math</span>.<span class="name">abs</span>(<span class="name">photoFrame</span>.<span class="name">rotation</span>) <span class="operator">&lt;</span> <span class="number">4</span>)
   <span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">=</span> <span class="number">0</span>;
   } <span class="keyword">else</span> {
   <span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">+=</span> <span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">x</span> <span class="operator">/</span> <span class="number">120</span>;
   <span class="keyword">if</span> (<span class="name">Math</span>.<span class="name">abs</span>(<span class="name">photoFrame</span>.<span class="name">rotation</span>) <span class="operator">&lt;</span> <span class="number">0.6</span>)
   <span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">=</span> <span class="number">0</span>;
   var <span class="name">scaleBefore</span> = <span class="name">image</span>.<span class="name">scale</span>;
   <span class="name">image</span>.<span class="name">scale</span> <span class="operator">+=</span> <span class="name">image</span>.<span class="name">scale</span> <span class="operator">*</span> <span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">y</span> <span class="operator">/</span> <span class="number">120</span> <span class="operator">/</span> <span class="number">10</span>;
   <span class="name">photoFrame</span>.<span class="name">x</span> <span class="operator">-=</span> <span class="name">image</span>.<span class="name">width</span> <span class="operator">*</span> (<span class="name">image</span>.<span class="name">scale</span> <span class="operator">-</span> <span class="name">scaleBefore</span>) <span class="operator">/</span> <span class="number">2.0</span>;
   <span class="name">photoFrame</span>.<span class="name">y</span> <span class="operator">-=</span> <span class="name">image</span>.<span class="name">height</span> <span class="operator">*</span> (<span class="name">image</span>.<span class="name">scale</span> <span class="operator">-</span> <span class="name">scaleBefore</span>) <span class="operator">/</span> <span class="number">2.0</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

The onWheel signal handler is called in response to mouse wheel
gestures. Use the vertical wheel to zoom and Ctrl and the vertical wheel
to rotate frames. If the mouse has a horizontal wheel, use it to rotate
frames.

.. raw:: html

   </p>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

demos/photosurface/photosurface.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photosurface/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photosurface/photosurface.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photosurface/photosurface.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photosurface/photosurface.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QML Applications.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@demos/photosurface -->
