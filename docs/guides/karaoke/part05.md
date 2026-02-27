# Part 5: Finetuning

!!! abstract "TL;DR"

    Fine-tuning is the most time-consuming part, but is also the most crucial. The general sequence of steps is as follows:

    1. **Refine the GAP**. Use the 9 and 0 keys to adjust the GAP by 10ms at a time until the first line sounds perfect. Time and check a line in the middle to verify.
        + This is **the most important step**, as an incorrect GAP will have cascading effects throughout the rest of the song.
    1. **Start timing notes**: You can use the **Ctrl + G** shortcut to automatically move all notes to the nearest thick gray line, if they aren't already there.
        + You can use the waveform feature to get a visual aid on where notes should go. Generally speaking, peaks in the waveform indicate the beginning of a new note.
        + For most very rhythmic songs, like this one, the thick gray lines will effectively perfectly time the song, because the vast majority of notes will start on one of them.
        + Prioritize note timings -- the start of notes -- before moving onto note lengths. Use SHIFT and the arrow keys to move notes left and right.
        + In most circumstances, no two notes should touch. Ideally, there is a gap of **at least two units** between each note, as that makes the chart more flexible to the various pieces of hardware that people have without making the game that much easier.
    1. **Note lengths**: A note should last until *just before* you hear the unpitched part of a syllable (for example, an "s" sound). If in doubt, you should bias towards ending the note earlier rather than later.
        + Use ALT and the arrow keys to shorten or lengthen a note by one unit, without changing the starting position.
        + Use CTRL and the arrow keys if you would like to adjust the starting position of the note, without changing the ending position.
        + If, at this point, you've noticed a pitch change in a note that you did not account for in [Part 2: Lyrics](../part02), hit the - (minus) key to split the current note into two, then shorten the first note and move the second note (often a ~) to your desired location.
    1. When you've finished a line, **hit Ctrl + A, then Space** to ensure that all notes in the line are timed correctly.
        + If a note is noticeably off, move it to the *right* if it is noticeably early, or to the *left* if it is noticeably late. Examples:
            + You hear the timing click sound *before* the singer begins vocalizing the note: it is early; move to the right
            + You hear the timing click sound *after* the singer begins vocalizing the note: it is late; move to the left
        + **Line breaks and note timing warnings**: Acknowledge and resolve all of them, even if marked as 'unsafe'. If you have a note that is marked as unsafe *and* with correct timing, chances are the note is just too long and you should shorten it so that people can more easily react to the next line (as the error says).
    1. **Repeat** until you get to the end of the song.
        + If you notice a line that repeats (e.g. a chorus), feel free to copy paste the timing.
    1. Once all notes are correctly timed, you can start pitching.
        + You can also pitch each line after you've finished timing it, which is what I personally do. This may be faster -- especially when copy pasting identical sections that have the same pitches -- but requires you to be able to pitch effectively and reliably. It may be better to wait until you have finished timing everything to start pitching, or to allow someone else to pitch your well-timed chart.

## Overview

Arguably the most time-consuming part of song creation is **fine-tuning**. This is the process of taking the notes we tapped in [Part 4](../part04) and adjusting them so that they're timed better, since human button presses are usually imperfect. For most normal songs, there will be around 300 to 400 different notes to time!

Fine-tuning is the most important aspect to determine a song's playability. If the notes are not timed correctly, players will have a bad time. Pitches can be fixed; bad charts may have to be remade entirely.

This fine-tuning process is normally accomplished with a **song editor**. A more verbose overview of the song editors that exist is available in [Preface B](../prefaceB), but we will be using **Yass Reloaded** in this tutorial for its convenience features.

