Handle C++ dependencies with Clickable
======================================

If an app depends on a library that is not pre-installed in Ubuntu Touch, the app needs to ship it inside the click package. This guide shows how this can be done with Clickable.

Building
--------
Sometimes libraries are available pre-built, allowing you to skip the build step. Compiling your dependency is recommended though, as it gives you more control over the whole process and may lead to better results (e.g. better performance or smaller package sizes).

Compilation
^^^^^^^^^^^
Put the library's source code at ``libs/LIBNAME`` (replacing ``LIBNAME`` by the library's name), because this is where clickable will look for it by default. If the dependency source code is available as a git repository, it is a good idea to add it as a `git submodule <https://git-scm.com/book/de/v1/Git-Tools-Submodule>`_. Otherwise add a script to download the sources.

Add a `libraries section <https://clickable.bhdouglass.com/en/latest/project-config.html#libraries>`_ to your clickable.yaml, like this:

.. code-block:: YAML
   :emphasize-lines: 2-4

    builder: "cmake"
    libraries:
      LIBNAME:
        builder: "cmake"

If the library does not contain a CMake configuration, you need to use the `qmake` or `custom` builder instead.

Optionally, configure the compilation by adding ``build_args``, which may look like this:

.. code-block:: YAML
   :emphasize-lines: 6-9

    builder: "cmake"
    libraries:
      LIBNAME:
        builder: "cmake"
        build_args:
        - "-DBUILD_EXAMPLES=OFF"
        - "-DBUILD_DOCS=OFF"
        - "-DBUILD_TESTS=OFF"
        - "-DBUILD_SHARED_LIBS=OFF"

Most build arguments are project specific. Therefore, study the library's build instructions and also look for ``option`` settings in its ``CMakeLists.txt`` .

To actually build the library for all architectures run ``clickable build --libs --arch armhf``, ``clickable build --libs --arch arm64`` and ``clickable build --libs --arch amd64``. Don't forget to mention this step in your README, so that others can reproduce the build process.

See how `Teleports clickable.yaml <https://gitlab.com/ubports/development/apps/teleports/-/blob/main/clickable.yaml#L26>`_ uses the libraries feature to build its dependency tdlib.

Pre-built
^^^^^^^^^
If you compiled your library as described above, skip this step.

A pre-built library is usually only available as a shared object that needs to be linked dynamically. Furthermore, it may contain components that you don't need, resulting in a bloated app. It may even miss something that you could achieve by compiling it yourself. Sometimes, a library is available in the Ubuntu Repositories, but is not installable for the architecture you need (likely ``armhf`` or ``arm64``). In this case you have to compile the library as described above.

If the library is available in the Ubuntu Repositories, you can add it to the dependencies list, like this:

.. code-block:: YAML
   :emphasize-lines: 2-3

    builder: "cmake"
    dependencies_target:
    - "libsomething-dev"

Clickable will install the specified package automatically for the target architecture inside the build container. An example can be found in `Guitar Tools' clickable.json <https://github.com/t-mon/guitar-tools/blob/master/clickable.json#L4>`_.

If the library can be found in a PPA, you can add the PPA to the clickable.yaml, too. For example:

.. code-block:: YAML
   :emphasize-lines: 2-3

    builder: "cmake"
    dependencies_ppa:
    - "ppa:someone/libsomething"
    dependencies_target:
    - "libsomething-dev"

Otherwise add a script to download the pre-built library.

Usage
-----
First, you need to specify the include directory where the headers can be found that you include into the app's source code. Second, you need to link the library's binary against your app's binary.

In case the library contains a CMake configuration file, you can use the `find_package <https://cmake.org/cmake/help/latest/command/find_package.html>`_ command, which provides you with a target to link against or variables pointing to the library's binary and include directories. The additional lines on your CMakeLists.txt then may look like:

.. code-block:: CMake

    find_package(SOMELIBRARY REQUIRED)

    include_directories(${SOMELIBRARY_INCLUDE_DIRS})
    target_link_libraries(mytarget ${SOMELIBRARY_LIBS})

The ``find_package`` command usually defines the path to the include directory as ``SOMELIBRARY_INCLUDE_DIRS`` and the library's binaries as ``SOMELIBRARY_LIBS`` (check on the library's documentation on what their CMake configuration provides exactly). Use them with the ``include_directories`` and ``target_link_libraries`` commands. See the `Camera Scanner ImageProcessing CMakeLists.txt <https://github.com/jonnius/camera-scanner/blob/master/plugins/ImageProcessing/CMakeLists.txt#L23>`_ for a real world example.

At this point you should already be able to test with Clickable's desktop mode running ``clickable desktop``.

Deployment
----------
If you linked the library statically, you can skip this step, as the library's binary is already inside your app's binary.

Find out which shared object files (``*.so``) you need to ship. You can do so by starting the app on your device via ``clickable && clickable logs``. You should see an error message telling you which shared object file was missing.

Find the path to the shared object files. For libraries built via clickable, they are located somewhere in the library's install dir, which is located inside the library's build dir by default (e.g. ``build/arm-linux-gnueabihf/opencv/install``). For pre-built libraries run ``clickable run "find / -name 'libSomething.so'"`` (replacing ``libSomething.so`` by the file your are looking for). This should print the path to the file (along with some error messages you can ignore). In general, ``/usr/lib``  is a good bet when looking for the shared object files.

To get the files into the click package, add the `install_lib <https://clickable.bhdouglass.com/en/latest/project-config.html#install-lib>`_ key to your clickable.yaml:

.. code-block:: YAML
   :emphasize-lines: 5-7

    builder: "cmake"
    libraries:
      LIBNAME:
        builder: "cmake"
        install_lib:
        - "$LIBNAME_LIB_INSTALL_DIR/usr/lib/$ARCH_TRIPLET/libqmapboxgl.so*"
        - "/usr/lib/$ARCH_TRIPLET/libSoundTouch.so.*"

The lines above contain two examples. The first one installing a library built with Clickable. The asterisk in ``.so*`` helps to catch symbolic links along with the actual library which are used to point to the current version.

Depending on the library, you might need to ship some additional data. In that case consult the library's readme or install instructions.

You should be set up to build and install your click package on a device connected to your computer now by running ``clickable``.
