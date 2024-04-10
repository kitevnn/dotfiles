#set page(numbering: "1")

#align(center, text(21pt, [*Alacritty setup steps*]))
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
└── alacritty.toml
```

\

== 2.2 Installation
Use the following command to install it.
```bash
# install alacritty alacritty-bash-completion via zypper
# 
# S  | Name                      | Summary                             | Type
# ---+---------------------------+-------------------------------------+----------
# i+ | alacritty                 | A GPU-accelerated terminal emulator | Package
# i  | alacritty-bash-completion | Bash Completion for alacritty       | Package
zypper in alacritty alacritty-bash-completion  # zypper install with sudo permission.

# git clone it.
git clone https://github.com/kitevnn/dotfiles

# setup configuration file
cd ~/.config
mkdir -p alacritty && cd alacritty

# and put alacritty.toml file manually here 

# ok, done.
```

\

== 2.3 Package Version

As of now, if you are using `SuSE Linux Leap 15.6 Beta` instead of `SuSE Linux Tumbleweed`, you need to use *yml* instead of *toml* to configure `alacritty`. This is because the package of alacritty on SuSE Linux Leap 15.6 Beta (as of now) is v0.12, not the latest v0.13.

#pagebreak()

= 3. PostScript

PostScript
- This is my first repository submission on github, and I hope you could understand properly if there is anything unfriendly to you. I'm sorry.

Happy Use！\__(:з」∠)_\_
