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
