QtQuick.qtquick-modelviewsdata-cppmodels
========================================

.. raw:: html

   <h2 id="data-provided-in-a-custom-c-model">

Data Provided In A Custom C++ Model

.. raw:: html

   </h2>

.. raw:: html

   <p>

Models can be defined in C++ and then made available to QML. This is
useful for exposing existing C++ data models or otherwise complex
datasets to QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

A C++ model class can be defined as a QStringList, a QObjectList or a
QAbstractItemModel. The first two are useful for exposing simpler
datasets, while QAbstractItemModel provides a more flexible solution for
more complex models.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QStringList-based Model

.. raw:: html

   </h3>

.. raw:: html

   <p>

A model may be a simple QStringList, which provides the contents of the
list via the modelData role.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a ListView with a delegate that references its model item's
value using the modelData role:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">model</span>: <span class="name">myModel</span>
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">height</span>: <span class="number">25</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">modelData</span> }
   }
   }</pre>

.. raw:: html

   <p>

A Qt application can load this QML document and set the value of myModel
to a QStringList:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">QStringList</span> dataList;
   dataList<span class="operator">.</span>append(<span class="string">&quot;Item 1&quot;</span>);
   dataList<span class="operator">.</span>append(<span class="string">&quot;Item 2&quot;</span>);
   dataList<span class="operator">.</span>append(<span class="string">&quot;Item 3&quot;</span>);
   dataList<span class="operator">.</span>append(<span class="string">&quot;Item 4&quot;</span>);
   <span class="type">QQuickView</span> view;
   <span class="type">QQmlContext</span> <span class="operator">*</span>ctxt <span class="operator">=</span> view<span class="operator">.</span>rootContext();
   ctxt<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;myModel&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(dataList));</pre>

.. raw:: html

   <p>

The complete source code for this example is available in
examples/quick/models/stringlistmodel within the Qt install directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: There is no way for the view to know that the contents of a
QStringList have changed. If the QStringList changes, it will be
necessary to reset the model by calling
QQmlContext::setContextProperty() again.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QObjectList-based model

.. raw:: html

   </h3>

.. raw:: html

   <p>

A list of QObject\* values can also be used as a model. A
QList<QObject\*> provides the properties of the objects in the list as
roles.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following application creates a DataObject class with Q\_PROPERTY
values that will be accessible as named roles when a QList<DataObject\*>
is exposed to QML:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> DataObject : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName NOTIFY nameChanged)
   Q_PROPERTY(<span class="type">QString</span> color READ color WRITE setColor NOTIFY colorChanged)
   ...
   };
   <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span> argv)
   {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   <span class="type">QList</span><span class="operator">&lt;</span><span class="type">QObject</span><span class="operator">*</span><span class="operator">&gt;</span> dataList;
   dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 1&quot;</span><span class="operator">,</span> <span class="string">&quot;red&quot;</span>));
   dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 2&quot;</span><span class="operator">,</span> <span class="string">&quot;green&quot;</span>));
   dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 3&quot;</span><span class="operator">,</span> <span class="string">&quot;blue&quot;</span>));
   dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 4&quot;</span><span class="operator">,</span> <span class="string">&quot;yellow&quot;</span>));
   <span class="type">QQuickView</span> view;
   view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
   <span class="type">QQmlContext</span> <span class="operator">*</span>ctxt <span class="operator">=</span> view<span class="operator">.</span>rootContext();
   ctxt<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;myModel&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(dataList));
   ...</pre>

.. raw:: html

   <p>

The QObject\* is available as the modelData property. As a convenience,
the properties of the object are also made available directly in the
delegate's context. Here, view.qml references the DataModel properties
in the ListView delegate:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">model</span>: <span class="name">myModel</span>
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">height</span>: <span class="number">25</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">model</span>.<span class="name">modelData</span>.<span class="name">color</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span> }
   }
   }</pre>

.. raw:: html

   <p>

Note the use of color property with qualifier. The properties of the
object are not replicated in the model object, as they are easily
available via the modelData object.

.. raw:: html

   </p>

.. raw:: html

   <p>

The complete source code for this example is available in
examples/quick/models/objectlistmodel within the Qt install directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: There is no way for the view to know that the contents of a QList
has changed. If the QList changes, it is necessary to reset the model by
calling QQmlContext::setContextProperty() again.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QAbstractItemModel

.. raw:: html

   </h3>

.. raw:: html

   <p>

A model can be defined by subclassing QAbstractItemModel. This is the
best approach if you have a more complex model that cannot be supported
by the other approaches. A QAbstractItemModel can also automatically
notify a QML view when the model data changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

