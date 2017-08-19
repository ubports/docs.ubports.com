QtMultimedia.cameraoverview
===========================

.. raw:: html

   <p>

The Qt Multimedia API provides a number of camera related classes, so
you can access images and videos from mobile device cameras or
webcameras. There are both C++ and QML APIs for common tasks.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="camera-features">

Camera Features

.. raw:: html

   </h2>

.. raw:: html

   <p>

In order to use the camera classes a quick overview of the way a camera
works is needed. If you're already familiar with this, you can skip
ahead to Camera implementation details.

.. raw:: html

   </p>

.. raw:: html

   <h3>

The Lens Assembly

.. raw:: html

   </h3>

.. raw:: html

   <p>

At one end of the camera assembly is the lens assembly (one or more
lenses, arranged to focus light onto the sensor). The lenses themselves
can sometimes be moved to adjust things like focus and zoom, or they
might be fixed in an arrangement to give a good balance between objects
in focus, and cost.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some lens assemblies can automatically be adjusted so that an object at
different distances from the camera can be kept in focus. This is
usually done by measuring how sharp a particular area of the frame is,
and by adjusting the lens assembly until it is maximally sharp. In some
cases the camera will always use the center of the frame for this. Other
cameras may also allow the region to focus to be specified (for "touch
to zoom", or "face zoom" features).

.. raw:: html

   </p>

.. raw:: html

   <h3>

The Sensor

.. raw:: html

   </h3>

.. raw:: html

   <p>

Once light arrives at the sensor, it gets converted into digital pixels.
This process can depend on a number of things but ultimately comes down
to two things - how long the conversion is allowed to take, and how
bright the light is. The longer a conversion can take, the better the
quality. Using a flash can assist with letting more light hit the
sensor, allowing it to convert pixels faster, giving better quality for
the same amount of time. Conversely, allowing a longer conversion time
can let you take photos in darker environments, as long as the camera is
steady.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Image Processing

.. raw:: html

   </h3>

.. raw:: html

   <p>

After the image has been captured by the sensor, the camera firmware
performs various image processing tasks on it to compensate for various
sensor characteristics, current lighting, and desired image properties.
Faster sensor pixel conversion times tend to introduce digital noise, so
some amount of image processing can be done to remove this based on the
camera sensor settings.

.. raw:: html

   </p>

.. raw:: html

   <p>

The color of the image can also be adjusted at this stage to compensate
for different light sources - fluorescent lights and sunlight give very
different appearances to the same object, so the image can be adjusted
based on the white balance of the picture (due to the different color
temperatures of the light sources).

.. raw:: html

   </p>

.. raw:: html

   <p>

Some forms of "special effects" can also be performed at this stage.
Black and white, sepia, or "negative" style images can be produced.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Recording for Posterity

.. raw:: html

   </h3>

.. raw:: html

   <p>

Finally, once a perfectly focused, exposed and processed image has been
created, it can be put to good use. Camera images can be further
processed by application code (for example, to detect barcodes, or to
stitch together a panoramic image), or saved to a common format like
JPEG, or used to create a movie. Many of these tasks have classes to
assist them.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="camera-implementation-details">

Camera Implementation Details

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Detecting and Selecting Camera

.. raw:: html

   </h3>

.. raw:: html

   <p>

Before using the camera APIs, you should check that a camera is
available at runtime. If there is none, you could for example disable
camera related features in your application. To perform this check in
C++, use the QCameraInfo::availableCameras() function, as shown in the
example below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">bool checkCameraAvailability()
   {
   <span class="keyword">if</span> (<span class="type">QCameraInfo</span><span class="operator">::</span>availableCameras()<span class="operator">.</span>count() <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="keyword">return</span> <span class="keyword">true</span>;
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="keyword">false</span>;
   }</pre>

.. raw:: html

   <p>

In QML, use the QtMultimedia.availableCameras property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.4
   <span class="type">Item</span> {
   property <span class="type">bool</span> <span class="name">isCameraAvailable</span>: <span class="name">QtMultimedia</span>.<span class="name">availableCameras</span>.<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>
   }</pre>

.. raw:: html

   <p>

After determining whether a camera is available, access it using the
QCamera class in C++ or the Camera type in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

When multiple cameras are available, you can specify which one to use.

.. raw:: html

   </p>

.. raw:: html

   <p>

In C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QList</span><span class="operator">&lt;</span><span class="type">QCameraInfo</span><span class="operator">&gt;</span> cameras <span class="operator">=</span> <span class="type">QCameraInfo</span><span class="operator">::</span>availableCameras();
   foreach (<span class="keyword">const</span> <span class="type">QCameraInfo</span> <span class="operator">&amp;</span>cameraInfo<span class="operator">,</span> cameras) {
   <span class="keyword">if</span> (cameraInfo<span class="operator">.</span>deviceName() <span class="operator">=</span><span class="operator">=</span> <span class="string">&quot;mycamera&quot;</span>)
   camera <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCamera</span>(cameraInfo);
   }</pre>

.. raw:: html

   <p>

In QML, you can set the Camera deviceId property. All available IDs can
be retrieved from QtMultimedia.availableCameras:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">deviceId</span>: <span class="name">QtMultimedia</span>.<span class="name">availableCameras</span>[<span class="number">0</span>].<span class="name">deviceId</span>
   }</pre>

.. raw:: html

   <p>

You can also select the camera by its physical position on the system
rather than its device ID. This is useful on mobile devices, which often
have a front-facing and a back-facing camera.

.. raw:: html

   </p>

.. raw:: html

   <p>

In C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">camera <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCamera</span>(<span class="type">QCamera</span><span class="operator">::</span>FrontFace);</pre>

.. raw:: html

   <p>

In QML:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">position</span>: <span class="name">Camera</span>.<span class="name">FrontFace</span>
   }</pre>

