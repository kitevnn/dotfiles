#set page(numbering: "1")

#align(center, text(21pt, [*Tmux setup steps*]))
#align(center, text(13pt, [kitevnn]))

= 1. Screenshot Preview

#figure(
    image("./1.png", width: 100%),
    caption: "Screenshot Preview 1"
)

#pagebreak()

= 2. How to Setup?

== 2.1 File Structure
```bash
.
└── .tmux.conf
```

== 2.2 Installation

Well, use the following command to install it.
```bash
# instasll tmux via zypper
# 
# S  | Name              | Summary                       | Type
# ---+-------------------+-------------------------------+---------
# i+ | tmux              | Terminal multiplexer          | Package
zypper in tmux  # zypper install with sudo permission.

# git clone it.
git clone https://github.com/kitevnn/dotfiles

# setup configuration file
cd $home

# and put .tmux.conf file manually here 
```

Then, there is a *three-step* process here.

- First of all, install #link("https://github.com/tmux-plugins/tpm")[#text(fill: rgb("2e8b57"), [tmux-plugins/tpm])] is our primary goal.

- Then, COPY and PASTE this `.tmux.conf` into your `$HOME` (Remember to make a backup of your profile)

- Then, open tmux with your favorite terminal, Type `prefixkey + I` to install further tpm-plugins

  + Next, you may see a message like this, we just have to "sit and relax".

    ```bash
    Already installed "tpm"
    Already installed "tmux-sensible"
    Already installed "tmux-prefix-highlight"
    Already installed "tmux-battery"
    Already installed "tmux-cpu"
    
    TMUX environment reloaded.

    Done, press Enter to continue.
    ```
  
OK, done!

#pagebreak()

= 3. About Usage

== 3.1 Prefix key

I set this `tmux prefixkey` to `Ctrl+S`.

In a word, we need press `Ctrl+S` first when you want to exec some bind key.

Then press other key later.

\

== 3.2 Keybindings
TL;DR;
#align(center, text()[
  #table(columns: 4, align: left,
    [*num*], [*Prefix key*], [*Keybindings*], [*Description*],
    [1], [Press directly please], [Alt j], [Go to NEXT tab],
    [2], [Press directly please], [Alt k], [Go to PREV tab],
    [3], [Press directly please], [Alt 1], [Go to tab 1],
    [4], [Press directly please], [Alt 2], [Go to tab 2],
    [5], [Press directly please], [Alt 3], [Go to tab 3],
    [6], [Press directly please], [Alt 4], [Go to tab 4],
    [7], [Press directly please], [Alt 5], [Go to tab 5],
    [8], [Press directly please], [Alt 6], [Go to tab 6],
    [9], [Press directly please], [Alt 7], [Go to tab 7],
    [10], [Press directly please], [Alt 8], [Go to tab 8],
    [11], [Press directly please], [Alt 9], [Go to tab 9],
    [11], [Press directly please], [Alt x], [Close a new tab],
    [12], [Press directly please], [Alt n], [Open a new tab],
    [13], [Press directly please], [Alt p], [Enter that copy-mode \ with key style of vi-mode \ - v: toggle visual mode \ - Ctrl v: toggle visual block mode \ - y: copy],
    [14], [Ctrl S], [p], [Paste the content of copy-mode \ - it needs `Alt p` to enter copy-mode first],
    [15], [Ctrl S], [Alt h], [Split a screen left],
    [16], [Ctrl S], [Alt j], [Split a screen down],
    [17], [Ctrl S], [Alt k], [Split a screen up],
    [18], [Ctrl S], [Alt l], [Split a screen right],
    [19], [Ctrl S], [left], [Adjust the size of screen left(continuously)],
    [20], [Ctrl S], [down], [Adjust the size of screen down(continuously)],
    [21], [Ctrl S], [up], [Adjust the size of screen up(continuously)],
    [22], [Ctrl S], [right], [Adjust the size of screen right(continuously)],
  )
])

#pagebreak()

= 4. Known Issue

== 3.1 Unable to display git status icon.
I don't know why, this plugin doesn't install on my own via tpm. 
But if you want to install the status icon, you can replace it with this line of code
```conf
# before
set -g status-right '#{prefix_highlight}   <- | #{battery_percentage}   | _(:з」∠)_=3 󱢗 | %m-%d %R 󱑇#[fg=black,bg=black]#[fg=black,bg=#72D5A3]  '

# after
set -g @plugin 'kristijanhusak/tmux-simple-git-status'
set -g status-right '#{prefix_highlight} #{simple_git_status}  <- | #{battery_percentage}   | _(:з」∠)_=3 󱢗 | %m-%d %R 󱑇#[fg=black,bg=black]#[fg=black,bg=#72D5A3]  '
```

#pagebreak()

= 5. PostScript

PostScript
- This is my first repository submission on github, and I hope you could understand properly if there is anything unfriendly to you. I'm sorry.

Happy Use！\__(:з」∠)_\_
