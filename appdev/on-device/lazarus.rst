Right before diving into the topic, please consider checking the page
about [[UT on-device software development]].

|LazarusIDE on Ubuntu Phone| |LazarusIDE on Ubuntu Phone|

Introduction
------------

`Lazarus IDE <https://www.lazarus-ide.org>`__ is a cross-platform open
source and free IDE based on Delphi, that also supports ARM Linux
natively. It uses `Free Pascal compiler <https://www.freepascal.org>`__,
and you can use it to compile once written code to a plethora of
targets, including (but not limited to): Windows, OSX, Linux, and
plethora of architectures, including Intel, ARM and many others. Both
Free Pascal compiler and Lazarus IDE can be compiled, or installed from
precompiled binaries/packages on Ubuntu Touch, using a default ARM Linux
releases. In fact both **fpc** and **lazarus** packages are available in
the default Ubuntu repositories, but most likely these are not the most
recent versions, so on your Ubuntu Touch you could just run:

::

    sudo apt-get install fpc lazarus
     

Just that in reality there are few problems with this: \* on UT devices
by default the system partition is read-only (can be easilyremounted to
rw though) \* on UT devices by default the free space on system
partition is quite low and might not be enough for installing both
packages along with all dependencies (on Meizu MX4 phone with original
UT only fpc package was possible to install, but not lazarus due to
insufficient space). The resizing of the filesystem is not a very easy
task. \* by default Lazarus IDE, which is a GTK app starts in
multi-window mode, which does not work well when running gtk on the UT
device via XMir. Lazarus can be configured into single window mode (see
screenshots on top of this page), which solves the problem.

Laso Lazarus comes in QT mode, but built with an older QT than the
version supported by UT. Also using Lazarus with OSK (on screen
keyboard) is not convenient, but when using BT keyboard/mouse dongle
over phones OTG/USB port, it works greatm, and UT will even show up a
mouse pointer like on Ubuntu Desktop. Finally, one great way to use
Lazarus is via ssh with X forwarding. in that scenario, although Lazarus
IDE is installed and running off your UT device (phone/tablet) but it is
forwarded via ssh onto your Ubuntu Desktop's monitor, and you also can
use your desktop's keyboard and mouse to interact with it.

Before this wiki page gets full update, please check some external
articles talking about all this: \* `Free Pascal development for Ubuntu
Phone <http://kriscode.blogspot.tw/2016/09/freepascal-development-for-ubuntu-phone.html>`__
\* `Lazarus development for Ubuntu
Phone <http://kriscode.blogspot.tw/2016/10/lazarus-development-for-ubuntu-phone.html>`__

Benefits of using Lazarus are: \* Lazarus IDE is one of the best. see:
`What is the best IDE on
Linux <https://www.quora.com/What-is-the-best-IDE-for-Linux/answer/Krzysztof-Kamil-Jacewicz?srid=uKbMW>`__
\* You kill multiple birds with one stone, because whatever you write
for UT, you can also compile for Linux Desktop, Windows, OSX and other
OSes \* you can actually create apps for UT device on the UT device
itself!

GTK vs QT
---------

When compiling Lazarus app, it gets built against a widgetset. By
default the widgetset is GTK (unless you are using QT Lazarus version),
but you can change a widgetset in the Lazarus configuration. Even if you
do, the version of QT that Lazarus uses is 4, whereas UT devices use
newer QT5. There are QT5 bindings for Lazarus available, but reportedly
they are not very recent. The simplest way between design and production
is to build standard GTK apps. Currently the `GTK port for
Mir <http://www.omgubuntu.co.uk/2014/06/ubuntu-devs-demo-gtk-apps-running-mir-unity-8>`__
display server is only experimental and it is not sure if it will
continue. But UT comes with XMir by default, which will run GTK apps on
the phone itself: `X applications on Ubuntu
Phone <http://kriscode.blogspot.tw/2016/09/x-applications-on-ubuntu-phone.html>`__