.. raw:: html

   <p>

If neither device ID nor position is specified, the default camera will
be used. On desktop platforms, the default camera is set by the user in
the system settings. On a mobile device, the back-facing camera is
usually the default camera. You can get information about the default
camera using QCameraInfo::defaultCamera() in C++ or
QtMultimedia.defaultCamera in QML.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Viewfinder

.. raw:: html

   </h3>

.. raw:: html

   <p>

While not strictly necessary, it's often useful to be able to see what
the camera is pointing at. Most digital cameras allow an image feed from
the camera sensor at a lower resolution (usually up to the size of the
display of the camera) so you can compose a photo or video, and then
switch to a slower but higher resolution mode for capturing the image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Depending on whether you're using QML or C++, you can do this in
multiple ways. In QML, you can use Camera and VideoOutput together to
show a simple viewfinder:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.4
   <span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
   <span class="name">source</span>: <span class="name">camera</span>
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   <span class="comment">// You can adjust various settings in here</span>
   }
   }</pre>

.. raw:: html

   <p>

In C++, your choice depends on whether you are using widgets, or
QGraphicsView. The QCameraViewfinder class is used in the widgets case,
and QGraphicsVideoItem is useful for QGraphicsView.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">camera <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCamera</span>;
   viewfinder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCameraViewfinder</span>;
   camera<span class="operator">-</span><span class="operator">&gt;</span>setViewfinder(viewfinder);
   viewfinder<span class="operator">-</span><span class="operator">&gt;</span>show();
   camera<span class="operator">-</span><span class="operator">&gt;</span>start(); <span class="comment">// to start the viewfinder</span></pre>

.. raw:: html

   <p>

For advanced usage (like processing viewfinder frames as they come, to
detect objects or patterns), you can also derive from
QAbstractVideoSurface and set that as the viewfinder for the QCamera
object. In this case you will need to render the viewfinder image
yourself.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">camera <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCamera</span>;
   mySurface <span class="operator">=</span> <span class="keyword">new</span> MyVideoSurface;
   camera<span class="operator">-</span><span class="operator">&gt;</span>setViewfinder(mySurface);
   camera<span class="operator">-</span><span class="operator">&gt;</span>start();
   <span class="comment">// MyVideoSurface::present(..) will be called with viewfinder frames</span></pre>

.. raw:: html

   <p>

