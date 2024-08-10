# TODO: Reversed X/Y on NOGIAS in log, check vanilla move finds

# fix stage highlights with new GaneshaDX

# check golgorand entd

#

## Version 4.05i Changelog

### Features

- The poison grenade Balk throws at the party before the Bed Desert fight is now randomized

### Quality of Life

- The chance of receiving the rare item from Poach has been increased from 12.5% to 50%
- The Deep Dungeon maps are now always lit
- Move-Find Item and Secret Hunt are now guaranteed to be on a generic class skillset
- Chemist is now guaranteed to have Phoenix Down on their ability list
- Seed generation script `create_seed_fftrctcr.bat` has been updated to prompt for settings and to retry on failure

### Bug Fixes

- Capped ability mp cost at 99 since FFT cannot display mp costs above 99
- Oil now properly multiplies received fire damage by 2x (this was a vanilla FFT bug fixed in the PSP version)
- The AI will use Protect/Shell when above 50% health now
- The AI now treats Throw Item range as 4 instead of their MV value
- The AI now properly accounts for skills that inherit the equipped weapon element

### Balancing

- Set a minimum value for lucavi level based on difficulty value when difficulty value is > 1.0 (Altima 2 will always be level 99 at difficulty >= 5.0)

## Version 4.04i Changelog

### Bug Fixes

- Fixed a bug with ENTD generation to leave the "Always Present" and "Randomly Present" flags set if that's what their vanilla values were.

### Balancing

- Set a minimum value for lucavi health based on difficulty value when difficulty value is > 1.0 (Altima 2 will have an HP multiplier of 255 and growth of 1 at difficulty > 5.0)

## Version 4.03i Changelog

### Bug Fixes

- Fixed a bug with capping jp at 3000 that was causing abilities with lower vanilla values to be randomized to much higher values.

## Version 4.02i Changelog

### Misc

- Added an xml_patch to merge Support and Movement abilities to allow for more customization. Now you can do things like equip Move+3 and Move-Find Item, or Equip Sword and Non-Charge. (default xml_patches can be easily removed by commending them out with a '\#' in custom/xml_patches/patches.cfg)

## Version 4.01i Changelog

### JP Changes

- Modified JP Cost for abilities to cap at 3000.
- Increased JP gain multiplier from 2x to 4x.

### Spoiler Changes

- Added Move-Find Items.
- Removed star ratings for Job stat growth (GROW) and stat multipliers (BASE) and replaced them with raw values (big numbers are good for BASE, small numbers are good for GROW).

### Bug Fixes

- Fixed a bug with ENTD generation that was causing many enemies to be flagged as both "Always Present" and "Randomly Present," which caused them to never spawn. The result of this change is that random battles will have more named NPCs on the enemy team (who often have "Join After Battle" flagged).
- Added xml_patches that fix AI behavior to cast shell/protect when above 50% and properly throw items.

### Quality of Life

- Added xml_patches to disable Brave/Faith leave warnings and to default to Continue on the main menu.

### Misc

- Added an xml_patch to always give monsters access to their fourth ability slot. This makes combats on average a bit more interesting and challenging.
- Changed starting status restrictions to remove most incapacitating statuses (anything that was banned to be an innate is now banned from being a starting status as well: no sleep, don't act, stop etc.)
- Set "Learnable with JP" flag for all abilities so Zodiac and Ultima will be more relevant
