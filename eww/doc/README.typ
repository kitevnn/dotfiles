#set page(numbering: "1")

#let contentblock(content) = {
  rect(fill: rgb("2e8b57"), width: 100%, [
    #text(fill: white, [#content])]
  )
}

#align(center, text(21pt, [*Eww with Hyprland setup steps*]))
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
#figure(
    image("./3.png", width: 100%),     
    caption: "Screenshot Preview 3"
)
#figure(
    image("./4.png", width: 100%),     
    caption: "Screenshot Preview 4"
)

\

It works for me. And I hope it's not a deceptive picture \_(:з」∠)\_

#pagebreak()

= 2. How to Setup?
== 2.1 File Structure
```bash
.
├── assets
│   └── avator.png
├── eww.scss
├── eww.yuck
├── scripts
│   ├── cpu-temp.sh    # cpu-temp.sh needs chmod 755 permission (aka chmod +x) first.
│   └── workspaces.py
└── widgets
    ├── infosuse.yuck
    ├── power.yuck
    ├── profile.yuck
    ├── systeminfo.yuck
    ├── time.yuck
    └── workspaces.yuck
```

\

== 2.2 Installation
Use the following command to install it.
```bash
# install eww via zypper
# 
# S  | Name | Summary                | Type
# ---+------+------------------------+----------
# i+ | eww  | ElKowars wacky widgets | Package
zypper in eww  # zypper install with sudo permission.

# git clone it.
git clone https://github.com/kitevnn/dotfiles

# setup configuration file
cd ~/.config
mkdir -p eww && cd eww

# and put the folder of eww manually here 
```

\


== 2.3 Setup personal profile avator
Reach this location `~/.config/eww/assets/avator.png` and replace this `avator.png` with your personal favorite.
```bash
cd ~/.config/eww/assets/
rm -i avator.png

# add a picture called "avator.png"
```

#pagebreak()

= 3. Known issues

== 3.1 Typographical disorders

This is due to poorly written CSS in the repository. If you have free time, you can change this piece of shit code under `~/.config/eww/eww.scss`

And I'm not very familiar with CSS myself (in other words, I'm just new to CSS practice, sorry)

First of all, since my personal Desktop Setup is like this

```text
+----------------------------------------+
|                                        |
|      ---------------------             |
|      |                   |             |
|      |                   |             |
|      |    1920×1080@60   |  HDMI-A-1   |
|      |                   |<----------  |
|      |                   |          ^  |
|      ---------------------          |  |
|                                     |  |
|     -------------------------       |  |
|    /|     DESKTOP           /|      |  |
|   /                        /        |  |
|  /  |  Wireless Keyboard  /  |      |  |
|  -------------------------          |  |
|  |  |                    |   |      |  |
|  |      ----------       |          |  |
|  |  |   |\\\\\\\\|       |   |      |  |
|  |      |\laptop\|  - - - - - - - - >  |
|  |  |   |\\\\\\\\|       |   |         |
|  |      ----------       |             |
|  |  |     eDP-1          |   |         |
+----------------------------------------+
```

At the same time, the css code here is very hardcoded, resulting in a variety of styles of data competition, so I can't guarantee that `~/.config/eww/eww.scss` here will be able to get a qualified experience on a non-external 1920×1080P monitor.

If it has a bad effect on your layout, you can also manually change the CSS code under `~/.config/eww/eww.scss`. Thank you.

Sorry, this may have had a negative impact on your experience.

\

== 3.2 Data misrepresentation of uptime scripts

This is due to the problem caused by using *cut brute-force cut* after using uptime to get the run time

Usually this problem occurs after more than 24 hours of operation.

For example
```
# Confused strings.
hrs  1  7mins
```

\
\

And not as expected

```
# Expect the correct string.
1days 5hrs 17mins
```

\
\

There is another known issue

Yes, on the `SuSE Linux Tumbleweed 20240403 BUILD` system, the location where it gets the CPU temperature may be after your system reboots

```bash
# from
cat /sys/devices/platform/coretemp.0/hwmon/hwmon4/temp2_input

# to
cat /sys/devices/platform/coretemp.0/hwmon/hwmon5/temp2_input
```

You may need to change the file path of `~/.config/eww/scripts/cpu-temp.sh` to get the CPU temperature in your native environment's script.

