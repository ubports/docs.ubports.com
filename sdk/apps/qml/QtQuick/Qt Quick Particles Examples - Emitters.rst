.. _sdk_qtquick_qt_quick_particles_examples_-_emitters:

QtQuick Qt Quick Particles Examples - Emitters
==============================================



This is a collection of small QML examples relating to using Emitters in the particle system. Each example is a small QML file emphasizing a particular type or feature.

Velocity from motion gives the effect of strong particle motion through primarily moving the emitters:

.. code:: qml

    Emitter {
        id: trailsNormal
        system: sys1
        emitRate: 500
        lifeSpan: 2000
        y: mouseArea.pressed ? mouseArea.mouseY : circle.cy
        x: mouseArea.pressed ? mouseArea.mouseX : circle.cx
        velocity: PointDirection {xVariation: 4; yVariation: 4;}
        acceleration: PointDirection {xVariation: 10; yVariation: 10;}
        velocityFromMovement: 8
        size: 8
        sizeVariation: 4
    }

Burst and pulse calls the burst and pulse methods on two idential emitters.

.. code:: qml

        if (lastWasPulse) {
            burstEmitter.burst(500);
            lastWasPulse = false;
        } else {
            pulseEmitter.pulse(500);
            lastWasPulse = true;
        }

Note how burst takes an argument of number of particles to emit, and pulse takes an argument of number of milliseconds to emit for. This gives a slightly different behaviour, which is easy to see in this example.

Custom Emitter connects to the emitParticles signal to set arbitrary values on particle data as they're emitted;

.. code:: qml

    onEmitParticles: {
        for (var i=0; i<particles.length; i++) {
            var particle = particles[i];
            particle.startSize = Math.max(02,Math.min(492,Math.tan(particle.t/2)*24));
            var theta = Math.floor(Math.random() * 6.0);
            particle.red = theta == 0 || theta == 1 || theta == 2 ? 0.2 : 1;
            particle.green = theta == 2 || theta == 3 || theta == 4 ? 0.2 : 1;
            particle.blue = theta == 4 || theta == 5 || theta == 0 ? 0.2 : 1;
            theta /= 6.0;
            theta *= 2.0*Math.PI;
            theta += sys.convert(sys.petalRotation);//Convert from degrees to radians
            particle.initialVX = petalLength * Math.cos(theta);
            particle.initialVY = petalLength * Math.sin(theta);
            particle.initialAX = particle.initialVX * -0.5;
            particle.initialAY = particle.initialVY * -0.5;
        }
    }

This is used to emit curving particles in six rotating spokes.

Emit mask sets an image mask on the Emitter, to emit out of an arbitrary shape.

.. code:: qml

    shape: MaskShape {
        source: "../../images/starfish_mask.png"
    }

Maximum emitted emits no more than a certain number of particles at a time. This example makes it easy to see what happens when the limit is reached.

Shape and Direction emits particles out of an unfilled Ellipse shape, using a `TargetDirection </sdk/apps/qml/QtQuick/Particles.TargetDirection/>`_ 

.. code:: qml

    shape: EllipseShape {fill: false}
    velocity: TargetDirection {
        targetX: root.width/2
        targetY: root.height/2
        proportionalMagnitude: true
        magnitude: 0.5
    }

This sends the particles towards the center of the ellipse with proportional speed, keeping the ellipse outline as they move to the center.

`TrailEmitter </sdk/apps/qml/QtQuick/Particles.TrailEmitter/>`_  uses that type to add smoke particles to trail the fire particles in the scene.

.. code:: qml

    onEmitParticles: {
        for (var i=0; i<particles.length; i++) {
            var particle = particles[i];
            particle.startSize = Math.max(02,Math.min(492,Math.tan(particle.t/2)*24));
            var theta = Math.floor(Math.random() * 6.0);
            particle.red = theta == 0 || theta == 1 || theta == 2 ? 0.2 : 1;
            particle.green = theta == 2 || theta == 3 || theta == 4 ? 0.2 : 1;
            particle.blue = theta == 4 || theta == 5 || theta == 0 ? 0.2 : 1;
            theta /= 6.0;
            theta *= 2.0*Math.PI;
            theta += sys.convert(sys.petalRotation);//Convert from degrees to radians
            particle.initialVX = petalLength * Math.cos(theta);
            particle.initialVY = petalLength * Math.sin(theta);
            particle.initialAX = particle.initialVX * -0.5;
            particle.initialAY = particle.initialVY * -0.5;
        }
    }

Files:

-  particles/emitters/emitters.qml
-  particles/emitters/content/burstandpulse.qml
-  particles/emitters/content/customemitter.qml
-  particles/emitters/content/emitmask.qml
-  particles/emitters/content/maximumemitted.qml
-  particles/emitters/content/shapeanddirection.qml
-  particles/emitters/content/trailemitter.qml
-  particles/emitters/content/velocityfrommotion.qml
-  particles/emitters/main.cpp
-  particles/emitters/emitters.pro
-  particles/emitters/emitters.qmlproject
-  particles/emitters/emitters.qrc

