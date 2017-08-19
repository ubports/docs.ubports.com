QtSensors.creating-a-sensor-plugin
==================================

.. raw:: html

   <h2 id="how-a-sensor-plugin-is-loaded">

How a Sensor Plugin is Loaded

.. raw:: html

   </h2>

.. raw:: html

   <p>

Since sensor backends are created on demand, the sensor plugin is loaded
and asked to register the sensor backends it handles. The plugin should
implement QSensorPluginInterface::registerSensors() and call
QSensorManager::registerBackend() to register available backends.
Typically the plugin will also inherit from QSensorBackendFactory and
implement QSensorBackendFactory::createBackend() in order to instantiate
backends it has registered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The simplest plugin will have just once sensor backend although there is
no reason that multiple sensor backends cannot be in a plugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example follows.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MyPluginClass : <span class="keyword">public</span> <span class="type">QObject</span><span class="operator">,</span> <span class="keyword">public</span> <span class="type">QSensorPluginInterface</span><span class="operator">,</span> <span class="keyword">public</span> <span class="type">QSensorBackendFactory</span>
   {
   Q_OBJECT
   <span class="comment">//Q_PLUGIN_METADATA(IID &quot;com.qt-project.Qt.QSensorPluginInterface/1.0&quot; FILE &quot;plugin.json&quot;)</span>
   Q_INTERFACES(<span class="type">QSensorPluginInterface</span>)
   <span class="keyword">public</span>:
   <span class="type">void</span> registerSensors()
   {
   <span class="type">QSensorManager</span><span class="operator">::</span>registerBackend(<span class="type">QAccelerometer</span><span class="operator">::</span>type<span class="operator">,</span> MyBackend<span class="operator">::</span>id<span class="operator">,</span> <span class="keyword">this</span>);
   }
   <span class="type">QSensorBackend</span> <span class="operator">*</span>createBackend(<span class="type">QSensor</span> <span class="operator">*</span>sensor)
   {
   <span class="keyword">if</span> (sensor<span class="operator">-</span><span class="operator">&gt;</span>identifier() <span class="operator">=</span><span class="operator">=</span> MyBackend<span class="operator">::</span>id)
   <span class="keyword">return</span> <span class="keyword">new</span> MyBackend(sensor);
   <span class="keyword">return</span> <span class="number">0</span>;
   }
   };</pre>

.. raw:: html

   <!-- @@@creating-a-sensor-plugin.html -->
