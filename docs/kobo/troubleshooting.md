!!! info "Notice"
	Much of this information is intended for Kobo devices that have been modified in some way. For general Kobo issues (particularly those related to Kobo accounts, OverDrive, or Adobe Digital Editions), check the [Kobo troubleshooting page](https://help.kobo.com/hc/en-us/articles/360017605134-Fix-common-Kobo-eReader-problems).

---

!!! question "Duplicate NickelMenu entries"
	You likely have an application that is being listed twice: Once being automatically generated by your KFMon configuration, and once by your NickelMenu config file. Delete one of them (usually, this means deleting the extraneous line in your NickelMenu config file because removing the KFMon generator would remove all of KFMon's entries).

!!! question "Misnamed NickelMenu entries (particularly vlasovsoft)"
	The names of entries from those generated by KFMon depend on KFMon's INI for that file, available in `.adds -> kfmon -> config -> <application>.ini`. Add the text `label = <desired name>` on a new line. Alternatively, use NickelMenu's cmd_spawn to generate entries rather than having NickelMenu run KFMon.

!!! question "I installed custom software and now I see a lot of images as books that are cluttering up my library"
	You did not add this line to `.kobo` -> `Kobo` -> `Kobo eReader.conf`:
	
		[FeatureSettings]
		ExcludeSyncFolders=(\\.(?!kobo|adobe).+|([^.][^/]*/)+\\..+)
	
	Or, you/your text editor messed up your `Kobo eReader.conf`. Make sure that your text editor supports LF (not CRLF) line endings and that `[FeatureSettings]` and `ExcludeSyncFolders=...` are actually on separate lines.
	
	The device will not remove the extra books until the database is re-scanned, which you can do if configured via NickelMenu or by adding a new book to your Kobo.

!!! question "KOReader displays a bomb screen"
	KOReader has crashed. If you're able to reproduce the crash, then it may be a bug in KOReader. You should try [installing a nightly build of KOReader](/info/software/koreader) to see if the bug has been fixed as of the latest commit, or check the [KOReader issues page](https://github.com/koreader/koreader/issues) to see if your issue has already been reported. If not, then file an issue.

!!! question "My Kobo is unresponsive / stuck in an application"
	The application may be glitched or not responding.
	
	1. Force the Kobo off by holding the power button for at least 15 seconds. You may see the screen flash (and the backlight turn off, if it was on) without the contents of the screen changing significantly, but if not, the Kobo has probably still powered off.
	1. Wait 10 seconds.
	1. Attempt to turn on the Kobo as you normally would. If all goes well, your Kobo should start to boot normally.

!!! question "I need to factory reset for some reason; Nickel is working"
	Follow the [Kobo factory reset page](https://help.kobo.com/hc/en-us/articles/360017605114-Reset-your-Kobo-eReader). Note that this will remove any custom software that you have installed.

!!! question "I need to factory reset, but I'm unable to navigate to the factory reset menu"
	Follow the [Kobo manual factory reset page](https://help.kobo.com/hc/en-us/articles/360017765713). Note that the instructions differ per-device, and that this will remove any custom software that you have installed.

!!! question "I tried to manually factory reset, but it didn't do anything"
	Try a few more times and ensure you're getting the technique. If you're still getting nothing, see the [Kobo Unbrick](/kobo/info/kobo-unbrick) page, as you may have a software issue that a manual factory reset is unable to fix.
	
	If your screen appears to be shattered, your screen is potentially physically damaged. In most cases, the cost to repair will exceed the cost of the device, so it is more worthwhile to purchase a new device unless you are adept at replacing screens and want to avoid generating more electronic waste.