# Vlasovsoft

**Vlasovsoft** is a software suite containing mainly games, file managing capabilities, and a reader application. The available applications/features are:

- **CoolReader**, a reader application, primarily for EPUBs and other primarily text-based formats
- **FileManager**, a basic file manager
- **OPDS**, a resource to download books
- **Dropbox**, a cloud storage service
- **\*Chess**, a chess game and trainer with puzzles
	- This application is available on other platforms as "pbchess"
- **\*Checkers**, a checkers game
- **\*Sokoban**, a box-pushing game
- **\*Reversi**, a piece-flipping game
- **\*Gomoku**, a five-in-a-row game
- **\*Sudoku**, a numbers game
- **Dictionary**, a dictionary application
- **Notepad**, a basic text editor
- **Calculator**, a basic calculator
- **Konsole**, a terminal application
- **WiFiServer**  (?)
- **Upgrade**, to update Vlasovsoft
- **Reboot** and **Power off**
- Customizable screensaver
- Screenshot tool

Applications marked with an **asterisk** require a license in order to exit the time-limited trial mode, where the application can be used as many times as you want but with a ~5 minute time limit per session. A registration key costs $5 USD and can be purchased [here](http://pbchess.vlasovsoft.net/en/register.html).

!!! bug "Known bug"
	Vlasovsoft is known to exit ungracefully when run through KFMon, which will cause the message "Internal storage unavailable, bye!". This message is not known to have any long-term effects.

## Prerequisites

- Either or both [NickelMenu](/kobo/info/software/nickelmenu) and [KFMon](/kobo/info/software/kfmon)
	- You can install both with the [one-click package](/kobostricks/guide/custom-software)

## What you need

- The latest release of [Vlasovsoft for Kobo](http://vlasovsoft.net/kobo/)

## Installation

### Method 1: KFMon and OCP users

1. Ensure your Kobo is powered on, then connect it to your computer
1. Extract the `YYYY.MM.DD_kobo.zip` file
	- Inside, you should see a `.adds` and `vlasovsoft.png`
1. Open the `.adds` folder and copy `vlasovsoft` and `kfmon` to the `.adds` folder on your Kobo, merging it with any existing folders
1. Copy `vlasovsoft.png` to the root of your Kobo
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	Vlasovsoft should now be accessible as a book on your home menu. For OCP users, it will also be accessible from NickelMenu.\

!!! info "NickelMenu labelling issue"
	Because of the lack of a label specified in `.adds -> kfmon -> vlasovsoft.ini`, KFMon's generator will automatically display Vlasovsoft in NickelMenu as "vlasovsoft.png". If you wish to fix this, you can add the text `label = <desired name>` on a new line to that file.

### Method 2: NickelMenu users

1. Ensure your Kobo is powered on, then connect it to your computer
1. Extract the `YYYY.MM.DD_kobo.zip` file
	- Inside, you should see a `.adds` and `vlasovsoft.png`
1. Open the `.adds` folder and copy `vlasovsoft` to the `.adds` folder on your Kobo
1. Create a new file named `vlasovsoft` in `.adds -> nm`, and paste the following contents:

		menu_item :main :Vlasovsoft :cmd_spawn :quiet:sh /mnt/onboard/.adds/vlasovsoft/launcher.sh
	- If you already have a centralized NickelMenu config file, then you can add this line to it 
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	Vlasovsoft will be accessible by the top-left or bottom-right menu, depending on your firmware.

## Updating Vlasovsoft

### Method 1: Built-in updater

1. Open Vlasovsoft if it is not already opened
1. Select the "Upgrade" option
1. Select the right arrow on the bottom right
1. When prompted, allow the update to proceed
	- The update will be downloaded and the device should automatically restart after the update is complete

### Method 2: Manual update

1. Get the latest release of [Vlasovsoft for Kobo](http://vlasovsoft.net/kobo/)
1. Ensure your Kobo is powered on, then connect it to your computer
	- You should be in Nickel, as Vlasovsoft may not have USB storage support
1. Extract the `YYYY.MM.DD_kobo.zip` file
1. Open the `.adds` folder and copy `vlasovsoft` to the `.adds` folder on your Kobo, replacing any existing files
1. **Safely eject** your Kobo, then unplug it

## Removing Vlasovsoft

1. Ensure your Kobo is powered on, then connect it to your computer
1. Delete the following files and folders, if they exist:
	- the `vlasovsoft` folder inside of `.adds`
	- **NickelMenu users**: the `vlasovsft` file inside of `.adds -> nm`
	- **KFMon / OCP users**: `vlasovsoft.png` on the root of the SD card
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Removal complete!"
	KOReader has been removed from your device.

