QtQuick.qtquick-demos-maroon-example
====================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Maroon in Trouble demonstrates QML features that are useful when
developing games:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Using custom QML types to create different screens for different stages
of the game.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the Item and Image types to construct a game background.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the SequentialAnimation, NumberAnimation, ParticleSystem, Emitter,
and Wander types to animate background objects.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the Timer and Repeater types to display a countdown sequence
before starting the game.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using a custom QML type with custom properties to construct a game
board.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the SpriteSequence and Sprite types to add animated objects to the
game board.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using a custom QML type that uses the Image type with some custom
properties to add a menu where the players can buy objects.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using custom properties with private functions to keep track of game
statistics and a custom QML type to display them to the players.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the State type with JavaScript functions to manage game states.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the SoundEffect type to play individual sound effects depending on
the object type and the action applied to the object.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using signal handlers to specify keyboard shortcuts for some game
actions.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using resource files to package game resources for deployment and
delivery.

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

   <h2 id="adding-screens">

Adding Screens

.. raw:: html

   </h2>

.. raw:: html

   <p>

In the Maroon in Trouble app, we use the following custom types that are
each defined in a separate .qml file to create the game screens:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

NewGameScreen.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

GameCanvas.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

GameOverScreen.qml

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

To use the custom types, we add an import statement to the main QML
file, maroon.qml that imports the folder called content where the types
are located:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;content&quot;</pre>

.. raw:: html

   <p>

We use the screen types at different stages of the game. The
NewGameScreen type is used to create the screen that appears when the
players start the app. In NewGameScreen.qml, we use an Image type to
create a New Game button that the players can press to start a new game.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Tapping the button initiates a countdown timer that triggers the
creation of the game canvas by using the GameCanvas type. Another Timer
type spawns mobs of fish inside bubbles that the players must free
before they reach the surface. The players can tap on the screen to open
a menu where they can buy different types of weapons (melee, ranged, and
bombs) to burst the bubbles.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

When the game finishes, a screen created by using the GameOverScreen
type appears. On this screen, the players can see their score and start
a new game.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The screens are all created on the same background and use some of the
same images and animations.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="constructing-the-background">

Constructing the Background

.. raw:: html

   </h2>

.. raw:: html

   <p>

In the maroon.qml file, we use an Item type with the id root and a fixed
width and height to create a main window for the game:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">480</span>
   property <span class="type">var</span> <span class="name">gameState</span>
   property <span class="type">bool</span> <span class="name">passedSplash</span>: <span class="number">false</span></pre>

.. raw:: html

   <p>

We declare two custom properties for the root item, gameState and
passedSplash that we will use later to manage game states.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use an Image item to display the game background image:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>:<span class="string">&quot;content/gfx/background.png&quot;</span>
   <span class="name">anchors</span>.bottom: <span class="name">view</span>.<span class="name">bottom</span></pre>

.. raw:: html

   <p>

We want to be able to load the background image only once at app startup
and still use different scenes for the game screens. Therefore,
background.png is three times the length of the root item and displays a
scene that stretches from the bottom of sea to the sky above the
horizon.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the anchors.bottom property to anchor the background image to the
bottom of the Column layout that we use to position the screens:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="name">y</span>: -(<span class="name">height</span> <span class="operator">-</span> <span class="number">480</span>)
   <span class="name">width</span>: <span class="number">320</span>
   <span class="type">GameOverScreen</span> { <span class="name">gameCanvas</span>: <span class="name">canvas</span> }</pre>

.. raw:: html

   <p>

We set a negative value for the y property to set the first scene at the
bottom of the sea. We calculate the position by subtracting the height
of a screen from the height property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Within the column layout, we use an Item type to add objects to the
background. Within the item, we use Row layout objects to position Image
objects that display waves on the game canvas and the game over screen:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">canvasArea</span>
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">480</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">wave</span>
   <span class="name">y</span>: <span class="number">30</span>
   <span class="name">source</span>:<span class="string">&quot;content/gfx/wave.png&quot;</span>
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">y</span>: <span class="number">30</span>
   <span class="name">source</span>:<span class="string">&quot;content/gfx/wave.png&quot;</span>
   }
   ...
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">opacity</span>: <span class="number">0.5</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">wave2</span>
   <span class="name">y</span>: <span class="number">25</span>
   <span class="name">source</span>: <span class="string">&quot;content/gfx/wave.png&quot;</span>
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">y</span>: <span class="number">25</span>
   <span class="name">source</span>: <span class="string">&quot;content/gfx/wave.png&quot;</span>
   }</pre>

.. raw:: html

   <p>

The second row of waves is positioned on the y axis with a slight offset
to the first row. We also use the opacity property to make the waves
appear lighter in color than the first two waves, which gives the
background some depth.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use Image objects to also display sunlight on the new game screen and
on the game canvas:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;content/gfx/sunlight.png&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.02</span>
   <span class="name">y</span>: <span class="number">0</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   ...
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;content/gfx/sunlight.png&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.04</span>
   <span class="name">y</span>: <span class="number">20</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span></pre>

.. raw:: html

   <p>

We set the opacity property of the images to 0.02 and 0.04 to give some
depth to the rays of sunshine. We use the y property to position the
images at fixed locations on the y axis and the anchors.horizontalCenter
property to center them horizontally in relation to their parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use an Image type to display an image that adds a deepening shadow to
the background:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;content/gfx/grid.png&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.5</span>
   }</pre>

.. raw:: html

   <p>

We set the opacity property of the image to 0.5 to make the background
visible behind the shadow.

.. raw:: html

   </p>

.. raw:: html

   <p>

To make the background more interesting, we animate some of the objects
we added to it.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="animating-background-objects">

Animating Background Objects

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use NumberAnimation to move the waves horizontally across the screen
in opposite directions and SequentialAnimation with NumberAnimation to
move them up and down.

.. raw:: html

   </p>

.. raw:: html

   <p>

We apply the number animation to the x property of wave as a property
value source to animate the x value from its current value to the
-(wave.width), over 16 seconds. We set the loops property to
Animation.Infinite to repeat the animation indefinitely:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                NumberAnimation on <span class="name">x</span> { <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: -(<span class="name">wave</span>.<span class="name">width</span>); <span class="name">duration</span>: <span class="number">16000</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> }</pre>

.. raw:: html

   <p>

