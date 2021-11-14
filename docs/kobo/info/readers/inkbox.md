# InkBox

**InkBox** is an application that can either act as a complete replacement for Nickel (as an operating system). While it can be run as an add-on via NickelMenu, it isn't intended to be run that way.

More information is available in [this thread](https://www.mobileread.com/forums/showthread.php?t=337972) and the [GitHub repo](https://github.com/Kobo-InkBox/inkbox).

## What you need

### If installing InkBox as an operating system

- Ideally, a second microSD card
- Sufficient hard drive space to make an image of your existing microSD card
- SD card imaging software, like [Etcher](https://www.balena.io/etcher/)
- The latest OS release of [InkBox](http://pkgs.kobox.fermino.me/bundles/inkbox/native/)

### If installing InkBox as an add-on

!!! warning "Unsupported"
	[Pre-compiled binaries](http://pkgs.kobox.fermino.me/bundles/inkbox/nickel/) for InkBox as an add-on are out of date.
	
- Either or both [NickelMenu](/kobo/koreader/info/software/nickelmenu) and [KFMon](/kobo/info/software/kfmon)
	- You can install both with the [one-click package](/kobo/guide/custom-software)
- A file extractor that is capable of extracting TAR and XZ files ([7-zip](https://7-zip.org) is recommended)
- The latest add-on release of [InkBox](http://pkgs.kobox.fermino.me/bundles/inkbox/nickel/)

## Installation (OS)

WIP

## Updating InkBox 

WIP


## Removing InkBox 

Switch back to your SD card that contains Nickel. If you've lost it, [request an SD image](/kobo/info/unbricking-a-kobo).

---

## Installation (add-on)

!!! warning "Warning"
	The InkBox archive contains both NickelMenu and KFMon, which you might already have installed. If you simply copy the contents of InkBox to the root of your Kobo (`.adds`, `.kobo`, `InkBox`, and `kfmon.png`), you will re-install NickelMenu and KFMon, as well as potentially mess with your NickelMenu and KFMon configurations. I would personally not recommend using this as an alternative to the one-click package because this package does not automatically stop the `.adds` folder from being scanned.
	
	The installation process detailed here will install *only* InkBox, under the assumption that you already have a working NickelMenu / KFMon setup.

!!! info "Duplicate file notice"
	InkBox contains files that are also used by [Ultimate Manga Reader](/kobo/info/readers/ultimate-manga-reader). These files should not be problematic as long as you merge the conflicting folders together (`qt-linux-5.15.2-kobo`).

### Method 1: KFMon and OCP users

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Extract `inkbox-base-#.#.tar.xz`
	- You should see `inkbox-base-#.#.tar`; double-click that to enter the contents of the archive
1. Navigate to `.` and copy `InkBox` to the root of the Kobo
1. Navigate to `.adds` and copy `inkbox`, `Python-3.9.2`, `qt-linux-5.15.2-kobo`, and `kfmon` to the `.adds` folder of your Kobo
	- If you've made modifications to your KFMon config that you do not want to overwrite, then only copy `inkbox.ini` in `.adds -> kfmon -> config`
1. **Safely eject** your Kobo, then unplug it

!!! success "Installation complete!"
	InkBox should now be accessible as a book on your home menu. For OCP users, it will also be accessible from NickelMenu.
	
### Method 2: NickelMenu users

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Extract `inkbox-base-#.#.tar.xz`
	- You should see `inkbox-base-#.#.tar`; double-click that to enter the contents of the archive
1. Navigate to `.adds` and copy `inkbox`, `Python-3.9.2`, and `qt-linux-5.15.2-kobo` to the `.adds` folder on your Kobo
1. Create a new file named `inkbox` in `.adds -> nm`, and paste the following contents:

		menu_item :main :InkBox :cmd_spawn :quiet:exec /mnt/onboard/.adds/inkbox/inkbox.sh
	- If you already have a centralized NickelMenu config file, then you can add this line to it 
	
1. **Safely eject** your Kobo, then unplug it

!!! success "Installation complete!"
	InkBox should now be accessible via the top-left or bottom-right menus.

## Updating InkBox (add-on)

WIP

## Removing InkBox (add-on)

1. Ensure your Kobo is powered on, then connect it to your computer
1. Delete the `inkbox` and `Python-3.9.2` folders from the `.adds` folder
	- You can delete `qt-linux-5.15.2-kobo` if you aren't also using it for Ultimate Manga Reader
1. **NickelMenu users**: Delete `inkbox` from `.adds -> nm`
1. **KFMon users**: Delete `inkbox` from the root of your Kobo
1. **Safely eject** your Kobo, then unplug it

!!! success "Removal complete!"
	InkBox has been removed from your device.