The roles of a QAbstractItemModel subclass can be exposed to QML by
reimplementing QAbstractItemModel::roleNames().

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is an application with a QAbstractListModel subclass named
AnimalModel, which exposes the type and sizes roles. It reimplements
QAbstractItemModel::roleNames() to expose the role names, so that they
can be accessed via QML:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Animal
   {
   <span class="keyword">public</span>:
   Animal(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>type<span class="operator">,</span> <span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>size);
   ...
   };
   <span class="keyword">class</span> AnimalModel : <span class="keyword">public</span> <span class="type">QAbstractListModel</span>
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   <span class="keyword">enum</span> AnimalRoles {
   TypeRole <span class="operator">=</span> <span class="type">Qt</span><span class="operator">::</span>UserRole <span class="operator">+</span> <span class="number">1</span><span class="operator">,</span>
   SizeRole
   };
   AnimalModel(<span class="type">QObject</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
   ...
   };
   <span class="type">QHash</span><span class="operator">&lt;</span><span class="type">int</span><span class="operator">,</span> <span class="type">QByteArray</span><span class="operator">&gt;</span> AnimalModel<span class="operator">::</span>roleNames() <span class="keyword">const</span> {
   <span class="type">QHash</span><span class="operator">&lt;</span><span class="type">int</span><span class="operator">,</span> <span class="type">QByteArray</span><span class="operator">&gt;</span> roles;
   roles<span class="operator">[</span>TypeRole<span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;type&quot;</span>;
   roles<span class="operator">[</span>SizeRole<span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;size&quot;</span>;
   <span class="keyword">return</span> roles;
   }
   <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span> argv)
   {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   AnimalModel model;
   model<span class="operator">.</span>addAnimal(Animal(<span class="string">&quot;Wolf&quot;</span><span class="operator">,</span> <span class="string">&quot;Medium&quot;</span>));
   model<span class="operator">.</span>addAnimal(Animal(<span class="string">&quot;Polar bear&quot;</span><span class="operator">,</span> <span class="string">&quot;Large&quot;</span>));
   model<span class="operator">.</span>addAnimal(Animal(<span class="string">&quot;Quoll&quot;</span><span class="operator">,</span> <span class="string">&quot;Small&quot;</span>));
   <span class="type">QQuickView</span> view;
   view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
   <span class="type">QQmlContext</span> <span class="operator">*</span>ctxt <span class="operator">=</span> view<span class="operator">.</span>rootContext();
   ctxt<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;myModel&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>model);
   ...</pre>

.. raw:: html

   <p>

This model is displayed by a ListView delegate that accesses the type
and size roles:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
   <span class="name">model</span>: <span class="name">myModel</span>
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="string">&quot;Animal: &quot;</span> <span class="operator">+</span> <span class="name">type</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">size</span> }
   }</pre>

.. raw:: html

   <p>

QML views are automatically updated when the model changes. Remember the
model must follow the standard rules for model changes and notify the
view when the model has changed by using
QAbstractItemModel::dataChanged(),
QAbstractItemModel::beginInsertRows(), and so on. See the Model
subclassing reference for more information.

.. raw:: html

   </p>

.. raw:: html

   <p>

The complete source code for this example is available in
examples/quick/models/abstractitemmodel within the Qt install directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

QAbstractItemModel presents a hierarchy of tables, but the views
currently provided by QML can only display list data. In order to
display the child lists of a hierarchical model, use the DelegateModel
QML type, which provides the following properties and functions to be
used with list models of QAbstractItemModel type:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

hasModelChildren role property to determine whether a node has child
nodes.

.. raw:: html

   </li>

.. raw:: html

   <li>

DelegateModel::rootIndex allows the root node to be specified

.. raw:: html

   </li>

.. raw:: html

   <li>

DelegateModel::modelIndex() returns a QModelIndex which can be assigned
to DelegateModel::rootIndex

.. raw:: html

   </li>

.. raw:: html

   <li>

DelegateModel::parentModelIndex() returns a QModelIndex which can be
assigned to DelegateModel::rootIndex

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Exposing C++ Data Models to QML

.. raw:: html

   </h3>

.. raw:: html

   <p>

The above examples use QQmlContext::setContextProperty() to set model
values directly in QML components. An alternative to this is to register
the C++ model class as a QML type (either directly from a C++
entry-point, or within the initialization function of a QML C++ plugin,
as shown below). This would allow the model classes to be created
directly as types within QML:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MyModelPlugin : <span class="keyword">public</span> <span class="type">QQmlExtensionPlugin</span>
   {
   Q_OBJECT
   Q_PLUGIN_METADATA(IID <span class="string">&quot;org.qt-project.QmlExtension.MyModel&quot;</span> FILE <span class="string">&quot;mymodel.json&quot;</span>)
   <span class="keyword">public</span>:
   <span class="type">void</span> registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri)
   {
   qmlRegisterType<span class="operator">&lt;</span>MyModel<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span>
   <span class="string">&quot;MyModel&quot;</span>);
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type">MyModel</span> {
   <span class="name">id</span>: <span class="name">myModel</span>
   <span class="type">ListElement</span> { <span class="name">someProperty</span>: <span class="string">&quot;some value&quot;</span> }
   }</pre>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
   <span class="name">model</span>: <span class="name">myModel</span>
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">someProperty</span> }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See Writing QML Extensions with C++ for details on writing QML C++
plugins.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-modelviewsdata-cppmodels.html -->
