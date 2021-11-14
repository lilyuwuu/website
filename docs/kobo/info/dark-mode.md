# Dark Mode on Kobo

**Dark Mode on Kobo** generally refers to inverting the screen colour so that your e-reader displays white text on a black background rather than black text on a white background. It is generally considered to be easier on the eyes at nighttime.

There are a number of methods that allow you to achieve this effect on a Kobo. Not all of these options require you to modify your device.

## Method 1: Kobo eReader.conf

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to connect your Kobo to your computer. If so, click "Connect".
	- If not, your microUSB cable may be incapable of transferring data. You will need a new cable.
	- Mac users are known to occasionally have weird issues with mounting Kobo devices.
1. Your Kobo should now appear on your computer as an external drive. Navigate to `.kobo` -> `Kobo` -> `Kobo eReader.conf`.
1. Add the following text on a new line:

	[FeatureSettings]
	DarkMode=true

1. Save your changes
1. **Safely eject** your Kobo, then unplug it
	- The screen should now be inverted when reading books, but not inverted when viewing images or on the home screen

## Method 2: NickelMenu

!!! warning "Outdated"
	The Invert Screen option has been superseded by Dark Mode on newer firmwares, which is unsupported on the latest release of NickelMenu but has support available in a [preview build](https://www.mobileread.com/forums/showpost.php?p=4141992&postcount=555). More specific instructions are available in [this thread](https://www.reddit.com/r/kobo/comments/p2ysif/dark_aka_inverted_mode_suddenly_stopped_working/).
	
!!! info "NickelMenu required"
	You will need [NickelMenu](/kobo/info/sotware/nickelmenu) in order to follow these instructions.

1. Ensure your Kobo is powered on, then connect it to your computer
1. Create a file named `config` in `.adds -> nm` if it does not already exist, and add the following line:

	menu_item :reader  :Invert Screen      :nickel_setting     :toggle :invert

1. Save your changes
1. **Safely eject** your Kobo, then unplug it
	- There should now be an "Invert screen" option in Nickel when reading a book

## Method 3: Alternate readers

[KOReader](/kobo/info/readers/koreader) and a number of other readers offer a "night mode" of some sort.