We apply the sequential animation to the y property of the image as a
property value source to animate the y value. We use one number
animation to animate the image from the y position of two below the
value of y to two above it, over 1600 milliseconds. We use another
number animation to subsequently animate the image in the opposite
direction, again over 1600 milliseconds. The animation is repeated
indefinitely:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                SequentialAnimation on <span class="name">y</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   }</pre>

.. raw:: html

   <p>

We use the easing curve of the type Easing.InOutQuad for a quintic (t^5)
function to accelerate the motion until halfway and then decelerate it.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use sequential animation and number animation to animate wave2
similarly to wave, but in the opposite direction:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                SequentialAnimation on <span class="name">y</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   }</pre>

.. raw:: html

   <p>

We use sequential animation to rotate the rays of sunlight in degrees
clockwise around an origin point that we set to Item.Top in the
transformOrigin property. The animation is repeated indefinitely:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                <span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">Top</span>
   SequentialAnimation on <span class="name">rotation</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: -<span class="number">10</span>; <span class="name">to</span>: <span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="number">10</span>; <span class="name">to</span>: -<span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
   }</pre>

.. raw:: html

   <p>

We use one number animation to rotate the image from -10 degrees to 10
degrees over 8 seconds and another to subsequently rotate it from 10
degrees to -10 degrees over the same duration.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the easing curve of the type Easing.InOutSine for a sinusoidal
(sin(t)) function to accelerate the motion until halfway and then
decelerate it.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use sequential animation and number animation to animate another
sunlight.png image similarly, but in the opposite direction:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                <span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">Top</span>
   SequentialAnimation on <span class="name">rotation</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="number">10</span>; <span class="name">to</span>: -<span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: -<span class="number">10</span>; <span class="name">to</span>: <span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
   }</pre>

.. raw:: html

   <p>

For examples of using SequentialAnimation and NumberAnimation on the x
and y properties and the width and height properties, see
NewGameScreen.qml.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="emitting-particles">

Emitting Particles

.. raw:: html

   </h2>

.. raw:: html

   <p>

In addition to animation, we use particles to generate motion on the
game screens. We use the ParticleSystem QML type in maroon.qml to make
bubbles appear at the bottom of the new game screen and game canvas and
slowly float towards the top on varying trajectories.

.. raw:: html

   </p>

.. raw:: html

   <p>

To use the ParticleSystem type, we must import Qt Quick Particles:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick.Particles 2.0</pre>

.. raw:: html

   <p>

To have the particles appear on the game background, we place the
ParticleSystem type within the Image type that displays the game
background:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>:<span class="string">&quot;content/gfx/background.png&quot;</span>
   <span class="name">anchors</span>.bottom: <span class="name">view</span>.<span class="name">bottom</span>
   <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span> {
   <span class="name">id</span>: <span class="name">particles</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span></pre>

.. raw:: html

   <p>

In the ParticleSystem, we use an Emitter type to emit particles from the
location of the emitter at the rate of two per second with the life span
of 15 seconds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.Particles.Emitter.md">Emitter</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="number">150</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.bottomMargin: <span class="number">3</span>
   <span class="name">startTime</span>: <span class="number">15000</span>
   <span class="name">emitRate</span>: <span class="number">2</span>
   <span class="name">lifeSpan</span>: <span class="number">15000</span>
   <span class="name">acceleration</span>: <span class="name">PointDirection</span>{ <span class="name">y</span>: -<span class="number">6</span>; <span class="name">xVariation</span>: <span class="number">2</span>; <span class="name">yVariation</span>: <span class="number">2</span> }
   <span class="name">size</span>: <span class="number">24</span>
   <span class="name">sizeVariation</span>: <span class="number">16</span>
   }</pre>

.. raw:: html

   <p>

The acceleration property uses the PointDirection type to specify random
variation of the x and y coordinates, so that the bubbles appear inside
a rectangular area around the emitter that is anchored to the bottom of
the image.

.. raw:: html

   </p>

.. raw:: html

   <p>

The size property sets the base size of the particles at the beginning
of their life to 24 pixels and the sizeVariation property randomly
increases or decreases the particle size by up to 16 pixels, so that we
get bubbles in different sizes.

.. raw:: html

   </p>

.. raw:: html

   <p>

As emitters have no visualization, we use the ImageParticle type to
render the catch.png image at the particle location:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="name">id</span>: <span class="name">bubble</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: <span class="string">&quot;content/gfx/catch.png&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.25</span>
   }</pre>

.. raw:: html

   <p>

A Wander type applies a random trajectory to the particles, so that the
bubbles follow random routes from the bottom to the top.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.Particles.Wander.md">Wander</a></span> {
   <span class="name">xVariance</span>: <span class="number">25</span>;
   <span class="name">pace</span>: <span class="number">25</span>;
   }</pre>

.. raw:: html

   <p>

For another example of using the ParticleSystem type, see the
GameOverScreen.qml file, where an ImageParticle type is used to make
clouds move across the sky.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-timers">

Using Timers

.. raw:: html

   </h2>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

In maroon.qml, we use the Timer type with a Repeater type to display a
countdown sequence before using another timer to start a new game. Both
timers are started simultaneously in the "gameOn" state, that is when
the players tap the New Game button and passedSplash is true. This is
explained in more detail in Managing Game States.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the countdownTimer to display the countdown sequence:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type">Timer</span> {
   <span class="name">id</span>: <span class="name">countdownTimer</span>
   <span class="name">interval</span>: <span class="number">1000</span>
   <span class="name">running</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">&lt;</span> <span class="number">5</span>
   <span class="name">repeat</span>: <span class="number">true</span>
   <span class="name">onTriggered</span>: root.countdown++
   }</pre>

.. raw:: html

   <p>

The onTriggered signal handler is called when the timer is triggered to
increment the value of the countdown custom property.

.. raw:: html

   </p>

.. raw:: html

   <p>

We set the repeat property to true to specify that the timer is
triggered at the interval of 1 second as long as the value of countdown
is less than 5.

.. raw:: html

   </p>

.. raw:: html

   <p>

The countdown property is defined in the root item with an initial value
of 10, so that countdownTimer is not running by default:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type">int</span> <span class="name">countdown</span>: <span class="number">10</span></pre>

.. raw:: html

   <p>

