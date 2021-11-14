# Converting EPUBs to KEPUBs

A number of applications can be used to convert EPUB files to KEPUB (*.kepub.epub) at your convenience. 

## Method 1: Calibre

The [calibre](https://calibre-ebook.com/) e-book manager can be used to automatically convert imported EPUB files to KEPUB. *Disclaimer: I have little experience with calibre itself.*

1. Navigate to the calibre Preferences menu:

![Screenshot: Calibre Preferences](/images/calibre-1.png)

2. Click "Plugins", under the "Advanced" category

3. Click "Get new plugins" and search for "KoboTouchExtended", then click "Install", ignoring the security risk

![Screenshot: Plugin installation menu](/images/calibre-2.png)

4. Restart calibre when prompted

Any books imported into Calibre will now be converted to the KEPUB format whenever they are sent to your device.

## Method 2: kepubify (offline)

The tool [kepubify](https://pgaskin.net/kepubify/) can be used to convert EPUBs to KEPUBs en masse. You should use it over calibre if you are not using calibre to manage your e-books.

1. Download [kepubify](https://pgaskin.net/kepubify/) for your operating system (the website should recognize what operating system you are running and serve you the correct download link)
	- macOS users can also install this program with `brew install kepubify` with the Homebrew package manager
1. Open a Command Prompt/Terminal window and navigate to the location of kepubify (usually the `Downloads` folder).
	- macOS and Linux users will need to run the command `chmod +x kepubify-darwin-*` (macOS) / `chmod +x kepubify-linux-*` (Linux) before continuing
1. Run the command `kepubify <input-directory> -o <folder>`
	- You may need to rename your `kepubify-*-*` file to `kepubify`
	- For example, running `kepubify C:\Users\<user>\Downloads -o converted` would convert all EPUBs in <user>'s Downloads folder and place them in `C:\Users\<user>\Downloads\converted`

## Method 3: kepubify (online)

The user [JoooostB](https://www.reddit.com/user/JoooostB/) has created an online tool to convert EPUB files to KEPUB, powered by the tool above. It is available [here](https://kepubify.io). An alternate tool is available from the [kepubify creator's website](https://pgaskin.net/kepubify/try/). 

1. On the website, click on the "Select your .epub" box to open your file browser
1. Navigate to the location of your EPUB, then select it.
1. Click the cloud icon to upload it to the website.
1. Your browser should download `<filename>.kepub.epub`.