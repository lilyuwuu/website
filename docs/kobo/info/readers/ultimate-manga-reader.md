# Ultimate Manga Reader

**Ultimate Manga Reader** is a Kobo-only manga reading application with online integration to view and download manga, similar to Tachiyomi. This is your best option for viewing manga from the Internet on a Kobo (ie. not having CBZ files).

!!! tip "Storage tip"
	Most Kobo devices come with 8GB or less storage by default, which may be insufficient for downloading manga. If you have a compatible Kobo (all models **except** the Aura H2O2, Aura ONE, Libra H2O, and Forma), you should view the [expandable storage options](/kobo/info/expandable-memory) available to you.

!!! tip "Screen size tip"
	Manga will be unpleasant to view on devices that are smaller than 7 inches. This application will still work, but make sure that manga won't be too small for you on your screen before committing to using this application.

!!! bug "Known frontlight bug"
	Ultimate Manga Reader is currently unable to properly manage the frontlight or warmth light options, so you will need to make your light/warmth adjustments in Nickel before opening the application. Also note that the light will automatically turn off if the device is put into sleep mode.

## Prerequisites

- [NickelMenu](/kobo/info/software/nickelmenu)
	- You can install it (and KFMon) with the [one-click package](/kobo/guide/custom-software)

## What you need

- The latest release of [Ultimate Manga Reader](https://github.com/Rain92/UltimateMangaReader/releases/latest)
## Installation

!!! info "NickelMenu / OCP only"
	While UltimateMangaReader can be launched via KFMon with the right configuration files, the developer has not provided any and creating your own is out of scope for this guide. Therefore, instructions will only be provided for launching this application via NickelMenu.

!!! info "Duplicate file notice"
	Ultimate Manga Reader contains files that are also used by [InkBox](/kobo/info/readers/inkbox). These files should not be problematic as long as you merge the conflicting folders together (`qt-linux-5.15.2-kobo`).

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Extract `UltimateMangaReader-kobo-vX.X.X.zip`
1. Open `.adds` and copy its contents (`UltimateMangaReader` and `qt-linux-5.15.2-kobo`) to the `.adds` folder on your Kobo
	- If you are told about file conflicts in `qt-linux-5.15.2-kobo`, you can replace or skip the files; it doesn't really matter
1. Create a new file named `umr` in `.adds -> nm`, and paste the following contents:

		menu_item :main :UltimateMangaReader :cmd_spawn :quiet:exec /mnt/onboard/.adds/UltimateMangaReader/UltimateMangaReader.sh
	- If you already have a centralized NickelMenu config file, then you can add this line to it

1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	Plato will be accessible by the top-left or bottom-right menu, depending on your firmware.

## Updating UMR

1. Get the latest release of [Ultimate Manga Reader](https://github.com/Rain92/UltimateMangaReader/releases/latest)
1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Extract `UltimateMangaReader-kobo-vX.X.X.zip`
1. Open `.adds` and copy its contents (`UltimateMangaReader` and `qt-linux-5.15.2-kobo`) to the `.adds` folder on your Kobo, replacing any existing files
	- If you now have two different versions of `qt-linux-X.XX.X-kobo`, you can delete the older one unless you are also using InkBox
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

## Removing UMR

1. Ensure your Kobo is powered on, then connect it to your computer
1. Delete the following folders:
	- the `UltimateMangaReader` folder in `.adds`
	- the `qt-linux-5.15.2-kobo` folder in `.adds` **if you are not using InkBox**
	- the `umr` file in `.adds -> nm`
1. **Safely eject** your Kobo, then unplug it

!!! success "Removal complete!"
	Ultimate Manga Reader has been removed from your device.