Each time the timer is triggered, an image from the countdown sequence
is displayed. We use a Repeater type to instantiate the Image delegate
in the context of the repeater's parent, canvasArea item, seeded with
data from the model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: [<span class="string">&quot;content/gfx/text-blank.png&quot;</span>, <span class="string">&quot;content/gfx/text-3.png&quot;</span>, <span class="string">&quot;content/gfx/text-2.png&quot;</span>, <span class="string">&quot;content/gfx/text-1.png&quot;</span>, <span class="string">&quot;content/gfx/text-go.png&quot;</span>]
   <span class="name">delegate</span>: <span class="name">Image</span> {
   <span class="name">visible</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">&lt;=</span> <span class="name">index</span>
   <span class="name">opacity</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">==</span> <span class="name">index</span> ? <span class="number">0.5</span> : <span class="number">0.1</span>
   <span class="name">scale</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">&gt;=</span> <span class="name">index</span> ? <span class="number">1.0</span> : <span class="number">0.0</span>
   <span class="name">source</span>: <span class="name">modelData</span>
   Behavior on <span class="name">opacity</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} }
   Behavior on <span class="name">scale</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} }
   }
   }</pre>

.. raw:: html

   <p>

We scale the images from 0.0 to 1.0 and use the visible property to hide
the images for the previous steps as the countdown progresses. We also
raise the opacity of the image that matches the current countdown step,
keeping the others nearly transparent.

.. raw:: html

   </p>

.. raw:: html

   <p>

By animating the changes in the opacity and scale properties using a
Behavior type, we achieve a countdown sequence where numbers zoom in
towards the players.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="constructing-the-game-board">

Constructing the Game Board

.. raw:: html

   </h2>

.. raw:: html

   <p>

To construct the game board, we use the GameCanvas custom type that is
defined in GameCanvas.qml.

.. raw:: html

   </p>

.. raw:: html

   <p>

In maroon.qml, we use the GameCanvas type to display the game canvas at
the position of 32 on the x axis and 20 pixels from the bottom of its
parent item, canvasArea:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type">GameCanvas</span> {
   <span class="name">id</span>: <span class="name">canvas</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.bottomMargin: <span class="number">20</span>
   <span class="name">x</span>: <span class="number">32</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

We set the focus property to true to give canvas active focus on
startup.

.. raw:: html

   </p>

.. raw:: html

   <p>

In GameCanvas.qml, we use an Item type and define custom properties for
it to create a grid of equally sized squares divided to 4 columns on 6
rows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">grid</span>
   property <span class="type">int</span> <span class="name">squareSize</span>: <span class="number">64</span>
   property <span class="type">int</span> <span class="name">rows</span>: <span class="number">6</span>
   property <span class="type">int</span> <span class="name">cols</span>: <span class="number">4</span>
   property <span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">canvas</span>: <span class="name">grid</span></pre>

.. raw:: html

   <p>

We use the custom properties to set the width and height of the grid
item as the amount of columns and rows multiplied by square size:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">width</span>: <span class="name">cols</span> <span class="operator">*</span> <span class="name">squareSize</span>
   <span class="name">height</span>: <span class="name">rows</span> <span class="operator">*</span> <span class="name">squareSize</span></pre>

.. raw:: html

   <p>

We use an Image type with a MouseArea type to display a help button that
the players can tap to view an image that contains instructions for
playing the game:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">helpButton</span>
   <span class="name">z</span>: <span class="number">1010</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/button-help.png&quot;</span>
   <span class="keyword">function</span> <span class="name">goAway</span>() {
   <span class="name">helpMA</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">false</span>;
   <span class="name">helpButton</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">0</span>;
   }
   <span class="keyword">function</span> <span class="name">comeBack</span>() {
   <span class="name">helpMA</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">true</span>;
   <span class="name">helpButton</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">1</span>;
   }
   Behavior on <span class="name">opacity</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">helpMA</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {<span class="name">helpImage</span>.<span class="name">visible</span> <span class="operator">=</span> <span class="number">true</span>; <span class="name">helpButton</span>.<span class="name">visible</span> <span class="operator">=</span> <span class="number">false</span>;}
   }
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.bottomMargin: <span class="number">0</span>
   }</pre>

.. raw:: html

   <p>

We declare the goAway() private function to disable the mouse area and
make the image fully transparent and a comeBack() function to enable the
mouse area and make the button fully opaque. We use a Behavior type on
the opacity property to apply the default number animation when the
value of opacity changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the players tap the help button, the onClicked signal handler is
called to hide the help button by setting the helpButton.visible
property to false and to show the help image by setting the
helpImage.visible property to false.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

We use anchoring to position the help button at the bottom center of the
game canvas.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use another Image type to display the help image:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">helpImage</span>
   <span class="name">z</span>: <span class="number">1010</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/help.png&quot;</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">visible</span>: <span class="number">false</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">helpImage</span>.<span class="name">visible</span> <span class="operator">=</span> <span class="number">false</span>;
   }
   }</pre>

.. raw:: html

   <p>

To hide the help image when the players tap it, the onClicked signal
handler within the MouseArea type is called to set the helpImage.visible
property to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

To ensure that the images are placed on top when they are visible, we
set a high value for their z property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following sections describe how to use timers to add animated
objects to the game board and how to create a menu dialog from which the
players can add more objects to it.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="animating-objects-on-the-game-board">

Animating Objects on the Game Board

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use sprite animation to animate objects on the game board. The Qt
Quick sprite engine is a stochastic state machine combined with the
ability to chop up images containing multiple frames of an animation.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Spawning Fish

.. raw:: html

   </h3>

.. raw:: html

   <p>

We use a Timer element with the tick() function in GameCanvas.qml to
spawn mobs of fish in waves at an increasing rate, starting at 16
milliseconds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Timer</span> {
   <span class="name">interval</span>: <span class="number">16</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="name">repeat</span>: <span class="number">true</span>
   <span class="name">onTriggered</span>: <span class="name">Logic</span>.<span class="name">tick</span>()
   }</pre>

.. raw:: html

   <p>

