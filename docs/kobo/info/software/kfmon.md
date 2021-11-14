# Kute File Monitor

**Kute File Monitor**, or **KFMon**, is a piece of software that allows you to open applications by opening 'books' (usually images) on your Kobo.

## Installation

### Method 1: One-Click Package

See [this page](/kobo/guide/custom-software). Both NickelMenu and KFMon will be installed, as well as a custom reader of your choice.
### Method 2: Manual install

1. Get the latest release of [KFMon](https://www.mobileread.com/forums/showthread.php?t=274231) (`KFMon-vX.X.X.zip`)
1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Copy the contents of the KFMon `.zip` to the root of the Kobo
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	KFMon will now open on startup, with messages displaying on the bottom of the screen. Note that no applications have been installed at this point, so this might not be terribly useful on its own.

## Configuring KFMon

KFMon's documentation is generally [pretty clear](https://github.com/NiLuJe/kfmon).

KFMon comes with configuration files for two readers -- KOReader and Plato. Other readers usually come with KFMon configuration, but if they don't, you can make your own with the following template:

Filename: `application-name.ini`

File contents:

	[watch]
	filename = /mnt/onboard/<image.png>
	action = /mnt/onboard/<command location>
	label = <application-name>
	block_spawns = 0 or 1 (set to 1 for document readers)

For example, `vlasovsoft.ini`:

File contents:

	[watch]
	filename = /mnt/onboard/vlasovsoft.png
	action = /mnt/onboard/.adds/vlasovsoft/launcher.sh
	label = Vlasovsoft
	block_spawns = 1

## Updating KFMon

You should be able to update KFMon by re-following the installation instructions. Your configuration will not be overwritten unless it is one of the base configurations (`plato.ini`, `koreader.ini`, `kfmon.ini`, and `kfmon-log.ini`).

## Removing KFMon

1. Get the latest release of the [KFMon uninstaller](https://www.mobileread.com/forums/showthread.php?t=274231) (`KFMon-Uninstaller.zip`).
1. Ensure your Kobo is powered on, then connect it to your computer
1. Copy `KoboRoot.tgz` to the `.kobo` directory on your Kobo
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Removal complete!"
	KFMon has been removed from your device.





