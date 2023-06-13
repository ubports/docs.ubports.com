.. _DeviceInfo_Ayatana-indicator-power:

Ayatana-indicator-power
=======================

All deviceinfo keys used by ayatana-indicator-power are given below::

	<devicename>:
	    FlashlightSysfsPath: <path to flashlight node>
	    FlashlightSwitchPath: <path to flashlight switch node>

Device quirks
-------------

====================  =============================================================================================================  =======================================
Key                   Description                                                                                                    Value(s)
====================  =============================================================================================================  =======================================
FlashlightSysfsPath   Specifies the path to flashlight node for Flashlight toggle in indicator.                                      Path to flashlight node in /sys.
FlashlightSwitchPath  Specifies the path to the flashlight switch node needed for the kernel driver to actually turn on flashlight.  Path to flashlight switch node in /sys.
====================  =============================================================================================================  =======================================

Examples
--------

Device ``sample`` using:

- Change flashlight path to "/sys/class/leds/led:torch_0/brightness" to resolve the issue where ayatana-indicator-power will choose the wrong node.
- Change flashlight switch path so flashlight will actually turn on.

Config file::

	$ cat /etc/deviceinfo/devices/sample.yaml
	sample:
	    FlashlightSysfsPath: "/sys/class/leds/led:torch_0/brightness"
	    FlashlightSwitchPath: "/sys/class/leds/led:switch_0/brightness"

