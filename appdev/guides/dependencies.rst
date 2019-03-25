Handle dependencies
===================

If an app depends on a library that is not preinstalled in Ubuntu Touch, the app needs to ship it inside the click package. This guide shows how this can be done with Clickable.

Building
--------
Note that some dependencies do not need to be compiled, like a QML or python module.

Often libraries are available pre-build. So you need to decide, whether you want your build setup to download the library source and compile it or just download the pre-build version. The following sections describe the options with its pros and cons.

Compilation
^^^^^^^^^^^
Compiling a library may sound complicated. But usually it isn't. Compiling the library gives you controle over the result, which brings a lot of advantages. For instance, you may disable parts your app doesn't need and link the library statically, resulting in a much smaller package size.

Put the libraries source code at ``libs/LIBNAME``, because this is where clickable will look for it by default. If the dependency source code is available as a git repository, it is a good idea to add it as a `git submodule <https://git-scm.com/book/de/v1/Git-Tools-Submodule>`_. Otherwise you might want to add a script to download the sources.

Add a `libraries section <http://clickable.bhdouglass.com/en/latest/clickable-json.html#libraries>`_ to your clickable.json, just like this:

.. code-block:: JSON

    {
      "template": "cmake",
      "dir": "build/app",
      "libraries": {
        "LIBNAME": {
          "template": "cmake"
        }
      }
    }

If the library does not contain a CMake configuration, you may use the `qmake` or `custom` template instead. If you choose `custom`, you need to add a `build` command. Note, that you should define a custom app build directory. Otherwise a `clickable clean` (which is part of the default `clickable` command) would delete the libraries build directory, too.

Configure the compilation by adding ``build_args``, which may look like this:

.. code-block:: JSON

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

Build arguments are usually project specific. Therefore study the libraries build instructions and also look for ``option`` settings in its ``CMakeLists.txt`` (if CMake is used). The default build directory is ``build/LIBNAME/ARCHITECTURE``. Therefore builds for different architectures can exist in parallel.

To actually build the library run ``clickable build-libs``. You may want to build it for the desktop, too, via ``clickable build-libs --arch amd64``. Don't forget to mention this step in your README!

Pre-build
^^^^^^^^^
Note, that a pre-build library usually is only available as a shared object, that needs to be linked dynamically (no static linking). Furthermore, it may contain components that you don't need, resulting in a bloated app. It may even miss something, that you could achieve by compiling it yourself. Sometimes, a library is available in the Ubuntu Repositories, but is not installable for the architecture you need (likely ``armhf``).

If the library is available in the Ubuntu Repositories (look out for dev-packages), you may simply add it to the dependencies list, like this:

.. code-block:: JSON

    {
      "template": "cmake",
      "dependencies_target": [
        "libsomething-dev"
      ]
    }

Clickable will install the specified package for the target architecture inside the build container.

If the library is not in the Ubuntu Repositories, but in a PPA, you can simply add the PPA to the clickable.json, too. For example:

.. code-block:: JSON

    {
      "template": "cmake",
      "dependencies_ppa": [
        "ppa:someone/libsomething"
      ],
      "dependencies_target": [
        "libsomething-dev"
      ]
    }

Otherwise you may need to add a script to download the pre-build library.

Using
-----
Depending on the language, you may need to tell your build system, where to find the library. In case of a C++ library, you need at least to specify the include directory (where the compiler can find the headers) and you need to link the library itself against your app's binary (if it is not a pure header library).

In case the library contains an appropriate CMake configuration file, you may use the `find_package <https://cmake.org/cmake/help/latest/command/find_package.html>`_ command. The additional lines on your CMakeLists.txt may then look like this:

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

The command ``dpkg-architecture -qDEB_HOST_MULTIARCH`` is used to query the target architecture, which is part of the library build directory path, if you compile the library with Clickable.

We define the variable ``SOMELIBRARY_DIR`` with the path to the libraries build directory, to help CMake find the configuration of the library named ``SOMELIBRARY``. You may not need to do this, if you installed the library from the Ubuntu Repositories.

The ``find_package`` command the defines the path to the include directory (``SOMELIBRARY_INCLUDE_DIRS``) and the library's binary (``SOMELIBRARY_LIBS``). We use those with the ``include_directories`` and ``target_link_libraries`` commands.

Deploying
---------
Note, if you link a library statically with your app, you do not need to ship the library explicitly, as it is already inside your app binary. To do so, you usually need to compile the library yourself.

Find out, which components you need to ship. In case of Python or QML this might be a complete directory tree, containing modules. In case of a dynamically linked library (likely C++), this is probably a single ``*.so`` file.

To get the file or directory into the click package, you need to add an ``install`` command to your build configuration. In a CMakeLists.txt it may look like:

.. code-block:: CMake

    execute_process(
        COMMAND dpkg-architecture -qDEB_HOST_MULTIARCH
        OUTPUT_VARIABLE ARCH_TRIPLET
        OUTPUT_STRIP_TRAILING_WHITESPACE
    )
    install(FILES /usr/lib/${ARCH_TRIPLET}/libSomething.so DESTINATION /lib/${ARCH_TRIPLET})

This will copy the files into ``tmp`` inside the build directy. This is where Clickable puts all the files that go into the click package. The command ``dpkg-architecture -qDEB_HOST_MULTIARCH`` is used to query the target architecture, which is usually part of the file path.