On mobile devices, the viewfinder image might not always be in the
orientation you would expect. The camera sensors on these devices are
often mounted in landscape while the natural orientation of the screen
is portrait. This results in the image appearing sideways or inverted
depending on the device orientation. In order to reflect on screen what
the user actually sees, you should make sure the viewfinder frames are
always rotated to the correct orientation, taking into account the
camera sensor orientation and the current display orientation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// Assuming a QImage has been created from the QVideoFrame that needs to be presented</span>
   <span class="type">QImage</span> videoFrame;
   <span class="type">QCameraInfo</span> cameraInfo(camera); <span class="comment">// needed to get the camera sensor position and orientation</span>
   <span class="comment">// Get the current display orientation</span>
   <span class="keyword">const</span> <span class="type">QScreen</span> <span class="operator">*</span>screen <span class="operator">=</span> <span class="type">QGuiApplication</span><span class="operator">::</span>primaryScreen();
   <span class="keyword">const</span> <span class="type">int</span> screenAngle <span class="operator">=</span> screen<span class="operator">-</span><span class="operator">&gt;</span>angleBetween(screen<span class="operator">-</span><span class="operator">&gt;</span>nativeOrientation()<span class="operator">,</span> screen<span class="operator">-</span><span class="operator">&gt;</span>orientation());
   <span class="type">int</span> rotation;
   <span class="keyword">if</span> (cameraInfo<span class="operator">.</span>position() <span class="operator">=</span><span class="operator">=</span> <span class="type">QCamera</span><span class="operator">::</span>BackFace) {
   rotation <span class="operator">=</span> (cameraInfo<span class="operator">.</span>orientation() <span class="operator">-</span> screenAngle) <span class="operator">%</span> <span class="number">360</span>;
   } <span class="keyword">else</span> {
   <span class="comment">// Front position, compensate the mirror</span>
   rotation <span class="operator">=</span> (<span class="number">360</span> <span class="operator">-</span> cameraInfo<span class="operator">.</span>orientation() <span class="operator">+</span> screenAngle) <span class="operator">%</span> <span class="number">360</span>;
   }
   <span class="comment">// Rotate the frame so it always shows in the correct orientation</span>
   videoFrame <span class="operator">=</span> videoFrame<span class="operator">.</span>transformed(<span class="type">QTransform</span>()<span class="operator">.</span>rotate(rotation));</pre>

.. raw:: html

   <h3>

Still Images

.. raw:: html

   </h3>

.. raw:: html

   <p>

After setting up a viewfinder and finding something photogenic, to
capture an image we need to initialize a new QCameraImageCapture object.
All that is then needed is to start the camera, lock it so that things
are in focus and the settings are not different from the viewfinder
while the image capture occurs, capture the image, and finally unlock
the camera ready for the next photo.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">imageCapture <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCameraImageCapture</span>(camera);
   camera<span class="operator">-</span><span class="operator">&gt;</span>setCaptureMode(<span class="type">QCamera</span><span class="operator">::</span>CaptureStillImage);
   camera<span class="operator">-</span><span class="operator">&gt;</span>start(); <span class="comment">// Viewfinder frames start flowing</span>
   <span class="comment">//on half pressed shutter button</span>
   camera<span class="operator">-</span><span class="operator">&gt;</span>searchAndLock();
   <span class="comment">//on shutter button pressed</span>
   imageCapture<span class="operator">-</span><span class="operator">&gt;</span>capture();
   <span class="comment">//on shutter button released</span>
   camera<span class="operator">-</span><span class="operator">&gt;</span>unlock();</pre>

.. raw:: html

   <h3>

Movies

.. raw:: html

   </h3>

.. raw:: html

   <p>

Previously we saw code that allowed the capture of a still image.
Recording video requires the use of a QMediaRecorder object.

.. raw:: html

   </p>

.. raw:: html

   <p>

To record video we need to create a camera object as before but this
time as well as creating a viewfinder, we will also initialize a media
recorder object.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">camera <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCamera</span>;
   recorder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaRecorder</span>(camera);
   camera<span class="operator">-</span><span class="operator">&gt;</span>setCaptureMode(<span class="type">QCamera</span><span class="operator">::</span>CaptureVideo);
   camera<span class="operator">-</span><span class="operator">&gt;</span>start();
   <span class="comment">//on shutter button pressed</span>
   recorder<span class="operator">-</span><span class="operator">&gt;</span>record();
   <span class="comment">// sometime later, or on another press</span>
   recorder<span class="operator">-</span><span class="operator">&gt;</span>stop();</pre>

.. raw:: html

   <p>

Signals from the mediaRecorder can be connected to slots to react to
changes in the state of the recorder or error events. Recording itself
starts with the record() function of mediaRecorder being called, this
causes the signal stateChanged() to be emitted. The recording process
can be changed with the record(), stop() and setMuted() slots in
QMediaRecorder.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Controlling the Imaging Pipeline

.. raw:: html

   </h3>

.. raw:: html

   <p>

Now that the basics of capturing images or movies are covered, there are
a number of ways to control the imaging pipeline to implement some
interesting techniques. As explained earlier, several physical and
electronic elements combine to determine the final images, and you can
control them with different classes.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Focus and Zoom

.. raw:: html

   </h4>

.. raw:: html

   <p>

