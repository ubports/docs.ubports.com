UbuntuUserInterfaceToolkit.ubuntu-theming-themes
================================================

.. raw:: html

   <p>

A theme is a collection of style implementations. The style component
names are typically built using the component name and the Style word,
exceptions being documented per component.

.. raw:: html

   </p>

.. raw:: html

   <p>

In addition to the styles the theme can provide palette values used by
the style and components. The palette values are defined in Palette.qml
file, which must either be derived from Palette component or from a
parent theme's Palette.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two types of themes, shared themes and application themes.
These themes do not differ in structure but in the way they are exposed.
Shared themes are located either under QML2\_IMPORT\_PATH or
XDG\_DATA\_DIR. Application themes are located under the application's
private folder, therefore they are typically serving the application
styling needs, and cannot be shared. Shared themes are also presented as
QML extension modules, giving the possibility for application themes to
extend them.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Yet there is no possibility to install shared themes into the
system through app store, only by providing them as part of the system
image.

.. raw:: html

   </p>

.. raw:: html

   <p>

The system provides two shared themes, Ambiance and SuruDark, the latest
derived from Ambiance theme. Both themes can be used as base theme in
application themes, by importing the modules defining them. If you
decide to create a shared theme that can be used also as base for custom
or application themes, it is recommended to do the same approach as the
system themes do.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Theme structure

.. raw:: html

   </h3>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The theme structure is similar to a QML extension module structure, and
this applies to both shared and application themes. Contains component
style documents, palette description document, qmldir file and a special
file called parent\_theme. All these files are optional in a theme
depending on context.

.. raw:: html

   </p>

.. raw:: html

   <p>

parent\_theme is a special file which defines the theme the current one
is derifed from. The parent theme must be a shared theme and its name
must be specified in dotted format. For example SuruDark theme is
located under $QML2\_IMPORT\_PATH/Ubuntu/Components/Themes/SuruDark
folder. This means that the theme name is identified by the
Ubuntu.Components.Themes.SuruDark dotted format.

.. raw:: html

   </p>

.. raw:: html

   <p>

In addition to the files mentioned, themes can provide components
supporting the styling (i.e. components providing common visuals in the
style implementations). Style implementations can also provide
additional APIs alongside the standard style API. These additional APIs
are typically there to configure the style itself, or to turn on/off
features provided by styles in derived themes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Starting with Ubuntu Components version 1.3, themes must provide
versioned styles. This means that themes must store the styles in
subfolders, meaning that toolkit version 1.3 must have the version
specific styles under the theme's 1.3/ subfolder. The styling engine
will look for the styles based on the theme version used by the
component. If the style is not found with the requested version, it will
fall back to the previous version of that style.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h4>

Standalone theme

.. raw:: html

   </h4>

.. raw:: html

   <p>

A standalone theme is a theme which defines all style documents and
theme palette, and it is not derived from any theme. The only standalone
theme UI Toolkit provides is the Ambiance theme. Both shared and
application themes can be standalone themes, however Applications should
make sure they implement all the styles used by the toolkit components
used in the application. qmldir file presence is mandatory only if the
theme is shared.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Derived themes

.. raw:: html

   </h4>

.. raw:: html

   <p>

As the name suggests derived themes are themes which use other themes
(standalone or derived ones) as base theme. These themes must have the
parent\_theme file which contains the name of the theme they are derived
from. These themes do not have to provide palette configuration as long
as they use the derived theme's palette values.

.. raw:: html

   </p>

.. raw:: html

   <p>

Derived themes should only list those style components which overrule
the derived style or extend the derived style. The only requirement is
to use the same document name as the parent theme is having.

.. raw:: html

   </p>

.. raw:: html

   <p>

Let's take SuruDark theme as en example. The theme is derived from
Ambiance theme, and only extends few style components. When theming
engine loads the style components, it looks after the styles starting
from the current theme. If the style is not found there, it tries to
look after the style in the parent themes until it finds one.

.. raw:: html

   </p>

.. raw:: html

   <p>

