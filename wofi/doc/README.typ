#set page(numbering: "1")

#let contentblock(content) = {
  rect(fill: rgb("2e8b57"), width: 100%, [
    #text(fill: white, [#content])]
  )
}
#align(center, text(21pt, [*Wofi setup steps*]))
#align(center, text(13pt, [kitevnn]))

= 1. Screenshot Preview

#figure(
    image("./1.png", width: 100%),     
    caption: "Screenshot Preview 1"
)

\

= 2. How to Setup?
== 2.1 File Structure
```bash
.
├── config
└── style.css
```

== 2.2 Installation
Use the following command to install it.
```bash
# install wofi via zypper
# 
# S  | Name       | Summary                          | Type
# ---+------------+----------------------------------+----------
# i+ | wofi       | Launcher for wlroots compositors | Package

# git clone it.
git clone https://github.com/kitevnn/dotfiles

# setup configuration file
cd ~/.config/wofi

# and put the [config] and [style.css] of wofi manually here 
```

#pagebreak()

= 3. About Usage

How do I start *wofi* under Hypland wm?

Press #contentblock("SuperL + M")

And just press it :3

== 3.1 Keybindings

#align(center, text()[
  #table(columns: 3, align: left,
    [*num*], [*Keybindings*], [*Description*],
    [1], [Ctrl + j], [Move next item], 
    [2], [Ctrl + k], [Move prev item], 
  )
])

#pagebreak()

= 4. PostScript

PostScript
- This is my first repository submission on github, and I hope you could understand properly if there is anything unfriendly to you. I'm sorry.

Happy Use！\__(:з」∠)_\_

