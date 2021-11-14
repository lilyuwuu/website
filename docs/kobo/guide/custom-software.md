# Custom Kobo Software

!!! info "Minimal brick risk"
	Make a backup of any data that you care about in case something goes wrong, and do not eject your Kobo when files are being written to its internal memory. There is little chance of anything randomly going wrong.

!!! info "4.6+ firmware only"
	These instructions are intended for devices on Kobo firmware 4.6+. If you're on a lower firmware and want to remain on that lower firmware, you should probably try [Kobo Start Menu](/kobo/info/legacy/kobo-start-menu) instead, at your own risk.
	
On the newest firmwares, custom software is often run by one of two tools:

- NickelMenu, a piece of software that adds a new, customizable menu option to your home menu (and also allows you to add menu options to the library or reader context menus)
- Kute File Monitor (KFMon), a piece of software that allows you to launch additional applications by opening a "book" (usually an image)

These tools, along with a custom reader of your choice (KOReader and/or Plato), can be installed using the community-compiled one-click install packages. See the [overview](/kobo/info/readers/overview) if you don't know which reader you want to install.

## What you need

- The latest release of the [one-click install packages](https://www.mobileread.com/forums/showpost.php?p=3797095&postcount=1) bundled with the software of your choice (OCP-KOReader-[Ver], OCP-Plato-[Ver], or OCP-Plato-[Ver]_KOReader-[Ver]).
	- See the [reader comparison list](/kobo/info/readers/compare) if you are unsure what you would like to install
- If following the "Script" instructions, the latest release of the [installation scripts](https://www.mobileread.com/forums/showpost.php?p=3797096&postcount=2) for your operating system
	- macOS users will need to disable Safari's automatic file unzipper if they intend to use the script
- A microUSB data cable, to transfer files to your Kobo

## Installation (Script)

!!! info "Recommended"
	This method is recommended whenever possible, as it reduces the chance for user error.

1. Create a folder called `OCP` on your desktop (for organizational purposes), and move your one-click package into the newly-created folder, **still zipped**
1. Move the installation script (the `.ps1`, `.cmomand`, or `.sh` file) to the `OCP` folder on your desktop
1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable.
1. Run the installation script (the `.ps1`, `.command`, or `.sh` file)
1. When prompted, type "0" and press Enter to install the package
1. Wait for the installation to complete
1. Once the command window says that installation is complete, **safely eject** your Kobo, then unplug it

The device will appear to update. Once the update is complete, you should see KOReader and/or Plato icons on your home screen, as well as a new "NickelMenu" option in the bottom-right corner (on <4.23, it will appear in the top-left main menu).

!!! success "Success!"
	NickelMenu, KFMon, and a custom reader are now installed on your Kobo.

## Installation (No Script)

!!! info "Less Recommended"
	User error is more likely when this process is performed manually, but will not result in catastrophic damage.

### Section I: Modifying your Kobo eReader.conf

1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable.
1. Navigate to `.kobo` -> `Kobo` -> `Kobo eReader.conf`, then open it with a text editor
	- Ensure that your text editor respects line endings. Notepad will do so on newer versions of Windows 10. Otherwise, you should use an external program, like [Notepad++](https://notepad-plus-plus.org/downloads/).
1. Add the following text as a new section in the configuration file:

		[FeatureSettings]
		ExcludeSyncFolders=(\\.(?!kobo|adobe).+|([^.][^/]*/)+\\..+)
	- If you already have `[FeatureSettings]` as a header in your `Kobo eReader.conf`, then add the `ExcludeSyncFolders=...` line to it
	
1. Save your changes to `Kobo eReader.conf`

### Section II: Copying the one-click package

1. Open the OCP `.zip`
	- Inside, you should see at least four files/folders -- `.adds`, `.kobo`, `kfmon.png`, and potentially both or either `koreader.png` and `plato.png`
1. Copy everything in the OCP `.zip` to the root of your Kobo (not inside of any folders)
	- If you are prompted to "replace" (and not merge) the files, STOP! You should merge the folders to avoid potential data loss.
1. After the files are done copying, **safely eject** your Kobo, then unplug it

The device will appear to update. Once the update is complete, you should see KOReader and/or Plato icons on your home screen, as well as a new "NickelMenu" option in the bottom-right corner (on <4.23, it will appear in the top-left main menu).

!!! question "Troubleshooting"
	If the Kobo does not appear to update, then you likely did not copy the contents of the OCP `.zip` to the root of your Kobo (or you missed some files).

!!! success "Success!"
	NickelMenu, KFMon, and a custom reader are now installed on your Kobo.

## What to do next

!!! info "Regarding official firmware updates"
	NickelMenu will persist through official firmware updates, while KFMon will not. You will need to reinstall KFMon every time you perform a Kobo firmware update, whether that be by installing it separately or by re-following these instructions.

Now that custom software has been installed, you could:

- Learn to modify your [NickelMenu Configuration](/kobo/info/software/nickelmenu/#configuring-nickelmenu)
- Install other custom software, like [Ultimate Manga Reader](/kobo/info/readers/ultimate-manga-reader), [Vlasovsoft](/kobo/info/readers/vlasovsoft), or [InkBox](/kobo/info/readers/inkbox)
- Follow one of the other guides to [modify Nickel](/kobo/guide/kobopatch) or to make use of [Nickel's hidden features](/kobo/guide/kobo-options)