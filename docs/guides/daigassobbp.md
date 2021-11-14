# Daigasso BBP Custom Songs

This tutorial covers adding custom songs into **Daigasso! Band Brothers P** (大合奏!バンドブラザーズ), a rhythm game / music creation tool for the 3DS. 

## Prerequisites

- A modded 3DS running a modern CFW environment
	- These instructions should work on any CFW or homebrew environment (even *hax), but anyone running anything older should still [update their setup](https://3ds.hacks.guide/checking-for-cfw) to the latest
- A digital or cartridge copy of Daigasso! Band Brothers P

## What you need

- The r4bbit fork of [degausser3ds](https://github.com/wangyu-/Degausser/releases/tag/v2.2a.modified.v1)
- BBP files (the largest repository is [here](https://drive.google.com/file/d/1zsuhBsvQQT860p5aMst-AKhprqPpJkCt/view))

!!! warning "Song limit warning"
	The hard song limit is **3700 songs**. As the repository contains more than that, you will need to be selective about which songs you want to put into the game.

## Section I: Prep Work

1. Create a folder named `degausser3ds` in the `3ds` folder
1. Copy `degausser3ds.3dsx` and `degausser3ds.smdh` to the `/3ds/degausser3ds/` directory
1. Create a folder named `bbpimport` (or `bbpimportc` if you want to edit the imported songs) on the root of your SD card
1. Copy your BBP files to the `bbpimport` or `bbpimportc` folder on your SD card
	- Do not forget the song limit
1. Insert your SD card into your 3DS
1. Launch "Daigasso! Band Brothers P" 
1. Click the yellow "作曲" button
1. Click the top "楽譜作成" button
1. Click the top "新規作成" button
1. Click the red "決定" button
1. Click the red "決定" button
1. Click the red "保存" button
1. Click "OK"
1. Name the song anything (if in doubt, name it "あああ"), then click the red "決定" button once done
	- This will create extdata to allow for song importing
1. Click the green "やめる" button
1. Press (Home) to exit to the home menu and close the game

## Section II: Song import

1. Power on your 3DS
1. Launch the Homebrew Launcher application (or use your exploit of choice to enter Homebrew Launcher)
1. Launch degausser3ds from the list of homebrew
1. Press (Y) if you placed your songs in `/bbpimport/` and (A) if you placed your songs in `/bbpimportc/`
	- This will take a while depending on how many songs you are importing
1. Once done, press START to exit Deguasser3ds
	- If necessary, exit the Homebrew Launcher application

!!! success "Success"
	Your songs have been successfully imported and can be selected from the middle-left option in the game.

!!! summary "Credits"
	- **r4bbit** (aka wangyu-) for the fork of Degausser
	- **Naderino** for archiving and maintaining the English repository of BBP files


	
