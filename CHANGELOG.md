## Version 4.1i Changelog

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