We use the MobBase custom type that is defined in MobBase.qml to animate
mobs of fish that swim inside bubbles. We use an Item type with custom
properties and private functions to create the fish and the bubbles and
to define the actions that can be applied to them:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span>  {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">string</span> <span class="name">name</span>: <span class="string">&quot;Fish&quot;</span>
   property <span class="type">int</span> <span class="name">col</span>: <span class="number">0</span>
   property <span class="type">real</span> <span class="name">hp</span>: <span class="number">3</span>
   property <span class="type">real</span> <span class="name">damage</span>: <span class="number">1</span>
   property <span class="type">real</span> <span class="name">speed</span>: <span class="number">0.25</span>
   property <span class="type">int</span> <span class="name">rof</span>: <span class="number">30</span> <span class="comment">//In ticks</span>
   property <span class="type">int</span> <span class="name">fireCounter</span>: <span class="number">0</span>
   property <span class="type">bool</span> <span class="name">dying</span>: <span class="number">false</span>
   <span class="name">width</span>: <span class="name">parent</span> ? <span class="name">parent</span>.<span class="name">squareSize</span> : <span class="number">0</span>
   <span class="name">height</span>: <span class="name">parent</span> ? <span class="name">parent</span>.<span class="name">squareSize</span> : <span class="number">0</span>
   <span class="name">x</span>: <span class="name">col</span> <span class="operator">*</span> <span class="name">width</span>
   <span class="name">z</span>: <span class="number">1001</span>
   <span class="keyword">function</span> <span class="name">fire</span>() { }
   ...</pre>

.. raw:: html

   <p>

We use a SpriteSequence type to animate the fish:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.SpriteSequence.md">SpriteSequence</a></span> {
   <span class="name">id</span>: <span class="name">fishSprite</span>
   <span class="name">width</span>: <span class="number">64</span>
   <span class="name">height</span>: <span class="number">64</span>
   <span class="name">interpolate</span>: <span class="number">false</span>
   <span class="name">goalSprite</span>: <span class="string">&quot;&quot;</span></pre>

.. raw:: html

   <p>

The SpriteSequence type renders and controls a list of animations
defined by Sprite types:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
   <span class="name">name</span>: <span class="string">&quot;left&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;../gfx/mob-idle.png&quot;</span>
   <span class="name">frameWidth</span>: <span class="number">64</span>
   <span class="name">frameHeight</span>: <span class="number">64</span>
   <span class="name">frameCount</span>: <span class="number">1</span>
   <span class="name">frameDuration</span>: <span class="number">800</span>
   <span class="name">frameDurationVariation</span>: <span class="number">400</span>
   <span class="name">to</span>: { &quot;front&quot; : <span class="number">1</span> }
   }
   <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
   <span class="name">name</span>: <span class="string">&quot;front&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;../gfx/mob-idle.png&quot;</span>
   <span class="name">frameCount</span>: <span class="number">1</span>
   <span class="name">frameX</span>: <span class="number">64</span>
   <span class="name">frameWidth</span>: <span class="number">64</span>
   <span class="name">frameHeight</span>: <span class="number">64</span>
   <span class="name">frameDuration</span>: <span class="number">800</span>
   <span class="name">frameDurationVariation</span>: <span class="number">400</span>
   <span class="name">to</span>: { &quot;left&quot; : <span class="number">1</span>, &quot;right&quot; : <span class="number">1</span> }
   }
   <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
   <span class="name">name</span>: <span class="string">&quot;right&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;../gfx/mob-idle.png&quot;</span>
   <span class="name">frameCount</span>: <span class="number">1</span>
   <span class="name">frameX</span>: <span class="number">128</span>
   <span class="name">frameWidth</span>: <span class="number">64</span>
   <span class="name">frameHeight</span>: <span class="number">64</span>
   <span class="name">frameDuration</span>: <span class="number">800</span>
   <span class="name">frameDurationVariation</span>: <span class="number">400</span>
   <span class="name">to</span>: { &quot;front&quot; : <span class="number">1</span> }
   }</pre>

.. raw:: html

   <p>

In the fishSprite sprite sequence, each sprite defines one frame within
the mob-idle.png file, which shows a fish facing right, front, and left:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the frameWidth, frameHeight, and frameX properties to determine
that the first 64x64-pixel square of the image is framed in the "left"
sprite, the second in the "front" sprite, and the third in the "right"
sprite. For each sprite, the frameCount property is set to 1 to specify
that the sprite contains one frame.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the frameDuration and frameDurationVariation properties to
specify that the duration of an animation can vary from 400 to 1200
milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

The to property specifies that the sprites have weighted transitions to
other sprites. The "left" and "right" sprites always transfer to the
"front" sprite. When the "front" animation finishes, the sprite engine
chooses "left" or "right" randomly, but at roughly equal proportions,
because they both have the weight 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the fish are set free, we want them to swim away in the direction
they are facing until they get off the screen. If they were facing
front, we use the jumpTo method with the JavaScript Math.random() method
in the die() private function to randomly jump to the "left" or "right"
sprite:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">function</span> <span class="name">die</span>() {
   <span class="keyword">if</span> (<span class="name">dying</span>)
   <span class="keyword">return</span>;
   <span class="name">dying</span> <span class="operator">=</span> <span class="number">true</span>;
   <span class="name">bubble</span>.<span class="name">jumpTo</span>(<span class="string">&quot;burst&quot;</span>);
   <span class="keyword">if</span> (<span class="name">fishSprite</span>.<span class="name">currentSprite</span> <span class="operator">==</span> <span class="string">&quot;front&quot;</span>)
   <span class="name">fishSprite</span>.<span class="name">jumpTo</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">&gt;</span> <span class="number">0.5</span> ? <span class="string">&quot;left&quot;</span> : <span class="string">&quot;right&quot;</span> );
   <span class="name">fishSwim</span>.<span class="name">start</span>();
   <span class="name">Logic</span>.<span class="name">gameState</span>.<span class="name">score</span> <span class="operator">+=</span> <span class="number">1</span>;
   <span class="name">killedSound</span>.<span class="name">play</span>();
   <span class="name">bubble</span>.<span class="name">scale</span> <span class="operator">=</span> <span class="number">0.9</span>
   <span class="name">destroy</span>(<span class="number">350</span>);
   }</pre>

.. raw:: html

   <p>

We then use the start() function to run a NumberAnimation that applies a
number animation to the x value from its current value to -360 or 360,
depending on whether the goingLeft custom property is true, in 300
milliseconds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        NumberAnimation on <span class="name">x</span> {
   <span class="name">id</span>: <span class="name">fishSwim</span>
   <span class="name">running</span>: <span class="number">false</span>
   property <span class="type">bool</span> <span class="name">goingLeft</span>: <span class="name">fishSprite</span>.<span class="name">currentSprite</span> <span class="operator">==</span> <span class="string">&quot;right&quot;</span>
   <span class="name">to</span>: <span class="name">goingLeft</span> ? -<span class="number">360</span> : <span class="number">360</span>
   <span class="name">duration</span>: <span class="number">300</span>
   }</pre>

.. raw:: html

   <h3>

