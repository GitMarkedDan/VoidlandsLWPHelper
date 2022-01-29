# VoidlandsLWPHelper
Assistant for the Lava Water and Purple IC in Voidlands, beacause that IC kinda sucks
## Usage
This thing was built to help with the spinners part in voidlands. If you're like me and hate anything timing based, you can rely on this to know when it's safe or unsafe to minimize.

Also keep in mind, this won't make you instantly beat the LWP ic. It's just a visual assitant, it'll help you, but in the end the only thing you can rely on is your own skill.
### How do I sync it?
In order to use this thing, you have to sync it up with the spinners in-game. There's a few ways of doing this, but I recommend:
1. Reach the part with the spinners.
2. Pause and look at the configuration of the first two spinners. (Best to do this when either of the bars are fully vertical/horizontal)
3. Match the rotation of the simulated spinners with the ones in game.
4. All of the other spinners are now synced up!
### What do the colors mean?
- Purple = Safe
- Orange = X Seconds till unsafe (can be changed, default is 0.75)
- Red = Unsafe
(Also if it isnt obvious the white ball is a representation of the player's collision)
### Extra info or smth
- The spinners all vertically sync at every 4 * pi seconds after the level transition ends.
- There's an extra timer for recommend crossing time from the 4th to the 5th.
- This wasn't built for me to publicly release it, it's just that I realized that this might help ppl, so i just went with it.
## Controls
- L  resets all the spinners into their default state.
- O does the same as L, but after 0.3 seconds.
- P / ~ (or whatever ~ is on your keyboard) pauses the spinners.
#### Rest of these are ordered respectively
- The left/right arrow keys slowly rotates the spinners counter-clockwise/clockwise.
- A / D rotates the spinners counter-clockwise/clockwise, but faster.
- The up/down arrow keys increases/decreases the warning delay of the spinners (You can't hold this down.)
- W / S increases/decreases the warning delay of the spinners (You can hold this down.)
## Installation
### The Two Versions
In every release, you will see two files, one ending with .love and another .zip . The difference between these two files is that the .zip version comes bundled with a version of Love2d (what this thing was made with), but the .love version requires you to head to download the latest version of Love2d. The choice is entirely subjective, each version has their own ups and downs, but it doesn't really matter that much. Either way it's roughly 4MB (most of it being Love2d.)

### Actually Installing it
#### .zip
Simply download the zip file, unzip it wherever you want, and run the .exe file.

#### .love
Head to the [Love2d Website](https://love2d.org/) and download the latest version (I recommend using the installer, but you do you.) Once it's installed, right click the file, click open with, and navigate to your love2d directory and choose love (also if you don't check "Always open use this app to open .love" you are stupid)

Ok look you probably can figure this stuff out but im tryina cover all cases here

## Version info
The versions are sorted like this
v(love version).(still love version).(current version / nothing)