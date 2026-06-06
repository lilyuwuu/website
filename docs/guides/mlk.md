# Running My Little Karaoke in 2026

## Introduction

If you've been to a My Little Pony convention any time in the past fifteen years (oof) or so, or if you just like the idea of singing along to pony songs in general, chances are you've heard of My Little Karaoke: Singing is Magic. In essence, it's a song pack and theme for the SingStar simulator UltraStar Deluxe that was first released in 2012. Since then, over eight hundred songs have been charted for the 'game', making it one of the largest single-download collections of (mostly) consistently high-quality charting in the UltraStar ecosystem, and possibly among the largest for rhythm games in general.

That being said, a lot of progress has been made in the last couple of years. To date, there are over five hundred new songs that are unreleased, and many others reworked to improve chart quality. UltraStar Deluxe, the software that powers My Little Karaoke, has also seen countless quality-of-life updates, with many more to come in the future. However, those unfamiliar with the program and ecosystem may be unable to take advantage of these improvements.

This guide, geared towards home users, convention hosts, and anyone in between, aims to get people up to speed on these improvements, so that people can have a much improved karaoke experience. One can only hope that we will have many years of karaoke to come, and that there will always be people around to chart the latest songs of the pony fandom, even fifteen years on. :)

## Overview

This guide will be divided into a few main sections:

- The first section will be about getting the base content of My Little Karaoke itself (the 'base game'). Because of changes in operating systems over the years, particularly on macOS and Linux, the experience is a bit less 'plug-and-play' on non-Windows operating systems, so the main goal of this section will just be to get the songs, rather than necessarily to get the game running.
- The second section will be about updating the UltraStar Deluxe software itself, which is generally needed for compatibility with newer audio standards (e.g. OPUS, better compatibility on non-Windows operating systems, quality-of-life features).
- The third section will be about downloading 'new releases' from the online portal, which contain a hundred or so songs that are not directly included with the program.
- The fourth section will be about acquiring the five hundred or so unreleased songs, which haven't been checked for artist permission or quality assurance, but are still generally playable. (This is what you sometimes see at conventions -- or at least, the cool ones!).
- The final section acts as a sort of 'appendix' for things that are not necessarily covered by the main sections, such as:
    - Using an Android device as a karaoke machine, and alternatives to UltraStar Deluxe
    - Adding your own songs to the game, outside of the ones listed on this tutorial
    - Creating charts for songs that aren't in the game yet
    - Requesting charts for songs that aren't in the game yet

## What You Need

My Little Karaoke primarily runs on computers running a desktop operating system. There are not really any published minimum requirements, but generally speaking:

- The game can *run* on low-power devices, even as weak as a Raspberry Pi
    - Due to the game frequently using video, you should ensure that your device has the hardware capability to decode video without severe performance issues. In the event that video is causing performance issues, you can [disable it from within config.ini](https://github.com/UltraStar-Deluxe/USDX/issues/12).
- The game can run on most modern consumer operating systems (Windows, macOS, Linux) on x86 or ARM-based processors
- The base game currently requires roughly 25GB of space, new releases around 3GB of space, and unreleased songs around 25GB of space, totalling around **53GB** of total space. This can be reduced after-the-fact by removing video (*.mp4) files, obviously at the expense of playing video.
- You can use any USB microphone (e.g. SingStar PS2 microphones, Rock Band microphones). If you have a lot of money, you can also invest in proper wireless microphones connected to a mixer and have the game take them that way. If you're playing solo at home, even something like a laptop microphone will probably work, although you may end up also picking up audio from the game itself.

## If You Need Help

If you need help with any of the instructions here, feel free to bug me on Discord (@horse.horsehorsehorsehorse.horse or @lilyshy). I can generally be found on the [My Little Karaoke Discord server](https://discord.gg/UsGcpnv) and also elsewhere.

## Section 1: Getting My Little Karaoke's base songs

Installing My Little Karaoke is generally pretty trivial on Windows, and a bit more difficult on macOS/Linux. For this reason, if you're just starting out, it'll probably be easiest to deal with things if you set it up on **Windows**. If you don't otherwise have access to a computer running Windows, then treat these instructions as sort of 'modern' instructions for getting the game to run on Linux and macOS.

!!! warning "File size notes"

    *My Little Karaoke*'s base game as a whole currently takes consumes around 25 gigabytes of space. There is unfortunately no way to reduce this during the download process, although you *can* delete videos after the fact (at the expense of seeing videos in-game, obviously), which will reduce it to around 10 gigabytes.

### Windows

Installing My Little Karaoke is the most intuitive on Windows. From the [game download](https://www.mylittlekaraoke.com/index.php?pages/Game-download) page, click on "Windows" and you'll download a file called "MyLittleKaraoke_WebInstall.exe". Just run the program, select where to install it, and it will handle the rest.

![Image: MLK on Windows](/resources/mlk/windows_installer.png)

Navigate to the location that the game is installed: in my case, that's M:/MyLittleKaraoke. Please remember this directory, as you will need it later.

Once the game is installed, you'll be able to launch it by opening the "My Little Karaoke - Singing is Magic" application, then clicking on "Play My Little Karaoke". The game will actually work outright at this point, but I would recommend continuing to the next section of this guide to update the program.

### macOS

On macOS, there is theoretically a My Little Karaoke installer similar to the one on Windows, but it has a few problems:

- Portions of it do not work, due to macOS [discontinuing support for 32-bit apps](https://support.apple.com/en-ca/103076) in 2019
- The installer installs a really old version of the program and dumps the songs in there, which makes it a lot less portable
- The old version of the program is very buggy on modern macOS
- The installer will likely outright break in 2027 with the [discontinuation of support for Intel-based apps](https://9to5mac.com/2026/02/16/macos-26-4-will-notify-users-of-rosetta-2-discontinuation/)

As a temporary remedy for this, I've modified the shell script that is the basis for the macOS installer so that it is more similar to the Linux shell script. However, this will involve using the command line.

!!! warning "Here be dragons"

    I've tested this script on my own device, but there's always the possibility of something going wrong or something I did not account for.

First of all, download the song download script from [here](/resources/mlk/download-mlk-songs-macos.sh). By default, it will probably end up in your `Downloads` folder.

Then, open a Terminal window:

![Image: Searching for Terminal](/resources/mlk/macos_terminal.png)

By default, when you open Terminal, you will be in your home directory (~), so you will need to run `cd` to get to wherever the script is. So, assuming it's still in your downloads folder, type `cd Downloads`, then hit Return and you should see the output change to `user@hostname Downloads %`:

![Image: cd downloads](/resources/mlk/macos_cd_downloads.png)

In this case, you can see I've also run `ls` to make sure that `download-mlk-songs-macos.sh` is in the directory I'm in.

Once you are in the same directory as `download-mlk-songs-macos.sh`, you will need to give permission to execute it. You can do this by typing `chmod +x download-mlk-songs-macos.sh`, then hitting Return:

![Image: chmod](/resources/mlk/macos_chmod.png)

Then simply type `./download-mlk-songs-macos.sh`, and then script should begin to execute:

![Image: script execution](/resources/mlk/macos_script_execute.png)

When the script is done, you should see the message `My Little Karaoke, Singing is Magic 4 is now installed`. When you check your `Downloads` folder, you should see two folders: `songs` and `theme`.

The `songs` folder contains the base songs of My Little Karaoke, and you'll want to keep it for the next steps. The `theme` folder can be deleted.

### Linux

My Little Karaoke can be installed via Lutris, or via a shell script. Lutris is actually a bit difficult to install on my distro right now due to a dependencies problem, so I'll just be providing instructions for using the shell script. I imagine that most people using a Linux distro have some experience with the command line anyway. But if you choose to use Lutris, the process is probably relatively similar, just with more GUI. Lutris users: I would recommend getting the "UltraStar Deluxe Addon version", but the "Full version" should also work; it'll just include a version of UltraStar Deluxe roughly comparable in age to the one provided with Windows installs of MLK.

At this stage, you will need to download one thing: the song download script. You can get that [here](/resources/mlk/download-mlk-songs.sh). You may need to run `chmod +x` it to get it to execute:

![Image: Shell script running](/resources/mlk/script.png)

If things are working correctly, then you should see some download progress bars, along with three folders being created in the same directory as `download-mlk-songs.sh`: `temp`, `songs`, and `themes`, as well as a file called `mlk.cache`. Let the script download everything; when it's done, you should see "You can now close this window" in the terminal window:

![Image: Script is done](/resources/mlk/script_done.png)

You should ultimately end up with two folders in your working directory (where `download-mlk-songs.sh` is): `songs` and `themes`.

The `songs` folder contains the base songs of My Little Karaoke, and you'll want to keep it for the next steps. The `themes` folder can be deleted.

For now, you may want to keep the `mlk.cache` file somewhere along with the `download-mlk-songs.sh`, as in the event that the base songs are updated, this will prevent you from needlessly redownloading things.

### Next steps

By the end of this section, you should have My Little Karaoke's base songs, around 25GB in size. The `songs` folder should contain two folders: `Official` (containing official show songs) and `Community` (containing fandom songs). On Windows, you will also have a launchable program and the ability to install `.mlk` song files, but we will ignore these in favour of properly updating the game.

Next, we will install/update UltraStar Deluxe, the software used to run My Little Karaoke's song charts.

## Section 2: Installing/Updating UltraStar Deluxe

*My Little Karaoke* is based on UltraStar Deluxe, a simulator for Sony's SingStar series of karaoke games. The version of UltraStar Deluxe that is shipped with My Little Karaoke depends on your operating system, ranging from a 2017 version on macOS to a 2020 build on Windows and Linux.

While the old version of the program is technically *functional* (in particular on Windows and Linux), it is missing many of the improvements that have come to UltraStar Deluxe in the past few years, including:

- Support for some less frequently used audio formats, like OPUS
- Improved skipping for instrumental breaks with the `S` hotkey
- Support for more consistent audio volume via ReplayGain
- Removal of the broken automatic voice filtering instrumental thingy that people would sometimes automatically enable and then not know how to turn off (`K` hotkey in song selection)
- Support for the newly standardized UltraStar song format
- Significantly faster song loading
- An automatic count-in time when the first note is very early in the song
- More verbose volume control
- More precise scoring that uses the ones digit instead of rounding to the nearest 10

Audio format support is particularly important, as some charts may reference audio that will possibly crash the game if it is not sufficiently updated.

### Getting an updated UltraStar Deluxe

You can get the latest release of UltraStar Deluxe from the [GitHub repository](https://github.com/UltraStar-Deluxe/USDX/releases/latest). 

#### Windows

Windows users can select `windows-installer` or `windows-portable`; the `installer` will have you select where to install things, while the `portable` will just be a bunch of files in an archive that you will have to unzip yourself to wherever you want to keep it.

In theory, you can actually just drag and drop everything from the `portable` ZIP to your My Little Karaoke install directory, and then just replace any conflicting files. This will probably result in some unnecessary files being kept, so I would instead recommend installing it somewhere else.

#### macOS

macOS users should select `mac-ARM` if they have an Apple Silicon-based Mac (any Mac released in 2020 and later, with an M1/M2/M3/M4/M5/A18 chip), and `mac-x86` if they have an Intel-based Mac (anything older). If you're not sure what you have, click on the Apple logo on the top left, then "About This Mac". It will tell you what chip/processor you have.

The program is installed the same way as any other program on macOS: When you open the `.dmg` file, it'll be 'mounted' as a drive, then you can drag-and-drop UltraStar Deluxe into the Applications folder.

Due to Apple being extremely annoying with unsigned applications, you will need to manually give permission to actually run the program. See [here](https://wiki.hacks.guide/wiki/Open_unsigned_applications_on_macOS_Sequoia_and_newer) for instructions on how to do that. If you know what you're doing: `sudo xattr -d com.apple.quarantine /path/to/app`

#### Linux

UltraStar Deluxe on Linux is distributed as flatpak and AppImage. This is slightly problematic as the containerization does not currently *easily* support themes and avatars, meaning you will need to do some extra work to add the pony graphics.

If you are at all capable, I would instead recommend [compiling](https://github.com/UltraStar-Deluxe/USDX/blob/master/COMPILING.md) UltraStar Deluxe. Explicit instructions are provided for Debian/Ubuntu, Fedora, and Arch, but you can probably get it working on other distros too (I got it running on openSUSE, for example). Once compiled, you will end up with a `game` folder in your cloned repository, which is functionally equivalent to things like `windows-portable`. As usual, you may need to `chmod +x` the executable (`ultrastardx`) to actually run it.

If you find AppImage/flatpak easier to use, I would recommend using the AppImage, as it is easier to extract and apply the theme/avatars to it. You will likely have to reapply it every time you update the program, though.

### Moving your songs over

On Windows, the base songs are probably currently located in the MyLittleKaraoke install directory (e.g. `M:/MyLittleKaraoke/songs`.) You can simply move them over to wherever UltraStar Deluxe's song directory is. Alternatively, you can specify the song directory (or multiple song directories, even) with the `SongDir=...` arguments in `config.ini`.

If you were following this guide for macOS and Linux, you will just have a `songs` folder in the working directory where the `download-mlk-songs` shell script was located. Just like on Windows, you can move them to UltraStar Deluxe's song directory, or specify a song directory in `config.ini`.

- **macOS**: Songs can be stored in `~/Music/UltraStar Deluxe` (that is, your user account's `Music` folder). They can also be stored in `~/Library/Application Support/UltraStarDeluxevXXXX.XX.X`, but this folder will change every time you update the program and is hidden (you can unhide hidden folders and files with Command+Shift+Period).
- **Linux AppImage**: `~/.ultrastardx/songs`
- **Linux flatpak**: `~/.var/app/eu.usdx.UltraStarDeluxe/.ultrastardx/songs/`
- **Linux compiled from source**: `songs` will be in the working directory of the `ultrastardx` executable (e.g. `~/karaoke/USDX/songs`, where the `USDX` folder contains the `ultrastardx` executable)

At this point, you can launch the game and see if it's working properly. If it is:
- You should see over a thousand songs available on the song select screen
- The current UltraStar Deluxe version should be 2026.5.0 or newer (or whatever the latest may be when you are following this guide)

### Applying the My Little Karaoke theme and avatars

No matter your operating system, you will probably have downloaded some form of the My Little Karaoke theme, but the theme will likely not work as-is due to updates to the theme system in newer version of My Little Karaoke.

Fortunately, you can get an updated version of the theme from [here](https://github.com/barbeque-squared/usdx-mylittlekaraoke-theme/archive/refs/heads/master.zip).

You can also get the avatars, provided separately, from [here](https://djazz.se/nas/games/?dl=my-little-karaoke-avatars) and/or [here](https://www.mylittlekaraoke.com/store/webinst/avatars1.mlu) (the `.mlu` file is just a renamed `.tar`). Use 7-Zip or any other unarchiving program to unzip it.

When you download the theme, you will see a `themes` folder, which will contain a `MyLittleKaraoke` folder and `MyLittleKaraoke.ini`. Move these to your `themes` folder. Avatars (the `.png` files from the `.tar` and `.mlu` archives) should go to your `avatars` folder:

- **Windows**: `<install directory>/themes`, e.g. `C:/Games/UltraStarDeluxe/themes`
- **macOS**: `~/Library/Application Support/UltraStarDeluxevXXXX.XX.X/themes` (*again, remember that a new `UltraStarDeluxe` folder will be generated for each UltraStar Deluxe version, so if you update the program you will probably need to move the folders around*)
- **Linux compiled from source**: `themes` will be in the working directory of the `ultrastardx` executable
- **Linux AppImage**: You cannot use custom themes and avatars by default. See the next header for a workaround.
- **Linux flatpak**: You can use themes by following the instructions [here](https://github.com/UltraStar-Deluxe/USDX/issues/715), but not avatars.

#### My Little Karaoke theme/avatars on Linux AppImage

AppImage's containerization currently prevents themes and avatars from being loaded from `~/.ultrastardx`. To work around this, you will need to extract the AppImage and manually add the theme and avatar before (optionally) repacking it. *This will need to be repeated whenever you update the program.*

To do this:

- Open a Terminal window in the location of the UltraStar Deluxe AppImage
- Run the AppImage with flag `--appimage-extract` (e.g. `./UltraStarDeluxe-linux-2026.4.0.AppImage --appimage-extract`)
- Navigate to `./squashfs-root/usr/share/ultrastardx`, then copy `MyLittleKaraoke` (folder) and `MyLittleKaraoke.ini` to `themes`, and the avatar images to `avatars` (folder)
- Download `appimagetool` from [here](github.com/AppImage/appimagetool/releases/latest)
    - You may also need the runtime from [here](https://github.com/AppImage/type2-runtime/releases), `x86_64` for most computers
- Rebuild the AppImage with `./appimagetool-x86_64.AppImage -vn squashfs-root`
    - Your `appimagetool` may be different if you're running this from an ARM device
    - You may need to manually add the flag `--runtime-file runtime-x86_64` if it is unable to automatically retrieve the runtime
- The resulting AppImage (e.g. `UltraStar_Deluxe-x86_64.AppImage`) should now have the custom theme and avatar embedded

### Updating UltraStar Deluxe

UltraStar Deluxe receives updates on roughly a monthly basis. From time to time, you may wish to update it to take advantage of newly added features.

How you update the program depends on your operating system:

- On **Windows**, you can download the newest portable release and copy it to another directory. You can also try running the newest installer, which should recognise your existing install and install over it while retaining your data.
- On **macOS**, you can run the `.dmg` file and copy `UltraStar Deluxe` to your `Applications` folder, replacing the existing one. Your data will not immediately appear in the updated software, but will be retained; macOS generates a new data folder in `~/Library/Application Support` for each version of UltraStar Deluxe that is used.
- On **Linux**:
    - **AppImage**: You can just download and run the new AppImage.
    - **flatpak**: You can update it just as you would any other flatpak. Updates may be delayed as they rely on flathub.
    - **Compiled from source**: If necessary, `git pull` the latest copy of the repository, then recompile with `./autogen.sh && ./configure && make`. Output will be in the `game` folder of your local copy of the repository.

In all cases, you will probably want to copy data from your existing version to the new version. To do so, move `Ultrastar.db` (the score database), `songs`, `avatars`, and `config.ini` (game configuration) to the new installation directory (or to the newly generated `~/Library/Application Support/UltraStarDeluxevXXXX.XX.X/` folder). You may want to check to see if any changes were made to the [theme](https://github.com/barbeque-squared/usdx-mylittlekaraoke-theme) in the latest release; if not, you can also copy over `MyLittleKaraoke` and `MyLittleKaraoke.ini` to the `themes` folder of the new installation directory.

Linux AppImage and flatpak users: Your data should should always remain in the same directory (`~/.ultrastardx` for AppImage and `~/.var/app/eu.usdx.UltraStarDeluxe/.ultrastardx` for flatpak), so you shouldn't need to move anything. Themes and avatars are either handled separately or not available, so if you're using those you may need to reapply them or continue to not use them.

### Next steps

By the end of this section, you should have the base songs, along with the My Little Karaoke theme/avatars, running on a modern version of UltraStar Deluxe.

Any new songs you get -- whether they be new releases, or unreleased, or even completely unrelated to pony -- should go in your `songs` folder, or to an otherwise specified directory in `config.ini`.

Next, we will download new releases from the My Little Karaoke website.

## Section 3: Downloading New Releases

Since early 2022, new song releases have been distributed from the [online "new releases"](https://www.mylittlekaraoke.com/store/beta/releases.html) page (despite the URL, the songs are not necessarily in 'beta'; they are considered to be at least identical in quality to the songs that are included in the base game). Each song comes as its individual `.tar.mlk` file, which, as the name suggests, is actually a `.tar` file. So, you can just download all of them, then extract them with a conventional file manager (i.e. 7-Zip).

Each `.tar.mlk` contains a `Downloads` folder, which contains the song itself (along with any other songs that are included in the song release, such as for the 4EverfreeBrony song packs). If you download several `.tar.mlk` files, you should be able to extract them all simultaneously (`for f in *.tar.mlk; do tar xf "$f"; done` for example).

The end result should be a `Downloads` folder which contains a bunch of songs. You can move this `Downloads` folder to your `songs` directory, such that you now have three folders in there: `Official` (official show songs), `Community` (fandom songs), and `Downloads` (new releases).

On Windows, assuming you've used the My Little Karaoke web installer, double-clicking on a `.tar.mlk` file will automatically extract it to your My Little Karaoke install song directory. If you've installed an updated UltraStar Deluxe somewhere else, then it probably won't end up in the right place.

### Next steps

By the end of this section, you should have downloaded and extracted (or installed) at least *some* new releases from the online new releases page. Of course, if you're running this at event, you may want to get all of them!

Next, we will talk about acquiring unreleased songs.

## Section 4: Acquiring Unreleased Songs

Despite the implication, 'unreleased' songs are generally not that low quality or unstable. Songs are individually and manually released after QA, which generally falls on one person to do, and so as a result songs are generally created faster than they can be added to the game. These songs may also be waiting on permission from the artist who created or sang them, and may be missing things that would otherwise go in a 'new release', such as a cover, background, video, or golden notes.

That being said, unreleased songs are a bit complicated to manage, mainly because there is no online centralized repository for them. Most of these songs are available in *some form* online, but not all of them, and not necessarily on the open Internet.

I would recommend creating a new folder in your `songs` folder called `Dev` or `Beta` or something similar, to differentiate these unreleased songs from the base songs in `Official`/`Community` and the new releases in `Downloads`.

### Pony Karaoke Unreleased Song Pack

This is a song pack containing the 400 or so songs that I've charted for My Little Karaoke that haven't been publicly released yet. Please see [here](/projects/pony-karaoke) for more information.

### Unreleased songs on the web forum

Some unreleased songs are posted on the [web forum](https://www.mylittlekaraoke.com/forum/index.php?board=19.0). What you get will depend on who made the chart, but generally you will get an archive of some sort which contains:

- The song audio (`.ogg`, `.mp3`, `.flac`, etc)
- A `.txt` file (this is the chart itself)
- A `cover`, `background`, and/or `video` (the cover displays on the song selection screen, and the background and/or video when you play a song)

Extract these into a folder (ideally `Artist - Song Name`), then place that folder into your unreleased songs subdirectory within your songs folder. For example, if you're provided a file called `Cantersoft - Pony Pony Pony Pony.zip` which contains `song.mp3`, `notes.txt`, `cover.jpg`, and `video.mp4`, then copy those contents to a folder called `Cantersoft - Pony Pony Pony Pony` inside of the `Dev` folder. (The actual folder structure is not particularly important, but makes it a lot easier for you to reference and possibly make changes.)

In some cases, you may only be provided a `.txt` file, in which case you will have to manually get the song audio from somewhere else, then reference it under the `#MP3` header in the text file (which can be any file format). For example, you could specify `#MP3:great-to-be-different.ogg` to have the song look for the file `great-to-be-different.ogg` within the working directory.

### Unreleased songs on the Discord server

The vast majority of releases are also posted to the [My Little Karaoke Discord server](https://discord.gg/UsGcpnv). Generally speaking, just look for any blue links in the `#general` channel and it's probably an unreleased song of some sort.

### Next steps

By the end of this section, you should be able to download some unreleased songs and add them to your collection. Thus, you should have a perfectly updated pony karaoke setup, consisting of:

- *My Little Karaoke*'s base songs (Section 1)
- An updated copy of UltraStar Deluxe, the software that powers My Little Karaoke (Section 2)
- *My Little Karaoke*'s new releases (Section 3)
- Some unreleased pony karaoke songs (Section 4)

If you've got all of that, you should be good to go, and should now be armed with the knowledge to add songs going forward! Yay! If not, bug me and we can troubleshoot.

There are not really any further instructions past this; the appendix just contains some other information that you might find useful.

## Section 5: Appendix

### Full song list

There is not really a full song list of all My Little Karaoke songs, which is especially concerning if you want to start making songs on your own (since it would be a waste of time to make a chart for a song that already exists). As such, I've created a [song list](https://docs.google.com/spreadsheets/d/1QXSRaA6ApBQ8Qzve3C_lKP7qCjPRzYnXbjo0dcglIME/edit?usp=sharing) which includes all base, new release, and unreleased songs, to my knowledge. Some songs with severe language or concerning material that may not be tolerated at more family-friendly events have also been highlighted for your convenience, although I make no guarantees.

### Creating your own songs

I actually have a separate in-depth tutorial for creating new songs, if that is a thing you'd like to do. See [here](/guides/karaoke).

### Requesting new songs

If you don't have the time or ability to create your own song charts, you can also ask me and I'll see what I can do. See [here](https://docs.google.com/forms/d/e/1FAIpQLSeMS-Pg-IsR2zx-s8dfXNokqvwASJ1P-I_Mah_E5G9dtptp5A/viewform?usp=dialog) for a form you can fill out.

### Using other simulators

UltraStar's format is portable and does not necessarily need to be used with UltraStar Deluxe. [UltraStar Play](https://github.com/UltraStar-Deluxe/Play), for example, is compatible with Android. For more information on the other simulators that exist, see [here](/guides/karaoke/prefaceA/).


