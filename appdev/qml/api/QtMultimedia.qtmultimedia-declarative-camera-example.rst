QtMultimedia.qtmultimedia-declarative-camera-example
====================================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This example demonstrates how to use the Qt Multimedia QML API to access
camera functions. It shows how to change settings and to capture images.

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

Most of the QML code supports the user interface for this application
with the camera types being mostly found in declarative-camera.qml and
CaptureControls.qml.

.. raw:: html

   </p>

.. raw:: html

   <p>

CaptureControls, which is implemented in CaptureControls.qml, generates
a column on the right hand side of the screen which includes control
buttons for focus (not initially visible), capture, flash modes, white
balance, exposure compensation, and if a preview is available, a preview
button. The last button exits from the application.

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

declarative-camera/CameraButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/CameraListButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/CameraListPopup.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/CameraPropertyButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/CameraPropertyPopup.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/FocusButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/PhotoCaptureControls.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/PhotoPreview.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/Popup.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/VideoCaptureControls.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/VideoPreview.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/ZoomControl.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/declarative-camera.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/qmlcamera.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/declarative-camera.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/declarative-camera.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/declarative-camera.qrc

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

declarative-camera/images/camera\_auto\_mode.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_camera\_setting.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_flash\_auto.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_flash\_fill.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_flash\_off.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_flash\_redeye.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_white\_balance\_cloudy.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_white\_balance\_flourescent.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_white\_balance\_incandescent.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/camera\_white\_balance\_sunny.png

.. raw:: html

   </li>

.. raw:: html

   <li>

declarative-camera/images/toolbutton.png

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@declarative-camera -->
