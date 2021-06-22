Building and booting
====================

Having done the necessary research into the specifics of your particular device and prepared a suitable host PC, you are now ready to download and configure the necessary source code and start building.

This part of the porting process will differ depending on the Halium version you will be building, and which method you choose to follow (in cases where a choice is available). Although the build process for Halium-7.1 and Halium-9.0 carry definite similarities, there are also key differences. Please refer only to the sections that are relevant to the method you will be following!

For the remainder of this guide, information pertaining to Halium-9.0 is also intended to apply to newer versions of Halium. Note that as newer versions evolve, it is quite possible that certain differences will become apparent. As long as such differences remain few and relatively small, new sections will not be added to the guide, but as the number and magnitude differences grow, this option must eventually be chosen. 

There is a separate section describing how to install the build. This section covers both Halium versions. Make sure to note the differences here also.

Finally, standalone kernel building for Halium-9.0 is treated separately, even though significant parts of this process actually are the same as for Halium-9.0/GSI porting.

.. toctree::
   :maxdepth: 1
   :name: build_and_boot

   H7_setup_sources
   H7_build
   H9_setup_sources
   H9_build
   Halium_install
   Standalone_kernel_build
   Standalone_install
   Boot_debug
