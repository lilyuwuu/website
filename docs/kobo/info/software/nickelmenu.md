# NickelMenu

**NickelMenu** is a piece of software that allows you to add extra context menu options to:

- The main menu (top-left or bottom-right, depending on your firmware)
- The Kobo "My Books" section
- The reading menu
- the Internet Browser
- the selection menu

NickelMenu is also capable of running other processes, including custom software like [KOReader](/kobo/info/readers/koreader) and [Plato](/kobo/info/readers/plato).

## Installation

### Method 1: One-Click Package

See [this page](/kobo/guide/custom-software). Both NickelMenu and KFMon will be installed, as well as a custom reader of your choice.

### Method 2: Manual Install

1. Download the latest release of [NickelMenu](https://github.com/pgaskin/NickelMenu/releases/latest/download/KoboRoot.tgz)
1. Ensure your Kobo is powered on, then connect it to your computer
1. You should be prompted to accept the connection on your Kobo. If so, click "Connect"
	- If your connection is cutting in/out, STOP! Get a better USB cable
1. Place `KoboRoot.tgz` in the `.kobo` folder of the Kobo
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Installation complete!"
	You should now see more options in your top-left menu, or a separate NickelMenu category on the bottom-right of the main menu.

## Configuring NickelMenu

The [documentation](https://raw.githubusercontent.com/pgaskin/NickelMenu/v0.5.2/res/doc) is generally pretty clear about how to configure NickelMenu. A few tips:

- If you've installed NickelMenu through the [one-click package](/kobo/guide/custom-software), then custom software that is loaded via KFMon will automatically be generated using the `kfmon` config file. In this case, adding entries to your NickelMenu config files will result in duplicate options.
- Your config file can have any name and you can have as many as you want. The order that they will display is unclear.
- Options to open games or to invert the screen **do not** require developer mode to be enabled, even if those options are normally only accessible via Developer Mode.

If you don't want to bother with making your own config file, here is the one that I personally use, partially based on the example configuration file in the documentation:

	menu_item :main    :Dump Syslog        :cmd_spawn          :logread > /mnt/onboard/.adds/syslog.log
	menu_item :main    :Kernel Version     :cmd_output         :500:uname -a
	menu_item :main    :Sketch Pad         :nickel_extras      :sketch_pad
	menu_item :reader  :Invert Screen      :nickel_setting     :toggle :invert
	menu_item :reader  :Invert Orientation :nickel_orientation :invert
	menu_item :main    :IP Address         :cmd_output         :500:/sbin/ifconfig | /usr/bin/awk '/inet addr/{print substr($2,6)}'
	menu_item :main    :FTP                :cmd_spawn          :quiet:/usr/bin/pkill -f "^/usr/bin/tcpsvd -E 0.0.0.0 1021" || true && exec /usr/bin/tcpsvd -E 0.0.0.0 1021 /usr/sbin/ftpd -w -t 30 /mnt/onboard
		chain_success                        :dbg_toast          :Started FTP server for KOBOeReader partition on port 1021.
	menu_item :main    :Telnet (toggle)    :cmd_output         :500:quiet :/usr/bin/pkill -f "^/usr/bin/tcpsvd -E 0.0.0.0 2023"
		chain_success:skip:5
		chain_failure                      :cmd_spawn          :quiet :/bin/mount -t devpts | /bin/grep -q /dev/pts || { /bin/mkdir -p /dev/pts && /bin/mount -t devpts devpts /dev/pts; }
		chain_success                      :cmd_spawn          :quiet :exec /usr/bin/tcpsvd -E 0.0.0.0 2023 /usr/sbin/telnetd -i -l /bin/login
		chain_success                      :dbg_toast          :Started Telnet server on port 2023
		chain_failure                      :dbg_toast          :Error starting Telnet server on port 2023
		chain_always:skip:-1
		chain_success                        :dbg_toast          :Stopped Telnet server on port 2023
	menu_item :main    :Toggle Screenshots :nickel_setting     :toggle :screenshots
	# menu_item :main :KOReader :cmd_spawn :quiet:exec /mnt/onboard/.adds/koreader/koreader.sh
	# menu_item :main :Plato :cmd_spawn :quiet:exec /mnt/onboard/.adds/plato/plato.sh
	# menu_item :main :Vlasovsoft :cmd_spawn :quiet:sh /mnt/onboard/.adds/vlasovsoft/launcher.sh
	# menu_item :main :Ultimate Manga Reader :cmd_spawn :quiet:/mnt/onboard/.adds/UltimateMangaReader/ultimatemangareader.sh
	# menu_item :main :Inkbox :cmd_spawn :quiet:sh /mnt/onboard/.adds/inkbox/inkbox.sh
	menu_item :library :Import books       :nickel_misc        :rescan_books_full
	menu_item :browser :Invert Screen      :nickel_setting     :toggle :invert

Remove the `#` in front of the options for the readers that you intend to install.

## Updating NickelMenu

You should be able to update NickelMenu by re-following the installation instructions. Your configuration will not be overwritten unless it is in the documentation file (`doc`).

## Removing NickelMenu

1. Ensure your Kobo is powered on, then connect it to your computer
1. Create a file named `uninstall` in `.adds -> nm`
1. **Safely eject** your Kobo, then unplug it
1. Allow your Kobo to reboot

!!! success "Removal complete!"
	NickelMenu has been removed from your device.

