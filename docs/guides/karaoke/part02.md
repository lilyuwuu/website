# Part 2: Lyrics

!!! tldr "TL;DR"

    1. Find the song lyrics. Common sources are YouTube video descriptions, comments, artist Bandcamp pages, and online lyric sites (e.g. Genius).
        + If you're using Genius, make sure to account for the "things you may like" box and for non-traditional spaces, which may mess with UltraStar-Creator.
        + You should listen to the song at least once to account for lyric repeats (which may not be in the lyrics) and for any mistakes (i.e. inconsistencies between the lyrics and what you hear).
    1. Split the song lyrics into syllables. Song syllables usually follow the same rules as English syllables, but artists can be creative and disregard them.
        + For this reason, I usually split syllables manually, even though dictionary-based tools exist to automatically split syllables.
    1. Split the syllables into sung syllables, accounting for pitch changes. 
        + This is technically optional, as you can do this during the finetuning process. However, I recommend doing it now because it saves time later on.
        + You can do this at the same time as you split syllables. See my [video](https://www.youtube.com/watch?v=HKY-hwKxJzk) as an example.

## Finding lyrics

The next step to creating a chart is to get the **lyrics** of the chart. Usually, lyrics are available on websites like Genius, or in the YouTube comments section of videos.

Wherever you get your lyrics, you should listen through the song once or twice and make sure they are **correct**. An issue I've seen with some UltraStar charts is people seemingly writing the lyrics on their own and subsequently getting them wrong -- **avoid this**. It is completely normal, even if you are very proficient in the language of the song you're trying to chart, to be unable to make out the lyrics. If someone's already done the work of figuring out the lyrics for you, and those lyrics make sense to your hear, then use those.

??? tip "If your song of choice is CJK (Chinese, Japanese, Korean)"

    Most songs that we deal with are in English or will use Roman characters (i.e., the alphabet, sometimes with diacritics/accents). If the song you would like to chart is in Chinese, Japanese, or Korean, you can theoretically choose between romanizing the lyrics or using the native script.

    While most programs can *display* non-Roman alphabet characters perfectily fine, the main problem with native script arises in Japanese, where one kanji -- for example, 男 (otoko) can have *multiple* syllables embedded (o+to+ko). Due to how the UltraStar format works, you cannot have a syllable display 男 and then have that single syllable drag on across multiple notes. You would have to use 男~~ to display this, or just use kana (お / と / こ).

    This is less of a problem in Chinese, since the vast majority of characters are one syllable. Here is an [example TXT](/resources/karaoke/caihongmofa.txt), which uses [this song](https://www.youtube.com/watch?v=NRsHOeV5kQg). (You may have to [repair the text encoding](https://support.mozilla.org/en-US/kb/text-encoding-no-longer-available-firefox-menu) before saving this TXT.)
    Of course, if you want to chart one of these songs *but* your intended audience is an English (or any other Roman alphabet language) speaking audience, you should use romanization anyway. But I just wanted to flag this as useful information for anyone making a CJK song.
    
!!! warning "About lyrics from Genius"

    **Genius** is one of the most common websites for song lyrics these days, but it comes with some caveats that you should be aware of.

    - Genius puts a "things you may like" box in the middle of song lyrics which will basically be impossible to avoid copy pasting. Make sure to remove it before you start tapping the song.
    - For whatever reason, Genius doesn't always use normal spaces to separate words. I've sometimes seen Genius include other Unicode spaces that look identical to spaces, but might not be properly parsed by UltraStar-Creator -- for example, the [four-per-em space](https://unicode-explorer.com/c/2005). You may want to put your text into a [Unicode inspector](https://apps.timwhitlock.info/unicode/inspect) to ensure that all of the spaces in the lyrics are actually spaces.

Conveniently, the artists of the song put the lyrics on their [Bandcamp page](https://princewhateverer.bandcamp.com/track/not-the-same), so I'll be using that. There are some small changes -- for example, repetition of lyrics -- that I'll have to make in order to have the full lyrics. In my experience, this is common in artist-published lyrics, which is why you should **always** listen to the song at least once to correct any possible mistakes and account for any repetitions.

Another bonus: when you find lyrics yourself, you usually don't have to figure out where line breaks go. In this case, I might only barely touch the line breaks go for stylistic reasons. You will probably only have to touch line breaks (i.e. add them yourself) if you get a very long line of lyrics. Some editors, like Yass Reloaded, will warn you if a line is too long.

!!! tip "About punctuation and paragraph breaks"

    Songs sometimes include punctuation in lyrics. The ones that I would like to highlight are **question marks, exclamation points, and periods/full-stops**.

    Generally speaking, you should **not include** these punctuation in the song. This is mainly a stylistic choice, and there may be songs where punctuation is appropriate. I also generally keep punctuation in if there is a spoken dialogue part in the song.

    Paragraph breaks are useful for *your own* readability. For example, when you copy paste lyrics from Google, paragraph breaks are lost, making the lyrics and individual sections harder to read or dinstinguish. However, they don't actually have any impact on the chart. Only line breaks do, since karaoke is shown two lines at a time (the current line being sung and the upcoming line).

??? quote "Bandcamp lyrics, modified to include repeats and missing words"

    Thought I ran into you in Ponyville<br>
    Some other mare in black sat on our hill<br>
    I made a point to remember the way you laugh<br>
    Since you're not here it feels like I'm stuck in the past<br>
    Life's getting better but I can't seem to move on<br>
    Things aren't the same since you've been gone

    Seems like the princess took your words to heart<br>
    Wish it didn't cost me the mare I love<br>
    I made a point to remember the way you laugh<br>
    Since you're not here it feels like I'm stuck in the past<br>
    Life's getting better but I can't seem to move on<br>
    Things aren't the same since you've been gone

    Words we'd say, gone away<br>
    It feels like it was yesterday

    Words we'd say, gone away<br>
    It feels like it was yesterday

    Nostalgia<br>
    It circles in my mind<br>
    She's in my head<br>
    I'm not the same

    Nostalgia<br>
    It circles in my mind<br>
    She's in my head<br>
    Like yesterday

    And when the clock strikes twelve<br>
    I sit in darkness by myself<br>
    Wish I could turn back time<br>
    Relive the days when you were mine

Throughout this page, I will use the **first six lines** as example points. An audio excerpt is embedded below:

<audio controls>
  <source src="/resources/karaoke/not-the-same-main.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

## Splitting lyrics: normal syllables

!!! question "Automatic lyric splitting"

    UltraStar-Creator offers a feature to automatically split lyrics for you. While you may find this convenient, I personally don't use it. Here's why:

    - The songs I chart often contain words that won't be in the lyric-split dictionary -- for example, "everypony".
    - While words *often* have an objective answer as to how they should be split into syllables, **this isn't always the case**. Singers can and will be creative.
    - Any mistakes that automatic lyric splitting may create will have to be rectified by you anyway, so it's kind of a net zero in time saved, in my opinion.
The next step is to split the lyrics into normal **syllables**. Singing is similar to talking, so *usually* the principles of spoken syllables also apply to sung words.

This concept may already be intuitive to you, but in case it isn't: A syllable is often described as a 'beat' in language, generally made up of a vowel and its surrounding consonants. Let's examine the first six lines:

    Thought I ran into you in Ponyville
    Some other mare in black sat on our hill
    I made a point to remember the way you laugh
    Since you're not here it feels like I'm stuck in the past
    Life's getting better but I can't seem to move on
    Things aren't the same since you've been gone

For our purposes, words are separated either by **spaces** or by the **plus symbol** (+). For example, the sentence "Hel+lo world" will be split into three syllables: Hel, lo, and world.

When splitting lyrics, you might need to ask yourself: "if I were to say it out loud, what would it sound like?". This is doubly true for words you might not be familiar with, like, in this case, "Ponyville". **I would recommend listening to the song as you split syllables**, just in case the artist decided to be a little creative with how they sang their syllables.

Here is how I would initially split these lines:

??? info "First six lines split by syllable"

    Thought I ran in+to you in Po+ny+ville<br>
    Some o+ther mare in black sat on our hill<br>
    I made a point to re+mem+ber the way you laugh<br>
    Since you're not here it feels like I'm stuck in the past<br>
    Life's get+ting bet+ter but I can't seem to move on<br>
    Things aren't the same since you've been gone

If you want, you can stop here, but I would recommend later splitting this into **sung syllables** / **pitch changes**. This will save time later on!

## Splitting lyrics: sung syllables and pitch changes

Let's examine this section by section.

### Thought I ran into you in Ponyville

*Line 1*
<audio controls>
  <source src="/resources/karaoke/not-the-same-line1.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

Most of this line is pretty self-explanatory. `Thought`, `I`, `ran`, `you`, and `in` are all one syllable. `into` is two syllables, but that is the same as it would be if you spoke it.

Most of the 'flair' in this line comes from the word `Ponyville`. Intuitively, it would be three syllables (`Po+ny+ville`), but if you listen to the excerpt:

*Ponyville*
<audio controls>
  <source src="/resources/karaoke/not-the-same-ponyville.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

Both `Po` and `ny` seem to have a pitch change! The `Po` goes down from C# to B, while `ny` goes down from B to F#. Players will have to sing this -- they can't just stay on the C# or the B (well, they could, but it wouldn't be accurate), so it should be notated in the chart. Usually, people use **tildes** to drag out syllables that have their pitch change midway. So, this word would look like this:

`Po+~+ny+~+ville`

And the full line would look like this:

`Thought I ran in+to you in Po+~+ny+~+ville`

### Some other mare in black sat on our hill

*Line 2*
<audio controls>
  <source src="/resources/karaoke/not-the-same-line2.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

While the words are different, **this line is actually pretty similar to the first line**! `Some other mare in black sat` is the same as it would be spoken (that is, every word is one syllable except for `o+ther`, which is two), but the words "on" and "our" have one pitch change each. Incidentally, it's the exact same pitch change as the last line, since this line is melodically a clone of the last line. Compare them side by side:

*On our hill*
<audio controls>
  <source src="/resources/karaoke/not-the-same-on-our-hill.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

*Ponyville*
<audio controls>
  <source src="/resources/karaoke/not-the-same-ponyville.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>


So, just like the last line, we can use tildes to notate that we're staying on the syllable, but moving to a different pitch.

`on+~ our+~ hill`

And, in full:

`Some o+ther mare in black sat on+~ our+~ hill`

!!! info "Alternate lyric styles"

    Some people choose to instead use **hyphens** and/or **duplicate letters** to separate dragged out words. So, instead of `on+~ our+~`, it would be `o-on o-our`, or alternatively `o+~n o+~ur`. This choice is purely stylistic and has no bearing on the gameplay quality of the chart.

    On older versions of UltraStar-Creator, you may have to use `+-` instead of `-`, as `-` by itself is not recognised as a syllable separator. In that case, you would write `o+-on o+-our`.

### I made a point to remember the way you laugh

*Line 3*
<audio controls>
  <source src="/resources/karaoke/not-the-same-line3.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

I hope the idea of sung syllables is becoming a bit clearer by now. If not, don't worry -- it's something that takes practice, and you don't necessarily have to do this at the lyric splitting stage. If you miss a more subtle syllable change, **you can always add it later on** *after* you've tapped the song. The main point of doing it now is that you **save time** because you don't have to split the note and then shorten both notes and move the new note to a new position if you have already tapped it out in advance.

On this line, the `ber` in `re+mem+ber` has a pitch change, as does the word `laugh`, which goes down a tone at the end.

`I made a point to re+mem+ber+~ the way you laugh+~`

You could also notate the `laugh+~` as `la-augh`, if you want.

### Since you're not here it feels like I'm stuck in the past

*Line 4*
<audio controls>
  <source src="/resources/karaoke/not-the-same-line4.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

`Since you're not here it feels like I'm+~ stuck in the past+~`

- Alternatives: `I-I'm`, `pa-ast`

### Life's getting better but I can't seem to move on

*Line 5*
<audio controls>
  <source src="/resources/karaoke/not-the-same-line5.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(

`Life's get+ting bet+ter but I can't+~ seem to move on+~`

It might help to play the audio and then mentally 'tap' out a syllable every time there's a new word or you see the + symbol.

- Alternatives: `ca-an't`, `o-on`
</audio>

### Things aren't the same since you've been gone

*Line 6*
<audio controls>
  <source src="/resources/karaoke/not-the-same-line6.mp3" type="audio/mpeg">
Your browser doesn't support embedded audio :(
</audio>

There are actually no changes on this line! No mid-syllable pitch changes, and every word is one syllable. So you can actually just use this line verbatim.

`Things aren't the same since you've been gone`

## Result

Let's combine everything we did here and see what we get:

    Thought I ran in+to you in Po+~+ny+~+ville
    Some o+ther mare in black sat on+~ our+~ hill
    I made a point to re+mem+ber+~ the way you laugh+~
    Since you're not here, it feels like I'm+~ stuck in the past+~
    Life's get+ting bet+ter but I can't+~ seem to move on+~
    Things aren't the same since you've been gone

And now, let's extend that out to the whole song:

??? quote "Lyrics split for syllables and pitch changes"

    Thought I ran in+to you in Po+\~+ny+~+ville<br>
    Some o+ther mare in black sat on+~ our+~ hill<br>
    I made a point to re+mem+ber+~ the way you laugh+~<br>
    Since you're not here, it feels like I'm+~ stuck in the past+~<br>
    Life's get+ting bet+ter but I can't+~ seem to move on+~<br>
    Things aren't the same since you've been gone

    Seems like the prin+cess took your words to+~ heart<br>
    Wish it di+dn't cost me the mare+~ I+~ love<br>
    I made a point to re+mem+ber+~ the way you laugh+~<br>
    Since you're not here, it feels like I'm+~ stuck in the past+~<br>
    Life's get+ting bet+ter but I can't seem+~ to move on+~<br>
    Things aren't the same since you've been gone<br>

    Words we'd say<br>
    Gone a+way<br>
    It feels like it was yes+ter+day+~

    Words we'd say<br>
    Gone a+way<br>
    It feels like it was yes+ter+day+~

    Nos+tal+gia<br>
    It cir+cles in my mind<br>
    She's in my head<br>
    I'm not the same+~

    Nos+tal+gia<br>
    It cir+cles in my mind<br>
    She's in my head<br>
    Like yes+ter+day+~

    And when the clock strikes twelve<br>
    I sit in dark+ness by my+self+~<br>
    Wish I could turn back time<br>
    Re+live the days when you were mine+~

??? quote "How those lyrics would look in-game"

    Thought I ran into you in Po\~ny~ville<br>
    Some other mare in black sat on~ our~ hill<br>
    I made a point to remember~ the way you laugh~<br>
    Since you're not here, it feels like I'm~ stuck in the past~<br>
    Life's getting better but I can't seem+~ to move on~<br>
    Things aren't the same since you've been gone

    Seems like the princess took your words to~ heart<br>
    Wish it didn't cost me the mare~ I~ love<br>
    I made a point to remember~ the way you laugh~<br>
    Since you're not here, it feels like I'm~ stuck in the past~<br>
    Life's getting better but I can't~ seem to move on~<br>
    Things aren't the same since you've been gone<br>

    Words we'd say<br>
    Gone away<br>
    It feels like it was yesterday~

    Words we'd say<br>
    Gone away<br>
    It feels like it was yesterday~

    Nostalgia<br>
    It circles in my mind<br>
    She's in my head<br>
    I'm not the same~

    Nostalgia<br>
    It circles in my mind<br>
    She's in my head<br>
    Like yesterday~

    And when the clock strikes twelve<br>
    I sit in darkness by myself~<br>
    Wish I could turn back time<br>
    Relive the days when you were mine~

??? question "A new line break, for the astute"

    If you were reading every lyric carefully, you may have noticed a new line break was added between `Words we'd say` and `Gone away`. This was a stylistic choice that I personally felt aligned better with the song, since there is an audible gap between "Words we'd say" and "Gone away". Line breaks are entirely subjective, and as long as you're giving singers time to catch up to the lyrics, they're entirely up to you!

For reference, I have recorded a video of me splitting the lyrics in real time, which you can see below. I hope it helps illustrate how I do this part.

??? example "UltraStar Song Creation Tutorial: Lyric Splitting example"

    <iframe width="560" height="315" src="https://www.youtube.com/embed/HKY-hwKxJzk?si=oIDTWaoryDOO1bOC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Next steps

Once your lyrics are split, you're ready to figure out the BPM of the song!

---

[<< Back to Part 1: Lyrics](../part01){ .md-button}
[>> Continue to Part 3: BPM](../part03){ .md-button}

---

Quick navigation: [Index](..) / [Preface A](../prefaceA) / [Preface B](../prefaceB) / [Part 1: Audio](../part01) / **Part 2: Lyrics** / [Part 3: BPM](../part03) / [Part 4: Tapping](../part04) / [Part 5: Finetuning](../part05) / [Part 6: Pitching](../part06) / [Part 7: Golden Notes](../part07) / [Part 8: Testing](../part08)
