# KOReader

**KOReader** is a multi-platform e-book reading application filled with features, with new ones added every month. Its key features are:

- PDF reflow and cropping support, PDFs viewable on smaller devices where showing the entire page is unrealistic
- Built-in optical character recognition
- Time-related statistics (time until end of chapter/book) without conversion to KEPUB
- Persistent "night mode" (white text on black background)
- Customizable status bar to display several useful pieces of information at once, including book title/chapter, time remaining, current battery power, current time, etc
- Customizable gestures, including support for multiswipes and two-finger swipes
- Wireless integration to download books using the device itself through [OPDS](https://wiki.mobileread.com/wiki/OPDS), onboard cloud support
- Wireless file transfer (computer/phone-to-Kobo) via SSH
- Copying QR code to clipboard
- Better reading statistics, including calendar view and pages read by day/week/month
- Verbose battery statistics, including an estimate of how many more hours your device will last based on your idle and reading time
- Transportable data (your statistics and data can be moved to other devices or to a new KOReader setup with ease)
- Frequent updates that always add new features

However:

- KOReader creates an `.sdr` folder for every book that is opened, which will be annoying when viewed on a non-KOReader file browser
	- This folder includes book information, so you should not delete it
- Because of the number of KOReader's features, some are inevitably going to have bugs that may impact your reading experience
- Frequent updates may be a detriment for those who are often off-the-grid

## Prerequisites

- Either or both [NickelMenu](/kobo/info/software/nickelmenu) and [KFMon](/kobo/info/software/kfmon)
	- You can install both with the [one-click package](/kobo/guide/custom-software)

## What you need
- The latest release of [KOReader](https://github.com/koreader/koreader/releases/latest)
	
## Installation

### Method 1: One-Click Package

See [this page](/kobo/guide/custom-software). Both NickelMenu and KFMon will be installed, and you won't have to mess with configuration.
	
### Method 2: KFMon users

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Extract the `koreader-kobo-vYYYY-MM.zip` file
	- Inside, you should see a `koreader` folder, a `koreader.png` file, and a README
1. Copy `koreader.png` to the root of your Kobo if it does not already exist
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	KOReader will be accessible by clicking the book labelled "KOReader".

### Method 3: NickelMenu users

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Extract the `koreader-kobo-vYYYY-MM.zip` file
	- Inside, you should see a `koreader` folder, a `koreader.png` file, and a README
1. Copy the `koreader` folder to the `.adds` folder on your Kobo
1. Create a new file named `koreader` in `.adds -> nm`, and paste the following contents:

		menu_item :main :KOReader :cmd_spawn :quiet:exec /mnt/onboard/.adds/koreader/koreader.sh
	- If you already have a centralized NickelMenu config file, then you can add this line to it 

1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	KOReader will be accessible by the top-left or bottom-right menu, depending on your firmware.

## Updating KOReader

### Method 1: Built-in updater

1. Open KOReader if it is not already opened
1. Open the top menu bar, then tap the hamburger menu icon on the top-right
1. Navigate to `Update -> Check for update`
	- If you wish to use a nightly KOReader build, navigate to `Update -> Settings -> Update channel -> Development`, then go back (the up arrow) until you can tap `Check for update`
1. If an update is found, tap the "Update" button
1. Allow KOReader to update
	- KOReader will automatically restart
	
### Method 1a: Installing a nightly build

!!! warning "Be careful!"
	You should only be using a nightly build if you want to be on the very cutting edge or if you want to see if a bug has been fixed. Nightly builds are not guaranteed to work, and may break your KOReader setup!

1. Open KOReader if it is not already opened
1. Open the top menu bar, then tap the hamburger menu icon on the top-right
1. Navigate to `Update -> Settings -> Update channel -> Development`
1. Tap the back button (the up arrow) until you see `Check for update` / `Settings`, then tap `Check for update
1. If an update is found, tap the "Update button
1. Allow KOReader to update
	- KOReader will automatically restart

### Method 2: Manual update

1. Get the latest release of [KOReader](https://github.com/koreader/koreader/releases/latest)
1. Ensure your Kobo is powered on, then connect it to your computer
	- You can do this from within Nickel or KOReader
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Extract the `koreader-kobo-vYYYY-MM.zip` file
	- Inside, you should see a `koreader` folder, a `koreader.png` file, and a README
1. Copy the `koreader` folder to the `.adds` folder on your Kobo
1. **Safely eject** your Kobo, then unplug it

## Removing KOReader

!!! warning "Data loss warning"
	You will lose KOReader's annotations, dictionaries, and statistics unless you make a backup beforehand!

1. Ensure your Kobo is powered on, then connect it to your computer
1. Delete the following files and folders, if they exist:
	- the `koreader` folder inside of `.adds`
	- **NickelMenu users**: the `koreader` file inside of `.adds -> nm`
	- **KFMon / OCP users**: `koreader.png` on the root of the SD card
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Removal complete!"
	KOReader has been removed from your device.




