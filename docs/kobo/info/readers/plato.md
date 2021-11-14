# Plato

**Plato** is a Kobo-only e-book reading application, with similar features to KOReader while maintaining a much cleaner and easy-to-use UI. Plus, the fact that it is only available on Kobo means that it has been developed specifically with Kobo users in mind and with less of the weird bugs that might occur when other applications might target several devices.

Plato cites its main features as:

- PDF reflowing and cropping, similar to KOReader
- Support for popular formats, including PDF, CBZ, EPUB, and DJVU
- Contrast adjustment
- Screen rotation
- Custom dictionaries
- Annotation, highlight, and bookmar ksupport
- Customizable online source retrieval for books

## Prerequisites

- Either or both [NickelMenu](/kobo/info/software/nickelmenu) and [KFMon](/kobo/info/software/kfmon)
	- You can install both with the [one-click package](/guide/custom-software)

## What you need
- The latest release of [Plato](https://github.com/baskerville/plato/releases/latest)

## Installation

### Method 1: One-Click Package

!!! info "Recommended"
	This installation method is recommended by the developers.

See [this page](/kobo/guide/custom-software). Both NickelMenu and KFMon will be installed, and you won't have to mess with configuration.
	
### Method 2: KFMon users

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Create a folder named `plato` in `.adds` on your Kobo
1. Copy the contents of the Plato `.zip` to the `.adds -> plato` directory on your Kobo
1. If you don't already have `plato.png` on the root of your Kobo, you can get it from the [KFMon ZIP](https://www.mobileread.com/forums/showthread.php?t=274231)
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	Plato will be accessible by clicking the book labelled "KOReader".

### Method 3: NickelMenu users

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Create a folder named `plato` in `.adds` on your Kobo
1. Copy the contents of the Plato `.zip` to the `.adds -> plato` directory on your Kobo
1. Create a new file named `plato` in `.adds -> nm`, and paste the following contents:

		menu_item :main :Plato :cmd_spawn :quiet:exec /mnt/onboard/.adds/plato/plato.sh
	- If you already have a centralized NickelMenu config file, then you can add this line to it 

1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	Plato will be accessible by the top-left or bottom-right menu, depending on your firmware.

## Updating Plato

### Method 1: One-Click Package

!!! info "Recommended"
	This update method is recommended by the developers.

Re-install the [one-click package](/kobo/guide/custom-software) with the new version of Plato. You might want to make a backup of your Plato folder, in case of file conflicts. Keep in mind that this will also re-install KFMon and NickelMenu, potentially messing with any configurations you may have made yourself.

### Method 2: Manual update

1. Get the latest release of [Plato](https://github.com/baskerville/plato/releases/latest)
1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Create a folder named `plato` in `.adds` on your Kobo
1. Copy the contents of the Plato `.zip` to the `.adds -> plato` directory on your Kobo
1. **Safely eject** your Kobo, then unplug it

## Removing Plato

!!! warning "Data loss warning"
	You will lose Plato's annotations and other data unless you make a backup beforehand!

1. Ensure your Kobo is powered on, then connect it to your computer
1. Delete the following files and folders, if they exist:
	- the `plato` folder inside of `.adds`
	- **NickelMenu users**: the `plato` file inside of `.adds -> nm`
	- **KFMon / OCP users**: `plato.png` on the root of the SD card
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Removal complete!"
	Plato has been removed from your device.