Bursting Bubbles

.. raw:: html

   </h3>

.. raw:: html

   <p>

We use another SpriteSequence to animate the bubbles so that they become
smaller and finally burst when they are attacked by a shooter or a
melee. For this effect, we set the value of the scale property to
decrease by 0.2 each time the custom hp property changes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.SpriteSequence.md">SpriteSequence</a></span> {
   <span class="name">id</span>: <span class="name">bubble</span>
   <span class="name">width</span>: <span class="number">64</span>
   <span class="name">height</span>: <span class="number">64</span>
   <span class="name">scale</span>: <span class="number">0.4</span> <span class="operator">+</span> (<span class="number">0.2</span>  <span class="operator">*</span> <span class="name">hp</span>)
   <span class="name">interpolate</span>: <span class="number">false</span>
   <span class="name">goalSprite</span>: <span class="string">&quot;&quot;</span></pre>

.. raw:: html

   <p>

We use a Behavior type to apply a NumberAnimation when the value of
scale changes. We use the Easing.OutBack easing type for a back
(overshooting cubic function: (s+1)*t^3 - s*\ t^2) easing out curve that
decelerates the motion to zero velocity in 150 milliseconds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        Behavior on <span class="name">scale</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">150</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBack</span> }
   }</pre>

.. raw:: html

   <p>

The SpriteSequence consist of two sprites that display different images.
The first sprite, "big", uses the catch.png image to display an empty
bubble:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
   <span class="name">name</span>: <span class="string">&quot;big&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;../gfx/catch.png&quot;</span>
   <span class="name">frameCount</span>: <span class="number">1</span>
   <span class="name">to</span>: { &quot;burst&quot; : <span class="number">0</span> }
   }</pre>

.. raw:: html

   <p>

We set the to property to "burst" with the weight 0 to make the second
sprite, "burst", a valid goal for the jumpTo method that we use in the
die() private function to jump directly to the "burst" sprite without
playing the first sprite.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the "burst" sprite, we set the frameCount property to 3 and the
frameX property to 64 to specify that the animation starts at pixel
location 64 and loads each frame for the duration of 200 milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
   <span class="name">name</span>: <span class="string">&quot;burst&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;../gfx/catch-action.png&quot;</span>
   <span class="name">frameCount</span>: <span class="number">3</span>
   <span class="name">frameX</span>: <span class="number">64</span>
   <span class="name">frameDuration</span>: <span class="number">200</span>
   }</pre>

.. raw:: html

   <p>

Within the SpriteSequence, we use SequentialAnimation with
NumberAnimation to animate the transitions between the frames. To create
a pulsating effect on the bubbles, we apply a sequential animation on
the width property with two number animations to first increase the
bubble width from \* 1 to \* 1.1 over 800 milliseconds and then bring it
back over 1 second:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        SequentialAnimation on <span class="name">width</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">to</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1.1</span>; <span class="name">duration</span>: <span class="number">800</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1.1</span>; <span class="name">to</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   }</pre>

.. raw:: html

   <p>

Similarly, we increase the bubble height from \* 1 to \* 1.15 over 1200
milliseconds and then bring it back over 1 second:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        SequentialAnimation on <span class="name">height</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">to</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1.15</span>; <span class="name">duration</span>: <span class="number">1200</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1.15</span>; <span class="name">to</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   }</pre>

.. raw:: html

   <p>

We use yet another SpriteSequence to display the effect of squid ink on
the bubbles. For more examples of using sprite sequences, see the QML
files in the towers directory.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="adding-dialogs">

Adding Dialogs

.. raw:: html

   </h2>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

In GameCanvas.qml, we use an Image type with some custom properties to
create a menu where the players can buy tower objects:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">towerMenu</span>
   <span class="name">visible</span>: <span class="number">false</span>
   <span class="name">z</span>: <span class="number">1500</span>
   <span class="name">scale</span>: <span class="number">0.9</span>
   <span class="name">opacity</span>: <span class="number">0.7</span>
   property <span class="type">int</span> <span class="name">dragDistance</span>: <span class="number">16</span>
   property <span class="type">int</span> <span class="name">targetRow</span>: <span class="number">0</span>
   property <span class="type">int</span> <span class="name">targetCol</span>: <span class="number">0</span>
   property <span class="type">bool</span> <span class="name">shown</span>: <span class="number">false</span>
   property <span class="type">bool</span> <span class="name">towerExists</span>: <span class="number">false</span></pre>

.. raw:: html

   <p>

We set the visible property to false to hide the menu by default. The z
property is set to 1500 to ensure that the menu is displayed in front of
all other items when it is visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use a MouseArea type to open or close the menu when players tap on
the canvas:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">ma</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> (<span class="name">towerMenu</span>.<span class="name">visible</span>)
   <span class="name">towerMenu</span>.<span class="name">finish</span>()
   <span class="keyword">else</span>
   <span class="name">towerMenu</span>.<span class="name">open</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   }
   }</pre>

.. raw:: html

   <p>

We set the anchors.fill property to parent to allow the players to tap
anywhere on the game canvas. We use a condition in the onClicked signal
handler to call the finish() function if the menu is visible and the
open() function otherwise.

.. raw:: html

   </p>

.. raw:: html

   <p>

The finish() function hides the menu by setting the shown custom
property to false:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="keyword">function</span> <span class="name">finish</span>() {
   <span class="name">shown</span> <span class="operator">=</span> <span class="number">false</span>
   }</pre>

.. raw:: html

   <p>

