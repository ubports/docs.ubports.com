Handle C++ dependencies with Clickable
======================================

If an app depends on a library that is not pre-installed in Ubuntu Touch, the app needs to ship it inside the click package. This guide shows how this can be done with Clickable.

Building
--------
Often libraries are available pre-built, So you need to decide whether you want your build setup to download the library source and compile it or download the pre-built version. The following sections describe the options with its pros and cons.

Compilation
^^^^^^^^^^^
Compiling the library gives you control over the result, which brings a lot of advantages. For instance, you may disable components your app doesn't need and link the library statically, resulting in a much smaller package size.

Put the libraries source code at ``libs/LIBNAME``, because this is where clickable will look for it by default. If the dependency source code is available as a git repository, it is a good idea to add it as a `git submodule <https://git-scm.com/book/de/v1/Git-Tools-Submodule>`_. Otherwise you might want to add a script to download the sources.

Add a `libraries section <http://clickable.bhdouglass.com/en/latest/clickable-json.html#libraries>`_ to your clickable.json, like this:

.. code-block:: JSON
   :emphasize-lines: 4-8

    {
      "template": "cmake",
      "dir": "build/app",
      "libraries": {
        "LIBNAME": {
          "template": "cmake"
        }
      }
    }

If the library does not contain a CMake configuration, you may use the `qmake` or `custom` template instead. If you choose `custom`, you need to add a `build` command.

You should define a custom app build directory via the ``dir`` param as shown above. Otherwise a `clickable clean` (which is part of the default `clickable` command) would delete the library's build directory, too.

Optionally, configure the compilation by adding ``build_args``, which may look like this:

.. code-block:: JSON
   :emphasize-lines: 7-12

    {
      "template": "cmake",
      "dir": "build/app",
      "libraries": {
        "LIBNAME": {
          "template": "cmake",
          "build_args": [
            "-DBUILD_EXAMPLES=OFF",
            "-DBUILD_DOCS=OFF",
            "-DBUILD_TESTS=OFF",
            "-DBUILD_SHARED_LIBS=OFF"
          ]
        }
      }
    }

Build arguments are usually project specific. Therefore, study the library's build instructions and also look for ``option`` settings in its ``CMakeLists.txt`` (if CMake is used). The default build directory is ``build/LIBNAME/ARCHITECTURE``. Therefore builds for different architectures can exist in parallel.

To actually build the library run ``clickable build-libs``. You may want to build it for the desktop, too, via ``clickable build-libs --arch amd64``. Don't forget to mention this step in your README!

See how `Teleports clickable.json <https://gitlab.com/ubports/apps/teleports/blob/master/clickable.json#L14>`_ uses the libraries feature to build its dependency tdlib.

Pre-built
^^^^^^^^^
A pre-built library is usually only available as a shared object, that needs to be linked dynamically. Furthermore, it may contain components that you don't need, resulting in a bloated app. It may even miss something, that you could achieve by compiling it yourself. Sometimes, a library is available in the Ubuntu Repositories, but is not installable for the architecture you need (likely ``armhf``). In this case you have to compile the library as described above.

If the library is available in the Ubuntu Repositories, you can add it to the dependencies list, like this:

.. code-block:: JSON
   :emphasize-lines: 3-5

    {
      "template": "cmake",
      "dependencies_target": [
        "libsomething-dev"
      ]
    }

Clickable will install the specified package automatically for the target architecture inside the build container. An example can be found in `Guitar Tools' clickable.json <https://github.com/t-mon/guitar-tools/blob/master/clickable.json#L4>`_.

If the library is not in the Ubuntu Repositories, but in a PPA, you can add the PPA to the clickable.json, too. For example:

.. code-block:: JSON
   :emphasize-lines: 3-5

    {
      "template": "cmake",
      "dependencies_ppa": [
        "ppa:someone/libsomething"
      ],
      "dependencies_target": [
        "libsomething-dev"
      ]
    }

Otherwise you may need to add a script to download the pre-built library.

Using
-----
First, you may need to specify the include directory where the compiler can find the headers. Second, you need to link the library itself against your app's binary, except it is a header library, where all the source code is located in header files.

In case the library contains an appropriate CMake configuration file, you may use the `find_package <https://cmake.org/cmake/help/latest/command/find_package.html>`_ command. The additional lines on your CMakeLists.txt then may look like:

.. code-block:: CMake

    execute_process(
        COMMAND dpkg-architecture -qDEB_HOST_MULTIARCH
        OUTPUT_VARIABLE ARCH_TRIPLET
        OUTPUT_STRIP_TRAILING_WHITESPACE
    )
    set(SOMELIBRARY_DIR "${CMAKE_SOURCE_DIR}/build/somelib/${ARCH_TRIPLET}")
    find_package(SOMELIBRARY REQUIRED)
    include_directories(${SOMELIBRARY_INCLUDE_DIRS})
    target_link_libraries(mytarget ${SOMELIBRARY_LIBS})

The command ``dpkg-architecture -qDEB_HOST_MULTIARCH`` is used to query the target architecture, which is part of the library build directory path, if you compiled the library with Clickable.

We define the variable ``SOMELIBRARY_DIR`` with the path to the libraries build directory, to help CMake find the configuration of the library named ``SOMELIBRARY``. You may not need to do this, if you installed the library from the Ubuntu Repositories.

The ``find_package`` command defines the path to the include directory as ``SOMELIBRARY_INCLUDE_DIRS`` and the library's binaries as ``SOMELIBRARY_LIBS``. We use those with the ``include_directories`` and ``target_link_libraries`` commands. See the `Camera Scanner ImageProcessing CMakeLists.txt <https://github.com/jonnius/camera-scanner/blob/master/plugins/ImageProcessing/CMakeLists.txt#L23>`_ for a real world example.

Deploying
---------
If you link a library statically with your app, you do not need to ship the library explicitly, as it is already inside your app binary. To do so, you usually need to compile the library yourself.

Find out which components you need to ship. Usually this is one or more ``*.so`` (shared objects) files, linked dynamically. To get the files into the click package, you need to add an ``install`` command to your build configuration. Add the following lines to your CMakeLists.txt:

.. code-block:: CMake

    execute_process(
        COMMAND dpkg-architecture -qDEB_HOST_MULTIARCH
        OUTPUT_VARIABLE ARCH_TRIPLET
        OUTPUT_STRIP_TRAILING_WHITESPACE
    )
    install(FILES /usr/lib/${ARCH_TRIPLET}/libSomething.so DESTINATION /lib/${ARCH_TRIPLET})

This will copy the files into the ``tmp`` folder inside the build directory. This is where Clickable puts all the files that go into the click package. Again, the command ``dpkg-architecture -qDEB_HOST_MULTIARCH`` is used to query the target architecture, which is usually part of the file path.