The extended (or even overridden) style component documents must follow
the naming convention, and must have the names implied by the components
styled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The style imports the Ambiance theme module, and extends the Ambiance
ListItemStyle component. The same is done in the other style components.
However, Palette defines own values, and does not re-use Ambiance
palette values.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Themes 1.3
   <span class="type">Palette</span> {
   <span class="name">normal</span>: <span class="name">SuruDarkNormal</span> {}
   <span class="name">disabled</span>: <span class="name">SuruDarkNormal</span> {
   <span class="name">Component</span>.onCompleted: {
   <span class="comment">// specific disabled colors</span>
   var <span class="name">diff</span> = {
   foreground: <span class="name">UbuntuColors</span>.<span class="name">inkstone</span>,
   field: <span class="name">UbuntuColors</span>.<span class="name">inkstone</span>,
   positiveText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>,
   negativeText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>,
   activityText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>,
   focusText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>
   };
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">p</span> in <span class="name">normal</span>) {
   <span class="comment">// skip objectName and all change signals</span>
   <span class="keyword">if</span> (<span class="name">p</span> <span class="operator">==</span> <span class="string">&quot;objectName&quot;</span><span class="operator">||</span> <span class="name">p</span>.<span class="name">indexOf</span>(<span class="string">&quot;Changed&quot;</span>) <span class="operator">&gt;</span> <span class="number">0</span>) <span class="keyword">continue</span>;
   <span class="name">disabled</span>[<span class="name">p</span>] <span class="operator">=</span> <span class="name">diff</span>[<span class="name">p</span>] <span class="operator">||</span> (
   <span class="comment">// if not specific, colors are 30% opaque normal</span>
   <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">normal</span>[<span class="name">p</span>].<span class="name">r</span>, <span class="name">normal</span>[<span class="name">p</span>].<span class="name">g</span>, <span class="name">normal</span>[<span class="name">p</span>].<span class="name">b</span>, <span class="name">normal</span>[<span class="name">p</span>].<span class="name">a</span> <span class="operator">*</span> <span class="number">0.5</span>)
   );
   }
   }
   }
   <span class="comment">// selected differs from normal in background, base, foreground</span>
   <span class="name">selected</span>: <span class="name">SuruDarkSelected</span> {}
   <span class="comment">// selected differs from normal in background, base, foreground</span>
   <span class="name">selectedDisabled</span>: <span class="name">SuruDarkSelected</span> {
   <span class="name">Component</span>.onCompleted: {
   var <span class="name">diff</span> = {
   background: <span class="name">UbuntuColors</span>.<span class="name">inkstone</span>,
   base: <span class="name">UbuntuColors</span>.<span class="name">inkstone</span>,
   foreground: <span class="name">UbuntuColors</span>.<span class="name">inkstone</span>,
   positiveText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>,
   negativeText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>,
   activityText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>,
   focusText: <span class="name">UbuntuColors</span>.<span class="name">porcelain</span>
   };
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">p</span> in <span class="name">selected</span>) {
   <span class="comment">// skip objectName and all change signals</span>
   <span class="keyword">if</span> (<span class="name">p</span> <span class="operator">==</span> <span class="string">&quot;objectName&quot;</span><span class="operator">||</span> <span class="name">p</span>.<span class="name">indexOf</span>(<span class="string">&quot;Changed&quot;</span>) <span class="operator">&gt;</span> <span class="number">0</span>) <span class="keyword">continue</span>;
   <span class="name">selectedDisabled</span>[<span class="name">p</span>] <span class="operator">=</span> <span class="name">diff</span>[<span class="name">p</span>] <span class="operator">||</span> (
   <span class="comment">// if not specific, colors are 30% opaque normal</span>
   <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">selected</span>[<span class="name">p</span>].<span class="name">r</span>, <span class="name">selected</span>[<span class="name">p</span>].<span class="name">g</span>, <span class="name">selected</span>[<span class="name">p</span>].<span class="name">b</span>, <span class="name">normal</span>[<span class="name">p</span>].<span class="name">a</span> <span class="operator">*</span> <span class="number">0.5</span>)
   );
   }
   }
   }
   <span class="name">highlighted</span>: <span class="name">SuruDarkNormal</span> {
   <span class="name">background</span>: <span class="name">UbuntuColors</span>.<span class="name">slate</span>
   <span class="name">base</span>: <span class="name">UbuntuColors</span>.<span class="name">slate</span>
   <span class="name">baseText</span>: <span class="name">UbuntuColors</span>.<span class="name">silk</span>
   <span class="name">foreground</span>: <span class="name">UbuntuColors</span>.<span class="name">slate</span>
   <span class="name">raised</span>: <span class="name">UbuntuColors</span>.<span class="name">silk</span>
   <span class="name">raisedText</span>: <span class="name">UbuntuColors</span>.<span class="name">inkstone</span>
   <span class="name">raisedSecondaryText</span>: <span class="name">UbuntuColors</span>.<span class="name">ash</span>
   }
   <span class="name">focused</span>: <span class="name">SuruDarkNormal</span> {
   <span class="name">background</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">UbuntuColors</span>.<span class="name">blue</span>.<span class="name">r</span>, <span class="name">UbuntuColors</span>.<span class="name">blue</span>.<span class="name">g</span>, <span class="name">UbuntuColors</span>.<span class="name">blue</span>.<span class="name">b</span>, <span class="number">0.4</span>)
   }
   }</pre>

