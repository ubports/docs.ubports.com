QtSensors.qtsensors-sensorgestures-example
==========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

QSensorGestures class defines one predefined signal, void detected(const
QString &)

.. raw:: html

   </p>

.. raw:: html

   <p>

As well, Sensor Gesture Recognizers may implement any number of their
own custom signals.

.. raw:: html

   </p>

.. raw:: html

   <p>

Our shake recognizer defines one custom signal, void shake(), as well as
the predefined detected signal.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="sensorgestures-class-implementation">

SensorGestures Class Implementation

.. raw:: html

   </h2>

.. raw:: html

   <p>

In order to know about custom signals that may be available, we need to
ask the QSensorGestureManager about them,

.. raw:: html

   </p>

.. raw:: html

   <p>

Using the QSensorGesture::gestureIds() function, the manager will return
a QStringList of known and valid gesture Ids.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QSensorGestureManager</span> manager;
   Q_FOREACH (<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>gesture<span class="operator">,</span> manager<span class="operator">.</span>gestureIds()) {
   <span class="type">QTreeWidgetItem</span> <span class="operator">*</span>gestureId <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QTreeWidgetItem</span>(ui<span class="operator">-</span><span class="operator">&gt;</span>treeWidget);
   <span class="type">QStringList</span> recognizerSignals <span class="operator">=</span>  manager<span class="operator">.</span>recognizerSignals(gesture);
   gestureId<span class="operator">-</span><span class="operator">&gt;</span>setText(<span class="number">0</span><span class="operator">,</span>gesture);
   <span class="keyword">for</span> (<span class="type">int</span> i <span class="operator">=</span> <span class="number">0</span>; i <span class="operator">&lt;</span> recognizerSignals<span class="operator">.</span>count(); i<span class="operator">+</span><span class="operator">+</span>) {
   <span class="type">QTreeWidgetItem</span> <span class="operator">*</span>oneSignal <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QTreeWidgetItem</span>(gestureId);
   oneSignal<span class="operator">-</span><span class="operator">&gt;</span>setText(<span class="number">0</span><span class="operator">,</span>recognizerSignals<span class="operator">.</span>at(i));
   }
   ui<span class="operator">-</span><span class="operator">&gt;</span>treeWidget<span class="operator">-</span><span class="operator">&gt;</span>insertTopLevelItem(<span class="number">0</span><span class="operator">,</span>gestureId);
   }</pre>

.. raw:: html

   <p>

We can then use this to create a QSensorGesture object that we can use
to connect signals to, and start the detection process. A QSensorGesture
object will take a list of one or more recognizer ids in it's
constructor.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QSensorGestureManager</span> manager;
   <span class="type">QSensorGesture</span> <span class="operator">*</span>thisGesture <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QSensorGesture</span>(<span class="type">QStringList</span>() <span class="operator">&lt;</span><span class="operator">&lt;</span> currentRecognizer<span class="operator">,</span> <span class="keyword">this</span>);
   <span class="keyword">if</span> (currentRecognizer<span class="operator">.</span>contains(<span class="string">&quot;QtSensors.shake&quot;</span>)) {
   connect(thisGesture<span class="operator">,</span>SIGNAL(shake())<span class="operator">,</span>
   <span class="keyword">this</span><span class="operator">,</span>SLOT(onShake()));
   }
   connect(thisGesture<span class="operator">,</span>SIGNAL(detected(<span class="type">QString</span>))<span class="operator">,</span>
   <span class="keyword">this</span><span class="operator">,</span>SLOT(detectedShake(<span class="type">QString</span>)));
   thisGesture<span class="operator">-</span><span class="operator">&gt;</span>startDetection();</pre>

.. raw:: html

   <p>

and later stop the detection process.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    recognizerMap<span class="operator">[</span>currentRecognizer<span class="operator">]</span><span class="operator">-</span><span class="operator">&gt;</span>stopDetection();
   <span class="keyword">if</span> (currentRecognizer <span class="operator">=</span><span class="operator">=</span> <span class="string">&quot;QtSensors.shake&quot;</span>) {
   disconnect(recognizerMap<span class="operator">[</span>currentRecognizer<span class="operator">]</span><span class="operator">,</span>SIGNAL(shake())<span class="operator">,</span>
   <span class="keyword">this</span><span class="operator">,</span>SLOT(onShake()));
   }
   disconnect(recognizerMap<span class="operator">[</span>currentRecognizer<span class="operator">]</span><span class="operator">,</span>SIGNAL(detected(<span class="type">QString</span>))<span class="operator">,</span>
   <span class="keyword">this</span><span class="operator">,</span>SLOT(detectedShake(<span class="type">QString</span>)));</pre>

.. raw:: html

   <p>

The QSensorGesture object will contain all the signals of the valid
requested recognizers found on the system.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can discover which of the requested recognizer ID's that were not
found by using QSensorGesture::invalidIds();

.. raw:: html

   </p>

.. raw:: html

   <p>

By using QSensorGesture::gestureSignals(), you can get a QStringList of
usable signals.

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

sensorgestures/mainwindow.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

sensorgestures/mainwindow.h

.. raw:: html

   </li>

.. raw:: html

   <li>

sensorgestures/mainwindow.ui

.. raw:: html

   </li>

.. raw:: html

   <li>

sensorgestures/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

sensorgestures/sensorgestures.pro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@sensorgestures -->