The open() function displays the menu at the x and y position of the
mouse pointer:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="keyword">function</span> <span class="name">open</span>(<span class="name">xp</span>,yp) {
   <span class="keyword">if</span> (!<span class="name">grid</span>.<span class="name">gameRunning</span>)
   <span class="keyword">return</span>
   <span class="name">targetRow</span> <span class="operator">=</span> <span class="name">Logic</span>.<span class="name">row</span>(<span class="name">yp</span>)
   <span class="name">targetCol</span> <span class="operator">=</span> <span class="name">Logic</span>.<span class="name">col</span>(<span class="name">xp</span>)
   <span class="keyword">if</span> (<span class="name">targetRow</span> <span class="operator">==</span> <span class="number">0</span>)
   <span class="name">towerMenu</span>.<span class="name">y</span> <span class="operator">=</span> (<span class="name">targetRow</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">*</span> <span class="name">grid</span>.<span class="name">squareSize</span>
   <span class="keyword">else</span>
   <span class="name">towerMenu</span>.<span class="name">y</span> <span class="operator">=</span> (<span class="name">targetRow</span> <span class="operator">-</span> <span class="number">1</span>) <span class="operator">*</span> <span class="name">grid</span>.<span class="name">squareSize</span>
   <span class="name">towerExists</span> <span class="operator">=</span> (<span class="name">grid</span>.<span class="name">towers</span>[<span class="name">Logic</span>.<span class="name">towerIdx</span>(<span class="name">targetCol</span>, <span class="name">targetRow</span>)] <span class="operator">!=</span> <span class="number">null</span>)
   <span class="name">shown</span> <span class="operator">=</span> <span class="number">true</span>
   <span class="name">helpButton</span>.<span class="name">goAway</span>();
   }</pre>

.. raw:: html

   <p>

If gameRunning is true, we call the JavaScript row() function to
calculate the value of the targetRow custom property and the col()
function to calculate the value of the targetCol custom property. If the
value of targetRow equals 0, the y position is set to one square above
the mouse pointer. Otherwise, it is set to one square below the mouse
pointer.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the towerIdx() function to set the value of the towerExists
custom property.

.. raw:: html

   </p>

.. raw:: html

   <p>

We set the shown custom property to true to show the menu and call the
helpButton.goAway() function to hide the help button when the menu
opens.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use states and transitions to display the menu when the shown
property is true and the gameOver property is false:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;shown&quot;</span>; <span class="name">when</span>: <span class="name">towerMenu</span>.<span class="name">shown</span> <span class="operator">&amp;&amp;</span> !<span class="name">grid</span>.<span class="name">gameOver</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">towerMenu</span>; <span class="name">visible</span>: <span class="number">true</span>; <span class="name">scale</span>: <span class="number">1</span>; <span class="name">opacity</span>: <span class="number">1</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">property</span>: <span class="string">&quot;visible&quot;</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;opacity,scale&quot;</span>; <span class="name">duration</span>: <span class="number">500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutElastic</span> }
   }</pre>

.. raw:: html

   <p>

To set the visibility of the menu to "visible" without animating the
property change, we use a PropertyAction type. We do want to animate the
changes in opacity and scale, though, so we use number animation to
animate the value of the scale property from 0.9 to 1 and the value of
opacity property from 0.7 to 1, over 500 milliseconds. We use the
Easing.outElastic easing type for an elastic (exponentially decaying
sine wave) function easing curve that decelerates from zero velocity.

.. raw:: html

   </p>

.. raw:: html

   <p>

To construct the menu, we use a BuildButton custom type that is defined
in BuildButton.qml. In GameCanvas.qml, we create one build button for
each tower object that the players can buy and position them in a Row
layout in front of the menu background image, dialog.png:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">x</span>: -<span class="number">32</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/dialog.png&quot;</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">id</span>: <span class="name">buttonRow</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">spacing</span>: <span class="number">8</span>
   <span class="type">BuildButton</span> {
   <span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">towerType</span>: <span class="number">1</span>; <span class="name">index</span>: <span class="number">0</span>
   <span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/dialog-melee.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
   }
   <span class="type">BuildButton</span> {
   <span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">towerType</span>: <span class="number">2</span>; <span class="name">index</span>: <span class="number">1</span>
   <span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/dialog-shooter.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
   }
   <span class="type">BuildButton</span> {
   <span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">towerType</span>: <span class="number">3</span>; <span class="name">index</span>: <span class="number">2</span>
   <span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/dialog-bomb.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
   }
   <span class="type">BuildButton</span> {
   <span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">towerType</span>: <span class="number">4</span>; <span class="name">index</span>: <span class="number">3</span>
   <span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/dialog-factory.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
   }
   }
   }</pre>

.. raw:: html

   <p>

For each build button, we set the values of towerType and index custom
properties that we define in BuildButton.qml.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the canBuild custom property to prevent players from adding tower
objects in locations where tower objects already exist.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the source property to display the image for the tower type.

.. raw:: html

   </p>

.. raw:: html

   <p>

The onClicked signal handler is called to execute the finish() function
that closes the menu when the players tap an enabled build button.

.. raw:: html

   </p>

.. raw:: html

   <p>

Build buttons are enabled when the players have enough coins to buy the
tower objects. We use an Image type in BuildButton.qml to display images
on the buttons:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">img</span>
   <span class="name">opacity</span>: (<span class="name">canBuild</span> <span class="operator">&amp;&amp;</span> <span class="name">gameCanvas</span>.<span class="name">coins</span> <span class="operator">&gt;=</span> <span class="name">Logic</span>.<span class="name">towerData</span>[<span class="name">towerType</span><span class="operator">-</span><span class="number">1</span>].<span class="name">cost</span>) ? <span class="number">1.0</span> : <span class="number">0.4</span>
   }</pre>

.. raw:: html

   <p>

We use the opacity property to make the buttons appear enabled. If
canBuild is true and the value of the gameCanvas.coins property is
larger than or equal to the cost of a tower object, the images are fully
opaque, otherwise their opacity is set to 0.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use a Text type to display the cost of each tower item, as specified
by the towerData variable, depending on towerType:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">font</span>.pointSize: <span class="number">14</span>
   <span class="name">font</span>.bold: <span class="number">true</span>
   <span class="name">color</span>: <span class="string">&quot;#ffffff&quot;</span>
   <span class="name">text</span>: <span class="name">Logic</span>.<span class="name">towerData</span>[<span class="name">towerType</span> <span class="operator">-</span> <span class="number">1</span>].<span class="name">cost</span>
   }</pre>

.. raw:: html

   <p>

To display a pointer on the screen at the position where the tower
object will be added, we use the Image type. We use the visible property
to determine whether the dialog-pointer.png image should be positioned
below or above the menu. When the value of the col property equals the
index and the value or the row property is not 0, we anchor the image to
the bottom of its parent, BuildButton.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the value or the row property is 0, we anchor the image to the top
of BuildButton to position the pointer above the menu and use the
rotation property to rotate it by 180 degrees, so that it points
upwards:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">visible</span>: <span class="name">col</span> <span class="operator">==</span> <span class="name">index</span> <span class="operator">&amp;&amp;</span> <span class="name">row</span> <span class="operator">!=</span> <span class="number">0</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/dialog-pointer.png&quot;</span>
   <span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.topMargin: <span class="number">4</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">visible</span>: <span class="name">col</span> <span class="operator">==</span> <span class="name">index</span> <span class="operator">&amp;&amp;</span> <span class="name">row</span> <span class="operator">==</span> <span class="number">0</span>
   <span class="name">source</span>: <span class="string">&quot;gfx/dialog-pointer.png&quot;</span>
   <span class="name">rotation</span>: <span class="number">180</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">anchors</span>.bottomMargin: <span class="number">6</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   }</pre>

