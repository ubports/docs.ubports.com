Introduction
============

Porting is the process of making Ubuntu Touch run on new hardware, i.e. on devices that have not previously been able to run Ubuntu Touch. 

On the vast majority of commercially available devices crucial parts of their systems are not open source. Furthermore, these proprietary parts are specific, not only to the manufacturer, but usually also to the individual model. 

Porting Ubuntu Touch involves building it in such a way as to integrate it with these proprietary components on a device so as to enable it to "talk to" the device hardware. 

.. _Prior-knowledge-and-skills:

Prior knowledge and skills
--------------------------

Porters come in all sizes and shapes, so to speak. Therefore, this guide does not presuppose extensive knowledge or skills in any particular field. You should, however, as a bare minimum be familiar with some common shell commands and be comfortable working from the terminal on you host PC. Furthermore, the guide is based on a host PC running Linux. If you have some knowledge of programming, this will come in handy at some point, especially if you are familiar with C / C++. Also, you should familiarize yourself with git and set up a Github or Gitlab account to keep track of your code changes. It is wise to start documenting your steps from the very beginning.

We have attempted to give a certain amount of explanation along the way. However, this guide is not an in-depth reference into the architecture and inner workings of Ubuntu Touch, and gaining a deeper understanding will consequently require an amount of research on your part.

Before attempting to port Ubuntu Touch to a new device, there are a few things to understand and consider, some research to be done, and a suitable build environment needs to be set up. This section addresses these points.

.. toctree::
   :maxdepth: 1
   :name: introduction

   Intro
   Preparations
   Setting_up
