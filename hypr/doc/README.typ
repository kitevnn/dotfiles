#set page(numbering: "1")

#align(center, text(21pt, [*Hyprland setup steps*]))
#align(center, text(13pt, [kitevnn]))

= 1. Screenshot Preview

#figure(
    image("./1.png", width: 100%),     
    caption: "Screenshot Preview 1"
)

#figure(
    image("./2.png", width: 100%),     
    caption: "Screenshot Preview 2"
)

\

#pagebreak()


= 2. How to Setup?
== 2.1 File Structure
```bash
.
├── hyprland.conf
└── wallpaper
    └── HyprlandAnime.png

```

== 2.2 Installation
Use the following command to install it.
```bash
# git clone it.
git clone https://github.com/kitevnn/dotfiles

# setup configuration file
cd ~/.config/hypr

# and put the folder of hypr manually here 

# OK, done.
```

#pagebreak()

= 3. About Usage

== 3.1 Default Application

#align(center, text()[
  #table(columns: 3, align: left,
    [*num*], [*Description*], [*Default Application*],
    [1], [Terminal], [Konsole], 
    [2], [Launcher], [wofi], 
    [3], [Screenshot], [grim & slurp],
  )
])

== 3.2 Keybindings

TL;DR;

#align(center, text()[
  #table(columns: 4, align: left,
    [*num*], [*Keybindings*], [*Description*], [*Prerequisite*],
    [1], [SuperL + Enter], [Exec Konsole], [KDE plasma 5], 
    [2], [SuperL + O], [Exec Konsole], [KDE plasma 5],
    [3], [SuperL + X], [Kill a window], [],
    [4], [SuperL + Q], [Exit Hyprland wm], [],
    [5], [SuperL + T], [Toggle float], [],
    [6], [SuperL + N], [Toggle split], [],
    [7], [SuperL + F], [Full screen], [],
    [8], [SuperL + P], [pseudo], [],
    [9], [SuperL + B], [Exec firefox], [firefox],
    [10], [SuperL + M], [Exec wofi(drun)], [wofi], 
    [11], [SuperL + A], [Take a screenshot], [grim, slurp],
    [12], [SuperL + W], [Let's start resizing window \ - `left` for 10 units \ - `down` for 10 units \ - `up` for 10 units \ - `right` for 10 units \ \ Let's exit resizing window \ after pressing \ - `SuperL + W` again], [],
    [13], [SuperL + H], [Move focus left], [],
    [14], [SuperL + J], [Move focus down], [],
    [15], [SuperL + K], [Move focus up], [],
    [16], [SuperL + L], [Move focus right], [],
    [17], [SuperL + 1], [Reach workspace 1], [],
    [18], [SuperL + 2], [Reach workspace 2], [],
    [19], [SuperL + 3], [Reach workspace 3], [],
    [19], [SuperL + 4], [Reach workspace 4], [],
    [20], [SuperL + 5], [Reach workspace 5], [],
    [21], [SuperL + 6], [Reach workspace 6], [],
    [22], [SuperL + 7], [Reach workspace 7], [],
    [23], [SuperL + 8], [Reach workspace 8], [],
    [24], [SuperL + 9], [Reach workspace 9], [],
    [25], [SuperL + 0], [Reach workspace 10], [],
    [26], [SuperL + left], [Reach the prev available workspace], [],
    [27], [SuperL + right], [Reach the next available workspace], [],
    [28], [SuperL + Ctrl + 1], [Move a window to workspace 1], [],
    [29], [SuperL + Ctrl + 2], [Move a window to workspace 2], [],
    [30], [SuperL + Ctrl + 3], [Move a window to workspace 3], [],
    [31], [SuperL + Ctrl + 4], [Move a window to workspace 4], [],
    [32], [SuperL + Ctrl + 5], [Move a window to workspace 5], [],
    [33], [SuperL + Ctrl + 6], [Move a window to workspace 6], [],
    [34], [SuperL + Ctrl + 7], [Move a window to workspace 7], [],
    [35], [SuperL + Ctrl + 8], [Move a window to workspace 8], [],
    [36], [SuperL + Ctrl + 9], [Move a window to workspace 9], [],
    [37], [SuperL + Ctrl + 0], [Move a window to workspace 10], [],
    [38], [SuperL + Ctrl + left], [Move a window to prev workspace], [],
    [39], [SuperL + Ctrl + right], [Move a window to next workspace], [],
    [40], [SuperL + S], [Toggle special-temporary workspace], [],
    [41], [SuperL + Shift + S], [Move to workspace], [],
    [42], [SuperL + mouse_wheel_down], [Reach the next available workspace], [],
    [43], [SuperL + mouse_wheel_up], [Reach the prev available workspace], [],
    [44], [SuperL + mouse_left_button], [Drag and change the postition of a window], [],
    [45], [SuperL + mouse_right_button], [Change the size of a window], [],
    [46], [VolumeRaiseKey], [Increase 5% volume_level], [Where this key \ is located \ will depend on \ the layout of \ the function area \ of your keyboard],
    [47], [VolumeLowerKey], [Subtract 5% volume_level], [Where this key \ is located \ will depend on \ the layout of \ the function area \ of your keyboard],
    [48], [VolumeMuteKey], [Mute volume_level temporarily], [Where this key \ is located \ will depend on \ the layout of \ the function area \ of your keyboard],
  )
])

#pagebreak()

= 4. PostScript

PostScript
- This is my first repository submission on github, and I hope you could understand properly if there is anything unfriendly to you. I'm sorry.

Happy Use！\__(:з」∠)_\_

