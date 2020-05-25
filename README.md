# pseudo-scratchpad
A quick and dirty implementation of the i3wm scratchpad in xfce

![](pseudo-scratchpad.gif)

## But why ? 
I recently switched from [i3wm](https://i3wm.org/) to [xfce](https://xfce.org/) and while I really like the more user-friendly environment with less tinkering, I missed one special feature of [i3wm](https://i3wm.org) - [the scratchpad](https://i3wm.org/docs/userguide.html#_scratchpad).

So I decided to make my own version of it for xfce. The most important part of this solution was taken from this [answer](https://stackoverflow.com/a/26840274) by [funivan](https://stackoverflow.com/users/4053996/funivan) from stackoverflow. 

## How it works
This repository contains two scripts `toggle_window.sh` and `is_toggled.sh`. You can bind the first script to any keybinding you like and it will 'toggle' the currently active window. The second script only checks if a window is toggled and will output a [](https://fontawesome.com/icons/terminal?style=solid) glyph or nothing.

As I did want to have an indication if a window is currently toggled, I used the `xfce4-genmon-plugin` for the `xfce4-panel` to check that peridoically using the second script - not the smartest idea. But hey, if it works, it works... The CPU usage is not of much concern for me and I like the extra eye-candy. Of course you can skip this step entirely and check if a window is toggled by just using your keybinding and see what happens ;)

Currently this solution only supports to toggle one window - aka move it to the scratchpad. And as I'm mainly using it for a scratch terminal I used the terminal glyph as an indicator. 

## Packages Needed 
* `xdotool`
* `xfce4-panel`
* `xfce4-genmon-plugin`