.. raw:: html

   <h2 id="keeping-track-of-game-statistics">

Keeping Track of Game Statistics

.. raw:: html

   </h2>

.. raw:: html

   <p>

To keep track of the game statistics, we use the InfoBar custom type
(that is defined in InfoBar.qml) in maroon.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type">InfoBar</span> { <span class="name">anchors</span>.bottom: <span class="name">canvas</span>.<span class="name">top</span>; <span class="name">anchors</span>.bottomMargin: <span class="number">6</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> }</pre>

.. raw:: html

   <p>

We use the anchors.bottom and anchors.bottomMargin properties to
position the info bar at 6 points from the top of the game canvas. We
bind the width property of the info bar to that of its parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

In InfoBar.qml, we use an Item type to create the info bar. Within it,
we use a Row layout type to display the number of lives the players have
left, the number of fish that have been saved, and the amount of coins
that are available for use.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the anchors property to position the rows in relationship to
their parent and to each other. In the first Row object, we use the
anchors.left and anchors.leftMargin properties to position the heart
icons at 10 points from the left border of the parent item:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="comment">// Display the number of lives</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">anchors</span>.leftMargin: <span class="number">10</span>
   <span class="name">spacing</span>: <span class="number">5</span>
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">id</span>: <span class="name">rep</span>
   <span class="name">model</span>: <span class="name">Math</span>.<span class="name">min</span>(<span class="number">10</span>, <span class="name">canvas</span>.<span class="name">lives</span>)
   <span class="name">delegate</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;gfx/lifes.png&quot;</span> }
   }
   }</pre>

.. raw:: html

   <p>

We use a Repeater type with a model and a delegate to display as many
hearts as the players have lives left. We use the spacing property to
leave 5 pixels between the displayed icons.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the second Row object, we use the anchors.right and
anchors.rightMargin properties to position the number of fish saved at
20 points left of the third Row object that displays the number of coins
available (and has the id points):

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.right: <span class="name">points</span>.<span class="name">left</span>
   <span class="name">anchors</span>.rightMargin: <span class="number">20</span>
   <span class="name">spacing</span>: <span class="number">5</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="string">&quot;gfx/scores.png&quot;</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">canvas</span>.<span class="name">score</span>
   <span class="name">font</span>.bold: <span class="number">true</span>
   }
   }
   <span class="comment">// Display the number of coins</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">id</span>: <span class="name">points</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.rightMargin: <span class="number">10</span>
   <span class="name">spacing</span>: <span class="number">5</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="string">&quot;gfx/points.png&quot;</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">pointsLabel</span>
   <span class="name">text</span>: <span class="name">canvas</span>.<span class="name">coins</span>
   <span class="name">font</span>.bold: <span class="number">true</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

In these objects, we set spacing to 5 pixels to separate the icons from
the numbers that we display by using a Text type.

.. raw:: html

   </p>

.. raw:: html

   <p>

In GameCanvas.qml, we define custom properties to hold the game
statistics:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
   property <span class="type">int</span> <span class="name">coins</span>: <span class="number">100</span>
   property <span class="type">int</span> <span class="name">lives</span>: <span class="number">3</span></pre>

.. raw:: html

   <p>

We declare the freshState() function to set the initial game statistics
when a new game starts:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">function</span> <span class="name">freshState</span>() {
   <span class="name">lives</span> <span class="operator">=</span> <span class="number">3</span>
   <span class="name">coins</span> <span class="operator">=</span> <span class="number">100</span>
   <span class="name">score</span> <span class="operator">=</span> <span class="number">0</span>
   <span class="name">waveNumber</span> <span class="operator">=</span> <span class="number">0</span>
   <span class="name">waveProgress</span> <span class="operator">=</span> <span class="number">0</span>
   <span class="name">gameOver</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="name">gameRunning</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="name">towerMenu</span>.<span class="name">shown</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="name">helpButton</span>.<span class="name">comeBack</span>();
   }</pre>

.. raw:: html

   <p>

We use the Logic.gameState.score variable in the die() function that we
declare in MobBase.qml to increase the score by one when the players set
a fish free:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">Logic</span>.<span class="name">gameState</span>.<span class="name">score</span> <span class="operator">+=</span> <span class="number">1</span>;</pre>

.. raw:: html

   <h2 id="managing-game-states">

Managing Game States

.. raw:: html

   </h2>

.. raw:: html

   <p>

In maroon.qml, we use a State type and JavaScript to switch between
screens according to the game state. The logic.js file contains
definitions for the functions. To use the functions in a QML file, we
import logic.js as the Logic namespace in that file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;content/logic.js&quot; as Logic</pre>

.. raw:: html

   <p>

The base state displays the new game screen when the application starts.
In addition, we call the Component.onCompleted signal handler to
initialize a new game:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">Component</span>.onCompleted: <span class="name">gameState</span> <span class="operator">=</span> <span class="name">Logic</span>.<span class="name">newGameState</span>(<span class="name">canvas</span>);</pre>

.. raw:: html

   <p>

In NewGameScreen.qml we use the onClicked signal handler to emit the
startButtonClicked() signal when the players tap the New Game button:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;gfx/button-play.png&quot;</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.bottomMargin: <span class="number">60</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">newGameScreen</span>.<span class="name">startButtonClicked</span>()
   }</pre>

.. raw:: html

   <p>

In maroon.qml, we use the onStartButtonClicked signal handler to set the
passedSplash property of the root item to true:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type">NewGameScreen</span> {
   <span class="name">onStartButtonClicked</span>: <span class="name">root</span>.<span class="name">passedSplash</span> <span class="operator">=</span> <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

We then use the passedSplash property in the when property of the gameOn
state to trigger the gameStarter timer:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;gameOn&quot;</span>; <span class="name">when</span>: <span class="name">gameState</span>.<span class="name">gameOver</span> <span class="operator">==</span> <span class="number">false</span> <span class="operator">&amp;&amp;</span> <span class="name">passedSplash</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">view</span>; <span class="name">y</span>: -(<span class="name">height</span> <span class="operator">-</span> <span class="number">960</span>) }
   <span class="type"><a href="QtQuick.StateChangeScript.md">StateChangeScript</a></span> { <span class="name">script</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">=</span> <span class="number">0</span>; }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">gameStarter</span>; <span class="name">running</span>: <span class="number">true</span> }
   },</pre>