.. raw:: html

   <p>

Note: If a theme derived from SuruDark wants to override style
components not present in SuruDark, they must import the SuruDark's
parent theme in the style component. As example, if FancyTheme would
want to override the SwitchStyle, it would need to import Ambiance
module in the component as SuruDark doesn't have that style component
defined.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Themes.Ambiance 1.3 as Ambiance
   <span class="type">Ambiance</span>.SwitchStyle {
   <span class="comment">// [...]</span>
   }</pre>

.. raw:: html

   <h3>

Application themes

.. raw:: html

   </h3>

.. raw:: html

   <p>

Application themes can also be standalone or derived themes. Usually
applications need slight differences on certain component styles,
colors. These can be configured in multiple ways, depending on the needs
of the application. Applications can decide to have their own theme, and
override the palette value in the theme, or to use the system themes and
override few color values from the theme palette.

.. raw:: html

   </p>

.. raw:: html

   <p>

Let's take an example of an application which changes some palette
values of SuruDark theme.

.. raw:: html

   </p>

.. raw:: html

   <p>

First, the application has to define the theme, preferably in a separate
folder (e.g. theme). The folder should contain a parent\_theme file with
the content

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Ubuntu<span class="operator">.</span>Components<span class="operator">.</span>Themes<span class="operator">.</span>SuruDark</pre>

.. raw:: html

   <p>

This will make sure theme engine will look after the style components
that are not defined by the application theme inside the parent theme.
Remember, the parent themes can have parent themes (SuruDark is derived
from Ambiance) in which case the style components will be looked up in
all these themes.

.. raw:: html

   </p>

.. raw:: html

   <p>

As shown next, the application can define the palette.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Themes.SuruDark 1.1 as Suru
   <span class="type">Suru</span>.Palette {
   <span class="name">normal</span>.background: <span class="string">&quot;#A21E1C&quot;</span>
   <span class="name">selected</span>.backgroundText: <span class="string">&quot;lightblue&quot;</span>
   }</pre>

.. raw:: html

   <p>

Note that the palette uses the SuruDark palette as base, and changes few
colors from it.

.. raw:: html

   </p>

.. raw:: html

   <p>

The application can use its own theme in the following way:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">id</span>: <span class="name">mainView</span>
   <span class="name">objectName</span>: <span class="string">&quot;mainView&quot;</span>
   <span class="name">applicationName</span>: <span class="string">&quot;customtheme&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">75</span>)
   <span class="name">theme</span>.name: <span class="string">&quot;theme&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Theme sample&quot;</span>)
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type">anchors</span> {
   <span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">fill</span>: <span class="name">parent</span>
   }
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Theme.name:&quot;</span>) <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> <span class="name">theme</span>.<span class="name">name</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Set Ambiance theme&quot;</span>)
   <span class="name">onClicked</span>: {
   <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>;
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Set SuruDark theme&quot;</span>)
   <span class="name">onClicked</span>: {
   <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>;
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Application theme&quot;</span>)
   <span class="name">onClicked</span>: {
   <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;theme&quot;</span>;
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: An application, which overrides multiple shared theme versions
must provide separate style versions in its theme so the styling engine
can identify the proper styles for the components. Note however that
this is not mandatory, and it is up to the application developer to
decide whether the application should support multiple style versions or
not.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ubuntu-theming-themes.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Styles

.. raw:: html

   </li>

.. raw:: html

   <li>

Sub-theming

.. raw:: html

   </li>

.. raw:: html

   </p>
