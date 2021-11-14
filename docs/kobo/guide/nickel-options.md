# Nickel's Hidden Features

A number of actions and options are available that are not immediately obvious by changing settings. These actions and options are listed below.

# Converting EPUB to KEPUB

!!! success "No brick risk"
	This section will not result in any issues that require a factory reset.

While Kobo devices natively support EPUB files, it is generally considered advantageous to convert EPUB files to the KEPUB (Kobo EPUB) format to enable the following features:

- Chapter progress statistics
- Time remaining within books
- Faster page turns and text selection
- Fast page flipping by holding your finger
- Footnote previews
- Image zooming
- EPUB 3 support

You can convert an EPUB to KEPUB using [calibre](https://calibre-ebook.com/) or kepubify ([command-line](https://pgaskin.net/kepubify/) or [online](https://kepubify.io)). For step-by-step instructions, see [this page](/kobo/info/epub-to-kepub).

# Custom Fonts and Dictionaries

!!! success "No brick risk"
	This section will not result in any issues that require a factory reset.


Kobo devices have native support for importing your own fonts and dictionaries.

## Adding Fonts

You will need:

- Your font(s) of choice (TTF or OTF formats should both work)
- A microUSB data cable, to transfer the font(s) to your Kobo

Instructions:

1. Rename your fonts to the correct format. For example, for Comic Sans MS:

		COMIC.TTF   -> Comic Sans MS.TTF
		COMICBD.TTF -> Comic Sans MS-Bold.TTF
		COMICI.TTF  -> Comic Sans MS-Italic.TTF
		COMICZ.TTF  -> Comic Sans MS-BoldItalic.TTF
	- If you don't do this, bold/italic/bold-italic typefaces will not display
	
2. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable.
4. Create a `fonts` folder on the root of your Kobo if it does not already exist, and place your modified fonts inside.
5. **Safely eject** your Kobo.

Your fonts should be immediately usable without a reboot.

## Adding Dictionaries

You will need:

- Your Kobo-formatted dictionary of choice (use [this thread](https://www.mobileread.com/forums/showthread.php?t=232883) to find one that you like, or [this repository](https://github.com/BoboTiG/ebook-reader-dict))
- A microUSB data cable, to transfer the dictionary to your Kobo

Instructions:

1. Download your dictionary. If it isn't already, it should be named:
	- `dicthtml-<lang1>-<lang2>.zip` for translation dictionaries (for example, `dicthtml-en-fr.zip` for English-to-French)
	- `dicthtml-<lang1>.zip` for single-language non-English dictionaries (for example, `dicthtml-fr.zip`)
	- `dicthtml.zip` for single-langauge English dictionaries (`dicthtml-en.zip` might also work)
	- Do not add `.zip` if you already see it in the file name
2. Ensure your Kobo is powered on, then connect it to your computer
3. You should be prompted to connect your Kobo to your computer. If so, click "Connect"
4. Navigate to `.kobo -> custom-dict` and place your dictionary inside
5. **Safely eject** your Kobo, then unplug it

Your dictionary should be immediately available as `<language> (Custom)`.

# Enabling Developer Mode

!!! warning
	Developer Mode enables telnet access into your device, which can result in catastrophic damage if used irresponsibly. Therefore, you should not connect to public networks while developer mode is enabled.

!!! info "Alternatives"
	If your end goal is:
	
	- To play the games that are built into Nickel (Sudoku, Unblock It, Solitaire, Word Scramble)
	- To have access to a Dark Mode toggle
	- To change your screen orientation
	
	You should [install NickelMenu](/kobo/guide/custom-software) instead.

Enabling developer mode will allow you to:

- Play the [Games](https://help.kobo.com/hc/en-us/articles/360017763733-About-Beta-Features) normally available on older devices, including Sudoku, Unblock It, Solitaire, Word Scramble, and Sketch Pad
- Toggle some of the settings mentioned above, including:
	- Force Wifi On
	- Screen orientation
- Use telnet to make advanced modifications to your Kobo.

To enable developer mode:

1. Power on your Kobo if it is not already on
1. From the home screen, press the Search icon in the top-right
1. Set your source to "Annotations", type `devmodeon`, then select "Go"
	- You should get "0 results found"
1. Dev Mode is now enabled
	- Games will be accessible in the "Beta Features" menu
	- Developer options will be accessible from `More` -> `Settings` -> `Device information` -> `<Page 2, if necessary>` -> `Developer options`

To disable developer mode, follow these instructions, but type `devmodeoff` instead of `devmodeon`.

# Modifying Kobo eReader.conf

!!! info "Minimal brick risk"
	If your device stops working due to a `Kobo eReader.conf` modification, it should be fixable with a factory reset. Make a backup of any data that you care about in case something goes wrong.

At a minimum, you'll need:

- A microUSB data cable, to connect your Kobo to your computer
	- An Android phone might also work, but the process will be more painful
- A text editor (Notepad should work on newer versions of Windows 10 -- make sure your text editor properly handles line endings, which should be "LF" rather than "CRLF")

To modify your Kobo eReader.conf:

1. Ensure your Kobo is powered on, then connect it to your computer.
1. You should be prompted to connect your Kobo to your computer. If so, click "Connect".
	- If not, your microUSB cable may be incapable of transferring data. You will need a new cable.
	- Mac users are known to occasionally have weird issues with mounting Kobo devices.
1. Your Kobo should now appear on your computer as an external drive. Navigate to `.kobo` -> `Kobo` -> `Kobo eReader.conf`.
	- If you don't see the `.kobo` folder, you may need to enable the "hidden files" option on your operating system.
1. Make your desired changes to `Kobo eReader.conf`. Once done, save the file and **safely eject** your Kobo.
	- If you're unsure of how your `Kobo eReader.conf` should look, refer to the reference image below.
1. You may need to reboot your device for your changes to apply.

<center>![Image of Kobo eReader.conf](/images/koboconfig.png)<br>
*This is an example of what your modified `Kobo eReader.conf` can look like.*</center>

For a full list of usable options, see [here](https://wiki.mobileread.com/wiki/Kobo_Configuration_Options). Only the ones that I think people would actually use are listed below.

## [FeatureSettings]

### BookSpecificStats

This setting adds a "Book statistics" option to the library context menu. These statistics should already be avaliable from the More -> "Activity" option for your last-opened book. The following statistics are available:

- Book progress, in percentage and time
- Chapter progress, in percentage and time
- Hours spent reading the book
- Average time spent for every book session
- Average number of pages read per minute, to the nearest tenth

(Time calculations are KEPUB-only.)

For more verbose reading statistics, you may want to check out [KOReader](/kobo/info/readers/KOReader).

### ExportHighlights

This setting adds an "export highlights" option to the library context menu. Exported highlights will appear on the root of the Kobo (not inside of any folders), with the file name being `<specified name; name of book by default>.txt`. The format is as follows:

	Title of book
	
	Highlighted text in book
	Note: <user-inputted note>
	
	Highlighted text in book
	Note: <user-inputted note>

### Screenshots

This setting makes it so that pressing the power button will take a screenshot while in Nickel. **You won't be able to put your device into sleep mode with the power button when this option is enabled**, so adding this as a menu option in NickelMenu is preferable.

### SketchNote

This setting makes it so that holding a word (for annotation/dictionary use) will instead open a sketch pad. There doesn't seem to be a way to save your drawing, though.

### InvertScreen

This setting inverts the screen colours of your Kobo, replacing black with white and white with black. It is preferable to use Dev Mode or to add a toggle in NickelMenu, than to set this option.

This option has been superseded by Dark Mode on newer firmwares, which is unsupported on the latest release of NickelMenu but has support available in a [preview build](https://www.mobileread.com/forums/showpost.php?p=4141992&postcount=555).

### ExcludeSyncFolders

This setting will exclude the specified folders from being scanned by your Kobo. It's most useful for excluding the `.adds` and `.kobo` folders to prevent icons from custom software from being detected as readable books.

### MyWords

This setting enables the "My Words" beta feature, which has now been implemented into the Kobo menu as a Beta Feature as of 4.26.16704. Therefore, you'll only need to modify this option if you're on a firmware that had this feature but did not make it accessible (? < 4.6.9960 < latest).

## [DeveloperSettings]

### AutoUsbGadget

This setting will automatically mount the Kobo when plugged into a computer. You may find this option useful if you are scared of catastrophic screen damage, as this option will allow you to rescue your data if you are unable to press the "Connect" button as long as this option was enabled at the time of the damage.

### ForceAllowLandscape

This setting will allow you to change your screen orientation on devices where the option is hidden (Kobo Nia, Clara HD, and older Kobo devices without an orientation sensor).

### EnableDebugServices

This setting does the same thing as the `devmodeon` / `devmodeoff` toggle. 

### ForceWifiOn

This setting forces your WiFi connection to be always on, even if the device is inactive. **This will probably severely drain your battery.**