If you'd like, you can download the [pre-finetuned version of the chart](/resources/karaoke/not-the-same-pre-finetuning.txt) and follow along, or manipulate it on your own. Don't forget the [audio](https://princewhateverer.bandcamp.com/track/not-the-same)!

## Configuring Yass

If you've never opened Yass before, you will probably need to configure it. If you would like to reset your configuration, you can delete it from the `.yass` folder in your home directory (e.g. `C:\Users\lily\.yass` or `~/.yass`).

When you first open Yass, you will be asked to point to where your songs are located:

![Yass Quick-Start](/resources/karaoke/yass-quickstart.png)

I obviously cannot tell you where you decided to place your songs, as it depends on where you installed the program. Click "New" and navigate to wherever your UltraStar Deluxe folder is. The rest of the fields should auto-populate, then you should be good to click "OK".

Then you should see this dialogue box:

![Yass Spaces](/resources/karaoke/yass-spaces.png)

What you do here is up to you. Like I said earlier, I personally use Before Spaces as it makes it easier to troubleshoot whenever I need to manually modify the TXT, but some argue that you shouldn't do that anyway. Hitting "OK" will set it to After Spaces, while hitting "Cancel" will set it to Before Spaces.

The last dialogue box about refreshing is mainly informational, just click OK.

Finally, you will see Yass's main menu open. It will also probably spend a minute or two creating piano samples; let it do that.

![Yass Main Menu](/resources/karaoke/yass-main.png)

### Preferences

Before we continue, we should set some preferences. On the top bar, click Extras, then Preferences and you should see the preferences window appear. Here's what I would mainly configure:

- Library > Locations: Set the location of ffmpeg if you haven't already. Aubio is also theoretically useful for help pitching songs, but I've never used it.
- Error Checking > Tags > Compatibility: Up to you
    - If you would like to use Aubio for pitch assistance, you will need to use SHINY (1.1.0) and to have a vocal (a cappella) track
    - If you don't care about this, use UNITY (1.0.0)
    - The main difference between 1.0.0 and 1.1.0 is that #MP3 is deprecated in 1.1.0, so if a track is made in 1.1.0 then #MP3 may automagically disappear, which will break compatibility with older games that do not recognise the new #AUDIO tag
- Error Checking > Page breaks > Spacing: Up to you
    - This is where you can decide whether spaces should be before or after words
    - I personally recommend "before"
    - UltraStar-Creator will use "after" by default, so if set to before a bunch of errors will show up that can be automatically corrected
- Editor > Design: Check "Show beat" and "Show scale"
    - You can enable dark mode if you want
- Advanced > Audio/Video > Piano > Volume: Maximum
- Advanced > Audio/Video > Editor > Accuracy: Check "Show waveform"

Then, to start editing your song, you can either select it from the list and hit **Ctrl + E**, or click File (top bar) -> Edit and navigate to the location of your TXT.

If you close Yass, then you can quickly get back to the last song you opened by using **Ctrl + R**. (or File -> Resume Editing).

## Main Controls

Before we start adjusting things, let's get used to the **main controls** of Yass. Yass can generally be navigated by key combinations, and that is what you will probably primarily use. However, there is also usually a button on the GUI that can accomplish what you want.

!!! example "Yass Editing Menu"

    ![main editing menu](/resources/karaoke/yass-editing.png)

If you forget a specific key combination, click on the top menu buttons (Edit / Play / View / Lyrics). A list of possible actions will be displayed, with their key combinations next to them.

### Moving note positions

There are three main ways to move notes. These actions do not affect pitch; they only affect the point at which the note plays.

??? example "SHIFT + arrow key LEFT/RIGHT: Move the note"

    This moves the note to the left or right, while keeping its length.
    ![Shift left+right](/resources/karaoke/ShiftLR.gif)

??? example "ALT + arrow key LEFT/RIGHT: Move note end position without changing start"

    This lengthens or shortens the note, while keeping its starting position.
    ![Alt left+right](/resources/karaoke/AltLR.gif)

??? example "CTRL + arrow key LEFT/RIGHT: Move note start position without changing end"

    This lengthens or shortens the note at the beginning, while keeping its ending position.
    ![Ctrl left+right](/resources/karaoke/CtrlLR.gif)

### Pitching notes

You can pitch notes by using CTRL + arrow key UP/DOWN. Hold SHIFT as well (CTRL+SHIFT+arrow key UP/DOWN) to change pitch by a full octave.

??? example "CTRL + arrow key UP/DOWN: change note pitch"

    ![Shift left+right](/resources/karaoke/CtrlUD.gif)

### Selecting multiple notes

You can select multiple notes with SHIFT + arrow key UP/DOWN. When multiple notes are selected, you can make the same adjustments as you would with just one note selected, using the same key combinations:

??? example "SHIFT + arrow key UP/DOWN: Select multiple notes"

    ![Shift up+down](/resources/karaoke/ShiftUD.gif)

Use **Ctrl + A** to select the whole line, or **Ctrl + Shift + A** to select the whole song.

### Splitting notes

If you want a note to split into two (for example, to account for a new pitch), you can either click above it when a dotted line appears, or use the MINUS (-) key.

??? example "Splitting notes"

    ![Splitting notes](/resources/karaoke/NoteSplitting.gif)

### Deleting notes

You can delete a note by pressing **CTRL + DELETE**.

??? example "Deleting notes"

    ![Deleting notes](/resources/karaoke/CtrlDel.gif)


### Note attributes

You can change the type of a note as follows:

- **F**: Freestyle [pink] (lyric is displayed, but note is not displayed. Players do not have to sing this note)
- **G**: Golden [gold] (note is worth double)
- **SHIFT + F**: Rap [green] (note is displayed, but players can make any sound to get points on it)
- **SHIFT + G**: Golden Rap [light green] (rap but worth double)

??? example "Changing note attributes with (Shift +) F/G"

    ![Note attributes](/resources/karaoke/NoteAttribute.gif)

### Adjusting GAP

The GAP (position of the first note) can be adjusted with the **9** (earlier) and **0** (later) keys. The first note should **always** start at beat zero.

If you move the first note to a position other than beat zero, it will appear as an error that you should correct. The gap will be updated accordingly.

??? example "Gap adjustment"

    ![Gap adjustment](/resources/karaoke/GapAdjustment.gif)

### Playing the current note

Something you will probably doing a bunch is playing the currently selected note(s). Use the **SPACE** button to do this.

You can also press **P** to play the current line in its entirety.

??? example "Playing the current note"

    ![Current note](/resources/karaoke/SPACE.gif)

### Other useful shortcuts

- **CTRL + Z**: Undo the last action
- **CTRL + Y**: Redo the last action
- **CTRL + C**: Copy selection
- **CTRL + G**: Align all notes to their nearest thick gray line
- **CTRL + W**: Toggle note click sound (this should almost always be on)
- **CTRL + B**: Toggle piano sound (for use during pitching)

## Refining the GAP

The first step of finetuning is to refine the GAP. Chances are, when you tapped out the song, you did not tap the first note in precisely the right place, even if it sounds like you did. Since the GAP affects the entire rest of the song, you should be as sure as you possibly can that you have it correct.

Here's a video of me finding the GAP, with keypresses displayed on screen. You may note the following:

- I first played the line in its entirety, just to get an idea of how off the tapping was. (Is everything consistently off, or is it all over the place?)
- Then, I used the 9 key a bunch to move the GAP earlier (since in this case, everything was late).
- I then played the line again, and noticed everything was now slightly early (particularly in the "Po\~ny~ville" part).
- So, I used the 0 key a couple time sto move the GAP slightly later.
- From there, the GAP was decent!

??? example "Refining GAP example video"

    <video width="720" height="480" controls>
    <source src="/resources/karaoke/finding-gap.mp4" type="video/mp4">
    Your browser doesn't support embedded videos :(
    </video>

We can verify the GAP we selected by going to somewhere in the middle of the sign, fine-tuning that (as necessary), and then seeing if everything is still on time.

??? example "Verifying GAP example video"

    <video width="720" height="480" controls>
    <source src="/resources/karaoke/verifying-gap.mp4" type="video/mp4">
    Your browser doesn't support embedded videos :(
    </video>

## Fine-tuning note lengths

Once we have the correct GAP, we can start focussing on individual lines. Since we were already messing a bit with the first, let's continue messing with that:

??? example "Fine-tuning the first line"

    <video width="720" height="480" controls>
    <source src="/resources/karaoke/finetuning-line-1.mp4" type="video/mp4">
    Your browser doesn't support embedded videos :(
    </video>

In this instance, the note timings were already adjusted earlier, so it was mainly about the note lengths. Here are the principles I usually go by:

- Each note should be separated by **at least** two units. It doesn't make the song much easier (since people have to hit those pitches at roughly that time anyway), and it helps account for differences between computer hardware, which could affect GAP. You can also think about it this way: When you sing, you wouldn't be singing like a synthesizer where you switch from one pitch to another immediately. In most cases, you will have some gap between each note.
    - Is a gap of two units too much? In this case, a gap of one unit might suffice, since the BPM is low enough. However, I generally stick to a gap of at least two because...
- If undecided, it is better to have a **shorter** note length than a **longer** one. If a note is too short, players are unlikely to notice it unless it is egrigeously short (think about a note being held for, say, 10 seconds straight, and that note is let go at the sixth second. Players WILL notice that and wonder why it's so short). On the contrary, if a note is too long, then players will be frustrated by the level of precision necessary.

## Refining note positions

!!! question "What to finetune first: note positions and note lengths?"

    These days, I usually finetune note positions AND note lengths at the same time so that all that is necessary later on is pitching (actually, I usually pitch at the same time too, but that is besides the point). If you want to do things in a set order though, I would finetune note positions **first**.

    This is because note positions are the **most important** part of the chart. If the timing is off, people will notice and not be happy. If a note is a bit too long, or a pitch is wrong, people can more easily correct that if it bugs them, and even then they might not notice (unless all the notes are stuck together). 

    With practice, you may be able to do all three at the same time without thinking about it (that is, position notes and their lengths as you work through it, then pitch them). But in the meantime, if you want to divide up the work to make it easier: first note positions, then note lengths, then pitches.

Our next lines might not necessarily be as well timed as the first one, so let's run through them to see what we might need to do:

??? example "Refining note positions for lines 2-6"

    <video width="720" height="480" controls>
    <source src="/resources/karaoke/note-positions-line26.mp4" type="video/mp4">
    Your browser doesn't support embedded videos :(
    </video>

Here are the things I would point out about this part:

- **Most of the notes were already in the right place**. This is part of why good tapping is so important: it saves a LOT of time!
- Any lines that had problems -- most notably the "Life's getting better" line -- was pretty easily fixed with Ctrl+G. I didn't even have to move any of the notes left or right.
- After making corrections, I played the whole line once (with Ctrl+A and then Space, but pressing P would also work) to ensure that all the clicks were in time with the music.
- If they were, then I continued to the next line.

---

[<< Back to Part 4: Tapping](../part04){ .md-button}
[>> Continue to Part 6: Pitching](../part06){ .md-button}


---

Quick navigation: [Index](..) / [Preface A](../prefaceA) / [Preface B](../prefaceB) / [Part 1: Audio](../part01) / [Part 2: Lyrics](../part02) / [Part 3: BPM](../part03) / [Part 4: Tapping](../part04) / **Part 5: Finetuning** / [Part 6: Pitching](../part06) / [Part 7: Golden Notes](../part07) / [Part 8: Testing](../part08)
