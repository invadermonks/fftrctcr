# FINAL FANTASY TACTICS Rumble: Chaos: >>The Crashdown<< REMAKE

**Version:** 4.05i  
**Date:** August 10, 2024  
**URL:** [Latest Release](https://github.com/invadermonks/fftrctcr/releases/latest)

## How to Use

### WINDOWS:

Place a copy of the FFT disc image named fft.bin in the same folder as `fftrctcr.exe` and `create_seed_fftrctcr.bat` and run the bat script. `create_seed_fftrctcr.bat` is a script that will prompt you for difficulty and randomness values and will generate a randomizer seed with default options, edit this script with your preferred settings.

Run the executable file, `fftrctcr.exe`. If you are on an older version of Windows, you might need to update to run the executable. Follow the instructions [here](https://support.microsoft.com/en-us/help/2999226/update-for-universal-c-runtime-in-windows).

If that doesn't work, you can also install Python 3 from [Python.org](https://www.python.org/downloads/windows/) and follow the instructions below.

To build, run `pyinstaller randomizer.spec` and copy the generated `fftrctcr.exe` file from the dist/ directory and deploy it alongside the custom/ directory.

### LINUX, MAC, AND OTHER:

Download the source zip and run `randomizer.py` using Python 3. This is different from before! Python 2 won't work anymore.

## Options

### FLAGS:

The randomizer has the following flags:

- `a` Randomize abilities.
- `c` Randomize battle music.
- `f` Randomize enemy and ally formations.
- `i` Randomize job innates.
- `j` Randomize job stats.
- `p` Randomize shop item availability.
- `m` Randomize custom maps.
- `r` Randomize job requirements.
- `s` Randomize job skillsets.
- `t` Randomize trophies, poaches, move-find items.
- `u` Randomize enemy and ally units.
- `w` Randomize weapon and item stats.
- `y` Randomize ability/weapon status effects and procs.

Not all flag combinations have been tested yet; if you want a specific flag combination and it doesn't work, let me know.

### CODES:

Secret codes are entered along with flags. The following codes are available:

- `partyparty` Randomize unit sprites, including files in the `custom/sprites` directory. Sprites can be randomized based on tags. See `custom/sprites/tags.txt`
- `bigtide` Include _all_ battle events in the map randomization pool. Highly experimental.
- `novanilla` Whenever possible, avoid using vanilla assets.
- `easymodo` Nerf all enemies to the minimum possible stat values.

### RANDOMNESS:

The randomizer will prompt you to enter a "randomness" value. This is a value between 0 and 1, and the default recommended value is 0.5. Increasing this value increases the variance in the different decisions that the randomizer makes. For example, with a value of 1.0 you could obtain a Chaos Blade as a drop from the first encounter, but the enemy levels might be anywhere from 1 to 99. You can choose different values for different categories by typing "custom" instead of a number.

### DIFFICULTY:

This is a multiplier that mainly affects enemy (and especially boss) stats. It can be anything from 0 to infinity, but the default recommended value is 1. If you're familiar with the Chaos value from FFT RCC, the scale is a little bit different. 1.0 difficulty in RCTCR is easier than 1.0 chaos in RCC - it's very close to vanilla FFT's difficulty level. 1.5 difficulty is approximately equal to 1.5 chaos in RCC (or at least, that is the intent).

### MAPS:

The `m` flag enables custom maps. However, these maps are stored externally in the `custom/maps` directory. You can add or remove maps to the randomization pool by moving the files to and from this directory. Map editing is a growing part of the FFT modding community and new tools are being developed even now. I encourage you to visit [ArmoredKori's Twitch](https://www.twitch.tv/armoredkori) and watch his map editing streams; he provided the alternate map pack for this release of the randomizer, so be sure to show your support.

### PATCHES:

There are two kinds of patches, built-ins and XML patches. The randomizer will prompt you to select built-in patches; it is recommended to accept them all. XML patches are selected by editing the `patches.cfg` file in the `custom/xml_patches` directory. The patches that are enabled by default in `patches.cfg` are also recommended.

## Why Is It Different?

I'd always been planning to rewrite FFT RCC while porting it to Python 3. I thought that I could make it cleaner, more maintainable. For the most part, I failed. The original RCC is 5,374 lines of code. As of this writing, RCTCR is 5,320, and counting. Whoops! But the happy consequence of this rewrite is that I've refreshed on my memory on a lot of aspects of the randomizer, and I've laid the groundwork for more features in the future. The unhappy consequence is that a lot of things are probably broken, and a lot of old errors might have resurfaced, and it will take some time to stabilize again. Please bear with me. In my esteemed opinion, the changes are worth it.

## Credits

### Code & Asset Contributors:

- Abyssonym - Original branch of fftrctcr [GitHub](https://github.com/abyssonym/fftrctcr) | [Twitter](https://twitter.com/abyssonym)
- ArmoredKori - Alternate map pack
- Koboko - Custom maps
- Ryason55 - Status effect and stat randomization on weapons & abilities

The custom sprites were retrieved from the ffhacktics.com public downloads page. For a full list of sprites credits, see `custom/sprites/credits.txt`.

### Special Thanks:

- Deranged_Squirrel_Fighter
- Quikdraw7777
- Remanuzo
- SweetCherryBoyJP
