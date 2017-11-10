.. _sdk_qtquick_qt_quick_particles_examples_-_affectors:

QtQuick Qt Quick Particles Examples - Affectors
===============================================



This is a collection of small QML examples relating to using Affectors in the particle system. Each example is a small QML file emphasizing a particular type or feature.

Age demonstrates using an Age affector to prematurely end the lives of particles.

.. code:: qml

    Age {
        anchors.fill: parent
        system: particles
        once: true
        lifeLeft: 1200
        advancePosition: false
    }

As you move the affector around the screen, the particles inside it (which haven't already been affected) jump to a period near the end of their life. This gives them a short period to finish fading out, but changing lifeLeft to 0 (the default), would cause them to reach the end of their life instantly.

Attractor demonstrates using an Attractor affector to simulate a black hole

.. code:: qml

    Attractor {
        id: gs; pointX: root.width/2; pointY: root.height/2; strength: 4000000;
        affectedParameter: Attractor.Acceleration
        proportionalToDistance: Attractor.InverseQuadratic
    }

All particles in the scene, including the rocket ship's exhaust and pellets, are pulled towards the black hole. This effect is stronger closer to the black hole, so the asteroids near the top of the screen are barely affected at all, while the ones towards the middle sometimes curve drastically. To complete the effect, an Age affector covers the black hole to destroy particles which come in contact with it.

Custom Affector manipulates the properties of the particles directly in javascript. One Affector is used to make the leaves rock back and forth as they fall, looking more leaf-like than just spinning in circles:

.. code:: qml

    Affector {
        property real coefficient: 0.1
        property real velocity: 1.5
        width: parent.width
        height: parent.height - 100
        onAffectParticles: {
        /*  //Linear movement
            if (particle.r == 0) {
                particle.r = Math.random() > 0.5 ? -1 : 1;
            } else if (particle.r == 1) {
                particle.rotation += velocity * dt;
                if (particle.rotation >= maxAngle)
                    particle.r = -1;
            } else if (particle.r == -1) {
                particle.rotation -= velocity * dt;
                if (particle.rotation <= -1 * maxAngle)
                    particle.r = 1;
            }
        */
            //Wobbly movement
            for (var i=0; i<particles.length; i++) {
                var particle = particles[i];
                if (particle.r == 0.0) {
                    particle.r = Math.random() + 0.01;
                }
                particle.rotation += velocity * particle.r * dt;
                particle.r -= particle.rotation * coefficient;
                if (particle.r == 0.0)
                    particle.r -= particle.rotation * 0.000001;
                particle.update = 1;
            }
        }
    }

Another is used to provide a slightly varying friction to the leaves as they 'land', to look more natural:

.. code:: qml

    Affector {//Custom Friction, adds some 'randomness'
        x: -60
        width: parent.width + 120
        height: 100
        anchors.bottom: parent.bottom
        onAffectParticles: {
            for (var i=0; i<particles.length; i++) {
                var particle = particles[i];
                var pseudoRand = (Math.floor(particle.t*1327) % 10) + 1;
                var yslow = dt * pseudoRand * 0.5 + 1;
                var xslow = dt * pseudoRand * 0.05 + 1;
                if (particle.vy < 1)
                    particle.vy = 0;
                else
                    particle.vy = (particle.vy / yslow);
                if (particle.vx < 1)
                    particle.vx = 0;
                else
                    particle.vx = (particle.vx / xslow);
                particle.update = true;
            }
        }
    }

Friction is similar to the falling leaves in the custom affector, except that it uses a flat friction the whole way down instead of custom affectors.

.. code:: qml

    Friction {
        anchors.fill: parent
        anchors.margins: -40
        factor: 0.4
    }

Gravity is a convenience affector for applying a constant acceleration to particles inside it

.. code:: qml

    Gravity {
        system: sys
        magnitude: 32
        angle: ground.rotation + 90
    }

`GroupGoal </sdk/apps/qml/QtQuick/Particles.GroupGoal/>`_  sets up two particle groups for flaming and non-flaming balls, and gives you various ways to transition between them.

.. code:: qml

    ParticleGroup {
        name: "unlit"
        duration: 1000
        to: {"lighting":1, "unlit":99}
        ImageParticle {
            source: "../../images/particleA.png"
            colorVariation: 0.1
            color: "#2060160f"
        }
        GroupGoal {
            whenCollidingWith: ["lit"]
            goalState: "lighting"
            jump: true
        }
    }

The non-flaming balls have a one in a hundred chance of lighting on their own each second, but they also have a `GroupGoal </sdk/apps/qml/QtQuick/Particles.GroupGoal/>`_  set on the whole group. This affector affects all particles of the unlit group, when colliding with particles in the lit group, and cause them to move to the lighting group.

.. code:: qml

    ParticleGroup {
        name: "lighting"
        duration: 100
        to: {"lit":1}
    }

lighting is an intermediate group so that the glow builds up and the transition is less jarring. So it automatically moves into the lit group after 100ms.

.. code:: qml

    ParticleGroup {
        name: "lit"
        duration: 10000
        onEntered: score++;
        TrailEmitter {
            id: fireballFlame
            group: "flame"
            emitRatePerParticle: 48
            lifeSpan: 200
            emitWidth: 8
            emitHeight: 8
            size: 24
            sizeVariation: 8
            endSize: 4
        }
        TrailEmitter {
            id: fireballSmoke
            group: "smoke"

The lit group also has TrailEmitters on it for additional fire and smoke, but does not transition anywhere. There are two more `GroupGoal </sdk/apps/qml/QtQuick/Particles.GroupGoal/>`_  objects that allow particles in the unlit group to transition to the lighting group (and then to the lit group).

.. code:: qml

    GroupGoal {
        groups: ["unlit"]
        goalState: "lit"
        jump: true
        system: particles
        x: -15
        y: -55
        height: 75
        width: 30
        shape: MaskShape {source: "../../images/matchmask.png"}
    }

The first is just an area bound to the location of an image of a pilot flame. When unlit balls pass through the flame, they go straight to lit because the pilot flame is so hot.

.. code:: qml

    //Click to enflame
    GroupGoal {
        groups: ["unlit"]
        goalState: "lighting"
        jump: true
        enabled: ma.pressed
        width: 18
        height: 18
        x: ma.mouseX - width/2
        y: ma.mouseY - height/2
    }

The second is bound to the location of the last pointer interaction, so that touching or clicking on unlit balls (which is hard due to their constant movement) causes them to move to the lighting group.

Move shows some simple effects you can get by altering trajectory midway. The red particles have an affector that affects their position, jumping them forwards by 120px.

.. code:: qml

    Affector {
        groups: ["A"]
        x: 120
        width: 80
        height: 80
        once: true
        position: PointDirection { x: 120; }
    }

The green particles have an affector that affects their velocity, but with some angle variation. By adding some random direction velocity to their existing forwards velocity, they begin to spray off in a cone.

.. code:: qml

    Affector {
        groups: ["B"]
        x: 120
        y: 240
        width: 80
        height: 80
        once: true
        velocity: AngleDirection { angleVariation:360; magnitude: 72 }
    }

The blue particles have an affector that affects their acceleration, and because it sets relative to false this resets the acceleration instead of adding to it. Once the blue particles reach the affector, their horizontal velocity stops increasing as their vertical velocity decreases.

.. code:: qml

    Affector {
        groups: ["C"]
        x: 120
        y: 400
        width: 80
        height: 120
        once: true
        relative: false
        acceleration: PointDirection { y: -80; }
    }

`SpriteGoal </sdk/apps/qml/QtQuick/Particles.SpriteGoal/>`_  has an affector which interacts with the sprite engine of particles, if they are being drawn as sprites by `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_ .

.. code:: qml

    SpriteGoal {
        groups: ["meteor"]
        system: sys
        goalState: "explode"
        jump: true
        anchors.fill: rocketShip
        width: 60
        height: 60
    }

The `SpriteGoal </sdk/apps/qml/QtQuick/Particles.SpriteGoal/>`_  follows the image of the rocket ship on screen, and when it interacts with particles drawn by `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  as sprites, it instructs them to move immediately to the "explode" state, which in this case is the animation of the asteroid breaking into many pieces.

Turbulence has a flame with smoke, and both sets of particles being affected by a Turbulence affector. This gives a faint wind effect.

.. code:: qml

    Turbulence {
        id: turb
        enabled: true
        height: (parent.height / 2) - 4
        width: parent.width
        x: parent. width / 4
        anchors.fill: parent
        strength: 32
        NumberAnimation on strength{from: 16; to: 64; easing.type: Easing.InOutBounce; duration: 1800; loops: -1}
    }

To make the wind change direction, subsitute a black and white noise image in the noiseSource parameter (it currently uses a default noise source).

Wander uses a Wander affector to add some horizontal drift to snowflakes as they fall down.

.. code:: qml

    Wander {
        id: wanderer
        system: particles
        anchors.fill: parent
        xVariance: 360/(wanderer.affectedParameter+1);
        pace: 100*(wanderer.affectedParameter+1);
    }

There are different movements given by applying the Wander to different attributes of the trajectory, so the example makes it easy to play around and see the difference.

Files:

-  particles/affectors/affectors.qml
-  particles/affectors/content/GreyButton.qml
-  particles/affectors/content/age.qml
-  particles/affectors/content/attractor.qml
-  particles/affectors/content/customaffector.qml
-  particles/affectors/content/friction.qml
-  particles/affectors/content/gravity.qml
-  particles/affectors/content/groupgoal.qml
-  particles/affectors/content/move.qml
-  particles/affectors/content/spritegoal.qml
-  particles/affectors/content/turbulence.qml
-  particles/affectors/content/wander.qml
-  particles/affectors/main.cpp
-  particles/affectors/affectors.pro
-  particles/affectors/affectors.qmlproject
-  particles/affectors/affectors.qrc

