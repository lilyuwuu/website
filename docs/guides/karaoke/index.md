# UltraStar Karaoke Charting / Song Creation Tutorial

## Background

In 2024, after playing some [My Little Karaoke](https://mylittlekaraoke.com) at a convention, I realised something: while the game definitely had a lot of songs that I recognised, there were many songs that I wanted to sing that weren't in the game yet. From there, I decided to take matters into my own hands and began to chart some songs, thinking it couldn't be that hard. Since then, I have charted [over 400 songs](https://docs.google.com/spreadsheets/d/1WeCvwP6gfaCMreJkmoB1zXO-3RzdamK-E2U1AZ6qzK4/edit?gid=0#gid=0) (primarily for the My Little Pony fandom) and have gotten pretty efficient at it, with a reputation for high-quality and speedy charting.

With that in mind, this guide is my tutorial on charting your own song in the UltraStar TXT format. My main goal in writing this is to gather the things I've learned over the past couple of years into one step-by-step guide, along with any tricks that I've learned to make things more efficient.

!!! info "Note: Here be ponies"

    My initial motivation for writing this guide was to provide a tutorial for prospective charters in the **My Little Pony fandom**. That being said, the principles here apply to song charting in general. So, just keep in mind that there are likely to be ponies in any examples that I provide. Sorry! 🦄

## What you need

A variety of karaoke games and charting tools exist out there. You are free to use whatever you want, and if you are interested in the rest of the ecosystem I would recommend checking out [Preface A: What is Competitive Karaoke?](prefaceA) and [Preface B: The UltraStar Format and Editors](prefaceB) for a more in-depth overview. However, a tutorial needs to have clear and consistent advice in order to be useful, so I will be recommending the programs that I personally use in my chart creation process, and assuming you will be using them throughout this tutorial.

Of course, since the TXT format is *portable*, you can use your own games or make edits with whatever software you please. Regardless, this guide will use the following tools and specifications:

- Game program/simulator: [UltraStar Deluxe](https://github.com/UltraStar-Deluxe/USDX)
    - Optional: [My Little Karaoke theme](https://github.com/barbeque-squared/usdx-mylittlekaraoke-theme)
- Audio conversion and manipulation: [ffmpeg](https://www.ffmpeg.org/)
- Initial chart creation ('tapping'): [UltraStar Creator](https://github.com/UltraStar-Deluxe/UltraStar-Creator)
- Chart finetuning: [Yass Reloaded](https://github.com/UltraStar-Deluxe/UltraStar-Creator)
    - Dependencies: [Java 21](https://www.azul.com/downloads/#zulu) (now included(?)), ffmpeg, [Aubio](https://aubio.org/download) (optional)
- UltraStar chart format specifications: **Spaces before words** and **v1.0.0** (for now)
    - The specific reasons for using v1.0.0 are described in [Preface B](prefaceB)
- Other tools that you might find useful: [yt-dlp](https://github.com/yt-dlp/yt-dlp), [LosslessCut](https://github.com/mifi/lossless-cut)

All of these tools should be **cross-platform**, but I do most of my work on Windows. At some point I may write a tutorial on installing these programs on Windows and macOS (I assume Linux users know what they are doing), but in the meantime you will just have to [ask for help](#if-you-need-help) if you are having any trouble.

## Guide overview

This guide is divided into several sections. The **prefaces** will cover the competitive karaoke / UltraStar ecosystem, while the rest of the guide will cover the actual song charting process. **If you have no idea what you are getting into, you may want to read the prefaces for background context**. Otherwise, you can skip to the **Part 1: Audio** for the actual tutorial, or to any other section if you want advice on specific aspects of song charting.

- [Preface A: What is Competitive Karaoke?](prefaceA)
    - Contents: What even is this; **competitive karaoke games/simulators**
- [Preface B: The UltraStar Format and Editors](prefaceB)
    - Contents: **How UltraStar TXT is parsed**; **format standardization efforts**; **UltraStar TXT editors**
- [Part 1: Audio](part01)
    - Contents: **Audio sourcing**; audio conversion
- [Part 2: Lyrics](part02)
    - Contents: **Acquiring lyrics**; **splitting lyrics into syllables**; sung syllables/pitch changes
- [Part 3: BPM](part03) 
    - Contents: **Finding the BPM**; verifying BPM; songs with multiple/variable BPMs
- [Part 4: Tapping](part04)
    - Contents: **Initial timing with UltraStar-Creator**
- [Part 5: Finetuning](part05)
    - Contents: **initial GAP**, **keyboard shortcuts**, note starts, note lengths, line breaks
- [Part 6: Pitching](part06)
    - Contents: MIDI note playback, relative pitch, AI(ML) assistance, **asking for help**
- [Part 7: Golden Notes](part07)
    - Contents: **Limits**, suggested placement, automatic placement
- [Part 8: Testing](part08)
    - Contents: **Why you should test**
- [Part 9: Submission](part09)
    - Contents: TXT distribution

## If you need help

If at any point you need help with anything on this guide -- a program isn't working, an instruction isn't clear, whatever -- you can contact me directly on Discord: `@horse.horsehorsehorsehorse.horse` or `@lilyshy` (either will work). For more general advice, I would recommend the wonderful folks over at the [UltraStar Vocaluxe & Performus Community](https://discord.gg/tNEXZw2QJX) (Discord). There, you can get live advice and support with your charts or any technical issues that may arise.

## Additional resources

To be moved to another section.

---

[>> Continue to Preface A: What is Competitive Karaoke?](prefaceA){ .md-button}

[>> Skip to Part 1: Audio](part01){ .md-button}

---

Quick navigation: **Index** / [Preface A](prefaceA) / [Preface B](prefaceB) / [Part 1: Audio](/part01) / [Part 2: Lyrics](part02) / [Part 3: BPM](part03) / [Part 4: Tapping](part04) / [Part 5: Finetuning](part05) / [Part 6: Pitching](part06) / [Part 7: Golden Notes](part07) / [Part 8: Testing](part08) / [Part 9: Submission](part09)