.. raw:: html

   <p>

We also switch to the "gameOn" state and move to the y position -(height
- 960) to display the game canvas.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the gameStarter Timer object we use the onTriggered signal handler to
call the startGame() function that starts a new game:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Timer</span> {
   <span class="name">id</span>: <span class="name">gameStarter</span>
   <span class="name">interval</span>: <span class="number">4000</span>
   <span class="name">running</span>: <span class="number">false</span>
   <span class="name">repeat</span>: <span class="number">false</span>
   <span class="name">onTriggered</span>: <span class="name">Logic</span>.<span class="name">startGame</span>(<span class="name">canvas</span>);
   }</pre>

.. raw:: html

   <p>

The game continues until gameState.gameOver is set to true and
gameState.gameRunning is set to false by calling the endGame() function
when the value of the gameState.lives property becomes less than or
equal to 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

In GameOverScreen.qml, we use a MouseArea type and an onClicked signal
handler within an Image type to return to the game canvas when the
players tap the New Game button:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;gfx/button-play.png&quot;</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.bottomMargin: <span class="number">0</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">gameCanvas</span>.<span class="name">gameOver</span> <span class="operator">=</span> <span class="number">false</span><span class="comment">//This will actually trigger the state change in main.qml</span>
   }
   }</pre>

.. raw:: html

   <p>

The onClicked signal handler triggers a state change in maroon.qml to
display the game canvas:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;gameOver&quot;</span>; <span class="name">when</span>: <span class="name">gameState</span>.<span class="name">gameOver</span> <span class="operator">==</span> <span class="number">true</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">view</span>; <span class="name">y</span>: <span class="number">0</span> }
   }</pre>

.. raw:: html

   <h2 id="playing-sound-effects">

Playing Sound Effects

.. raw:: html

   </h2>

.. raw:: html

   <p>

The app can play sound effects if the Qt Multimedia module is installed.
In the SoundEffect.qml file, we proxy a SoundEffect type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">QtObject</span> <span class="name">effect</span>: <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">&quot;import QtMultimedia 5.0; SoundEffect{ source: '&quot;</span> <span class="operator">+</span> <span class="name">container</span>.<span class="name">source</span> <span class="operator">+</span> <span class="string">&quot;'; muted: !Qt.application.active }&quot;</span>, <span class="name">container</span>);
   property <span class="type">url</span> <span class="name">source</span>: <span class="string">&quot;&quot;</span>
   <span class="name">onSourceChanged</span>: <span class="keyword">if</span> (<span class="name">effect</span> <span class="operator">!=</span> <span class="number">null</span>) <span class="name">effect</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">source</span>;
   <span class="keyword">function</span> <span class="name">play</span>() {
   <span class="keyword">if</span> (<span class="name">effect</span> <span class="operator">!=</span> <span class="number">null</span>)
   <span class="name">effect</span>.<span class="name">play</span>();
   }</pre>

.. raw:: html

   <p>

We add the qtHaveModule() qmake command to the app .pro file,
maroon.pro, to check whether the Qt Multimedia module is present:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">QT += qml quick
   qtHaveModule(multimedia): QT += multimedia</pre>

.. raw:: html

   <p>

In each QML file that defines a custom type used on the game canvas, we
use a SoundEffect type to specify the audio file to play for that type
of objects. For example, in Bomb.qml, we specify the sound that a bomb
makes when it explodes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">SoundEffect</span> {
   <span class="name">id</span>: <span class="name">sound</span>
   <span class="name">source</span>: <span class="string">&quot;../audio/bomb-action.wav&quot;</span>
   }</pre>

.. raw:: html

   <p>

To play the sound effect when a bomb explodes, we call the sound.play()
function that we declare as a member of the private fire() function
within the TowerBase custom type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">function</span> <span class="name">fire</span>() {
   <span class="name">sound</span>.<span class="name">play</span>()
   <span class="name">sprite</span>.<span class="name">jumpTo</span>(<span class="string">&quot;shoot&quot;</span>)
   <span class="name">animDelay</span>.<span class="name">start</span>()
   }</pre>

.. raw:: html

   <p>

For more examples of playing sound effects, see the QML files in the
towers directory and MobBase.qml.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="adding-keyboard-shortcuts">

Adding Keyboard Shortcuts

.. raw:: html

   </h2>

.. raw:: html

   <p>

This is a touch example, so you should not really need to handle key
presses. However, we do not want you to have to spend more time playing
the game than you want to while testing it, so we use the Keys.onPressed
signal handler to specify keyboard shortcuts. You can press Shift+Up to
increment the values of the coins property to add coins, Shift+Left to
increment the value of lives, Shift+Down to increment the value of the
waveProgress property to spawn mobs of fish faster, and Shift+Right to
call the endGame() function to quit the game:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">Keys</span>.onPressed: { <span class="comment">// Cheat Codes while Testing</span>
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Up</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
   <span class="name">grid</span>.<span class="name">coins</span> <span class="operator">+=</span> <span class="number">10</span>;
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Left</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
   <span class="name">grid</span>.<span class="name">lives</span> <span class="operator">+=</span> <span class="number">1</span>;
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Down</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
   <span class="name">Logic</span>.<span class="name">gameState</span>.<span class="name">waveProgress</span> <span class="operator">+=</span> <span class="number">1000</span>;
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Right</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
   <span class="name">Logic</span>.<span class="name">endGame</span>();
   }</pre>

.. raw:: html

   <h2 id="packaging-resources-for-deployment">

Packaging Resources for Deployment

.. raw:: html

   </h2>

.. raw:: html

   <p>

To be able to run the app on mobile devices, we package all QML,
JavaScript, image, and sound files into a Qt resource file (.qrc). For
more information, see The Qt Resource System.

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

demos/maroon/maroon.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/BuildButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/GameCanvas.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/GameOverScreen.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/InfoBar.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/NewGameScreen.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/SoundEffect.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/logic.js

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/mobs/MobBase.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/towers/Bomb.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/towers/Factory.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/towers/Melee.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/towers/Ranged.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/content/towers/TowerBase.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/maroon.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/maroon.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/maroon/maroon.qrc

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

   <!-- @@@demos/maroon -->
