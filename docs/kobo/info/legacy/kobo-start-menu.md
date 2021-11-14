# Kobo Start Menu

!!! warning "Danger lurks ahead"
	Kobo Start Menu is considered to be **significantly more dangerous** than the modern NickelMenu and KFMon launchers, and **catastrophically dangerous** on devices with soldered memory (Libra H2O, Forma, Aura H2O2, Aura ONE) on newer firmwares. **Proceed with caution!**
	
	These instructions are made under the assumption that you are on an old firmware where Kobo Start Menu is your only option. If you are on a firmware above 4.11.11911, **do not follow these instructions** -- you're on your own.
	
	You should only be installing Kobo Start Menu under any of the following circumstances:
	
	- You have an older Kobo device with removable/expandable memory and a factory firmware below 4.x (Kobo Glo, Kobo Glo HD, Kobo Mini, etc)
	- Your Kobo cannot be updated to a 4.x firmware (Kobo Mini)
	- You prefer to stay on a firmware below 4.x because of speed issues on 4.x
	- Something you would like to do requires Kobo Start Menu (ie. autobooting into KOReader)

!!! danger "Unsupported devices"
	The following devices require special versions of Kobo Start Menu, and will not be covered by this guide:
	
	- Clara HD
	- Forma
	- Aura H2O kobo 2 Version 2
	- Maybe the Nia and Libra H2O
	
	Installing standard KSM on these devices may result in a brick, and in the case of the Forma/Libra H2O/Aura H2O2(V2) may result in an **IRRECOVERABLE BRICK**.

Kobo Start Menu is a custom Kobo launcher that interrupts the boot process to allow you to:

- start other software, like KOReader or Plato
- automatically boot into something other than Nickel, if configured
- manage automatically downloaded updates
- run scripts

Kobo Start Menu is confirmed to work on firmwares between 2.6.0 and 4.11.11911, but should be avoided on firmwares 3.16.10 and 3.17.0 due to automatic rebooting issues ("sickel"). A mostly-untested build is available to allow Kobo Start Menu to work on 4.25, but will not be covered by this guide.


## What you need
- The latest release of [Kobo Start Menu](https://www.mobileread.com/forums/showthread.php?t=293804) (`KBStartMenu_09_plus_update_001.zip`)
- A microUSB data cable, to transfer files to your Kobo

## Instructions

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable.
1. Copy the contents of `KBStartMenu_09_plus_update_001.zip` to the **root** of your Kobo (not inside of any folders)
1. Safely eject your Kobo, then unplug it

The device will appear to update. After the update is complete, Kobo Start Menu will be installed.

## Adding custom readers to Kobo Start Menu

1. Download the latest release of [KOReader](https://github.com/koreader/koreader/releases/latest) (koreader-kobo-v####.##), [Plato](https://github.com/baskerville/plato/releases/latest), and/or [Vlasovsoft Launcher](http://vlasovsoft.net/kobo/). Other software will require start scripts that may not be handled by KSM
	- None of these custom softwares are guaranteed to work from Kobo Start Menu anymore
1. Power on your Kobo and mount it so that you can modify its files
1. Extract your downloaded `.zip` files as follows:
	- **KOReader**: Place the `koreader` folder in `.adds` on your Kobo
	- **Plato**: On your Kobo, create a folder in `.adds` named `plato`, then copy everything into the Plato `.zip` into the `plato` folder. You may also need [this](https://www.mobileread.com/forums/showpost.php?p=3707008&postcount=347)
	- **VlasovsoftLauncher**: Merge the contents of the vlasovsoft `.zip` with the existing ones, then delete `kfmon` and `nm` as you likely do not have them installed
1. Safely eject your Kobo, then unmount it
1. Reboot if necessary

Alternate readers will now be installed on your Kobo and launchable via Kobo Start Menu. The PNG files may be used to launch the readers if fmon is installed.

## Uninstalling Kobo Start Menu

You can perform a factory reset (normally or manually), or:

1. Power on your Kobo; you should enter Kobo Start Menu
1. Navigate to `tools` -> `ksm diverse.msh` -> `del KSM.sh` -> `delete ksm`

Kobo Start Menu should now be uninstalled.