If you do go down this road, one think has to be kept in mind. Although
Lazarus has support for high DPI, compiled apps do not detect the
correct DPI value when used on the UT device. Probably this is because
XMir layer does not report it correctly to the app when serving as a
wrapper to some xorg specific APIs. Because of that, at least currently
(because XMir might receive a patch at some point) it will be your task
to manually adjust size of all the GUI elements when they are launched
on the high DPI of a UT device. It is not a difficult thing, but has to
be remembered about, otherwise the app on your phone will look very
small, with tiny fonts, buttons, etc.

Deployment
----------

You could package your compild app with something that UT recognizes,
like click or snaps. But you can also deploy it in a generic way, not
specific to UT platform. You just need to create a launcher that would
show up on the Apps scope of your UT device, that will launch the
compiled binary via XMir. Suppose your binary file is located at
**:sub:`/.local/MyApp/myapp**, then you need to create a launcher file
in **`/.local/share/appliations/MyApp.desktop** with this content:

::

    [Desktop Entry]
    Name=<AppName>
    Comment=<your app description>
    X-Ubuntu-Touch=true
    X-Ubuntu-XMir-Enable=true
    Exec=<path_to_your_app>
    Icon=<path_to_your_icon>
    Terminal=false
    Type=Application
     

this is basically all regular .desktop file format (if you are familiar
with it on Ubuntu Desktop), but there are few UT-specific flags:
X-Ubuntu-Touch and X-Ubuntu-XMir, which will assure that your app will
get launched via the Xmir compatibility layer. This is also covered in
the external article `X applications on Ubuntu
Phone <http://kriscode.blogspot.tw/2016/09/x-applications-on-ubuntu-phone.html>`__
that has been linked to in the begining of this wiki page.

Use scenarios
-------------

**Number 1 use case: direct** is when you install Lazarus and FPC
directly on your UT device, but unless you can ensure enough free space
on your system partition, this can be troublesome.

**Number 2 use case: containers** is to install it inside a container on
your UT device, becasue the container folder/image can fit somehwere in
your userspace, which is portion of the filesystem that has all the
storage for you to use. There are multiple container approaches to
choose from, and this external link will introduce you to `Easy
containers on Ubuntu Touch with
qemu-debootstrap <http://kriscode.blogspot.tw/2016/12/easy-containers-on-ubuntu-touch.html>`__

**DISCLAIMER** Both the 1st and the 2nd approaches will allow you to
either start and use Lazarus IDE on your UT device screen, or via ssh
forwareded X session.

**Number 3 use case: non-Mir ARM Linux** It is very convenient (perhaps
the most convenient because of problems related to 1st use case) to use
Lazarus on another ARM Linux with a xorg based display server instead of
Mir. Great scenario is if you have a single board computer like
Raspberry Pi, and Ubuntu Mate (or other Linux with graphical session
manager) running on it. Installing Lazarus and FPC will be absolutely
straightforward in such a scenario, and compiled binaries, since the
device is already ARM Linux, will be ready to be copied over onto your
UT device, and will work there as well. Just remember about the XMir
layer (it has to have a custom launcher file).

**Number 4 use case: qemulated ARM chroot** on your intel-based Ubuntu
Desktop, you can always create debootstrap chroot jail using
qemu-system-arm, which will emulate ARM execution environment. It is not
exactly a virtual machine approach, but it feels pretty much like it.
Just that your guest OS will be ARM whereas your host is intel based. In
fact, you can do that even on Windows host. whatever you create and
compile inside such a chroot environment, you can just copy over to your
UT device, because it will be a valid ARM Linux binary.

.. |LazarusIDE on Ubuntu Phone| image:: https://qph.ec.quoracdn.net/main-qimg-4ac8c75b2f4d0ac80fc82d74a48b1bd3
.. |LazarusIDE on Ubuntu Phone| image:: https://qph.ec.quoracdn.net/main-qimg-60417c6805535103beb6b0f5e63ac290

