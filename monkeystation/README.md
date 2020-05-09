# Introduction to the "MonkeyStation" Folder

## What it is

This directory exists to house custom code changes that can be properly seperated from the codebase and placed here. All files that can be placed here should. The less code in any folder that isn't this one, the fewer conflicts will exist in future updates. Concept and readme shamelessly stolen from Hippiestation, WaspStation, Austation, NSV13, Yog(?), and many others.

## What it means to modularize

Something is modular when it exists independent from the rest of the code. This means that by simply adding something modular to the DME file, it will exist in-game. It is not always possible to completely modularize something, but if standards are followed correctly, then there should be few to no conflicts with BeeStation in the future.

## How to stay modularized

- Single line changes should have `// MonkeyStation Edit -- reason` at the end of the exact line that was edited
- Multi line changes start with `// MonkeyStation Start -- reason` and end with `// MonkeyStation end`. The reason MUST be included in the change in all cases, so that future coders looking at the line will know why it is needed.
- The reason should generally be about what it was before, or what the change is.
- Commenting out some BeeStation code must be done by putting `/* MonkeyStation start -- reason` one line before the commented out code, with said line having only the comment itself, and `MonkeyStation end */` one line after the commented out code, always in an empty line.
- Some examples:

```dm
var/obj/O = new(monkeystation) // MonkeyStation -- added argument monkeystation to new
```

```dm
/* MonkeyStation start -- mirrored in our file
/proc/del_everything
 del(world)
 del(O)
 del(everything)
MonkeyStation end */
```

### Icons, code, and sounds

Icons are notorious for conflicts. Because of this, **ALL NEW ICONS** must go in the "MonkeyStation/icons" folder. There are to be no exceptions to this rule. Sounds don't cause conflicts, but for the sake of organization they are to go in the "MonkeyStation/sounds" folder. No exceptions, either. Unless absolutely necessary, code should go in the "MonkeyStation/code" folder. Small changes outside of the folder should be done with "hook" procs. Larger changes should simply mirror the file in the "MonkeyStation/code" folder.

If a multiline addition needs to be made outside of the "MonkeyStation" folder, then it should be done by adding a proc called "hook" proc. This proc will be defined inside of the "MonkeyStation" folder. By doing this, a large number of things can be done by adding just one line of code outside of the folder! If possible, also add a comment in the wasp file pointing at the file and proc where the "hook" proc is called, it can be helpful during upstream merges and such.

If a file must be completely changed, re-create it with the changes inside of the "MonkeyStation/code" folder. **Make sure to follow the file's path correctly** (i.e. code/modules/clothing/clothing.dm.) Then, remove the original file from the monkeystation.dme and add the new one.

### Defines

Defines only work if they come before the code in which they are used. Because of this, please put all defines in the `code/__DEFINES/~MonkeyStation_defines' path. Use an existing file, or create a new one if necessary.

