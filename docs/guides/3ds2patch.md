# Taiko 3DS2 English Patch

This tutorial provides instructions to apply the English patch of Taiko no Tatsujin: Don to KAtsu no Jikuu Daibouken ("Taiko no Tatsujin: Don and Katsu's Spacetime Adventure") on modern custom firmware environments. This is necessary as the instructions in the original post describe outdated or non-ideal methods that are less clean than LayeredFS.

## What this tutorial will do

This tutorial will:

- Install the English patch of the game in a way where it can be easily disabled at will
- Fix DLC if it is installed (hopefully)

## What you need

- A modded 3DS running a modern CFW environment
	- These instructions should work on any Luma3DS version with LayeredFS support (7.0 and greater), but anyone on an older Luma version should still [update their setup](https://3ds.hacks.guide/checking-for-cfw) to the latest
- A clean cartridge or digital copy of Taiko no Tatsuin: Don to Katsu no Jikuu Daibouken updated to the latest version (v1.1)
- The [English patch](https://mega.nz/#!vcd3hBLL!YcY9vGn0a5Wt01pCpChUnTsFd4Kl76iifYTtdIY-uaY) (`ROMFS English Menu Patch Version 1.1`)
- the v0.04 nightly release of [LumaLocaleSwitcher](https://github.com/Possum/LumaLocaleSwitcher/releases/download/0.04/LumaLocaleSwitcher-0.04-NIGHTLY.cia)

## Section I - Prep Work

1. Place `LumaLocaleSwitcher-0.04-NIGHTLY.cia` in the `/cias/` folder
	- Create the folder if it does not already exist
1. Extract `ROMFS Version 1.1.zip` to your working directory
	- The result should be several XDelta and patching files in a folder named `ROMFS Version 1.1`
1. Insert your SD card into your 3DS

## Section IIa - Dumping RomFS (digital)

These instructions only apply to **digital copies** of the game. If you have a cartridge, follow **Section IIb** instead.

1. Power off your 3DS
1. Hold the START button while turning on your 3DS to enter GodMode9
1. Press (Home) to bring up the action menu
1. Select "Title manager"
1. Select "[A:] SD CARD"
1. Select "0004000000102F00 ... .tmd"
1. Select "Open containing folder"
1. Select "0000000.app"
1. Select "NCCH image options..."
1. Select "Mount image to drive"
1. Press (A) to enter the path
1. Select "romfs.bin"
1. Select "Copy to 0:/gm9/out"
	- This will take a while
1. Transfer the `romfs.bin` file to the `ROMFS Versino 1.1` folder on your computer
1. Power off your 3DS

## Section IIb - Dumping RomFS (cartridge)

These instructions only apply to **cartridge copies** of the game. If you have already dumped the RomFS from a digital copy, proceed to **Section III**.

1. Power off your 3DS
1. Hold the START button while turning on your 3DS to enter GodMode9
1. Insert your game cartridge
1. Select "[C:] GAMECART"
1. Select "0004000000102F00_v0?.3ds"
	- Trim/no trim doesn't matter
1. Select "NCSD image options..."
1. Select "Mount image to drive"
1. Press (A) to enter the path
1. Select "romfs.bin"
1. Select "Copy to 0:/gm9/out"
	- This will take a while
1. Transfer the `romfs.bin` file to the `ROMFS Versino 1.1` folder on your computer
1. Power off your 3DS

## Section III - Patching the game

1. Rename `romfs.bin` to `DecryptedRomFS.bin`
	- Do not add the `.bin` extension if you do not see it
1. Run the relevant xdelta script for your operating system
1. You should now have a `fullpatch v1.1_romfs.bin` file

## Section IV - Patch installation

1. Copy `fullpatch_v1.1_romfs.bin` to any directory on your 3DS SD card
1. Insert your SD card into your 3DS
1. Hold the START button while turning on your 3DS to enter GodMode9
1. Navigate to `fullpatch_v1.1_romfs.bin`, then press (A) to select it
1. Select "Mount as RomFS image"
1. Press (A) to enter the path
1. Press (Left Shoulder) + (D-Pad Right) to mark all files
1. Press (Y) to place all of these files in your clipboard
1. Press (B) to enter the main drives menu
1. Navigate to `[0: SDCARD]` -> `luma` -> `titles` -> `0004000000102F00` -> `romfs`
	- Create any folders that do not exist
	- To make it easier to see, the title ID split into two is `00040000 00102F00`
1. Press (Y) to copy paths
	- This will take a while
1. Power off your 3DS

## Section V - Finalizing setup

1. Hold the SELECT button while turning on your 3DS to enter Luma3DS configuration
1. Select the option `Enable game patching` if it isn't already enabled
	- An (x) indicates that the option is enabled
1. Press the START button to save the configuration
1. Open FBI on your 3DS
1. Navigate to `SD Card` -> ~cias`
1. Select "LumaLocaleSwitcher-0.04-NIGHTLY.cia"
1. Select "Install and delete CIA"
1. Exit the FBI application
1. Open the Luma Locale Switcher application that is now on your home menu
	- The icon is Luma with a translate symbol
1. Select "Titles"
1. Select 太鼓の達人　どんとかつの時空大冒険
1. Select "Change Region" and set the region to JPN
1. Select "Change Language" and set the langauge to JPN

!!! success "Success"
	The patch should now be enabled and DLC should now work if installed.

!!! summary "Credits"
	- **Team Fullcombo** (tiduscrying, shiduyo, Zander1995, NikolaMiljevic) for the creation of the English patch


	