Idk why this is happening :(, sorry

Sorry, this may have had a negative impact on your experience.

\

== 3.3 Why is clicking some buttons unresponsively?

Well,
- First, most of the `:onclick` commands in the yuck code require the `sudo` permission under zypper tumbleweed
- Second, there are some dependencies that are not installed, such as `zypper in physlock` installed on the lock screen. The details are already written in the original file `~/.config/eww/widgets/`.
- Third, due to different distributions, some small details inside it are different, for example, `README.md` of #link("https://github.com/gh0stzk/dotfiles")[#text(fill: rgb("2e8b57"), [The repository gh0stzk by the original author])] also says *only support Archlinux*. So when I personally worked on string concatenation on `SuSE Linux Tumbleweed`, it really took me personally about three days. However, it's more because I'm not familiar with lisp personally, and it seems that maybe I should learn lisp first after finishing this repository.

Sorry, this may have had a negative impact on your experience.

\
#pagebreak()

= 4. Some Tricks

This is my personal aha, which I slowly explored and debugged when I was an EWW string splicing worker, and I only used it as a personal sharing.

== 4.1 About how #link("https://github.com/elkowar/eww")[#text(fill: rgb("2e8b57"), [eww])] minimizes writing a bar

=== 4.1.1 what is the `eww widget`?

When the bar is not set, the widget written by EWW will definitely be placed on the top top-level of your screen, thus occluding your window on Hyprland, which will greatly affect your experience.

```text
-----------------------------
|  --------   |             |
|  |widget|   |             |
|  --------   |             |
|             |             |
|---------------------------|
|     win     |     win     |
|     dow  -------- dow     |
|          |widget|         |
|          --------         |
|             |             |
-----------------------------
```

\

=== 4.1.2 what is the `bar`?

Once the bar is set, the widget written in EWW will be placed at the top of your screen, and the Hyprland window will avoid the bar. For example, if you run polybar in X11, you get the same layout.

```text
---------------------
|        bar        |
---------------------
|         |         |
|   win   |   win   |
|   dow   |   dow   |
|         |         |
---------------------
```

\

=== 4.1.3 This is the yuck code for the minimized bar
```yuck
(defwindow bar :monitor 0
       ;; [IMPORTANT]: It must be the "top" and "center" options to make a valid bar！
       ;;                                   vvvvvvvvvv
	             :geometry (geometry :anchor "top center"
                                   :height "20px")
               :exclusive true	
               :space-evenly true
               (minimal-bar))
```

Then here, we add the widgets we need.
```placeholder
(defwidget minimal-bar []
     (box :class "minimal-bar"
          :orientation "h"
          :space-evenly "false"
          :spacing "4"

          (box :class "left-bar"
               (widget-profile)
               (widget-ws)
          )
          (box :class "middle-bar"
               (widget-time)
               (widget-infosuse)
          )
          (box :class "right-bar"
               (widget-power)
               (widget-systeminfo)
          )))
```

\

== 4.2 How do I highlight the workspaces area I am currently using?

=== 4.2.1 what is the meaning of it?

First of all, I have multiple workspaces and they look like this
```text
-----  -----  -----  -----
| 1 |  | 2 |  | 3 |  | 4 |
-----  -----  -----  -----
 ws1    ws2    ws3    ws4
```

When I'm in ws1, the style I'm hoping for is
```text
-----  -----  -----  -----
|\\\|  | 2 |  | 3 |  | 4 |
-----  -----  -----  -----
 ws1    ws2    ws3    ws4
```

When I switch to ws3, the style I'm hoping for is
```text
-----  -----  -----  -----
| 1 |  | 2 |  |\\\|  | 4 |
-----  -----  -----  -----
 ws1    ws2    ws3    ws4
```

Here, thank you very much. as well as the nanny-level tutorial of #link("https://github.com/hyprwm/Hyprland")[#text(fill: rgb("2e8b57"), [Hyprland\#wiki])] and #link("https://github.com/lauroro/hyprland-dotfiles/blob/master/.config/eww/scripts/workspaces.py")[#text(fill: rgb("2e8b57"), [the original author lauroro's workspaces.py])]

\
\
\
\
\

Below is a description of the script for `workspaces.py`

#contentblock("EMERGENCY FEEDBACK about lauroro's workspaces.py")

There is a small chance that this py3 script will occupy the CPU for a few hours for unknown reasons (if you don't shut down or restart), but the original author #link("https://github.com/lauroro/hyprland-dotfiles/blob/master/.config/eww/scripts/workspaces.py")[#text(fill: rgb("2e8b57"), [THE ORIGINAL AUTHOR lauroro 's workspaces.py])] didn't mention why this happened, but I don't seem to have this situation since the restart.

```py
#!/usr/bin/python3

import subprocess
import os
import socket

# If your wanna 10 workspaces, then set [10 hollow icons] and [10 solid icons] from your font fallback which installed. 
icons = ["","","","","","","","","","","","","","","","","","","",""]
#         \                                   /   \                                     /
#                 10 hollow icons                          10 solid icons

def update_workspace(active_workspace):
    # Since we have 10 workspaces, then lastIndex is [10-1] = [9].
    icons_index = [0,1,2,3,4,5,6,7,8,9]  # <- here
 
    # Since we have 10 workspaces, then the number added at the end is [10].
    icons_index[active_workspace - 1] = icons_index[active_workspace - 1] + 10  # <- here

    # Since we have 10 workspaces, then we need to add this string from "{icons[icons_index[0]]}" to "{icons[icons_index[9]]}"
    prompt = f"(box :class `ws-change-text` (label :text \"{icons[icons_index[0]]}  {icons[icons_index[1]]}  {icons[icons_index[2]]}  {icons[icons_index[3]]}  {icons[icons_index[4]]}  {icons[icons_index[5]]}  {icons[icons_index[6]]}  {icons[icons_index[7]]}  {icons[icons_index[8]]}  {icons[icons_index[9]]}\" ))"
    
    subprocess.run(f"echo '{prompt}'", 
                   shell=True)

sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)

server_address = f'/tmp/hypr/{os.environ["HYPRLAND_INSTANCE_SIGNATURE"]}/.socket2.sock'

sock.connect(server_address)

while True:
    new_event = sock.recv(4096).decode("utf-8")
    
    for item in new_event.split("\n"):
            
        if "workspace>>" == item[0:11]:
            workspaces_num = item[-1]
            
            # In order for it to loop through 10 workspaces, forming an "infinite corridor", we need to set this number to 10
            if int(workspaces_num) > 10:  # <- here
                workspaces_num = 1
                subprocess.run("hyprctl dispatch workspace 1", shell=True)

            update_workspace(int(workspaces_num))
```

\
#pagebreak()

= 5. PostScript

PostScript
- This is my first repository submission on github, and I hope you could understand properly if there is anything unfriendly to you. I'm sorry.
- I've only been in contact with this kind of LISP language for a few days, and as an ordinary string concatenation worker, most of the scripts and code here are spliced together, and it may be normal to have some shortcomings. All in all, It Works For Me.

Happy Use！\__(:з」∠)_\_