Focusing (and zoom) is managed primarily by the QCameraFocus class.
QCameraFocus allows the developer to set the general policy by means of
the enums for the FocusMode and the FocusPointMode. FocusMode deals with
settings such as AutoFocus, ContinuousFocus and InfinityFocus, whereas
FocusPointMode deals with the various focus zones within the view that
are used for autofocus modes. FocusPointMode has support for face
recognition (where the camera supports it), center focus and a custom
focus where the focus point can be specified.

.. raw:: html

   </p>

.. raw:: html

   <p>

For camera hardware that supports it, Macro focus allows imaging of
things that are close to the sensor. This is useful in applications like
barcode recognition, or business card scanning.

.. raw:: html

   </p>

.. raw:: html

   <p>

In addition to focus, QCameraFocus allows you to control any available
optical or digital zoom. In general, optical zoom is higher quality, but
more expensive to manufacture, so the available zoom range might be
limited (or fixed to unity).

.. raw:: html

   </p>

.. raw:: html

   <h4>

Exposure, Aperture, Shutter Speed and Flash

.. raw:: html

   </h4>

.. raw:: html

   <p>

There are a number of settings that affect the amount of light that hits
the camera sensor, and hence the quality of the resulting image. The
QCameraExposure class allows you to adjust these settings. You can use
this class to implement some techniques like High Dynamic Range (HDR)
photos by locking the exposure parameters (with
QCamera::searchAndLock()), or motion blur by setting slow shutter speeds
with small apertures.

.. raw:: html

   </p>

.. raw:: html

   <p>

The main settings for automatic image taking are the exposure mode and
flash mode. Several other settings (aperture, ISO setting, shutter
speed) are usually managed automatically but can also be overridden if
desired.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can also adjust the QCameraExposure::meteringMode() to control which
parts of the camera frame to measure exposure at. Some camera
implementations also allow you to specify a specific point that should
be used for exposure metering - this is useful if you can let the user
touch or click on an interesting part of the viewfinder, and then use
this point so that the image exposure is best at that point.

.. raw:: html

   </p>

.. raw:: html

   <p>

Finally, you can control the flash hardware (if present) using this
class. In some cases the hardware may also double as a torch (typically
when the flash is LED based, rather than a xenon or other bulb). See
also Torch for an easy to use API for torch functionality.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Image Processing

.. raw:: html

   </h4>

.. raw:: html

   <p>

The QCameraImageProcessing class lets you adjust the image processing
part of the pipeline. This includes the white balance (or color
temperature), contrast, saturation, sharpening and denoising. Most
cameras support automatic settings for all of these, so you shouldn't
need to adjust them unless the user wants a specific setting.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you're taking a series of images (for example, to stitch them
together for a panoramic image), you should lock the image processing
settings so that all the images taken appear similar with
QCamera::lock(QCamera::LockWhiteBalance)/

.. raw:: html

   </p>

.. raw:: html

   <h4>

Canceling Asynchronous Operations

.. raw:: html

   </h4>

.. raw:: html

   <p>

Various operations such as image capture and auto focusing occur
asynchrously. These operations can often be canceled by the start of a
new operation as long as this is supported by the camera. For image
capture, the operation can be canceled by calling cancelCapture(). For
AutoFocus, autoexposure or white balance cancellation can be done by
calling QCamera::unlock(QCamera::LockFocus).

.. raw:: html

   </p>

.. raw:: html

   <h2 id="examples">

Examples

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are both C++ and QML examples available.

.. raw:: html

   </p>

.. raw:: html

   <h3>

C++ Examples

.. raw:: html

   </h3>

.. raw:: html

   <h3>

QML Examples

.. raw:: html

   </h3>

.. raw:: html

   <h2 id="reference-documentation">

Reference Documentation

.. raw:: html

   </h2>

.. raw:: html

   <h3>

C++ Classes

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCamera

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for system camera devices

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCameraExposure

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for exposure related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCameraFocus

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for focus and zoom related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCameraFocusZone

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Information on zones used for autofocusing a camera

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCameraImageCapture

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Used for the recording of media content

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCameraImageProcessing

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for image processing related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCameraInfo

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

General information about camera devices

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QImageEncoderSettings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Set of image encoder settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

QML Types

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Camera

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Access viewfinder frames, and take photos and movies

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraCapture

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for capturing camera images

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraExposure

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for exposure related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraFlash

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for flash related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraFocus

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for focus related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraImageProcessing

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for camera capture related settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraRecorder

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Controls video recording with the Camera

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@cameraoverview.html -->
