
Building ubports-boot
=====================

Ubuntu Touch uses Upstart rather than SystemD for its init daemon. Because of this, it is not fully Halium-compatible and is not able to use the vanilla hybris-boot that Halium produces. For this reason, we need to build ubports-boot.


Add source to Halium tree
-------------------------

The first thing that needs to be done is adding the ubports-boot source to your Halium tree. You may choose to do this by adding it to your local manifests (recommended) or simply cloning it in place.

.. warning:

    Due to a bug in the ubports-boot build scripts, you will need to remove it from your tree before you're able to build ``hybris-boot`` again.


Add to local manifest
^^^^^^^^^^^^^^^^^^^^^

Create a new file in ``.repo/local_manifests`` called ``ubports-boot.xml``. Add the following to the file:

.. code-block: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <project name="ubports/ubports-boot" path="halium/ubports-boot" remote="hal" revision="master" />
    </manifest>

Now, just do a ``repo sync`` to download the new source.


Manual clone
^^^^^^^^^^^^

You may also choose to clone `the ubports-boot repository <https://github.com/ubports/ubports-boot>`_ into your tree manually. It should be placed into ``BUILDDIR/halium/ubports-boot``.

If you share your code and build instructions, please note that you've done this.


Fix /data mountpoint
--------------------

.. note:

    This is a workaround for `ubports/ubports-boot #1 <https://github.com/ubports/ubports-boot/issues/1>`_ and `ubports/ubports-boot #2 <https://github.com/ubports/ubports-boot/issues/2>`_


Edit kernel config
------------------


Build the image
---------------

Once ubports-boot is in place, you can build it quite simply.

1. ``cd`` to your Halium BUILDDIR
2. ``source build/envsetup.sh``
3. Run ``breakfast`` or ``lunch``, whichever you use for your device
3. ``mka ubports-boot``


Continue on
-----------